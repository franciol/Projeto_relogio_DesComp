LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ORGenerico IS

    PORT (
        ENTRADA_A : IN std_logic;
        ENTRADA_B : IN std_logic;
        SAIDA : OUT std_logic
    );

END ENTITY;


ARCHITECTURE comportamento OF ORGenerico IS
BEGIN
    PROCESS (ALL)
    BEGIN
        IF (ENTRADA_A = '1' OR ENTRADA_B = '1') THEN
            SAIDA <= '1';
        ELSE
            SAIDA <= '0';
        END IF;
    END PROCESS;
END ARCHITECTURE;