LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY UCGenerico IS
    GENERIC (
        larguraBarramentoImediato : NATURAL := 16;
        larguraBarramentoEnderecos : NATURAL := 8;
        larguraBarramentoSinalULA : NATURAL := 2;
		  larguraBarramentoSinal : NATURAL := 1
		  
    );
    PORT (
        clk : IN STD_LOGIC;
        barramentoEntrada : IN STD_LOGIC_VECTOR(larguraBarramentoImediato - 1 DOWNTO 0);
        OPCODE : OUT STD_LOGIC_VECTOR(larguraBarramentoSinalULA-1 DOWNTO 0);
		  MUXJUMPHAB : OUT STD_LOGIC;
		  MUXHAB : OUT STD_LOGIC;
		  HABANDCOMPARE : OUT STD_LOGIC;
		  HABACU : OUT STD_LOGIC;		  
		  readEnable : OUT STD_LOGIC;
        writeEnable : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE comportamento of UCGenerico IS
BEGIN
--	PROCESS(ALL)
--	BEGIN
--		IF(rising_edge(clk)) THEN
			OPCODE <= barramentoEntrada(15 DOWNTO 14);
			MUXJUMPHAB <= barramentoEntrada(13);
			MUXHAB <= barramentoEntrada(12);
			HABANDCOMPARE <= barramentoEntrada(11);
			HABACU <= barramentoEntrada(10);
			readEnable <= barramentoEntrada(8);
			writeEnable <= barramentoEntrada(9);
--			
--		END IF;
--	END PROCESS;
END ARCHITECTURE;