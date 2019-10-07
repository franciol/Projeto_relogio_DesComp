LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY decodificador IS
    PORT (
        -- Input ports
        rd : IN std_logic := '0';
        wr : IN std_logic := '0';
        clk : IN std_logic;
        mem : IN std_logic_vector(7 DOWNTO 0);
        -- Output ports
        HabRam : OUT std_logic;
        Hab7seg : OUT std_logic;
        HabIO : OUT std_logic
    );
END ENTITY;

ARCHITECTURE comportamento OF decodificador IS
BEGIN
    PROCESS (ALL)
    BEGIN
        IF (unsigned(mem) < 48) THEN
            IF (wr = '1') THEN
                Hab7seg <= '1';
                HabRam <= '0';
                HabIO <= '0';
            ELSIF (rd = '1') THEN
                Hab7seg <= '0';
                HabRam <= '0';
                HabIO <= '0';
            ELSE
                Hab7seg <= '0';
                HabRam <= '0';
                HabIO <= '0';
            END IF;
        ELSIF (unsigned(mem) < 64) THEN
            IF (wr = '1') THEN
                Hab7seg <= '0';
                HabRam <= '1';
                HabIO <= '0';
            ELSIF (rd = '1') THEN
                Hab7seg <= '0';
                HabRam <= '1';
                HabIO <= '0';
            ELSE
                Hab7seg <= '0';
                HabRam <= '0';
                HabIO <= '0';
            END IF;
        ELSIF (unsigned(mem) < 80) THEN
            IF (wr = '1') THEN
                Hab7seg <= '0';
                HabRam <= '0';
                HabIO <= '0';
            ELSIF (rd = '1') THEN
                Hab7seg <= '0';
                HabRam <= '0';
                HabIO <= '1';
            ELSE
                Hab7seg <= '0';
                HabRam <= '0';
                HabIO <= '0';
            END IF;

        ELSE
            Hab7seg <= '0';
            HabRam <= '0';
            HabIO <= '0';

        END IF;
    END PROCESS;
END ARCHITECTURE;