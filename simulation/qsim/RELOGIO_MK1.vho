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

-- DATE "10/07/2019 13:35:14"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	RESET : IN std_logic;
	CLK_EXT : IN std_logic;
	saida7seg_US : OUT std_logic_vector(6 DOWNTO 0);
	saida7seg_DS : OUT std_logic_vector(6 DOWNTO 0);
	saida7seg_UM : OUT std_logic_vector(6 DOWNTO 0);
	saida7seg_DM : OUT std_logic_vector(6 DOWNTO 0);
	saida7seg_UH : OUT std_logic_vector(6 DOWNTO 0);
	saida7seg_DH : OUT std_logic_vector(6 DOWNTO 0)
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
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK_EXT : std_logic;
SIGNAL ww_saida7seg_US : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida7seg_DS : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida7seg_UM : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida7seg_DM : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida7seg_UH : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_saida7seg_DH : std_logic_vector(6 DOWNTO 0);
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \CLK_EXT~input_o\ : std_logic;
SIGNAL \saida7seg_US[0]~output_o\ : std_logic;
SIGNAL \saida7seg_US[1]~output_o\ : std_logic;
SIGNAL \saida7seg_US[2]~output_o\ : std_logic;
SIGNAL \saida7seg_US[3]~output_o\ : std_logic;
SIGNAL \saida7seg_US[4]~output_o\ : std_logic;
SIGNAL \saida7seg_US[5]~output_o\ : std_logic;
SIGNAL \saida7seg_US[6]~output_o\ : std_logic;
SIGNAL \saida7seg_DS[0]~output_o\ : std_logic;
SIGNAL \saida7seg_DS[1]~output_o\ : std_logic;
SIGNAL \saida7seg_DS[2]~output_o\ : std_logic;
SIGNAL \saida7seg_DS[3]~output_o\ : std_logic;
SIGNAL \saida7seg_DS[4]~output_o\ : std_logic;
SIGNAL \saida7seg_DS[5]~output_o\ : std_logic;
SIGNAL \saida7seg_DS[6]~output_o\ : std_logic;
SIGNAL \saida7seg_UM[0]~output_o\ : std_logic;
SIGNAL \saida7seg_UM[1]~output_o\ : std_logic;
SIGNAL \saida7seg_UM[2]~output_o\ : std_logic;
SIGNAL \saida7seg_UM[3]~output_o\ : std_logic;
SIGNAL \saida7seg_UM[4]~output_o\ : std_logic;
SIGNAL \saida7seg_UM[5]~output_o\ : std_logic;
SIGNAL \saida7seg_UM[6]~output_o\ : std_logic;
SIGNAL \saida7seg_DM[0]~output_o\ : std_logic;
SIGNAL \saida7seg_DM[1]~output_o\ : std_logic;
SIGNAL \saida7seg_DM[2]~output_o\ : std_logic;
SIGNAL \saida7seg_DM[3]~output_o\ : std_logic;
SIGNAL \saida7seg_DM[4]~output_o\ : std_logic;
SIGNAL \saida7seg_DM[5]~output_o\ : std_logic;
SIGNAL \saida7seg_DM[6]~output_o\ : std_logic;
SIGNAL \saida7seg_UH[0]~output_o\ : std_logic;
SIGNAL \saida7seg_UH[1]~output_o\ : std_logic;
SIGNAL \saida7seg_UH[2]~output_o\ : std_logic;
SIGNAL \saida7seg_UH[3]~output_o\ : std_logic;
SIGNAL \saida7seg_UH[4]~output_o\ : std_logic;
SIGNAL \saida7seg_UH[5]~output_o\ : std_logic;
SIGNAL \saida7seg_UH[6]~output_o\ : std_logic;
SIGNAL \saida7seg_DH[0]~output_o\ : std_logic;
SIGNAL \saida7seg_DH[1]~output_o\ : std_logic;
SIGNAL \saida7seg_DH[2]~output_o\ : std_logic;
SIGNAL \saida7seg_DH[3]~output_o\ : std_logic;
SIGNAL \saida7seg_DH[4]~output_o\ : std_logic;
SIGNAL \saida7seg_DH[5]~output_o\ : std_logic;
SIGNAL \saida7seg_DH[6]~output_o\ : std_logic;

BEGIN

ww_RESET <= RESET;
ww_CLK_EXT <= CLK_EXT;
saida7seg_US <= ww_saida7seg_US;
saida7seg_DS <= ww_saida7seg_DS;
saida7seg_UM <= ww_saida7seg_UM;
saida7seg_DM <= ww_saida7seg_DM;
saida7seg_UH <= ww_saida7seg_UH;
saida7seg_DH <= ww_saida7seg_DH;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\saida7seg_US[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_US[0]~output_o\);

\saida7seg_US[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_US[1]~output_o\);

\saida7seg_US[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_US[2]~output_o\);

\saida7seg_US[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_US[3]~output_o\);

\saida7seg_US[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_US[4]~output_o\);

\saida7seg_US[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_US[5]~output_o\);

\saida7seg_US[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida7seg_US[6]~output_o\);

\saida7seg_DS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DS[0]~output_o\);

\saida7seg_DS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DS[1]~output_o\);

\saida7seg_DS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DS[2]~output_o\);

\saida7seg_DS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DS[3]~output_o\);

\saida7seg_DS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DS[4]~output_o\);

\saida7seg_DS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DS[5]~output_o\);

\saida7seg_DS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida7seg_DS[6]~output_o\);

