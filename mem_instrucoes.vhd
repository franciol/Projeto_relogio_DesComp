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
        -- Salvando 8 no ACUMULADOR
        tmp(0) := "1000000000000000";   -- SETA A ULA!!!!
        tmp(1) := "1001010000001001";   -- SALVA 9 
        
        tmp(2) := "0000000000000000";   -- SETA ULA
        tmp(3) := "0001010000000001";   -- SOMA 1

        tmp(4) := "0000000000000000";

        tmp(5) := "0000100000000000";    -- JUMP COMPARE
        tmp(6) := "0000000000001000";
        tmp(7) := "1001010000000110";    -- SALVA 6
        tmp(8) := "1000000000000000";    -- SALVA 6
        
        tmp(9) := "1001010000000111";    -- SALVA 7 
        
        tmp(10) := "0010000000000000";    -- SALVA 7 
        tmp(11) := "0000000000000000";    -- SALVA 7 
        
       


        RETURN tmp;
    END initMemory;

    SIGNAL memROM : blocoMemoria := initMemory;

BEGIN
    Dado <= memROM (to_integer(unsigned(Endereco)));
END ARCHITECTURE;