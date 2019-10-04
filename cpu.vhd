LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY cpu IS
    GENERIC (
        larguraBarramentoEnderecos : NATURAL := 8;
        larguraBarramentoDados : NATURAL := 4
    );
    PORT (
        clk : IN STD_LOGIC;
        barramentoDadosEntrada : IN STD_LOGIC_VECTOR(larguraBarramentoDados - 1 DOWNTO 0);
        barramentoEnderecos : OUT STD_LOGIC_VECTOR(larguraBarramentoEnderecos - 1 DOWNTO 0);
        barramentoDadosSaida : OUT STD_LOGIC_VECTOR(larguraBarramentoDados - 1 DOWNTO 0);
        readEnable : OUT STD_LOGIC;
        writeEnable : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE estrutural OF relogio IS

    -- Declaração de sinais auxiliares
    SIGNAL saida_adder, saida_MUXJMP, saida_PC, saida_imediata, saida_MUX, saida_ACU, saida_ULA : STD_LOGIC_VECTOR(larguraBarramentoDados - 1 DOWNTO 0);
    SIGNAL seletor_MUX, hab_ACU, hab_AND, hab_OR, saida_AND, saida_OR : STD_LOGIC;
    SIGNAL seletorULA : STD_LOGIC_VECTOR(1 DOWNTO 0);
    -- ...

BEGIN

    MUXJMP : ENTITY work.muxGenerico2
        GENERIC MAP(
            larguraDados => larguraBarramentoDados
        )
    PORT MAP
    (
        entradaA_MUX => saida_imediata,
        entradaB_MUX => saida_adder,
        seletor_MUX => saida_OR,
        saida_MUX => saida_MUXJMP
    );

    MUX : ENTITY work.muxGenerico2
        GENERIC MAP(
            larguraDados => larguraBarramentoDados
        )
    PORT MAP
    (
        entradaA_MUX => barramentoDadosEntrada,
        entradaB_MUX => saida_ULA,
        seletor_MUX => seletor_MUX,
        saida_MUX => saida_MUX
    );

    ACU : ENTITY work.registrador
        --generic map (
        -- );
        PORT MAP
        (
            clk => clk,
            enable => hab_ACU,
            reset => '0',
            DIN => saida_MUX,
            DOUT => saida_ACU
        );

    PC : ENTITY work.registradorGenerico
        -- generic map (
        -- );
        PORT MAP
        (
            clk => clk,
            enable => '1',
            reset => '0',
            DIN => saida_MUXJMP,
            DOUT => saida_PC
        );

    ADDER : ENTITY work.somaConstanteGenerico
        GENERIC MAP(
            larguraDados => larguraBarramentoDados,
            incremento => 1
        )
    PORT MAP
    (
        entrada => saida_PC,
        saida => saida_adder
    );

    ROM : ENTITY work.mem_instrucoes
        GENERIC MAP(
            dataWidth => larguraBarramentoDados,
            addrWitdh => larguraBarramentoEnderecos
        )
    PORT MAP(
        Endereco => saida_PC,
        Dado => saida_imediata
    );

    OR1 : ENTITY work.ORGenerico
        PORT MAP(
            ENTRADA_A => saida_AND,
            ENTRADA_B => hab_OR,
            SAIDA => saida_OR
        );

    AND1 : ENTITY work.ORGenerico
        PORT MAP(
            ENTRADA_A => saida_ULA,
            ENTRADA_B => hab_AND,
            SAIDA => saida_AND
        );

    ULA : ENTITY work.ULAGenerico
        GENERIC MAP(
            larguraDados => 2
        )
        PORT MAP(
            ENTRADA_A => saida_imediata,
            ENTRADA_B => saida_ACU,
            SAIDA => saida_ULA,
            INSTRUCAO => seletorULA,
            CLK => clk
        );
END ARCHITECTURE;