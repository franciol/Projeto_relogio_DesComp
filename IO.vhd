LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY IO IS
    GENERIC (
        quantidadeBotao : NATURAL := 1
    );

    PORT (
        habilita : IN STD_LOGIC;
        saidaBotoes : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE FILSDELA OF IO IS
BEGIN
    PROCESS (ALL)
    BEGIN
        IF (habilita = '1') THEN
            saidaBotoes <= '0';
        ELSE
            saidaBotoes <= '1';
        END IF;
    END PROCESS;
END ARCHITECTURE;