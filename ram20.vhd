
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ram20 IS
    GENERIC (
        dataWidth : NATURAL := 8;
        addrWidth : NATURAL := 8
    );
    PORT (
        addr : IN std_logic_vector(addrWidth - 1 DOWNTO 0);
        we : IN std_logic := '1';
        clk : IN std_logic;
        dado_in : IN std_logic_vector(dataWidth - 1 DOWNTO 0);
        dado_out : OUT std_logic_vector(dataWidth - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE rtl OF ram20 IS
    -- Build a 2-D array type for the RAM

    SUBTYPE word_t IS std_logic_vector(dataWidth - 1 DOWNTO 0);
    TYPE memory_t IS ARRAY((2 ** addrWidth - 1) DOWNTO 0) OF word_t;

    -- Declare the RAM signal.
    SIGNAL ram : memory_t;
BEGIN
    PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (we = '1') THEN
                ram(to_integer(unsigned(addr))) <= dado_in;
            END IF;
        END IF;
    END PROCESS;
    
    dado_out <= ram(to_integer(unsigned(addr)));
END ARCHITECTURE;