LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ULAGenerico IS
    GENERIC (
        larguraDados : NATURAL := 2
    );
    PORT (
        ENTRADA_A : IN std_logic_vector(larguraDados - 1 DOWNTO 0);
        ENTRADA_B : IN std_logic_vector(larguraDados - 1 DOWNTO 0);
        SAIDA : OUT std_logic_vector(larguraDados - 1 DOWNTO 0);
        INSTRUCAO : IN std_logic_vector(1 DOWNTO 0);
        CLK : IN std_logic
    );
END ENTITY;

ARCHITECTURE comportamento OF ULAGenerico IS
    SIGNAL us_A, us_B, us_saida : unsigned(7 DOWNTO 0);
BEGIN
    PROCESS (ALL)
    BEGIN
        us_A <= unsigned(ENTRADA_A);
        us_B <= unsigned(ENTRADA_B);
        IF (rising_edge(CLK)) THEN
            IF (INSTRUCAO = "00") THEN
                us_saida <= us_A + us_B;
            ELSIF (INSTRUCAO = "01") THEN
                us_saida <= us_A - us_B;
            END IF;
            SAIDA <= std_logic_vector(us_saida);
        END IF;

    END PROCESS;
END ARCHITECTURE;