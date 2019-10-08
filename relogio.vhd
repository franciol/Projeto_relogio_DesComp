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
        CLOCK_50, KEY3: IN std_logic;
        HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT std_logic_vector(6 DOWNTO 0);
        SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        DATA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        CLK_OUT, HAB7SEG_OUT, HABRAM_OUT, HAB_IO_OUT : OUT STD_LOGIC;
        ENDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );

END ENTITY;

ARCHITECTURE comportamento OF relogio IS
    SIGNAL barramentoDadosEntradaCPU, barramentoDadosSaidaCPU, dados7SEG : STD_LOGIC_VECTOR((larguraBarramentoDados - 1) DOWNTO 0);
    SIGNAL barramentoEnderecosCPU : STD_LOGIC_VECTOR(larguraBarramentoEnderecos - 1 DOWNTO 0);
    SIGNAL readEnable, writeEnable, hab7Seg_w, hab7Seg_r, habIo, CLK_INT, CLK_INT_1, CLK_INT_2, sel_base_tempo,ress : STD_LOGIC;
BEGIN

    IO : ENTITY work.IO
        PORT MAP(
            habilita => SW(0),
            saidaBotoes => sel_base_tempo,
            RESET_IN => KEY3,
            RESET_OUT => ress
        );

    BASE_DE_TEMPO_1 : ENTITY work.divisorGenerico(divPotenciaDe2)
        GENERIC MAP(
            divisor => 11
        )
        PORT MAP(
            clk => CLOCK_50,
            saida_clk => CLK_INT_1
        );

    BASE_DE_TEMPO_2 : ENTITY work.divisorGenerico(divPotenciaDe2)
        GENERIC MAP(
            divisor => 1
        )
        PORT MAP(
            clk => CLOCK_50,
            saida_clk => CLK_INT_2
        );

    MUX_BASE_TEMPO : ENTITY work.muxLogico
        GENERIC MAP(
            larguraDados => 1
        )
        PORT MAP(
            entradaA_MUX => CLK_INT_1,
            entradaB_MUX => CLK_INT_2,
            seletor_MUX => sel_base_tempo,
            saida_MUX => CLK_INT
        );

    CPU : ENTITY work.cpu
        PORT MAP(
            reset => ress,
            CLK => CLK_INT,
            barramentoDadosEntrada => barramentoDadosEntradaCPU,
            barramentoEnderecos => barramentoEnderecosCPU,
            barramentoDadosSaida => barramentoDadosSaidaCPU,
            readEnable => readEnable,
            writeEnable => writeEnable
        );

    DECODER : ENTITY work.decodificador
        PORT MAP(
            rd => readEnable,
            wr => writeEnable,
            clk => CLK_INT,
            mem => barramentoEnderecosCPU,
            Hab7seg_read => hab7Seg_r,
            Hab7seg_write => hab7Seg_w,
            HabIO => habIo
        );

    SEG7ALL : ENTITY work.seg7ALL
        PORT MAP(
            dadoHex => barramentoDadosSaidaCPU,
            CLK => CLK_INT,
            RESET => ress,
            ENABLE => hab7Seg_w,
            READ_DATA => hab7Seg_r,
            endereco7SEG => barramentoEnderecosCPU,
            saida7seg_US => HEX7,
            saida7seg_DS => HEX6,
            saida7seg_UM => HEX5,
            saida7seg_DM => HEX4,
            saida7seg_UH => HEX3,
            saida7seg_DH => HEX2,
            leituraDado => barramentoDadosEntradaCPU
        );

    DATA <= barramentoDadosSaidaCPU;
    ENDR <= barramentoEnderecosCPU;
    CLK_OUT <= CLK_INT;
    HAB7SEG_OUT <= hab7Seg_w;
    HAB_IO_OUT <= habIo;
    HABRAM_OUT <= hab7Seg_r;
END ARCHITECTURE;