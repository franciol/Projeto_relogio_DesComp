LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY cpu IS
    GENERIC (
        larguraBarramentoImediato : NATURAL := 16;
        larguraBarramentoEnderecos : NATURAL := 8;
        larguraBarramentoDados : NATURAL := 4
    );
    PORT (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        barramentoDadosEntrada : IN STD_LOGIC_VECTOR(larguraBarramentoDados - 1 DOWNTO 0);
        barramentoEnderecos : OUT STD_LOGIC_VECTOR(larguraBarramentoEnderecos - 1 DOWNTO 0);
        barramentoDadosSaida : OUT STD_LOGIC_VECTOR(larguraBarramentoDados - 1 DOWNTO 0);
        readEnable : OUT STD_LOGIC;
        writeEnable : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE estrutural OF cpu IS

    -- Declaração de sinais auxiliares
    SIGNAL saida_imediata : STD_LOGIC_VECTOR(larguraBarramentoImediato - 1 DOWNTO 0);
    SIGNAL saida_adder, saida_MUXJMP, saida_PC : STD_LOGIC_VECTOR(larguraBarramentoEnderecos - 1 DOWNTO 0);
    SIGNAL saida_MUX, saida_ACU, saida_ULA : STD_LOGIC_VECTOR((larguraBarramentoDados - 1) DOWNTO 0);
    SIGNAL seletorULA : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL seletor_MUX, hab_ACU, hab_AND, hab_OR, saida_AND, saida_OR : STD_LOGIC;

    -- ...

BEGIN

    MUXJMP : ENTITY work.muxGenerico2
        GENERIC MAP(
            larguraDados => larguraBarramentoEnderecos
        )
        PORT MAP
        (
            entradaA_MUX => saida_imediata(7 DOWNTO 0),
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

    ACU : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => larguraBarramentoDados
        )
        PORT MAP
        (
            CLK => clk,
            ENABLE => hab_ACU,
            RST => reset,
            DIN => saida_MUX,
            DOUT => saida_ACU
        );

    PC : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => larguraBarramentoEnderecos
        )
        PORT MAP
        (
            CLK => clk,
            ENABLE => '1',
            RST => reset,
            DIN => saida_MUXJMP,
            DOUT => saida_PC
        );

    ADDER : ENTITY work.somaConstanteGenerico
        GENERIC MAP(
            larguraDados => larguraBarramentoEnderecos,
            incremento => 1
        )
        PORT MAP
        (
            entrada => saida_PC,
            saida => saida_adder
        );

    ROM : ENTITY work.memoria
        GENERIC MAP(
            dataWidth => larguraBarramentoImediato,
            addrWidth => larguraBarramentoEnderecos
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

    AND1 : ENTITY work.ANDGenerico
        PORT MAP(
            ENTRADA_A => saida_ULA,
            ENTRADA_B => hab_AND,
            SAIDA => saida_AND,
				CLK => clk
        );

    ULA : ENTITY work.ULAGenerico
        GENERIC MAP(
            larguraDados => 4
        )
        PORT MAP(
            ENTRADA_A => saida_imediata(3 DOWNTO 0),
            ENTRADA_B => saida_ACU,
            SAIDA => saida_ULA,
            INSTRUCAO => seletorULA,
            CLK => clk
        );

    UC : ENTITY work.UCGenerico
        PORT MAP(
            clk => clk,
            barramentoEntrada => saida_imediata,
            OPCODE => seletorULA,
            MUXJUMPHAB => hab_OR,
            MUXHAB => seletor_MUX,
            HABANDCOMPARE => hab_AND,
            HABACU => hab_ACU,
            readEnable => readEnable,
            writeEnable => writeEnable
        );

    barramentoDadosSaida <= saida_ACU;
    barramentoEnderecos <= saida_imediata(7 DOWNTO 0);
END ARCHITECTURE;