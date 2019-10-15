LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY muxLogico IS
    GENERIC (
        -- Total de bits das entradas e saidas
        larguraDados : NATURAL := 8

    );
    PORT (
        entradaA_MUX : IN std_logic;
        entradaB_MUX : IN std_logic;
        seletor_MUX : IN std_logic;

        saida_MUX : OUT std_logic
    );
END ENTITY;

ARCHITECTURE comportamento OF muxLogico IS
BEGIN
    saida_MUX <= 
	entradaA_MUX when (seletor_MUX = '0') else
	entradaB_MUX;
END ARCHITECTURE;