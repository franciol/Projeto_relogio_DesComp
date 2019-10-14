LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY relogio IS
    GENERIC (
        larguraBarramentoImediato : NATURAL := 16;
        larguraBarramentoEnderecos : NATURAL := 8;
        larguraBarramentoDados : NATURAL := 4
    );
    PORT (
        LEDG : OUT std_logic_vector(7 DOWNTO 0);
        CLOCK_50 : IN std_logic;
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT std_logic_vector(6 DOWNTO 0) := "1111111";
        SW, KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        DADO, RAM_DADO : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        ENDERECO : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        WENABLE : OUT STD_LOGIC

    );

END ENTITY;

ARCHITECTURE comportamento OF relogio IS
    SIGNAL barramentoDadosEntradaCPU, barramentoDadosSaidaCPU, dados7SEG, dadostimer : STD_LOGIC_VECTOR((larguraBarramentoDados - 1) DOWNTO 0);
    SIGNAL barramentoEnderecosCPU : STD_LOGIC_VECTOR(larguraBarramentoEnderecos - 1 DOWNTO 0);
    SIGNAL HabRAM_read, HabRAM_write, readEnable, writeEnable, hab7Seg_w, hab7Seg_r, habIo, CLK_INT, CLK_INT_TEST, CLK_INT_1, CLK_INT_2, CLK_INT_3, sel_base_tempo, sel_base_tempo2, ress, read_timer, reset_timer : STD_LOGIC;

BEGIN
    IO : ENTITY work.IO
        PORT MAP(
            habilita => SW,
            saidaSW0 => sel_base_tempo,
            saidaSW1 => sel_base_tempo2,
            RESET_IN => KEY(0),
            RESET_OUT => ress
        );

    BASE_DE_TEMPO_1 : ENTITY work.divisorGenerico
        GENERIC MAP(
            divisor => 25000000 --1seg
        )
        PORT MAP(
            clk => CLOCK_50,
            saida_clk => CLK_INT_1
        );

    BASE_DE_TEMPO_2 : ENTITY work.divisorGenerico
        GENERIC MAP(
            divisor => 10000 
        )
        PORT MAP(
            clk => CLOCK_50,
            saida_clk => CLK_INT_2
        );

    BASE_DE_TEMPO_3 : ENTITY work.divisorGenerico
        GENERIC MAP(
            divisor => 500000 
        )
        PORT MAP(
            clk => CLOCK_50,
            saida_clk => CLK_INT_3
        );

    MUX_BASE_TEMPO_TESTE : ENTITY work.muxLogico
        GENERIC MAP(
            larguraDados => 1
        )
        PORT MAP(
            entradaA_MUX => CLK_INT_3,
            entradaB_MUX => CLK_INT_2,
            seletor_MUX => sel_base_tempo2,
            saida_MUX => CLK_INT_TEST
        );

    MUX_BASE_TEMPO : ENTITY work.muxLogico
        GENERIC MAP(
            larguraDados => 1
        )
        PORT MAP(
            entradaA_MUX => CLK_INT_1,
            entradaB_MUX => CLK_INT_TEST,
            seletor_MUX => sel_base_tempo,
            saida_MUX => CLK_INT
        );

    CPU : ENTITY work.cpu
        PORT MAP(

            LEDG => LEDG,

            reset => ress,
            CLK => CLOCK_50,
            barramentoDadosEntrada => barramentoDadosEntradaCPU,
            barramentoEnderecos => barramentoEnderecosCPU,
            barramentoDadosSaida => barramentoDadosSaidaCPU,
            readEnable => readEnable,
            writeEnable => writeEnable
        );

    TIMER : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => larguraBarramentoDados
        )
        PORT MAP
        (
            CLK => CLK_INT,
            ENABLE => '1',
            RST => reset_timer,
            DIN => "1100",
            DOUT => dadostimer
        );

    DECODER : ENTITY work.decodificador
        PORT MAP(
            rd => readEnable,
            wr => writeEnable,
            clk => CLOCK_50,
            mem => barramentoEnderecosCPU,
            SW => SW,
            KEY => KEY,
            ENTRADA_DE_DADOS_SEG => dados7SEG,
            ENTRADA_DADOS_TIMER => dadostimer,
            HabRAM_read => HabRAM_read,
            HabRAM_write => HabRAM_write,
            Habtimer_write => reset_timer,
            Hab7seg_write => hab7Seg_w,
            SAIDA_DE_DADOS => barramentoDadosEntradaCPU
        );

    SEG7ALL : ENTITY work.seg7ALL
        PORT MAP(
            dadoHex => barramentoDadosSaidaCPU,
            CLK => CLOCK_50,
            RESET => ress,
            ENABLE => hab7Seg_w,
            endereco7SEG => barramentoEnderecosCPU,
            saida7seg_US => HEX7,
            saida7seg_DS => HEX6,
            saida7seg_UM => HEX5,
            saida7seg_DM => HEX4,
            saida7seg_UH => HEX3,
            saida7seg_DH => HEX2,
            saida7seg_NADA => HEX1,
            saida7seg_AMPM => HEX0
        );

    RAM_USAVEL : ENTITY work.ram20
        GENERIC MAP(
            dataWidth => 4,
            addrWidth => 8
        )
        PORT MAP(
            addr => barramentoEnderecosCPU,
            we => HabRAM_write,
            clk => CLOCK_50,
            dado_in => barramentoDadosSaidaCPU,
            dado_out => dados7SEG
        );

    DADO <= barramentoDadosSaidaCPU;
    RAM_DADO <= dados7SEG;
    ENDERECO <= barramentoEnderecosCPU;
    WENABLE <= HabRAM_write;
END ARCHITECTURE;