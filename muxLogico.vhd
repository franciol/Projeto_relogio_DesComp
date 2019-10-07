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
    -- Para sintetizar lógica combinacional usando um processo,
    --  todas as entradas do modulo devem aparecer na lista de sensibilidade.
    PROCESS (entradaA_MUX, entradaB_MUX, seletor_MUX) IS
    BEGIN
        -- If é uma instrução sequencial que não pode ser usada
        --  na seção de instruções concorrentes da arquitetura.
        IF (seletor_MUX = '0') THEN
            saida_MUX <= entradaA_MUX;
        ELSE
            saida_MUX <= entradaB_MUX;
        END IF;
    END PROCESS;
END ARCHITECTURE;