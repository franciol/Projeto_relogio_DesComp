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
SIGNAL SAIDA0 : std_logic_vector(larguraDados - 1 DOWNTO 0);
SIGNAL SAIDA1 : std_logic_vector(larguraDados - 1 DOWNTO 0);

BEGIN

SAIDA0 <= std_logic_vector(unsigned(ENTRADA_A) + unsigned(ENTRADA_B)); -- SOMA nA ULA
SAIDA1 <= std_logic_vector(signed(ENTRADA_B) - signed(ENTRADA_A)); -- FUNCAO NAO UTILIZADA E NAO COMPLETA


with INSTRUCAO select
			SAIDA <= SAIDA0 when "00",  -- SELECAO DE SAIDA DA ULA
				SAIDA1 when "01",
				ENTRADA_A when "10",
				ENTRADA_B when "11",
				"0000" when others; 
END ARCHITECTURE;


