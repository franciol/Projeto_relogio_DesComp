LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY somaConstanteGenerico IS
    GENERIC (
        larguraDados : NATURAL := 4;
        incremento : NATURAL := 1
    );
    PORT (
        entrada : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        saida : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0)
    );

END ENTITY;
ARCHITECTURE comportamento OF somaConstanteGenerico IS
    SIGNAL un_entrada, un_UM, un_saida : unsigned(larguraDados - 1 DOWNTO 0);
BEGIN
    PROCESS (ALL)
    BEGIN
        un_entrada <= unsigned(entrada);
        --un_UM <= unsigned(incremento);
        un_saida <= un_entrada + incremento;
		  
        saida <= std_logic_vector(un_saida);

    END PROCESS;
END ARCHITECTURE;