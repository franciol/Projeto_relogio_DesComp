LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ANDGenerico IS
    GENERIC (
        dataWidth : NATURAL := 4;
        addrWidth : NATURAL := 8
    );
    PORT (
        ENTRADA_A : IN std_logic_vector(dataWidth - 1 DOWNTO 0);
        ENTRADA_B : IN std_logic;
        SAIDA : OUT std_logic;
        CLK : IN std_logic
    );

END ENTITY;
ARCHITECTURE comportamento OF ANDGenerico IS
BEGIN
    PROCESS (ALL)
    BEGIN

        IF (unsigned(ENTRADA_A) >= "1001" AND ENTRADA_B = '1') THEN
            SAIDA <= '1';
        ELSE
            SAIDA <= '0';
        END IF;
    END PROCESS;
END ARCHITECTURE;