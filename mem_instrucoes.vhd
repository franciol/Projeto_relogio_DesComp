LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

-- Projeito feito por    Francisco Aveiro
--                       Giulia Passarelli
--                       Alexandre Edington
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
        tmp(0) := x"8000";   -- SETA A ULA!!!!
        tmp(1) := x"9409";   -- SALVA 9 

        tmp(3) := x"0200";
        tmp(4) := x"0201";
        tmp(5) := x"0202";
        tmp(6) := x"0203";
        tmp(7) := x"0204";
        tmp(8) := x"0205";
        

        
        

        RETURN tmp;
    END initMemory;

    SIGNAL memROM : blocoMemoria := initMemory;

BEGIN
    Dado <= memROM (to_integer(unsigned(Endereco)));
END ARCHITECTURE;