\saida7seg_UM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UM[0]~output_o\);

\saida7seg_UM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UM[1]~output_o\);

\saida7seg_UM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UM[2]~output_o\);

\saida7seg_UM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UM[3]~output_o\);

\saida7seg_UM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UM[4]~output_o\);

\saida7seg_UM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UM[5]~output_o\);

\saida7seg_UM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida7seg_UM[6]~output_o\);

\saida7seg_DM[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DM[0]~output_o\);

\saida7seg_DM[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DM[1]~output_o\);

\saida7seg_DM[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DM[2]~output_o\);

\saida7seg_DM[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DM[3]~output_o\);

\saida7seg_DM[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DM[4]~output_o\);

\saida7seg_DM[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DM[5]~output_o\);

\saida7seg_DM[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida7seg_DM[6]~output_o\);

\saida7seg_UH[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UH[0]~output_o\);

\saida7seg_UH[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UH[1]~output_o\);

\saida7seg_UH[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UH[2]~output_o\);

\saida7seg_UH[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UH[3]~output_o\);

\saida7seg_UH[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UH[4]~output_o\);

\saida7seg_UH[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_UH[5]~output_o\);

\saida7seg_UH[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida7seg_UH[6]~output_o\);

\saida7seg_DH[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DH[0]~output_o\);

\saida7seg_DH[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DH[1]~output_o\);

\saida7seg_DH[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DH[2]~output_o\);

\saida7seg_DH[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DH[3]~output_o\);

\saida7seg_DH[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DH[4]~output_o\);

\saida7seg_DH[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \saida7seg_DH[5]~output_o\);

\saida7seg_DH[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \saida7seg_DH[6]~output_o\);

\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

\CLK_EXT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_EXT,
	o => \CLK_EXT~input_o\);

ww_saida7seg_US(0) <= \saida7seg_US[0]~output_o\;

ww_saida7seg_US(1) <= \saida7seg_US[1]~output_o\;

ww_saida7seg_US(2) <= \saida7seg_US[2]~output_o\;

ww_saida7seg_US(3) <= \saida7seg_US[3]~output_o\;

ww_saida7seg_US(4) <= \saida7seg_US[4]~output_o\;

ww_saida7seg_US(5) <= \saida7seg_US[5]~output_o\;

ww_saida7seg_US(6) <= \saida7seg_US[6]~output_o\;

ww_saida7seg_DS(0) <= \saida7seg_DS[0]~output_o\;

ww_saida7seg_DS(1) <= \saida7seg_DS[1]~output_o\;

ww_saida7seg_DS(2) <= \saida7seg_DS[2]~output_o\;

ww_saida7seg_DS(3) <= \saida7seg_DS[3]~output_o\;

ww_saida7seg_DS(4) <= \saida7seg_DS[4]~output_o\;

ww_saida7seg_DS(5) <= \saida7seg_DS[5]~output_o\;

ww_saida7seg_DS(6) <= \saida7seg_DS[6]~output_o\;

ww_saida7seg_UM(0) <= \saida7seg_UM[0]~output_o\;

ww_saida7seg_UM(1) <= \saida7seg_UM[1]~output_o\;

ww_saida7seg_UM(2) <= \saida7seg_UM[2]~output_o\;

ww_saida7seg_UM(3) <= \saida7seg_UM[3]~output_o\;

ww_saida7seg_UM(4) <= \saida7seg_UM[4]~output_o\;

ww_saida7seg_UM(5) <= \saida7seg_UM[5]~output_o\;

ww_saida7seg_UM(6) <= \saida7seg_UM[6]~output_o\;

ww_saida7seg_DM(0) <= \saida7seg_DM[0]~output_o\;

ww_saida7seg_DM(1) <= \saida7seg_DM[1]~output_o\;

ww_saida7seg_DM(2) <= \saida7seg_DM[2]~output_o\;

ww_saida7seg_DM(3) <= \saida7seg_DM[3]~output_o\;

ww_saida7seg_DM(4) <= \saida7seg_DM[4]~output_o\;

ww_saida7seg_DM(5) <= \saida7seg_DM[5]~output_o\;

ww_saida7seg_DM(6) <= \saida7seg_DM[6]~output_o\;

ww_saida7seg_UH(0) <= \saida7seg_UH[0]~output_o\;

ww_saida7seg_UH(1) <= \saida7seg_UH[1]~output_o\;

ww_saida7seg_UH(2) <= \saida7seg_UH[2]~output_o\;

ww_saida7seg_UH(3) <= \saida7seg_UH[3]~output_o\;

ww_saida7seg_UH(4) <= \saida7seg_UH[4]~output_o\;

ww_saida7seg_UH(5) <= \saida7seg_UH[5]~output_o\;

ww_saida7seg_UH(6) <= \saida7seg_UH[6]~output_o\;

ww_saida7seg_DH(0) <= \saida7seg_DH[0]~output_o\;

ww_saida7seg_DH(1) <= \saida7seg_DH[1]~output_o\;

ww_saida7seg_DH(2) <= \saida7seg_DH[2]~output_o\;

ww_saida7seg_DH(3) <= \saida7seg_DH[3]~output_o\;

ww_saida7seg_DH(4) <= \saida7seg_DH[4]~output_o\;

ww_saida7seg_DH(5) <= \saida7seg_DH[5]~output_o\;

ww_saida7seg_DH(6) <= \saida7seg_DH[6]~output_o\;
END structure;


