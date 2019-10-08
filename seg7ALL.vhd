
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY seg7ALL IS
    PORT (
        -- Input ports
        dadoHex : IN std_logic_vector(3 DOWNTO 0);
        apaga : IN std_logic := '0';
        negativo : IN std_logic := '0';
        overFlow : IN std_logic := '0';
        CLK, RESET, ENABLE, READ_DATA : IN std_logic;
        endereco7SEG : IN std_logic_vector(7 DOWNTO 0);

        -- Output ports
        saida7seg_US, saida7seg_DS, saida7seg_UM, saida7seg_DM, saida7seg_UH, saida7seg_DH : OUT std_logic_vector(6 DOWNTO 0); -- := (others => '1')
        leituraDado : OUT std_logic_vector(3 DOWNTO 0)
    );
END ENTITY;
ARCHITECTURE FSMH OF seg7ALL IS
    SIGNAL hab_US, hab_DS, hab_UM, hab_DM, hab_UH, hab_DH, ler_US, ler_DS, ler_UM, ler_DM, ler_UH, ler_DH : STD_LOGIC;
    SIGNAL dado_US, dado_DS, dado_UM, dado_DM, dado_UH, dado_DH : STD_LOGIC_VECTOR(3 DOWNTO 0);
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
		  
		  PROCESS (ALL)
    BEGIN
        IF (ENABLE = '1') THEN
		  leituraDado <= "1111";
            IF (endereco7SEG = "00001000") THEN
                hab_US <= '1';
                hab_DS <= '0';
                hab_UM <= '0';
                hab_DM <= '0';
                hab_UH <= '0';
                hab_DH <= '0';
            ELSIF (endereco7SEG = "00001001") THEN
                hab_US <= '0';
                hab_DS <= '1';
                hab_UM <= '0';
                hab_DM <= '0';
                hab_UH <= '0';
                hab_DH <= '0';
            ELSIF (endereco7SEG = "00001010") THEN
                hab_US <= '0';
                hab_DS <= '0';
                hab_UM <= '1';
                hab_DM <= '0';
                hab_UH <= '0';
                hab_DH <= '0';
            ELSIF (endereco7SEG = "00001011") THEN
                hab_US <= '0';
                hab_DS <= '0';
                hab_UM <= '0';
                hab_DM <= '1';
                hab_UH <= '0';
                hab_DH <= '0';
            ELSIF (endereco7SEG = "00001100") THEN
                hab_US <= '0';
                hab_DS <= '0';
                hab_UM <= '0';
                hab_DM <= '0';
                hab_UH <= '1';
                hab_DH <= '0';
            ELSIF (endereco7SEG = "00001101") THEN
                hab_US <= '0';
                hab_DS <= '0';
                hab_UM <= '0';
                hab_DM <= '0';
                hab_UH <= '0';
                hab_DH <= '1';
            ELSE
                hab_US <= '0';
                hab_DS <= '0';
                hab_UM <= '0';
                hab_DM <= '0';
                hab_UH <= '0';
                hab_DH <= '0';
            END IF;
        ELSIF (READ_DATA) THEN
            hab_US <= '0';
            hab_DS <= '0';
            hab_UM <= '0';
            hab_DM <= '0';
            hab_UH <= '0';
            hab_DH <= '0';
            IF (endereco7SEG = "00001000") THEN
                leituraDado <= dado_US;
            ELSIF (endereco7SEG = "00001001") THEN
                leituraDado <= dado_DS;
            ELSIF (endereco7SEG = "00001010") THEN
                leituraDado <= dado_UM;
            ELSIF (endereco7SEG = "00001011") THEN
                leituraDado <= dado_DM;
            ELSIF (endereco7SEG = "00001100") THEN
                leituraDado <= dado_UH;
            ELSIF (endereco7SEG = "00001101") THEN
                leituraDado <= dado_DH;
            ELSE
                leituraDado <= "1111";
            END IF;

        ELSE
            hab_US <= '0';
            hab_DS <= '0';
            hab_UM <= '0';
            hab_DM <= '0';
            hab_UH <= '0';
            hab_DH <= '0';
				leituraDado <= "1111";
        END IF;

    END PROCESS;
END ARCHITECTURE;