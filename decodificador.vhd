LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY decodificador IS
    PORT (
        -- Input ports
        rd : IN std_logic := '0';
        wr : IN std_logic := '0';
        clk : IN std_logic;
        SW, KEY : IN std_logic_vector(3 DOWNTO 0);
        mem : IN std_logic_vector(7 DOWNTO 0);
        ENTRADA_DE_DADOS_SEG, ENTRADA_DADOS_TIMER : IN std_logic_vector(3 DOWNTO 0);
        -- Output ports
        HabRAM_read, HabRAM_write, Hab7seg_write, Habtimer_write : OUT std_logic;
        SAIDA_DE_DADOS : OUT std_logic_vector(3 DOWNTO 0)

    );
END ENTITY;

ARCHITECTURE comportamento OF decodificador IS
BEGIN

    HabRAM_read <=
        '1' WHEN (rd = '1' AND unsigned(mem) < 16 AND wr = '0') ELSE -- HABILITA LER RAM
        '0';

    HabRAM_write <=
        '1' WHEN (wr = '1' AND unsigned(mem) < 16 AND rd = '0') ELSE -- HABILITA ESCREVER RAM
        '0';

    SAIDA_DE_DADOS <=
        ENTRADA_DE_DADOS_SEG WHEN (rd = '1' AND unsigned(mem) < 16 AND wr = '0') ELSE
        ENTRADA_DADOS_TIMER WHEN (rd = '1' AND unsigned(mem) = 16 AND wr = '0') ELSE
        "1100" WHEN (rd = '1' AND unsigned(mem) = 25 AND wr = '0' AND SW(2) = '1') ELSE
        "0000" WHEN (rd = '1' AND unsigned(mem) = 25 AND wr = '0' AND SW(2) = '0') ELSE
        "1100" WHEN (rd = '1' AND unsigned(mem) = 26 AND wr = '0' AND SW(3) = '1') ELSE
        "0000" WHEN (rd = '1' AND unsigned(mem) = 26 AND wr = '0' AND SW(3) = '0') ELSE
        "1100" WHEN (rd = '1' AND unsigned(mem) = 27 AND wr = '0' AND KEY(3) = '1') ELSE
        "0000" WHEN (rd = '1' AND unsigned(mem) = 27 AND wr = '0' AND KEY(3) = '0') ELSE
        "0000";

    Habtimer_write <=
        '1' WHEN (wr = '1' AND unsigned(mem) = 16 AND rd = '0') ELSE -- HABILITA ZERAR TIMER
        '0';

    Hab7seg_write <=
        '1' WHEN (wr = '1' AND unsigned(mem) > 16 AND unsigned(mem) <= 32 AND rd = '0') ELSE -- HABILITA LER TIMER
        '0';
END ARCHITECTURE;