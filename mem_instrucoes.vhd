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
        
        tmp(0) := x"9400";  -- ZERO NO ACU

        tmp(1) := x"0201";  -- ZERA A RAM
        tmp(2) := x"0202";
        tmp(3) := x"0203";
        tmp(4) := x"0204";
        tmp(5) := x"0205";
        tmp(6) := x"0206";
        tmp(7) := x"0207";
        tmp(8) := x"0218";

        tmp(9) := x"940A";
        tmp(10) := x"0207";
       

            tmp(11) := x"0000"; -- LOOP INICIO : 0B


                tmp(12) := x"0510"; -- READ TIMER
                
                tmp(13) := x"0827"; -- JUMP COMPARE PARA 2B - INICIO CLOCK
                tmp(14) := x"0000";                

                tmp(15) := x"200B"; -- VAI PARA 0B

            tmp(16) := x"0000"; -- LAND JUMP -- MANDA PRA 7 SEG : 10

                tmp(17) := x"0501";
                tmp(18) := x"0216";

                tmp(19) := x"0502";

as
a
                aaaaa
                tmp(20) := x"0215";
                
                tmp(21) := x"0503";
                tmp(22) := x"0214";
            
                tmp(23) := x"0504";
                tmp(24) := x"0213";

                tmp(25) := x"0505";
                tmp(26) := x"0212";
                
                tmp(27) := x"0506";
                tmp(28) := x"0211";

                tmp(29) := x"0519";

                tmp(30) := x"0823"; -- JUMP COMPARE AMPM ENABLE
                tmp(31) := x"0000";

                tmp(32) := x"940F";
                tmp(33) := x"0218";

                tmp(34) := x"200B";
                

            tmp(35) := x"0000"; -- LAND JUMP : 23 -- AM/PM ENABLE 7 SEG

                tmp(36) := x"0507";
                tmp(37) := x"0218";

                tmp(38) := x"200B";


            tmp(39) := x"0000"; -- LAND JUMP : 27 -- UNIDADE SEGUNDO

                tmp(40) := x"0210"; -- ZERA TIMER
                tmp(41) := x"0501"; -- LE MEMORIA UNIDADE SEGUNDOS
                tmp(42) := x"1401"; -- SOMA 1
                tmp(43) := x"0201"; -- SALVA NA RAM

                tmp(44) := x"082F"; -- JUMP COMPARE SEGUNDO > 9 PARA 2F
                tmp(45) := x"0000";
            
                tmp(46) := x"2010"; -- VOLTA PARA 10

            tmp(47) := x"0000"; -- LAND JUMP 2F -- DEZENA SEGUNDO

                tmp(48) := x"9400"; -- ZERA UNIDADE SEGUNDO
                tmp(49) := x"0201";

                tmp(50) := x"0502"; -- SOMA DEZENA SEGUNDO  
                tmp(51) := x"1401";
                tmp(52) := x"0202"; -- SALVA NA RAM

                tmp(53) := x"1404"; -- SOMA 4 PARA COMPARAR

                tmp(54) := x"0839"; -- JUMP COMPARE DEZENA SEGUNDO > 9 PARA 32
                tmp(55) := x"0000";
                
                tmp(56) := x"2010"; -- VOLTA PATA 10
            
            tmp(57) := x"0000";  -- LANDING JUMP 39 -- UNIDADE MINUTO

                tmp(58) := x"9400"; -- ZERA DEZENA SEGUNDO
                tmp(59) := x"0202";

                tmp(60) := x"0503"; -- SOMA UNIDADE MINUTO  
                tmp(61) := x"1401";
                tmp(62) := x"0203";                

                tmp(63) := x"0842"; -- JUMP COMPARE DEZENA MINUTO > 9 PARA 3B
                tmp(64) := x"0000";
                
                tmp(65) := x"2010"; -- VOLTA PATA 10

            tmp(66) := x"0000";  -- LANDING JUMP 42 -- DEZENA MINUTO

                tmp(67) := x"9400"; -- ZERA UNIDADE MINUT0
                tmp(68) := x"0203";

                tmp(69) := x"0504"; -- SOMA DEZENA MINUTO  
                tmp(70) := x"1401";
                tmp(71) := x"0204"; -- SALVA NA RAM

                tmp(72) := x"1404"; -- SOMA 4 PARA COMPARAR

                tmp(73) := x"084C"; -- JUMP COMPARE DEZENA SEGUNDO > 9 PARA 45
                tmp(74) := x"0000";
                
                tmp(75) := x"2010"; -- VOLTA PATA 10
            
            tmp(76) := x"0000";  -- LANDING JUMP 4C -- HORA PRINCIPAL

                tmp(77) := x"9400"; -- ZERA DEZENA MINUTO
                tmp(78) := x"0204";

                tmp(79) := x"0519"; -- LE AM/PM ENABLE
                
                tmp(80) := x"085C"; -- JUMP CASO AM/PM ENABLED
                tmp(81) := x"0000";

                tmp(82) := x"0506"; -- LE DEZENA HORA 
                
                tmp(83) := x"1408";-- SOMA 7

                tmp(84) := x"0867"; -- JUMP CASO DEZENA IGUAL A 2 AM/PM DISABLED -
                tmp(85) := x"0000";

                tmp(86) := x"0505"; -- LE UNIDADE DE HORA

                tmp(87) := x"1401"; -- SOMA 1

                tmp(88) := x"0205"; -- SALVA NA UNIDADE DE HORA

                tmp(89) := x"086F"; -- JUMP SE FOR MAIOR QUE 9
                tmp(90) := x"0000";

                tmp(91) := x"2010";

            tmp(92) := x"0000"; -- LANDING JUMP 5C -- HORA AM/PM ENABLE

                tmp(93) := x"0506"; -- LE DEZENA HORA 
                
                tmp(94) := x"1409";-- SOMA 9

                tmp(95) := x"0876"; -- JUMP CASO DEZENA IGUAL A 1
                tmp(96) := x"0000";

                tmp(97) := x"0505"; -- LE UNIDADE DE HORA

                tmp(98) := x"1401"; -- SOMA 1

                tmp(99) := x"0205"; -- SALVA NA UNIDADE DE HORA

                tmp(100) := x"087E"; -- JUMP SE FOR MAIOR QUE 9
                tmp(101) := x"0000";

                tmp(102) := x"2010";

            tmp(103) := x"0000"; -- LANDING JUMP 67 -- DEZENA = 2 -- AM/PM DISABLED 

                tmp(104) := x"0505"; -- SALVA UNIDADE HORA
                tmp(105) := x"1401"; -- SOMA 1
                
                tmp(106) := x"0205";

                tmp(107) := x"1406"; -- SOMA 5

                tmp(108) := x"0885"; -- JMP COMPARE ZERA TD
                tmp(109) := x"0000";

                tmp(110) := x"2010";

            tmp(111) := x"0000"; -- LANDING JUMP 6F -- AM/PM DISABLED -- UNIDADE HORA MAIOR Q 9

                tmp(112) := x"9400"; -- ZERA UNIDADE HORA
                tmp(113) := x"0205";

                tmp(114) := x"0506"; -- SOMA 1 NA DEZENA DE HORA 
                tmp(115) := x"1401";
                tmp(116) := x"0206";

                tmp(117) := x"2010";

            tmp(118) := x"0000"; -- LANDING JUMP 76 -- AM/PM ENABLED - DEZENA HORA = 1

                tmp(119) := x"0505"; -- LE UNIDADE HORA
                tmp(120) := x"1401"; -- SOMA 1

                tmp(121) := x"0205"; -- SALVA NA RAM UNIDADE HORA
                tmp(122) := x"1408"; -- SOMA 8
                
                tmp(123) := x"088A"; -- JUMP 8A CASO MAIOR QUE 9 
                tmp(124) := x"0000"; 

                tmp(125) := x"2010";

            tmp(126) := x"0000"; -- LANDING JUMP 7E -- AM/PM ENABLED - DEZENA HORA < 1

                tmp(127) := x"9400";
                tmp(128) := x"0205";

                tmp(129) := x"0506";
                tmp(130) := x"1401";
                tmp(131) := x"0206";

                tmp(132) := x"2010";

            tmp(133) := x"0000"; -- LANDING JUMP 85 -- ZERA TD -- AM/PM DISABLED

                tmp(134) := x"9400"; -- ZERA UNIDADE E DEZENA DE HORA
                tmp(135) := x"0205";
                tmp(136) := x"0206";

                tmp(137) := x"2010";

            tmp(138) := x"0000"; -- LANDING JUMP 8A -- AM/PM ENABLED - DEZENA HORA = 1 -- UNIDADE > 9

                tmp(139) := x"9400"; -- ZERA UNIDADE E DEZENA DE HORA
                tmp(140) := x"0205";
                tmp(141) := x"0206";

                tmp(142) := x"0508"; -- LE SE É AM ou PM ATUALMENTE

                tmp(143) := x"0896"; -- JUMP 96 CASO SEJA PM
                tmp(144) := x"0000";

                tmp(145) := x"940C"; -- SALVA NA RAM QUE AGORA SERA PM
                tmp(146) := x"0208"; 

                tmp(147) := x"940E"; -- SALVA PM NA RAM
                tmp(148) := x"0207";

                tmp(149) := x"2010";

            tmp(150) := x"0000"; -- LANDING JUMP 96 -- CASO PM

                tmp(151) := x"9400"; -- SALVA NA RAM QUE AGORA SERA AM
                tmp(152) := x"0208";

                tmp(153) := x"940A"; -- SALVA AM NA RAM
                tmp(154) := x"0207";

                tmp(155) := x"2010";

            tmp(156) := x"0000";






                



















        

        RETURN tmp;
    END initMemory;

    SIGNAL memROM : blocoMemoria := initMemory;

BEGIN
    Dado <= memROM (to_integer(unsigned(Endereco)));
END ARCHITECTURE;