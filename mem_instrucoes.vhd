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

                tmp(12) := x"051A"; -- LE SW DO CRONOMETRO

                tmp(13) := x"089F"; -- JUMP COMPARE 9F - CRONOMETRO
                tmp(14) := x"0000";

                tmp(15) := x"0510"; -- READ TIMER
                
                tmp(16) := x"082A"; -- JUMP COMPARE PARA 2A - INICIO CLOCK
                tmp(17) := x"0000";                

                tmp(18) := x"200B"; -- VAI PARA 0B

            tmp(19) := x"0000"; -- LAND JUMP -- MANDA PRA 7 SEG : 13

                tmp(20) := x"0501";
                tmp(21) := x"0216";

                tmp(22) := x"0502";
                tmp(23) := x"0215";
                
                tmp(24) := x"0503";
                tmp(25) := x"0214";
            
                tmp(26) := x"0504";
                tmp(27) := x"0213";

                tmp(28) := x"0505";
                tmp(29) := x"0212";
                
                tmp(30) := x"0506";
                tmp(31) := x"0211";

                tmp(32) := x"0519";

                tmp(33) := x"0826"; -- JUMP COMPARE 26 -- AMPM ENABLE
                tmp(34) := x"0000";

                tmp(35) := x"940F";
                tmp(36) := x"0218";

                tmp(37) := x"200B";
                

            tmp(38) := x"0000"; -- LAND JUMP : 26 -- AM/PM ENABLE 7 SEG

                tmp(39) := x"0507";
                tmp(40) := x"0218";

                tmp(41) := x"200B";


            tmp(42) := x"0000"; -- LAND JUMP : 2A -- UNIDADE SEGUNDO

                tmp(43) := x"0210"; -- ZERA TIMER
                tmp(44) := x"0501"; -- LE MEMORIA UNIDADE SEGUNDOS
                tmp(45) := x"1401"; -- SOMA 1
                tmp(46) := x"0201"; -- SALVA NA RAM

                tmp(47) := x"0832"; -- JUMP COMPARE SEGUNDO > 9 PARA 32
                tmp(48) := x"0000";
            
                tmp(49) := x"2013"; -- VOLTA PARA 13

            tmp(50) := x"0000"; -- LAND JUMP 32 -- DEZENA SEGUNDO

                tmp(51) := x"9400"; -- ZERA UNIDADE SEGUNDO
                tmp(52) := x"0201";

                tmp(53) := x"0502"; -- SOMA DEZENA SEGUNDO  
                tmp(54) := x"1401";
                tmp(55) := x"0202"; -- SALVA NA RAM

                tmp(56) := x"1404"; -- SOMA 4 PARA COMPARAR

                tmp(57) := x"083C"; -- JUMP COMPARE DEZENA SEGUNDO > 9 PARA 3C
                tmp(58) := x"0000";
                
                tmp(59) := x"2013"; -- VOLTA PATA 13
            
            tmp(60) := x"0000";  -- LANDING JUMP 3C -- UNIDADE MINUTO

                tmp(61) := x"9400"; -- ZERA DEZENA SEGUNDO
                tmp(62) := x"0202";

                tmp(63) := x"0503"; -- SOMA UNIDADE MINUTO  
                tmp(64) := x"1401";
                tmp(65) := x"0203";                

                tmp(66) := x"0845"; -- JUMP COMPARE DEZENA MINUTO > 9 PARA 45
                tmp(67) := x"0000";
                
                tmp(68) := x"2013"; -- VOLTA PARA 13

            tmp(69) := x"0000";  -- LANDING JUMP 45 -- DEZENA MINUTO

                tmp(70) := x"9400"; -- ZERA UNIDADE MINUT0
                tmp(71) := x"0203";

                tmp(72) := x"0504"; -- SOMA DEZENA MINUTO  
                tmp(73) := x"1401";
                tmp(74) := x"0204"; -- SALVA NA RAM

                tmp(75) := x"1404"; -- SOMA 4 PARA COMPARAR

                tmp(76) := x"084F"; -- JUMP COMPARE DEZENA SEGUNDO > 9 PARA 4F
                tmp(77) := x"0000";
                
                tmp(78) := x"2013"; -- VOLTA PARA 13
            
            tmp(79) := x"0000";  -- LANDING JUMP 4F -- HORA PRINCIPAL

                tmp(80) := x"9400"; -- ZERA DEZENA MINUTO
                tmp(81) := x"0204";

                tmp(82) := x"0519"; -- LE AM/PM ENABLE
                
                tmp(83) := x"085F"; -- JUMP CASO AM/PM ENABLED
                tmp(84) := x"0000";

                tmp(85) := x"0506"; -- LE DEZENA HORA 
                
                tmp(86) := x"1408";-- SOMA 7

                tmp(87) := x"086A"; -- JUMP CASO DEZENA IGUAL A 2 AM/PM DISABLED -
                tmp(88) := x"0000";

                tmp(89) := x"0505"; -- LE UNIDADE DE HORA

                tmp(90) := x"1401"; -- SOMA 1

                tmp(91) := x"0205"; -- SALVA NA UNIDADE DE HORA

                tmp(92) := x"0872"; -- JUMP SE FOR MAIOR QUE 9
                tmp(93) := x"0000";

                tmp(94) := x"2013";

            tmp(95) := x"0000"; -- LANDING JUMP 5F -- HORA AM/PM ENABLE

                tmp(96) := x"0506"; -- LE DEZENA HORA 
                
                tmp(97) := x"1409";-- SOMA 9

                tmp(98) := x"0879"; -- JUMP CASO DEZENA IGUAL A 1
                tmp(99) := x"0000";

                tmp(100) := x"0505"; -- LE UNIDADE DE HORA

                tmp(101) := x"1401"; -- SOMA 1

                tmp(102) := x"0205"; -- SALVA NA UNIDADE DE HORA

                tmp(103) := x"0881"; -- JUMP SE FOR MAIOR QUE 9
                tmp(104) := x"0000";

                tmp(105) := x"2013";

            tmp(106) := x"0000"; -- LANDING JUMP 6A -- DEZENA = 2 -- AM/PM DISABLED 

                tmp(107) := x"0505"; -- SALVA UNIDADE HORA
                tmp(108) := x"1401"; -- SOMA 1
                
                tmp(109) := x"0205";

                tmp(110) := x"1406"; -- SOMA 5

                tmp(111) := x"0888"; -- JMP COMPARE ZERA TD
                tmp(112) := x"0000";

                tmp(113) := x"2013";

            tmp(114) := x"0000"; -- LANDING JUMP 72 -- AM/PM DISABLED -- UNIDADE HORA MAIOR Q 9

                tmp(115) := x"9400"; -- ZERA UNIDADE HORA
                tmp(116) := x"0205";

                tmp(117) := x"0506"; -- SOMA 1 NA DEZENA DE HORA 
                tmp(118) := x"1401";
                tmp(119) := x"0206";

                tmp(120) := x"2013";

            tmp(121) := x"0000"; -- LANDING JUMP 79 -- AM/PM ENABLED - DEZENA HORA = 1

                tmp(122) := x"0505"; -- LE UNIDADE HORA
                tmp(123) := x"1401"; -- SOMA 1

                tmp(124) := x"0205"; -- SALVA NA RAM UNIDADE HORA
                tmp(125) := x"1408"; -- SOMA 8
                
                tmp(126) := x"088D"; -- JUMP 8D CASO MAIOR QUE 9 
                tmp(127) := x"0000"; 

                tmp(128) := x"2013";

            tmp(129) := x"0000"; -- LANDING JUMP 81 -- AM/PM ENABLED - DEZENA HORA < 1

                tmp(130) := x"9400";
                tmp(131) := x"0205";

                tmp(132) := x"0506";
                tmp(133) := x"1401";
                tmp(134) := x"0206";

                tmp(135) := x"2013";

            tmp(136) := x"0000"; -- LANDING JUMP 88 -- ZERA TD -- AM/PM DISABLED

                tmp(137) := x"9400"; -- ZERA UNIDADE E DEZENA DE HORA
                tmp(138) := x"0205";
                tmp(139) := x"0206";

                tmp(140) := x"2013";

            tmp(141) := x"0000"; -- LANDING JUMP 8D -- AM/PM ENABLED - DEZENA HORA = 1 -- UNIDADE > 9

                tmp(142) := x"9400"; -- ZERA UNIDADE E DEZENA DE HORA
                tmp(143) := x"0205";
                tmp(144) := x"0206";

                tmp(145) := x"0508"; -- LE SE É AM ou PM ATUALMENTE

                tmp(146) := x"0896"; -- JUMP 99 CASO SEJA PM
                tmp(147) := x"0000";

                tmp(148) := x"940C"; -- SALVA NA RAM QUE AGORA SERA PM
                tmp(149) := x"0208"; 

                tmp(150) := x"940E"; -- SALVA PM NA RAM
                tmp(151) := x"0207";

                tmp(152) := x"2013";

            tmp(153) := x"0000"; -- LANDING JUMP 99 -- CASO PM

                tmp(154) := x"9400"; -- SALVA NA RAM QUE AGORA SERA AM
                tmp(155) := x"0208";

                tmp(156) := x"940A"; -- SALVA AM NA RAM
                tmp(157) := x"0207";

                tmp(158) := x"2013";

            tmp(159) := x"0000"; -- LANDING JUMP 9F -- CRONOMETRO

                tmp(160) := x"9408";
                tmp(161) := x"0218";
                tmp(161) := x"0211";
                tmp(161) := x"0212";

                tmP(162) := x"2013";

            tmp(163) := x"0000";




                



















        

        RETURN tmp;
    END initMemory;

    SIGNAL memROM : blocoMemoria := initMemory;

BEGIN
    Dado <= memROM (to_integer(unsigned(Endereco)));
END ARCHITECTURE;