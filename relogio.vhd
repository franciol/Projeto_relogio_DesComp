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
        KEY3, CLOCK_50, SW0 : IN std_logic;
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT std_logic_vector(6 DOWNTO 0)

    );

END ENTITY;

ARCHITECTURE comportamento OF relogio IS
    SIGNAL barramentoDadosEntradaCPU, barramentoDadosSaidaCPU, dados7SEG : STD_LOGIC_VECTOR((larguraBarramentoDados - 1) DOWNTO 0);
    SIGNAL barramentoEnderecosCPU : STD_LOGIC_VECTOR(larguraBarramentoEnderecos - 1 DOWNTO 0);
    SIGNAL readEnable, writeEnable, habRam, hab7Seg, habIo, CLK_INT,CLK_INT_1,CLK_INT_2,sel_base_tempo : STD_LOGIC;
BEGIN

    IO : ENTITY work.IO
        PORT MAP(
            habilita => SW0,
            saidaBotoes => sel_base_tempo
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
            divisor => 9
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

    RAM : ENTITY work.RAM
        PORT MAP(
            addr => barramentoEnderecosCPU,
            we => habRam,
            clk => CLK_INT,
            dado_in => barramentoDadosSaidaCPU,
            dado_out => barramentoDadosEntradaCPU
        );

    CPU : ENTITY work.cpu
        PORT MAP(
            reset => KEY3,
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
            HabRam => habRam,
            Hab7seg => hab7Seg,
            HabIO => habIo
        );

    SEG7ALL : ENTITY work.seg7ALL
        PORT MAP(
            dadoHex => barramentoDadosSaidaCPU,
            CLK => CLK_INT,
            RESET => KEY3,
            ENABLE => hab7Seg,
            endereco7SEG => barramentoEnderecosCPU,
            saida7seg_US => HEX5,
            saida7seg_DS => HEX4,
            saida7seg_UM => HEX3,
            saida7seg_DM => HEX2,
            saida7seg_UH => HEX1,
            saida7seg_DH => HEX0
        );
END ARCHITECTURE;