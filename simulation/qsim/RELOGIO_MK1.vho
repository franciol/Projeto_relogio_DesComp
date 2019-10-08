-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/08/2019 11:15:24"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW0 : IN std_logic;
	KEY3 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	DATA : OUT std_logic_vector(3 DOWNTO 0);
	CLK_OUT : OUT std_logic;
	HAB7SEG_OUT : OUT std_logic;
	HABRAM_OUT : OUT std_logic;
	HAB_IO_OUT : OUT std_logic;
	ENDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END relogio;

ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_KEY3 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DATA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK_OUT : std_logic;
SIGNAL ww_HAB7SEG_OUT : std_logic;
SIGNAL ww_HABRAM_OUT : std_logic;
SIGNAL ww_HAB_IO_OUT : std_logic;
SIGNAL ww_ENDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador[0]~1_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador[1]~0_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[1]~11_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[1]~12\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[2]~13_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[2]~14\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[3]~15_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[3]~16\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[4]~17_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[4]~18\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[5]~19_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[5]~20\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[6]~21_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[6]~22\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[7]~23_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[7]~24\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[8]~25_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[8]~26\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[9]~27_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[9]~28\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[10]~29_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[10]~30\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador[11]~31_combout\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \MUX_BASE_TEMPO|saida_MUX~combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~8_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~9\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~10_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~11\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~12_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~13\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~14_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~15\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~16_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~17\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~18_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~19\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~20_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~21\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~22_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~1_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~5_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~0_combout\ : std_logic;
SIGNAL \CPU|ULA|SAIDA[0]~5_cout\ : std_logic;
SIGNAL \CPU|ULA|SAIDA[0]~6_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~2_combout\ : std_logic;
SIGNAL \CPU|UC|MUXHAB~q\ : std_logic;
SIGNAL \CPU|ROM|memROM~3_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|UC|writeEnable~q\ : std_logic;
SIGNAL \SEG7ALL|hab_DS~0_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1_combout\ : std_logic;
SIGNAL \CPU|ULA|SAIDA[0]~7\ : std_logic;
SIGNAL \CPU|ULA|SAIDA[1]~8_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|ULA|SAIDA[1]~9\ : std_logic;
SIGNAL \CPU|ULA|SAIDA[2]~10_combout\ : std_logic;
SIGNAL \CPU|ULA|SAIDA[2]~11\ : std_logic;
SIGNAL \CPU|ULA|SAIDA[3]~12_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \SEG7ALL|hab_US~0_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CPU|UC|OPCODE\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CPU|ACU|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG7ALL|REGSEG7_US|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BASE_DE_TEMPO_1|contador\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \SEG7ALL|REGSEG7_DS|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|ULA|SAIDA\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SEG7ALL|SEG7_US|ALT_INV_rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|ALT_INV_rascSaida7seg[6]~6_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW0 <= SW0;
ww_KEY3 <= KEY3;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
DATA <= ww_DATA;
CLK_OUT <= ww_CLK_OUT;
HAB7SEG_OUT <= ww_HAB7SEG_OUT;
HABRAM_OUT <= ww_HABRAM_OUT;
HAB_IO_OUT <= ww_HAB_IO_OUT;
ENDR <= ww_ENDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\SEG7ALL|SEG7_US|ALT_INV_rascSaida7seg[6]~6_combout\ <= NOT \SEG7ALL|SEG7_US|rascSaida7seg[6]~6_combout\;
\SEG7ALL|SEG7_DS|ALT_INV_rascSaida7seg[6]~6_combout\ <= NOT \SEG7ALL|SEG7_DS|rascSaida7seg[6]~6_combout\;

\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(4));

\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(6));

\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(6));

\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(6));

\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(0));

\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(1));

\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(2));

\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(3));

\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(4));

\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(5));

\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|ALT_INV_rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(6));

\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(0));

\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(1));

\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(2));

\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(3));

\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(4));

\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(5));

\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|ALT_INV_rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(6));

\DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ACU|DOUT\(0),
	devoe => ww_devoe,
	o => ww_DATA(0));

\DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ACU|DOUT\(1),
	devoe => ww_devoe,
	o => ww_DATA(1));

\DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ACU|DOUT\(2),
	devoe => ww_devoe,
	o => ww_DATA(2));

\DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ACU|DOUT\(3),
	devoe => ww_devoe,
	o => ww_DATA(3));

\CLK_OUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_BASE_TEMPO|saida_MUX~combout\,
	devoe => ww_devoe,
	o => ww_CLK_OUT);

\HAB7SEG_OUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|UC|writeEnable~q\,
	devoe => ww_devoe,
	o => ww_HAB7SEG_OUT);

\HABRAM_OUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HABRAM_OUT);

