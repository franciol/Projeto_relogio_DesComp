
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY memoria IS
    GENERIC (
        dataWidth : NATURAL := 16;
        addrWidth : NATURAL := 8
    );
    PORT (
        Endereco : IN std_logic_vector (addrWidth - 1 DOWNTO 0);
        Dado : OUT std_logic_vector (dataWidth - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE assincrona OF memoria IS

    TYPE blocoMemoria IS ARRAY(0 TO 2 ** addrWidth - 1) OF std_logic_vector(dataWidth - 1 DOWNTO 0);

    FUNCTION initMemory
        RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
    BEGIN
        -- Inicializa os endereços e escreve ASSEMBLY!!!! :
        tmp(0) := x"940A";
        tmp(1) := x"02FC";
        tmp(2) := x"0000";
        tmp(3) := x"FFFF";
        tmp(4) := x"FFFF";
        tmp(5) := x"FFFF";
        tmp(6) := x"FFFF";
        tmp(7) := x"FFFF";
        RETURN tmp;
    END initMemory;

    SIGNAL memROM : blocoMemoria := initMemory;

BEGIN
    Dado <= memROM (to_integer(unsigned(Endereco)));
END ARCHITECTURE;