LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY botoes IS
    GENERIC(
        quantidadeBotao : NATURAL := 1
    );

    PORT (
        habilita : IN STD_LOGIC;
        saidaBotoes : OUT STD_LOGIC_VECTOR(quantidadeBotao - 1 DOWNTO 0)
    );
END ENTITY;