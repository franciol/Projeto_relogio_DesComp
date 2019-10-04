LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY somaConstanteGenerico IS
	generic (
         larguraDados : natural := 4;
         incremento : natural := 1
    );
    PORT (
        entrada: in  STD_LOGIC_VECTOR((larguraDados-1) downto 0);
         saida:   out STD_LOGIC_VECTOR((larguraDados-1) downto 0)
    );

END ENTITY;


ARCHITECTURE comportamento OF somaConstanteGenerico IS
BEGIN
    PROCESS (ALL)
    BEGIN
        saida <= unsigned(entrada)+unsigned(1);
    END PROCESS;
END ARCHITECTURE;