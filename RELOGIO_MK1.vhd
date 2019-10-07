LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY RELOGIO_MK1 IS
  PORT (
    HEX7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE ss OF RELOGIO_MK1 IS
BEGIN

  -- Indica o estado atual da maquina de estado, em decimal:
  display7 : ENTITY work.seg7
    PORT MAP(saida7seg => HEX7, dadoHex => "1010", apaga => '0', overFlow => '0', negativo => '0');

END ARCHITECTURE;