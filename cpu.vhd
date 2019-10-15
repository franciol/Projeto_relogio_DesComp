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

        LEDG : OUT std_logic_vector(7 DOWNTO 0);

        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        barramentoDadosEntrada : IN STD_LOGIC_VECTOR(larguraBarramentoDados - 1 DOWNTO 0);
        barramentoDadosSaida : OUT STD_LOGIC_VECTOR(larguraBarramentoDados - 1 DOWNTO 0);
        barramentoEnderecos : OUT STD_LOGIC_VECTOR(larguraBarramentoEnderecos - 1 DOWNTO 0);
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
    SIGNAL seletor_MUX, hab_ACU, hab_AND, hab_OR, saida_AND : STD_LOGIC;
    -- ...

BEGIN
    LEDG <= saida_PC;

    PC : ENTITY work.registradorGenerico -- PROGRAM COUNTER
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

    ROM : ENTITY work.memoria  -- ROM 
        GENERIC MAP(
            dataWidth => larguraBarramentoImediato,
            addrWidth => larguraBarramentoEnderecos
        )
        PORT MAP(
            Endereco => saida_PC,
            Dado => saida_imediata
        );

    ADDER : ENTITY work.somaConstanteGenerico -- SOMADOR DO PROGRAM COUNTER
        GENERIC MAP(
            larguraDados => larguraBarramentoEnderecos,
            incremento => 1
        )
        PORT MAP
        (
            entrada => saida_PC,
            saida => saida_adder
        );

    UC : ENTITY work.UCGenerico  -- REDISTRIBUIDOR DE SINAIS DA SAIDA DA ROM
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

    ULA : ENTITY work.ULAGenerico  -- ULA
        GENERIC MAP(
            larguraDados => larguraBarramentoDados
        )
        PORT MAP(
            ENTRADA_A => saida_imediata(3 DOWNTO 0),
            ENTRADA_B => saida_ACU,
            SAIDA => saida_ULA,
            INSTRUCAO => seletorULA,
            CLK => clk
        );

    MUX : ENTITY work.muxGenerico2 -- MUX PARA ESCOLHA ENTRE RAM OU SAIDA DA ULA, PARA ESCREVER NO ACUMULADOR
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

    ACU : ENTITY work.registradorGenerico -- ACUMULADOR
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
    AND1 : ENTITY work.ANDGenerico -- COMPARADOR E AND PARA ATIVAR O JUMP 
        PORT MAP(
            ENTRADA_A => saida_ACU,
            ENTRADA_B => hab_AND,
            SAIDA => saida_AND,
            CLK => clk
        );
    MUXJMP : ENTITY work.muxGenerico2 -- MUX PARA SELECIONAR ENTRE PUXAR O ENDERECO DO PC OU DA ROM (MUXJUMP)
        GENERIC MAP(
            larguraDados => larguraBarramentoEnderecos
        )
        PORT MAP
        (
            entradaB_MUX => saida_imediata(7 DOWNTO 0),
            entradaA_MUX => saida_adder,
            seletor_MUX => saida_AND OR hab_OR,
            saida_MUX => saida_MUXJMP
        );

    barramentoDadosSaida <= saida_ACU; -- SAIDA DO ACUMULADOR PARA FORA DA CPU
    barramentoEnderecos <= saida_imediata(7 DOWNTO 0); -- SAIDA DO ENDERECO DE ACESSO PARA FORA DA CPU
END ARCHITECTURE;