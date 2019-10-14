
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY seg7ALL IS
    PORT (
        -- Input ports
        dadoHex : IN std_logic_vector(3 DOWNTO 0);
        apaga : IN std_logic := '0';
        negativo : IN std_logic := '0';
        overFlow : IN std_logic := '0';
        CLK, RESET, ENABLE : IN std_logic;
        endereco7SEG : IN std_logic_vector(7 DOWNTO 0);

        -- Output ports
        saida7seg_US, saida7seg_DS, saida7seg_UM, saida7seg_DM, saida7seg_UH, saida7seg_DH, saida7seg_NADA, saida7seg_AMPM : OUT std_logic_vector(6 DOWNTO 0) -- := (others => '1')
    );
END ENTITY;
ARCHITECTURE FSMH OF seg7ALL IS
    SIGNAL hab_AMPM, hab_US, hab_DS, hab_UM, hab_DM, hab_UH, hab_DH, ler_US, ler_DS, ler_UM, ler_DM, ler_UH, ler_DH : STD_LOGIC;
    SIGNAL dado_AMPM, dado_US, dado_DS, dado_UM, dado_DM, dado_UH, dado_DH : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

    REGSEG7_US : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => 4
        )
        PORT MAP(
            DIN => dadoHex,
            DOUT => dado_US,
            ENABLE => hab_US,
            CLK => CLK,
            RST => RESET
        );

    REGSEG7_DS : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => 4
        )
        PORT MAP(
            DIN => dadoHex,
            DOUT => dado_DS,
            ENABLE => hab_DS,
            CLK => CLK,
            RST => RESET
        );

    REGSEG7_UM : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => 4
        )
        PORT MAP(
            DIN => dadoHex,
            DOUT => dado_UM,
            ENABLE => hab_UM,
            CLK => CLK,
            RST => RESET
        );

    REGSEG7_DM : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => 4
        )
        PORT MAP(
            DIN => dadoHex,
            DOUT => dado_DM,
            ENABLE => hab_DM,
            CLK => CLK,
            RST => RESET
        );

    REGSEG7_UH : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => 4
        )
        PORT MAP(
            DIN => dadoHex,
            DOUT => dado_UH,
            ENABLE => hab_UH,
            CLK => CLK,
            RST => RESET
        );

    REGSEG7_DH : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => 4
        )
        PORT MAP(
            DIN => dadoHex,
            DOUT => dado_DH,
            ENABLE => hab_DH,
            CLK => CLK,
            RST => RESET
        );

    REGSEG7_AMPM : ENTITY work.registradorGenerico
        GENERIC MAP(
            larguraDados => 4
        )
        PORT MAP(
            DIN => dadoHex,
            DOUT => dado_AMPM,
            ENABLE => hab_AMPM,
            CLK => CLK,
            RST => RESET
        );

    SEG7_US : ENTITY work.seg7
        PORT MAP(
            dadoHex => dado_US,
            apaga => '0',
            negativo => '0',
            overflow => '0',
            saida7seg => saida7seg_US
        );

    SEG7_DS : ENTITY work.seg7
        PORT MAP(
            dadoHex => dado_DS,
            apaga => '0',
            negativo => '0',
            overflow => '0',
            saida7seg => saida7seg_DS
        );

    SEG7_UM : ENTITY work.seg7
        PORT MAP(
            dadoHex => dado_UM,
            apaga => '0',
            negativo => '0',
            overflow => '0',
            saida7seg => saida7seg_UM
        );

    SEG7_DM : ENTITY work.seg7
        PORT MAP(
            dadoHex => dado_DM,
            apaga => '0',
            negativo => '0',
            overflow => '0',
            saida7seg => saida7seg_DM
        );

    SEG7_UH : ENTITY work.seg7
        PORT MAP(
            dadoHex => dado_UH,
            apaga => '0',
            negativo => '0',
            overflow => '0',
            saida7seg => saida7seg_UH
        );

    SEG7_DH : ENTITY work.seg7
        PORT MAP(
            dadoHex => dado_DH,
            apaga => '0',
            negativo => '0',
            overflow => '0',
            saida7seg => saida7seg_DH
        );

    SEG7_NADA : ENTITY work.seg7
        PORT MAP(
            dadoHex => "1111",
            apaga => '0',
            negativo => '0',
            overflow => '0',
            saida7seg => saida7seg_NADA
        );

    SEG7_AMPM : ENTITY work.seg7
        PORT MAP(
            dadoHex => dado_AMPM,
            apaga => '0',
            negativo => '0',
            overflow => '0',
            saida7seg => saida7seg_AMPM
        );
    hab_US <=
        '1' WHEN (endereco7SEG = "00010001" AND ENABLE = '1') ELSE
        '0';
    hab_DS <=
        '1' WHEN (endereco7SEG = "00010010" AND ENABLE = '1') ELSE
        '0';
    hab_UM <=
        '1' WHEN (endereco7SEG = "00010011" AND ENABLE = '1') ELSE
        '0';
    hab_DM <=
        '1' WHEN (endereco7SEG = "00010100" AND ENABLE = '1') ELSE
        '0';
    hab_UH <=
        '1' WHEN (endereco7SEG = "00010101" AND ENABLE = '1') ELSE
        '0';
    hab_DH <=
        '1' WHEN (endereco7SEG = "00010110" AND ENABLE = '1') ELSE
        '0';
    hab_AMPM <=
        '1' WHEN (endereco7SEG = "00011000" AND ENABLE = '1') ELSE
        '0';
END ARCHITECTURE;