\HAB_IO_OUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HAB_IO_OUT);

\ENDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_ENDR(0));

\ENDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENDR(1));

\ENDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENDR(2));

\ENDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_ENDR(3));

\ENDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENDR(4));

\ENDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENDR(5));

\ENDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENDR(6));

\ENDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ENDR(7));

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\BASE_DE_TEMPO_2|contador[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|contador[0]~1_combout\ = !\BASE_DE_TEMPO_2|contador\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(0),
	combout => \BASE_DE_TEMPO_2|contador[0]~1_combout\);

\BASE_DE_TEMPO_2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_2|contador[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(0));

\BASE_DE_TEMPO_2|contador[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|contador[1]~0_combout\ = \BASE_DE_TEMPO_2|contador\(1) $ (\BASE_DE_TEMPO_2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BASE_DE_TEMPO_2|contador\(1),
	datad => \BASE_DE_TEMPO_2|contador\(0),
	combout => \BASE_DE_TEMPO_2|contador[1]~0_combout\);

\BASE_DE_TEMPO_2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_2|contador[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(1));

\BASE_DE_TEMPO_1|contador[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador[1]~11_combout\ = (\BASE_DE_TEMPO_2|contador\(0) & (\BASE_DE_TEMPO_1|contador\(1) $ (VCC))) # (!\BASE_DE_TEMPO_2|contador\(0) & (\BASE_DE_TEMPO_1|contador\(1) & VCC))
-- \BASE_DE_TEMPO_1|contador[1]~12\ = CARRY((\BASE_DE_TEMPO_2|contador\(0) & \BASE_DE_TEMPO_1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(0),
	datab => \BASE_DE_TEMPO_1|contador\(1),
	datad => VCC,
	combout => \BASE_DE_TEMPO_1|contador[1]~11_combout\,
	cout => \BASE_DE_TEMPO_1|contador[1]~12\);

\BASE_DE_TEMPO_1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|contador[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(1));

\BASE_DE_TEMPO_1|contador[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador[2]~13_combout\ = (\BASE_DE_TEMPO_1|contador\(2) & (!\BASE_DE_TEMPO_1|contador[1]~12\)) # (!\BASE_DE_TEMPO_1|contador\(2) & ((\BASE_DE_TEMPO_1|contador[1]~12\) # (GND)))
-- \BASE_DE_TEMPO_1|contador[2]~14\ = CARRY((!\BASE_DE_TEMPO_1|contador[1]~12\) # (!\BASE_DE_TEMPO_1|contador\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(2),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|contador[1]~12\,
	combout => \BASE_DE_TEMPO_1|contador[2]~13_combout\,
	cout => \BASE_DE_TEMPO_1|contador[2]~14\);

\BASE_DE_TEMPO_1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|contador[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(2));

\BASE_DE_TEMPO_1|contador[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador[3]~15_combout\ = (\BASE_DE_TEMPO_1|contador\(3) & (\BASE_DE_TEMPO_1|contador[2]~14\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(3) & (!\BASE_DE_TEMPO_1|contador[2]~14\ & VCC))
-- \BASE_DE_TEMPO_1|contador[3]~16\ = CARRY((\BASE_DE_TEMPO_1|contador\(3) & !\BASE_DE_TEMPO_1|contador[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(3),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|contador[2]~14\,
	combout => \BASE_DE_TEMPO_1|contador[3]~15_combout\,
	cout => \BASE_DE_TEMPO_1|contador[3]~16\);

\BASE_DE_TEMPO_1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|contador[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(3));

\BASE_DE_TEMPO_1|contador[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador[4]~17_combout\ = (\BASE_DE_TEMPO_1|contador\(4) & (!\BASE_DE_TEMPO_1|contador[3]~16\)) # (!\BASE_DE_TEMPO_1|contador\(4) & ((\BASE_DE_TEMPO_1|contador[3]~16\) # (GND)))
-- \BASE_DE_TEMPO_1|contador[4]~18\ = CARRY((!\BASE_DE_TEMPO_1|contador[3]~16\) # (!\BASE_DE_TEMPO_1|contador\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(4),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|contador[3]~16\,
	combout => \BASE_DE_TEMPO_1|contador[4]~17_combout\,
	cout => \BASE_DE_TEMPO_1|contador[4]~18\);

\BASE_DE_TEMPO_1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|contador[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(4));

\BASE_DE_TEMPO_1|contador[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador[5]~19_combout\ = (\BASE_DE_TEMPO_1|contador\(5) & (\BASE_DE_TEMPO_1|contador[4]~18\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(5) & (!\BASE_DE_TEMPO_1|contador[4]~18\ & VCC))
-- \BASE_DE_TEMPO_1|contador[5]~20\ = CARRY((\BASE_DE_TEMPO_1|contador\(5) & !\BASE_DE_TEMPO_1|contador[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(5),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|contador[4]~18\,
	combout => \BASE_DE_TEMPO_1|contador[5]~19_combout\,
	cout => \BASE_DE_TEMPO_1|contador[5]~20\);

\BASE_DE_TEMPO_1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|contador[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(5));

\BASE_DE_TEMPO_1|contador[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador[6]~21_combout\ = (\BASE_DE_TEMPO_1|contador\(6) & (!\BASE_DE_TEMPO_1|contador[5]~20\)) # (!\BASE_DE_TEMPO_1|contador\(6) & ((\BASE_DE_TEMPO_1|contador[5]~20\) # (GND)))
-- \BASE_DE_TEMPO_1|contador[6]~22\ = CARRY((!\BASE_DE_TEMPO_1|contador[5]~20\) # (!\BASE_DE_TEMPO_1|contador\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(6),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|contador[5]~20\,
	combout => \BASE_DE_TEMPO_1|contador[6]~21_combout\,
	cout => \BASE_DE_TEMPO_1|contador[6]~22\);

\BASE_DE_TEMPO_1|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|contador[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(6));

\BASE_DE_TEMPO_1|contador[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador[7]~23_combout\ = (\BASE_DE_TEMPO_1|contador\(7) & (\BASE_DE_TEMPO_1|contador[6]~22\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(7) & (!\BASE_DE_TEMPO_1|contador[6]~22\ & VCC))
-- \BASE_DE_TEMPO_1|contador[7]~24\ = CARRY((\BASE_DE_TEMPO_1|contador\(7) & !\BASE_DE_TEMPO_1|contador[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(7),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|contador[6]~22\,
	combout => \BASE_DE_TEMPO_1|contador[7]~23_combout\,
	cout => \BASE_DE_TEMPO_1|contador[7]~24\);

\BASE_DE_TEMPO_1|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|contador[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(7));

\BASE_DE_TEMPO_1|contador[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador[8]~25_combout\ = (\BASE_DE_TEMPO_1|contador\(8) & (!\BASE_DE_TEMPO_1|contador[7]~24\)) # (!\BASE_DE_TEMPO_1|contador\(8) & ((\BASE_DE_TEMPO_1|contador[7]~24\) # (GND)))
-- \BASE_DE_TEMPO_1|contador[8]~26\ = CARRY((!\BASE_DE_TEMPO_1|contador[7]~24\) # (!\BASE_DE_TEMPO_1|contador\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(8),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|contador[7]~24\,
	combout => \BASE_DE_TEMPO_1|contador[8]~25_combout\,
	cout => \BASE_DE_TEMPO_1|contador[8]~26\);

\BASE_DE_TEMPO_1|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|contador[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(8));

\BASE_DE_TEMPO_1|contador[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador[9]~27_combout\ = (\BASE_DE_TEMPO_1|contador\(9) & (\BASE_DE_TEMPO_1|contador[8]~26\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(9) & (!\BASE_DE_TEMPO_1|contador[8]~26\ & VCC))
-- \BASE_DE_TEMPO_1|contador[9]~28\ = CARRY((\BASE_DE_TEMPO_1|contador\(9) & !\BASE_DE_TEMPO_1|contador[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(9),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|contador[8]~26\,
	combout => \BASE_DE_TEMPO_1|contador[9]~27_combout\,
	cout => \BASE_DE_TEMPO_1|contador[9]~28\);

\BASE_DE_TEMPO_1|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|contador[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(9));

\BASE_DE_TEMPO_1|contador[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador[10]~29_combout\ = (\BASE_DE_TEMPO_1|contador\(10) & (!\BASE_DE_TEMPO_1|contador[9]~28\)) # (!\BASE_DE_TEMPO_1|contador\(10) & ((\BASE_DE_TEMPO_1|contador[9]~28\) # (GND)))
-- \BASE_DE_TEMPO_1|contador[10]~30\ = CARRY((!\BASE_DE_TEMPO_1|contador[9]~28\) # (!\BASE_DE_TEMPO_1|contador\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(10),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|contador[9]~28\,
	combout => \BASE_DE_TEMPO_1|contador[10]~29_combout\,
	cout => \BASE_DE_TEMPO_1|contador[10]~30\);

\BASE_DE_TEMPO_1|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|contador[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(10));

\BASE_DE_TEMPO_1|contador[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador[11]~31_combout\ = \BASE_DE_TEMPO_1|contador\(11) $ (!\BASE_DE_TEMPO_1|contador[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(11),
	cin => \BASE_DE_TEMPO_1|contador[10]~30\,
	combout => \BASE_DE_TEMPO_1|contador[11]~31_combout\);

\BASE_DE_TEMPO_1|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|contador[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(11));

\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

\MUX_BASE_TEMPO|saida_MUX\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_BASE_TEMPO|saida_MUX~combout\ = LCELL((\SW0~input_o\ & ((\BASE_DE_TEMPO_1|contador\(11)))) # (!\SW0~input_o\ & (\BASE_DE_TEMPO_2|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(1),
	datab => \BASE_DE_TEMPO_1|contador\(11),
	datac => \SW0~input_o\,
	combout => \MUX_BASE_TEMPO|saida_MUX~combout\);

\CPU|PC|DOUT[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[0]~8_combout\ = \CPU|PC|DOUT\(0) $ (VCC)
-- \CPU|PC|DOUT[0]~9\ = CARRY(\CPU|PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(0),
	datad => VCC,
	combout => \CPU|PC|DOUT[0]~8_combout\,
	cout => \CPU|PC|DOUT[0]~9\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|PC|DOUT[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CPU|PC|DOUT[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[1]~10_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[0]~9\)) # (!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT[0]~9\) # (GND)))
-- \CPU|PC|DOUT[1]~11\ = CARRY((!\CPU|PC|DOUT[0]~9\) # (!\CPU|PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datad => VCC,
	cin => \CPU|PC|DOUT[0]~9\,
	combout => \CPU|PC|DOUT[1]~10_combout\,
	cout => \CPU|PC|DOUT[1]~11\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|PC|DOUT[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\CPU|PC|DOUT[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[2]~12_combout\ = (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT[1]~11\ $ (GND))) # (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[1]~11\ & VCC))
-- \CPU|PC|DOUT[2]~13\ = CARRY((\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(2),
	datad => VCC,
	cin => \CPU|PC|DOUT[1]~11\,
	combout => \CPU|PC|DOUT[2]~12_combout\,
	cout => \CPU|PC|DOUT[2]~13\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|PC|DOUT[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\CPU|PC|DOUT[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[3]~14_combout\ = (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[2]~13\)) # (!\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT[2]~13\) # (GND)))
-- \CPU|PC|DOUT[3]~15\ = CARRY((!\CPU|PC|DOUT[2]~13\) # (!\CPU|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(3),
	datad => VCC,
	cin => \CPU|PC|DOUT[2]~13\,
	combout => \CPU|PC|DOUT[3]~14_combout\,
	cout => \CPU|PC|DOUT[3]~15\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|PC|DOUT[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\CPU|PC|DOUT[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[4]~16_combout\ = (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT[3]~15\ $ (GND))) # (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT[3]~15\ & VCC))
-- \CPU|PC|DOUT[4]~17\ = CARRY((\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(4),
	datad => VCC,
	cin => \CPU|PC|DOUT[3]~15\,
	combout => \CPU|PC|DOUT[4]~16_combout\,
	cout => \CPU|PC|DOUT[4]~17\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|PC|DOUT[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\CPU|PC|DOUT[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[5]~18_combout\ = (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[4]~17\)) # (!\CPU|PC|DOUT\(5) & ((\CPU|PC|DOUT[4]~17\) # (GND)))
-- \CPU|PC|DOUT[5]~19\ = CARRY((!\CPU|PC|DOUT[4]~17\) # (!\CPU|PC|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(5),
	datad => VCC,
	cin => \CPU|PC|DOUT[4]~17\,
	combout => \CPU|PC|DOUT[5]~18_combout\,
	cout => \CPU|PC|DOUT[5]~19\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|PC|DOUT[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|PC|DOUT[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[6]~20_combout\ = (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT[5]~19\ $ (GND))) # (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT[5]~19\ & VCC))
-- \CPU|PC|DOUT[6]~21\ = CARRY((\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(6),
	datad => VCC,
	cin => \CPU|PC|DOUT[5]~19\,
	combout => \CPU|PC|DOUT[6]~20_combout\,
	cout => \CPU|PC|DOUT[6]~21\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|PC|DOUT[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|PC|DOUT[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[7]~22_combout\ = \CPU|PC|DOUT\(7) $ (\CPU|PC|DOUT[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(7),
	cin => \CPU|PC|DOUT[6]~21\,
	combout => \CPU|PC|DOUT[7]~22_combout\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|PC|DOUT[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|ROM|memROM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(4),
	datab => \CPU|PC|DOUT\(5),
	datac => \CPU|PC|DOUT\(6),
	datad => \CPU|PC|DOUT\(7),
	combout => \CPU|ROM|memROM~1_combout\);

\CPU|ROM|memROM~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~5_combout\ = (\CPU|ROM|memROM~1_combout\ & (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~1_combout\,
	datab => \CPU|PC|DOUT\(1),
	datac => \CPU|PC|DOUT\(2),
	datad => \CPU|PC|DOUT\(3),
	combout => \CPU|ROM|memROM~5_combout\);

\CPU|UC|OPCODE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ROM|memROM~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|UC|OPCODE\(1));

\CPU|ROM|memROM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~0_combout\ = (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3)))) # (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(0),
	datab => \CPU|PC|DOUT\(1),
	datac => \CPU|PC|DOUT\(2),
	datad => \CPU|PC|DOUT\(3),
	combout => \CPU|ROM|memROM~0_combout\);

\CPU|ULA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~0_combout\ = \CPU|UC|OPCODE\(1) $ (((\CPU|ROM|memROM~0_combout\ & \CPU|ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|UC|OPCODE\(1),
	datac => \CPU|ROM|memROM~0_combout\,
	datad => \CPU|ROM|memROM~1_combout\,
	combout => \CPU|ULA|Add0~0_combout\);

\CPU|ULA|SAIDA[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|SAIDA[0]~5_cout\ = CARRY(\CPU|UC|OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|OPCODE\(1),
	datad => VCC,
	cout => \CPU|ULA|SAIDA[0]~5_cout\);

\CPU|ULA|SAIDA[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|SAIDA[0]~6_combout\ = (\CPU|ULA|Add0~0_combout\ & ((\CPU|ACU|DOUT\(0) & (\CPU|ULA|SAIDA[0]~5_cout\ & VCC)) # (!\CPU|ACU|DOUT\(0) & (!\CPU|ULA|SAIDA[0]~5_cout\)))) # (!\CPU|ULA|Add0~0_combout\ & ((\CPU|ACU|DOUT\(0) & (!\CPU|ULA|SAIDA[0]~5_cout\)) 
-- # (!\CPU|ACU|DOUT\(0) & ((\CPU|ULA|SAIDA[0]~5_cout\) # (GND)))))
-- \CPU|ULA|SAIDA[0]~7\ = CARRY((\CPU|ULA|Add0~0_combout\ & (!\CPU|ACU|DOUT\(0) & !\CPU|ULA|SAIDA[0]~5_cout\)) # (!\CPU|ULA|Add0~0_combout\ & ((!\CPU|ULA|SAIDA[0]~5_cout\) # (!\CPU|ACU|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~0_combout\,
	datab => \CPU|ACU|DOUT\(0),
	datad => VCC,
	cin => \CPU|ULA|SAIDA[0]~5_cout\,
	combout => \CPU|ULA|SAIDA[0]~6_combout\,
	cout => \CPU|ULA|SAIDA[0]~7\);

\CPU|ROM|memROM~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~2_combout\ = (\CPU|ROM|memROM~0_combout\ & \CPU|ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~0_combout\,
	datab => \CPU|ROM|memROM~1_combout\,
	combout => \CPU|ROM|memROM~2_combout\);

\CPU|ULA|SAIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ULA|SAIDA[0]~6_combout\,
	asdata => \CPU|ROM|memROM~2_combout\,
	sload => \CPU|UC|OPCODE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ULA|SAIDA\(0));

\CPU|UC|MUXHAB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ROM|memROM~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|UC|MUXHAB~q\);

\CPU|ACU|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ULA|SAIDA\(0),
	ena => \CPU|UC|MUXHAB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(0));

\CPU|ROM|memROM~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(4) & ((\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))) # (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(2),
	datac => \CPU|PC|DOUT\(3),
	datad => \CPU|PC|DOUT\(4),
	combout => \CPU|ROM|memROM~3_combout\);

\CPU|ROM|memROM~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~4_combout\ = (\CPU|ROM|memROM~3_combout\ & (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~3_combout\,
	datab => \CPU|PC|DOUT\(5),
	datac => \CPU|PC|DOUT\(6),
	datad => \CPU|PC|DOUT\(7),
	combout => \CPU|ROM|memROM~4_combout\);

\CPU|UC|writeEnable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ROM|memROM~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|UC|writeEnable~q\);

\SEG7ALL|hab_DS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|hab_DS~0_combout\ = (\CPU|UC|writeEnable~q\ & (\CPU|ROM|memROM~0_combout\ & (\CPU|ROM|memROM~1_combout\ & \CPU|ROM|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|writeEnable~q\,
	datab => \CPU|ROM|memROM~0_combout\,
	datac => \CPU|ROM|memROM~1_combout\,
	datad => \CPU|ROM|memROM~3_combout\,
	combout => \SEG7ALL|hab_DS~0_combout\);

\SEG7ALL|REGSEG7_DS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ACU|DOUT\(0),
	ena => \SEG7ALL|hab_DS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DS|DOUT\(0));

\CPU|ULA|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~1_combout\ = \CPU|ROM|memROM~4_combout\ $ (\CPU|UC|OPCODE\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ROM|memROM~4_combout\,
	datad => \CPU|UC|OPCODE\(1),
	combout => \CPU|ULA|Add0~1_combout\);

\CPU|ULA|SAIDA[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|SAIDA[1]~8_combout\ = ((\CPU|ACU|DOUT\(1) $ (\CPU|UC|OPCODE\(1) $ (!\CPU|ULA|SAIDA[0]~7\)))) # (GND)
-- \CPU|ULA|SAIDA[1]~9\ = CARRY((\CPU|ACU|DOUT\(1) & ((\CPU|UC|OPCODE\(1)) # (!\CPU|ULA|SAIDA[0]~7\))) # (!\CPU|ACU|DOUT\(1) & (\CPU|UC|OPCODE\(1) & !\CPU|ULA|SAIDA[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ACU|DOUT\(1),
	datab => \CPU|UC|OPCODE\(1),
	datad => VCC,
	cin => \CPU|ULA|SAIDA[0]~7\,
	combout => \CPU|ULA|SAIDA[1]~8_combout\,
	cout => \CPU|ULA|SAIDA[1]~9\);

\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\CPU|ULA|SAIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ULA|SAIDA[1]~8_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|OPCODE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ULA|SAIDA\(1));

\CPU|ACU|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ULA|SAIDA\(1),
	ena => \CPU|UC|MUXHAB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(1));

\CPU|ULA|SAIDA[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|SAIDA[2]~10_combout\ = (\CPU|ACU|DOUT\(2) & ((\CPU|UC|OPCODE\(1) & (\CPU|ULA|SAIDA[1]~9\ & VCC)) # (!\CPU|UC|OPCODE\(1) & (!\CPU|ULA|SAIDA[1]~9\)))) # (!\CPU|ACU|DOUT\(2) & ((\CPU|UC|OPCODE\(1) & (!\CPU|ULA|SAIDA[1]~9\)) # (!\CPU|UC|OPCODE\(1) & 
-- ((\CPU|ULA|SAIDA[1]~9\) # (GND)))))
-- \CPU|ULA|SAIDA[2]~11\ = CARRY((\CPU|ACU|DOUT\(2) & (!\CPU|UC|OPCODE\(1) & !\CPU|ULA|SAIDA[1]~9\)) # (!\CPU|ACU|DOUT\(2) & ((!\CPU|ULA|SAIDA[1]~9\) # (!\CPU|UC|OPCODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ACU|DOUT\(2),
	datab => \CPU|UC|OPCODE\(1),
	datad => VCC,
	cin => \CPU|ULA|SAIDA[1]~9\,
	combout => \CPU|ULA|SAIDA[2]~10_combout\,
	cout => \CPU|ULA|SAIDA[2]~11\);

\CPU|ULA|SAIDA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ULA|SAIDA[2]~10_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|UC|OPCODE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ULA|SAIDA\(2));

\CPU|ACU|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ULA|SAIDA\(2),
	ena => \CPU|UC|MUXHAB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(2));

\CPU|ULA|SAIDA[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|SAIDA[3]~12_combout\ = \CPU|ULA|Add0~1_combout\ $ (\CPU|ACU|DOUT\(3) $ (!\CPU|ULA|SAIDA[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~1_combout\,
	datab => \CPU|ACU|DOUT\(3),
	cin => \CPU|ULA|SAIDA[2]~11\,
	combout => \CPU|ULA|SAIDA[3]~12_combout\);

\CPU|ULA|SAIDA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ULA|SAIDA[3]~12_combout\,
	asdata => \CPU|ROM|memROM~4_combout\,
	sload => \CPU|UC|OPCODE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ULA|SAIDA\(3));

\CPU|ACU|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ULA|SAIDA\(3),
	ena => \CPU|UC|MUXHAB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(3));

\SEG7ALL|REGSEG7_DS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ACU|DOUT\(3),
	ena => \SEG7ALL|hab_DS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DS|DOUT\(3));

\SEG7ALL|REGSEG7_DS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ACU|DOUT\(2),
	ena => \SEG7ALL|hab_DS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DS|DOUT\(2));

\SEG7ALL|REGSEG7_DS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ACU|DOUT\(1),
	ena => \SEG7ALL|hab_DS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DS|DOUT\(1));

\SEG7ALL|SEG7_DS|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[0]~0_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(0) & (\SEG7ALL|REGSEG7_DS|DOUT\(3) $ (((!\SEG7ALL|REGSEG7_DS|DOUT\(2) & !\SEG7ALL|REGSEG7_DS|DOUT\(1)))))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(0) & (!\SEG7ALL|REGSEG7_DS|DOUT\(3) & 
-- (\SEG7ALL|REGSEG7_DS|DOUT\(2) & !\SEG7ALL|REGSEG7_DS|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[0]~0_combout\);

\SEG7ALL|SEG7_DS|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[1]~1_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(3) & ((\SEG7ALL|REGSEG7_DS|DOUT\(0) & (\SEG7ALL|REGSEG7_DS|DOUT\(1))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(0) & ((\SEG7ALL|REGSEG7_DS|DOUT\(2)))))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(3) & 
-- (\SEG7ALL|REGSEG7_DS|DOUT\(2) & (\SEG7ALL|REGSEG7_DS|DOUT\(1) $ (\SEG7ALL|REGSEG7_DS|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[1]~1_combout\);

\SEG7ALL|SEG7_DS|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[2]~2_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(3) & (\SEG7ALL|REGSEG7_DS|DOUT\(2) & ((\SEG7ALL|REGSEG7_DS|DOUT\(1)) # (!\SEG7ALL|REGSEG7_DS|DOUT\(0))))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(3) & (!\SEG7ALL|REGSEG7_DS|DOUT\(2) & 
-- (\SEG7ALL|REGSEG7_DS|DOUT\(1) & !\SEG7ALL|REGSEG7_DS|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[2]~2_combout\);

\SEG7ALL|SEG7_DS|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[3]~3_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(1) & ((\SEG7ALL|REGSEG7_DS|DOUT\(2) & ((\SEG7ALL|REGSEG7_DS|DOUT\(0)))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(2) & (\SEG7ALL|REGSEG7_DS|DOUT\(3) & !\SEG7ALL|REGSEG7_DS|DOUT\(0))))) # 
-- (!\SEG7ALL|REGSEG7_DS|DOUT\(1) & (!\SEG7ALL|REGSEG7_DS|DOUT\(3) & (\SEG7ALL|REGSEG7_DS|DOUT\(2) $ (\SEG7ALL|REGSEG7_DS|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[3]~3_combout\);

\SEG7ALL|SEG7_DS|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[4]~4_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(0) & ((\SEG7ALL|REGSEG7_DS|DOUT\(2) $ (!\SEG7ALL|REGSEG7_DS|DOUT\(1))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(3)))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(0) & (!\SEG7ALL|REGSEG7_DS|DOUT\(3) & 
-- (\SEG7ALL|REGSEG7_DS|DOUT\(2) & !\SEG7ALL|REGSEG7_DS|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[4]~4_combout\);

\SEG7ALL|SEG7_DS|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[5]~5_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(2) & (\SEG7ALL|REGSEG7_DS|DOUT\(0) & ((\SEG7ALL|REGSEG7_DS|DOUT\(1)) # (\SEG7ALL|REGSEG7_DS|DOUT\(3))))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(2) & (!\SEG7ALL|REGSEG7_DS|DOUT\(3) & 
-- ((\SEG7ALL|REGSEG7_DS|DOUT\(0)) # (\SEG7ALL|REGSEG7_DS|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[5]~5_combout\);

\SEG7ALL|SEG7_DS|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[6]~6_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(1) & (((!\SEG7ALL|REGSEG7_DS|DOUT\(2))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(0)))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(1) & ((\SEG7ALL|REGSEG7_DS|DOUT\(2) & ((\SEG7ALL|REGSEG7_DS|DOUT\(0)) # 
-- (!\SEG7ALL|REGSEG7_DS|DOUT\(3)))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(2) & ((\SEG7ALL|REGSEG7_DS|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[6]~6_combout\);

\SEG7ALL|hab_US~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|hab_US~0_combout\ = (\CPU|UC|writeEnable~q\ & (\CPU|ROM|memROM~4_combout\ & ((!\CPU|ROM|memROM~1_combout\) # (!\CPU|ROM|memROM~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|UC|writeEnable~q\,
	datab => \CPU|ROM|memROM~4_combout\,
	datac => \CPU|ROM|memROM~0_combout\,
	datad => \CPU|ROM|memROM~1_combout\,
	combout => \SEG7ALL|hab_US~0_combout\);

\SEG7ALL|REGSEG7_US|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ACU|DOUT\(0),
	ena => \SEG7ALL|hab_US~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_US|DOUT\(0));

\SEG7ALL|REGSEG7_US|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ACU|DOUT\(3),
	ena => \SEG7ALL|hab_US~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_US|DOUT\(3));

\SEG7ALL|REGSEG7_US|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ACU|DOUT\(2),
	ena => \SEG7ALL|hab_US~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_US|DOUT\(2));

\SEG7ALL|REGSEG7_US|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \CPU|ACU|DOUT\(1),
	ena => \SEG7ALL|hab_US~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_US|DOUT\(1));

\SEG7ALL|SEG7_US|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[0]~0_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(0) & (\SEG7ALL|REGSEG7_US|DOUT\(3) $ (((!\SEG7ALL|REGSEG7_US|DOUT\(2) & !\SEG7ALL|REGSEG7_US|DOUT\(1)))))) # (!\SEG7ALL|REGSEG7_US|DOUT\(0) & (!\SEG7ALL|REGSEG7_US|DOUT\(3) & 
-- (\SEG7ALL|REGSEG7_US|DOUT\(2) & !\SEG7ALL|REGSEG7_US|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(3),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(1),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[0]~0_combout\);

\SEG7ALL|SEG7_US|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[1]~1_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(3) & ((\SEG7ALL|REGSEG7_US|DOUT\(0) & (\SEG7ALL|REGSEG7_US|DOUT\(1))) # (!\SEG7ALL|REGSEG7_US|DOUT\(0) & ((\SEG7ALL|REGSEG7_US|DOUT\(2)))))) # (!\SEG7ALL|REGSEG7_US|DOUT\(3) & 
-- (\SEG7ALL|REGSEG7_US|DOUT\(2) & (\SEG7ALL|REGSEG7_US|DOUT\(1) $ (\SEG7ALL|REGSEG7_US|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(0),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[1]~1_combout\);

\SEG7ALL|SEG7_US|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[2]~2_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(3) & (\SEG7ALL|REGSEG7_US|DOUT\(2) & ((\SEG7ALL|REGSEG7_US|DOUT\(1)) # (!\SEG7ALL|REGSEG7_US|DOUT\(0))))) # (!\SEG7ALL|REGSEG7_US|DOUT\(3) & (!\SEG7ALL|REGSEG7_US|DOUT\(2) & 
-- (\SEG7ALL|REGSEG7_US|DOUT\(1) & !\SEG7ALL|REGSEG7_US|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(0),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[2]~2_combout\);

\SEG7ALL|SEG7_US|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[3]~3_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(1) & ((\SEG7ALL|REGSEG7_US|DOUT\(2) & ((\SEG7ALL|REGSEG7_US|DOUT\(0)))) # (!\SEG7ALL|REGSEG7_US|DOUT\(2) & (\SEG7ALL|REGSEG7_US|DOUT\(3) & !\SEG7ALL|REGSEG7_US|DOUT\(0))))) # 
-- (!\SEG7ALL|REGSEG7_US|DOUT\(1) & (!\SEG7ALL|REGSEG7_US|DOUT\(3) & (\SEG7ALL|REGSEG7_US|DOUT\(2) $ (\SEG7ALL|REGSEG7_US|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(3),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(0),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[3]~3_combout\);

\SEG7ALL|SEG7_US|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[4]~4_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(0) & ((\SEG7ALL|REGSEG7_US|DOUT\(2) $ (!\SEG7ALL|REGSEG7_US|DOUT\(1))) # (!\SEG7ALL|REGSEG7_US|DOUT\(3)))) # (!\SEG7ALL|REGSEG7_US|DOUT\(0) & (!\SEG7ALL|REGSEG7_US|DOUT\(3) & 
-- (\SEG7ALL|REGSEG7_US|DOUT\(2) & !\SEG7ALL|REGSEG7_US|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(3),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(1),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[4]~4_combout\);

\SEG7ALL|SEG7_US|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[5]~5_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(2) & (\SEG7ALL|REGSEG7_US|DOUT\(0) & ((\SEG7ALL|REGSEG7_US|DOUT\(1)) # (\SEG7ALL|REGSEG7_US|DOUT\(3))))) # (!\SEG7ALL|REGSEG7_US|DOUT\(2) & (!\SEG7ALL|REGSEG7_US|DOUT\(3) & 
-- ((\SEG7ALL|REGSEG7_US|DOUT\(0)) # (\SEG7ALL|REGSEG7_US|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(3),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[5]~5_combout\);

\SEG7ALL|SEG7_US|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[6]~6_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(1) & (((!\SEG7ALL|REGSEG7_US|DOUT\(2))) # (!\SEG7ALL|REGSEG7_US|DOUT\(0)))) # (!\SEG7ALL|REGSEG7_US|DOUT\(1) & ((\SEG7ALL|REGSEG7_US|DOUT\(2) & ((\SEG7ALL|REGSEG7_US|DOUT\(0)) # 
-- (!\SEG7ALL|REGSEG7_US|DOUT\(3)))) # (!\SEG7ALL|REGSEG7_US|DOUT\(2) & ((\SEG7ALL|REGSEG7_US|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(3),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[6]~6_combout\);

\KEY3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);
END structure;


