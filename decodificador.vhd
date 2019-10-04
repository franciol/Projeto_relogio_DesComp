library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decodificador is
    port
    (
        -- Input ports
        rd   : in  std_logic := '0';
        wr   : in  std_logic := '0';
		  clk  : in std_logic;
        mem : in  std_logic_vector(7 downto 0);
        -- Output ports
        HabRam  : out std_logic;
		  Hab7seg : out std_logic;
		  HabIO   : out std_logic
    );
end entity;

architecture comportamento of decodificador is
begin
    process (clk) is
	 begin
    IF (unsigned(mem) < "110000") THEN
	     Hab7seg <= '1';
		  
	 ELSIF (unsigned(mem) < "1000000") THEN
	     HabRam <= '1';
	 
	 
	 ELSIF (unsigned(mem) < "1010000") THEN
	     HabIO <= '1';
	 
	 END IF;
	 end process;
end architecture;