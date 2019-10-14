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

-- DATE "10/11/2019 17:06:43"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(3 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	DADO : OUT std_logic_vector(3 DOWNTO 0);
	RAM_DADO : OUT std_logic_vector(3 DOWNTO 0);
	ENDERECO : OUT std_logic_vector(7 DOWNTO 0);
	WENABLE : OUT std_logic
	);
END relogio;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO[0]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO[1]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO[2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DADO[3]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DADO[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DADO[1]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DADO[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAM_DADO[3]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENDERECO[0]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENDERECO[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENDERECO[2]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENDERECO[3]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENDERECO[4]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENDERECO[5]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENDERECO[6]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENDERECO[7]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WENABLE	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DADO : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RAM_DADO : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ENDERECO : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WENABLE : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \DADO[0]~output_o\ : std_logic;
SIGNAL \DADO[1]~output_o\ : std_logic;
SIGNAL \DADO[2]~output_o\ : std_logic;
SIGNAL \DADO[3]~output_o\ : std_logic;
SIGNAL \RAM_DADO[0]~output_o\ : std_logic;
SIGNAL \RAM_DADO[1]~output_o\ : std_logic;
SIGNAL \RAM_DADO[2]~output_o\ : std_logic;
SIGNAL \RAM_DADO[3]~output_o\ : std_logic;
SIGNAL \ENDERECO[0]~output_o\ : std_logic;
SIGNAL \ENDERECO[1]~output_o\ : std_logic;
SIGNAL \ENDERECO[2]~output_o\ : std_logic;
SIGNAL \ENDERECO[3]~output_o\ : std_logic;
SIGNAL \ENDERECO[4]~output_o\ : std_logic;
SIGNAL \ENDERECO[5]~output_o\ : std_logic;
SIGNAL \ENDERECO[6]~output_o\ : std_logic;
SIGNAL \ENDERECO[7]~output_o\ : std_logic;
SIGNAL \WENABLE~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~8_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~9\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~10_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~15\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~16_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~18_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~17\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~18_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~19\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~20_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \CPU|ACU|DOUT[2]~7_combout\ : std_logic;
SIGNAL \CPU|ACU|DOUT[2]~3_combout\ : std_logic;
SIGNAL \CPU|ACU|DOUT[2]~17_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~41_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~48_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~49_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~59_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~44_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~50_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~51_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~0_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~57feeder_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~14_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~21_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~20_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~58_combout\ : std_logic;
SIGNAL \DECODER|LessThan0~0_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~43_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~45_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~39_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~40_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~42_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~60_combout\ : std_logic;
SIGNAL \DECODER|HabRAM_write~2_combout\ : std_logic;
SIGNAL \DECODER|HabRAM_write~combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~33_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~34_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~32_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~35_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~36_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~37_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~38_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~57_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~319_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~320_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~57_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~53feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~313_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~314_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~53_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~315_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~316_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~49_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~45feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~317_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~318_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~45_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~269_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~270_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~65feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~337_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~338_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~65_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~343_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~344_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~73_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~69feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~339_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~340_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~69_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~341_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~342_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~61_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~276_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~277_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~321_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~322_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~33_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~327_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~328_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~41_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~323_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~324_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~37_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~325_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~326_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~29_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~271_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~272_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~21feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~329_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~330_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~21_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~335_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~336_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~25_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~17feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~331_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~332_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~17_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~333_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~334_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~13_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~273_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~274_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~275_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~278_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~279_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~53_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~52_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~54_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~1\ : std_logic;
SIGNAL \CPU|ULA|Add0~2_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~58_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~54feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~54_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~50_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~46feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~46_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~280_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~281_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~66feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~66_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~74_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~70feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~70_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~62_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~287_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~288_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~34_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~42_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~38feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~38_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~30_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~282_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~283_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~22feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~22_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~26_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~18feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~18_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~14_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~284_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~285_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~286_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~289_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~290_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[1]~3_combout\ : std_logic;
SIGNAL \CPU|ACU|DOUT[2]~16_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~68feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~68_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~76feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~76_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~72feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~72_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~64feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~64_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~309_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~310_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~60feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~60_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~56_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~52_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~48_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~302_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~303_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~24feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~24_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~28_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~20_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~16_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~306_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~307_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~36feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~36_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~44_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~40feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~40_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~32_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~304_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~305_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~308_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~311_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~312_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~75feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~75_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~67feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~67_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~63feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~63_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~71feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~71_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~298_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~299_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~59_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~55feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~55_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~51_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~47feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~47_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~291_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~292_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~23feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~23_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~27_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~15feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~15_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~19feeder_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~19_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~295_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~296_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~35_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~43_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~39_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~31_q\ : std_logic;
SIGNAL \RAM_USAVEL|ram~293_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~294_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~297_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~300_combout\ : std_logic;
SIGNAL \RAM_USAVEL|ram~301_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~3\ : std_logic;
SIGNAL \CPU|ULA|Add0~4_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~0_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Equal0~2_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Equal0~3_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Equal0~1_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Equal0~0_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Equal0~4_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador~0_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~1\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~2_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~3\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~4_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~5\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~6_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~7\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~8_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~9\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~10_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~11\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~12_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador~1_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~13\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~14_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~15\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~16_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador~2_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~17\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~18_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador~3_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~19\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~20_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~21\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~22_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador~4_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~23\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~24_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~25\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~26_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~27\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~28_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador~5_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~29\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~30_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~31\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~32_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~33\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~34_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~35\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~36_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador~6_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~37\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~38_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador~7_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Equal0~5_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~39\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~40_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~41\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~42_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~43\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Add0~44_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|contador~8_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|Equal0~6_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|tick~0_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_2|tick~q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~0_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~1_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~1\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~2_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~3\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~4_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~5\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~6_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~7\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~8_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~9\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~10_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~11\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~12_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~13\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~14_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~0_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~15\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~16_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~17\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~18_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~19\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~20_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~21\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~22_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~23\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~24_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~2_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~25\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~26_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~3_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~27\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~28_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~4_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~29\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~30_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~5_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~31\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~32_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~33\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~34_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~6_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~35\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~36_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~37\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~38_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~7_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~39\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~40_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~8_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~41\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~42_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~9_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~43\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~44_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~10_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~45\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~46_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~11_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~47\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~48_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~49\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Add0~50_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|contador~12_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Equal0~7_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Equal0~6_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Equal0~5_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Equal0~1_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Equal0~3_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Equal0~2_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Equal0~0_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Equal0~4_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|Equal0~8_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|tick~0_combout\ : std_logic;
SIGNAL \BASE_DE_TEMPO_1|tick~q\ : std_logic;
SIGNAL \MUX_BASE_TEMPO|saida_MUX~combout\ : std_logic;
SIGNAL \TIMER|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \DECODER|Habtimer_write~3_combout\ : std_logic;
SIGNAL \DECODER|Habtimer_write~2_combout\ : std_logic;
SIGNAL \DECODER|Habtimer_write~combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[2]~5_combout\ : std_logic;
SIGNAL \CPU|ULA|Add0~5\ : std_logic;
SIGNAL \CPU|ULA|Add0~6_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \CPU|MUX|saida_MUX[3]~7_combout\ : std_logic;
SIGNAL \CPU|comb~0_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~46_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~47_combout\ : std_logic;
SIGNAL \CPU|comb~1_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~21\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~22_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~56_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~55_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~19_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~23_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~22_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~25_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~24_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~26_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~11\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~12_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~13\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~14_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~28_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~29_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~30_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~27_combout\ : std_logic;
SIGNAL \CPU|ROM|memROM~31_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_AMPM|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|hab_AMPM~0_combout\ : std_logic;
SIGNAL \SEG7ALL|hab_AMPM~1_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_AMPM|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_AMPM|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_AMPM|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_AMPM|rascSaida7seg[0]~4_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_AMPM|rascSaida7seg[1]~9_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_AMPM|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_AMPM|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_AMPM|rascSaida7seg[4]~7_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_AMPM|rascSaida7seg[5]~8_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_AMPM|rascSaida7seg[6]~10_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DH|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|hab_DH~0_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DH|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DH|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DH|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DH|rascSaida7seg[0]~4_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DH|rascSaida7seg[1]~9_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DH|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DH|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DH|rascSaida7seg[4]~7_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DH|rascSaida7seg[5]~8_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DH|rascSaida7seg[6]~10_combout\ : std_logic;
SIGNAL \SEG7ALL|hab_UH~0_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_UH|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_UH|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UH|rascSaida7seg[0]~4_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UH|rascSaida7seg[1]~9_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UH|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UH|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UH|rascSaida7seg[4]~7_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UH|rascSaida7seg[5]~8_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UH|rascSaida7seg[6]~10_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DM|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|hab_DM~0_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DM|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DM|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DM|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DM|rascSaida7seg[0]~4_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DM|rascSaida7seg[1]~9_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DM|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DM|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DM|rascSaida7seg[4]~7_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DM|rascSaida7seg[5]~8_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DM|rascSaida7seg[6]~10_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_UM|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|hab_UM~0_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_UM|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_UM|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_UM|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UM|rascSaida7seg[0]~4_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UM|rascSaida7seg[1]~9_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UM|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UM|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UM|rascSaida7seg[4]~7_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UM|rascSaida7seg[5]~8_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_UM|rascSaida7seg[6]~10_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DS|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|hab_DS~0_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DS|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DS|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_DS|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[0]~4_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[1]~9_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[4]~7_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[5]~8_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_DS|rascSaida7seg[6]~10_combout\ : std_logic;
SIGNAL \SEG7ALL|hab_US~0_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_US|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_US|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_US|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[0]~4_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[1]~9_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[2]~5_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[3]~6_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[4]~7_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[5]~8_combout\ : std_logic;
SIGNAL \SEG7ALL|SEG7_US|rascSaida7seg[6]~10_combout\ : std_logic;
SIGNAL \SEG7ALL|REGSEG7_UM|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SEG7ALL|REGSEG7_AMPM|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CPU|ACU|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG7ALL|REGSEG7_DH|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG7ALL|REGSEG7_UH|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG7ALL|REGSEG7_DM|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG7ALL|REGSEG7_DS|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SEG7ALL|REGSEG7_US|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TIMER|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BASE_DE_TEMPO_2|contador\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \BASE_DE_TEMPO_1|contador\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \DECODER|ALT_INV_Habtimer_write~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_SW <= SW;
ww_KEY <= KEY;
DADO <= ww_DADO;
RAM_DADO <= ww_RAM_DADO;
ENDERECO <= ww_ENDERECO;
WENABLE <= ww_WENABLE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\DECODER|ALT_INV_Habtimer_write~combout\ <= NOT \DECODER|Habtimer_write~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_AMPM|rascSaida7seg[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_AMPM|rascSaida7seg[1]~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_AMPM|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_AMPM|rascSaida7seg[3]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_AMPM|rascSaida7seg[4]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_AMPM|rascSaida7seg[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_AMPM|rascSaida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DH|rascSaida7seg[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DH|rascSaida7seg[1]~9_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DH|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DH|rascSaida7seg[3]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DH|rascSaida7seg[4]~7_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DH|rascSaida7seg[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DH|rascSaida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UH|rascSaida7seg[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UH|rascSaida7seg[1]~9_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UH|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UH|rascSaida7seg[3]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UH|rascSaida7seg[4]~7_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UH|rascSaida7seg[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UH|rascSaida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DM|rascSaida7seg[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DM|rascSaida7seg[1]~9_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DM|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DM|rascSaida7seg[3]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DM|rascSaida7seg[4]~7_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DM|rascSaida7seg[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DM|rascSaida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UM|rascSaida7seg[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UM|rascSaida7seg[1]~9_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UM|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UM|rascSaida7seg[3]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UM|rascSaida7seg[4]~7_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UM|rascSaida7seg[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_UM|rascSaida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[1]~9_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[3]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[4]~7_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_DS|rascSaida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[0]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[1]~9_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[2]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[3]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[4]~7_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[5]~8_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SEG7ALL|SEG7_US|rascSaida7seg[6]~10_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\DADO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ACU|DOUT\(0),
	devoe => ww_devoe,
	o => \DADO[0]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\DADO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ACU|DOUT\(1),
	devoe => ww_devoe,
	o => \DADO[1]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\DADO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ACU|DOUT\(2),
	devoe => ww_devoe,
	o => \DADO[2]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\DADO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ACU|DOUT\(3),
	devoe => ww_devoe,
	o => \DADO[3]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\RAM_DADO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_USAVEL|ram~279_combout\,
	devoe => ww_devoe,
	o => \RAM_DADO[0]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\RAM_DADO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_USAVEL|ram~290_combout\,
	devoe => ww_devoe,
	o => \RAM_DADO[1]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\RAM_DADO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_USAVEL|ram~301_combout\,
	devoe => ww_devoe,
	o => \RAM_DADO[2]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\RAM_DADO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_USAVEL|ram~312_combout\,
	devoe => ww_devoe,
	o => \RAM_DADO[3]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\ENDERECO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ROM|memROM~31_combout\,
	devoe => ww_devoe,
	o => \ENDERECO[0]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\ENDERECO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ROM|memROM~26_combout\,
	devoe => ww_devoe,
	o => \ENDERECO[1]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\ENDERECO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ROM|memROM~57_combout\,
	devoe => ww_devoe,
	o => \ENDERECO[2]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\ENDERECO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ROM|memROM~35_combout\,
	devoe => ww_devoe,
	o => \ENDERECO[3]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\ENDERECO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ROM|memROM~19_combout\,
	devoe => ww_devoe,
	o => \ENDERECO[4]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\ENDERECO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|ROM|memROM~56_combout\,
	devoe => ww_devoe,
	o => \ENDERECO[5]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\ENDERECO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENDERECO[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\ENDERECO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ENDERECO[7]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\WENABLE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DECODER|HabRAM_write~combout\,
	devoe => ww_devoe,
	o => \WENABLE~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X108_Y6_N4
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

-- Location: LCCOMB_X108_Y6_N6
\CPU|PC|DOUT[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[1]~10_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT[0]~9\)) # (!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT[0]~9\) # (GND)))
-- \CPU|PC|DOUT[1]~11\ = CARRY((!\CPU|PC|DOUT[0]~9\) # (!\CPU|PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|DOUT\(1),
	datad => VCC,
	cin => \CPU|PC|DOUT[0]~9\,
	combout => \CPU|PC|DOUT[1]~10_combout\,
	cout => \CPU|PC|DOUT[1]~11\);

-- Location: LCCOMB_X108_Y6_N10
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

-- Location: LCCOMB_X108_Y6_N12
\CPU|PC|DOUT[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[4]~16_combout\ = (\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT[3]~15\ $ (GND))) # (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT[3]~15\ & VCC))
-- \CPU|PC|DOUT[4]~17\ = CARRY((\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|DOUT\(4),
	datad => VCC,
	cin => \CPU|PC|DOUT[3]~15\,
	combout => \CPU|PC|DOUT[4]~16_combout\,
	cout => \CPU|PC|DOUT[4]~17\);

-- Location: LCCOMB_X108_Y6_N24
\CPU|ROM|memROM~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~18_combout\ = (\CPU|PC|DOUT\(3)) # ((\CPU|PC|DOUT\(4)) # (\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(3),
	datab => \CPU|PC|DOUT\(1),
	datac => \CPU|PC|DOUT\(4),
	datad => \CPU|PC|DOUT\(2),
	combout => \CPU|ROM|memROM~18_combout\);

-- Location: LCCOMB_X108_Y6_N14
\CPU|PC|DOUT[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[5]~18_combout\ = (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT[4]~17\)) # (!\CPU|PC|DOUT\(5) & ((\CPU|PC|DOUT[4]~17\) # (GND)))
-- \CPU|PC|DOUT[5]~19\ = CARRY((!\CPU|PC|DOUT[4]~17\) # (!\CPU|PC|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|DOUT\(5),
	datad => VCC,
	cin => \CPU|PC|DOUT[4]~17\,
	combout => \CPU|PC|DOUT[5]~18_combout\,
	cout => \CPU|PC|DOUT[5]~19\);

-- Location: LCCOMB_X108_Y6_N16
\CPU|PC|DOUT[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[6]~20_combout\ = (\CPU|PC|DOUT\(6) & (\CPU|PC|DOUT[5]~19\ $ (GND))) # (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT[5]~19\ & VCC))
-- \CPU|PC|DOUT[6]~21\ = CARRY((\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|DOUT\(6),
	datad => VCC,
	cin => \CPU|PC|DOUT[5]~19\,
	combout => \CPU|PC|DOUT[6]~20_combout\,
	cout => \CPU|PC|DOUT[6]~21\);

-- Location: LCCOMB_X108_Y5_N22
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

-- Location: LCCOMB_X107_Y6_N6
\CPU|ACU|DOUT[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ACU|DOUT[2]~7_combout\ = \CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|DOUT\(3),
	datad => \CPU|PC|DOUT\(0),
	combout => \CPU|ACU|DOUT[2]~7_combout\);

-- Location: LCCOMB_X107_Y6_N10
\CPU|ACU|DOUT[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ACU|DOUT[2]~3_combout\ = (\CPU|ACU|DOUT[2]~7_combout\ & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ACU|DOUT[2]~7_combout\,
	datab => \CPU|PC|DOUT\(7),
	datac => \CPU|PC|DOUT\(2),
	datad => \CPU|PC|DOUT\(6),
	combout => \CPU|ACU|DOUT[2]~3_combout\);

-- Location: LCCOMB_X107_Y6_N16
\CPU|ACU|DOUT[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ACU|DOUT[2]~17_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(5) & \CPU|ACU|DOUT[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(4),
	datac => \CPU|PC|DOUT\(5),
	datad => \CPU|ACU|DOUT[2]~3_combout\,
	combout => \CPU|ACU|DOUT[2]~17_combout\);

-- Location: LCCOMB_X108_Y6_N28
\CPU|ROM|memROM~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~41_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(2),
	datad => \CPU|PC|DOUT\(0),
	combout => \CPU|ROM|memROM~41_combout\);

-- Location: LCCOMB_X107_Y6_N0
\CPU|ROM|memROM~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~48_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(0)))) # (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(2) $ (\CPU|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(3),
	datac => \CPU|PC|DOUT\(2),
	datad => \CPU|PC|DOUT\(0),
	combout => \CPU|ROM|memROM~48_combout\);

-- Location: LCCOMB_X107_Y6_N2
\CPU|ROM|memROM~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~49_combout\ = (\CPU|PC|DOUT\(5) & (((\CPU|ROM|memROM~48_combout\)))) # (!\CPU|PC|DOUT\(5) & (\CPU|ROM|memROM~41_combout\ & (!\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~41_combout\,
	datab => \CPU|PC|DOUT\(3),
	datac => \CPU|PC|DOUT\(5),
	datad => \CPU|ROM|memROM~48_combout\,
	combout => \CPU|ROM|memROM~49_combout\);

-- Location: LCCOMB_X110_Y6_N22
\CPU|ROM|memROM~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~59_combout\ = (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(4) & \CPU|ROM|memROM~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(6),
	datab => \CPU|PC|DOUT\(7),
	datac => \CPU|PC|DOUT\(4),
	datad => \CPU|ROM|memROM~49_combout\,
	combout => \CPU|ROM|memROM~59_combout\);

-- Location: LCCOMB_X109_Y6_N4
\CPU|ROM|memROM~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~44_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(4),
	datab => \CPU|PC|DOUT\(7),
	datad => \CPU|PC|DOUT\(6),
	combout => \CPU|ROM|memROM~44_combout\);

-- Location: LCCOMB_X111_Y6_N24
\CPU|ROM|memROM~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~50_combout\ = (\CPU|PC|DOUT\(1)) # ((\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)) # (!\CPU|PC|DOUT\(5)))) # (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(5)) # (\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(0),
	datac => \CPU|PC|DOUT\(5),
	datad => \CPU|PC|DOUT\(3),
	combout => \CPU|ROM|memROM~50_combout\);

-- Location: LCCOMB_X110_Y6_N6
\CPU|ROM|memROM~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~51_combout\ = ((\CPU|PC|DOUT\(2)) # (\CPU|ROM|memROM~50_combout\)) # (!\CPU|ROM|memROM~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~44_combout\,
	datab => \CPU|PC|DOUT\(2),
	datad => \CPU|ROM|memROM~50_combout\,
	combout => \CPU|ROM|memROM~51_combout\);

-- Location: LCCOMB_X109_Y7_N18
\CPU|ULA|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~0_combout\ = (\CPU|ACU|DOUT\(0) & (\CPU|ROM|memROM~31_combout\ $ (VCC))) # (!\CPU|ACU|DOUT\(0) & (\CPU|ROM|memROM~31_combout\ & VCC))
-- \CPU|ULA|Add0~1\ = CARRY((\CPU|ACU|DOUT\(0) & \CPU|ROM|memROM~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ACU|DOUT\(0),
	datab => \CPU|ROM|memROM~31_combout\,
	datad => VCC,
	combout => \CPU|ULA|Add0~0_combout\,
	cout => \CPU|ULA|Add0~1\);

-- Location: LCCOMB_X109_Y7_N14
\CPU|MUX|saida_MUX[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[0]~0_combout\ = (\CPU|ROM|memROM~59_combout\ & ((\CPU|ROM|memROM~51_combout\ & (\CPU|ULA|Add0~0_combout\)) # (!\CPU|ROM|memROM~51_combout\ & ((\CPU|ROM|memROM~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA|Add0~0_combout\,
	datab => \CPU|ROM|memROM~31_combout\,
	datac => \CPU|ROM|memROM~51_combout\,
	datad => \CPU|ROM|memROM~59_combout\,
	combout => \CPU|MUX|saida_MUX[0]~0_combout\);

-- Location: LCCOMB_X108_Y5_N16
\RAM_USAVEL|ram~57feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~57feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(0),
	combout => \RAM_USAVEL|ram~57feeder_combout\);

-- Location: LCCOMB_X108_Y6_N0
\CPU|ROM|memROM~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~14_combout\ = (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|DOUT\(7),
	datad => \CPU|PC|DOUT\(6),
	combout => \CPU|ROM|memROM~14_combout\);

-- Location: LCCOMB_X108_Y6_N30
\CPU|ROM|memROM~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~21_combout\ = (!\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(4),
	datad => \CPU|PC|DOUT\(2),
	combout => \CPU|ROM|memROM~21_combout\);

-- Location: LCCOMB_X109_Y6_N22
\CPU|ROM|memROM~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~20_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(5) $ (\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(5),
	datab => \CPU|PC|DOUT\(0),
	datac => \CPU|PC|DOUT\(1),
	datad => \CPU|PC|DOUT\(3),
	combout => \CPU|ROM|memROM~20_combout\);

-- Location: LCCOMB_X108_Y6_N26
\CPU|ROM|memROM~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~15_combout\ = (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(4))) # (!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(3)) # ((\CPU|PC|DOUT\(4) & \CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(4),
	datab => \CPU|PC|DOUT\(3),
	datac => \CPU|PC|DOUT\(1),
	datad => \CPU|PC|DOUT\(2),
	combout => \CPU|ROM|memROM~15_combout\);

-- Location: LCCOMB_X109_Y6_N28
\CPU|ROM|memROM~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~16_combout\ = (\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(1) & (!\CPU|ROM|memROM~15_combout\ & \CPU|PC|DOUT\(3)))) # (!\CPU|PC|DOUT\(5) & (((\CPU|ROM|memROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(5),
	datac => \CPU|ROM|memROM~15_combout\,
	datad => \CPU|PC|DOUT\(3),
	combout => \CPU|ROM|memROM~16_combout\);

-- Location: LCCOMB_X109_Y6_N2
\CPU|ROM|memROM~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~58_combout\ = (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(5) & (!\CPU|ROM|memROM~18_combout\))) # (!\CPU|PC|DOUT\(0) & (((\CPU|ROM|memROM~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(5),
	datab => \CPU|PC|DOUT\(0),
	datac => \CPU|ROM|memROM~18_combout\,
	datad => \CPU|ROM|memROM~16_combout\,
	combout => \CPU|ROM|memROM~58_combout\);

-- Location: LCCOMB_X109_Y6_N14
\DECODER|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER|LessThan0~0_combout\ = (\CPU|ROM|memROM~14_combout\ & ((\CPU|ROM|memROM~58_combout\) # ((\CPU|ROM|memROM~21_combout\ & \CPU|ROM|memROM~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~14_combout\,
	datab => \CPU|ROM|memROM~21_combout\,
	datac => \CPU|ROM|memROM~20_combout\,
	datad => \CPU|ROM|memROM~58_combout\,
	combout => \DECODER|LessThan0~0_combout\);

-- Location: LCCOMB_X109_Y6_N8
\CPU|ROM|memROM~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~43_combout\ = (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(0) $ (!\CPU|PC|DOUT\(3)))) # (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(5),
	datab => \CPU|PC|DOUT\(0),
	datac => \CPU|PC|DOUT\(1),
	datad => \CPU|PC|DOUT\(3),
	combout => \CPU|ROM|memROM~43_combout\);

-- Location: LCCOMB_X109_Y6_N26
\CPU|ROM|memROM~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~45_combout\ = (!\CPU|PC|DOUT\(2) & (\CPU|ROM|memROM~43_combout\ & \CPU|ROM|memROM~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(2),
	datab => \CPU|ROM|memROM~43_combout\,
	datad => \CPU|ROM|memROM~44_combout\,
	combout => \CPU|ROM|memROM~45_combout\);

-- Location: LCCOMB_X108_Y6_N20
\CPU|ROM|memROM~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~39_combout\ = (\CPU|PC|DOUT\(4) & (((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(1))) # (!\CPU|PC|DOUT\(2)))) # (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(4),
	datab => \CPU|PC|DOUT\(2),
	datac => \CPU|PC|DOUT\(1),
	datad => \CPU|PC|DOUT\(0),
	combout => \CPU|ROM|memROM~39_combout\);

-- Location: LCCOMB_X108_Y6_N22
\CPU|ROM|memROM~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~40_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(3) $ (!\CPU|PC|DOUT\(2))))) # (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)))) # (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(0),
	datab => \CPU|PC|DOUT\(1),
	datac => \CPU|PC|DOUT\(3),
	datad => \CPU|PC|DOUT\(2),
	combout => \CPU|ROM|memROM~40_combout\);

-- Location: LCCOMB_X108_Y6_N2
\CPU|ROM|memROM~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~42_combout\ = (\CPU|PC|DOUT\(3) & (\CPU|ROM|memROM~39_combout\)) # (!\CPU|PC|DOUT\(3) & ((!\CPU|ROM|memROM~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(3),
	datab => \CPU|ROM|memROM~39_combout\,
	datad => \CPU|ROM|memROM~41_combout\,
	combout => \CPU|ROM|memROM~42_combout\);

-- Location: LCCOMB_X109_Y6_N0
\CPU|ROM|memROM~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~60_combout\ = (\CPU|PC|DOUT\(5) & (!\CPU|ROM|memROM~39_combout\ & (\CPU|ROM|memROM~40_combout\))) # (!\CPU|PC|DOUT\(5) & (((\CPU|ROM|memROM~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(5),
	datab => \CPU|ROM|memROM~39_combout\,
	datac => \CPU|ROM|memROM~40_combout\,
	datad => \CPU|ROM|memROM~42_combout\,
	combout => \CPU|ROM|memROM~60_combout\);

-- Location: LCCOMB_X109_Y6_N12
\DECODER|HabRAM_write~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER|HabRAM_write~2_combout\ = (!\CPU|ROM|memROM~45_combout\ & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & \CPU|ROM|memROM~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~45_combout\,
	datab => \CPU|PC|DOUT\(6),
	datac => \CPU|PC|DOUT\(7),
	datad => \CPU|ROM|memROM~60_combout\,
	combout => \DECODER|HabRAM_write~2_combout\);

-- Location: LCCOMB_X109_Y6_N30
\DECODER|HabRAM_write\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER|HabRAM_write~combout\ = (!\DECODER|LessThan0~0_combout\ & \DECODER|HabRAM_write~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DECODER|LessThan0~0_combout\,
	datad => \DECODER|HabRAM_write~2_combout\,
	combout => \DECODER|HabRAM_write~combout\);

-- Location: LCCOMB_X107_Y6_N30
\CPU|ROM|memROM~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~33_combout\ = (!\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|DOUT\(5),
	datad => \CPU|PC|DOUT\(3),
	combout => \CPU|ROM|memROM~33_combout\);

-- Location: LCCOMB_X107_Y6_N14
\CPU|ROM|memROM~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~34_combout\ = (\CPU|PC|DOUT\(1) & (((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(4))) # (!\CPU|PC|DOUT\(2)))) # (!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(0)) # ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(0),
	datac => \CPU|PC|DOUT\(2),
	datad => \CPU|PC|DOUT\(4),
	combout => \CPU|ROM|memROM~34_combout\);

-- Location: LCCOMB_X107_Y6_N8
\CPU|ROM|memROM~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~17_combout\ = (\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|DOUT\(5),
	datad => \CPU|PC|DOUT\(0),
	combout => \CPU|ROM|memROM~17_combout\);

-- Location: LCCOMB_X107_Y6_N4
\CPU|ROM|memROM~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~32_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(3) & (\CPU|ROM|memROM~21_combout\ & \CPU|ROM|memROM~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(3),
	datac => \CPU|ROM|memROM~21_combout\,
	datad => \CPU|ROM|memROM~17_combout\,
	combout => \CPU|ROM|memROM~32_combout\);

-- Location: LCCOMB_X107_Y6_N12
\CPU|ROM|memROM~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~35_combout\ = (\CPU|ROM|memROM~14_combout\ & ((\CPU|ROM|memROM~32_combout\) # ((\CPU|ROM|memROM~33_combout\ & !\CPU|ROM|memROM~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~33_combout\,
	datab => \CPU|ROM|memROM~34_combout\,
	datac => \CPU|ROM|memROM~32_combout\,
	datad => \CPU|ROM|memROM~14_combout\,
	combout => \CPU|ROM|memROM~35_combout\);

-- Location: LCCOMB_X107_Y6_N22
\CPU|ROM|memROM~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~36_combout\ = (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(4) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(2),
	datac => \CPU|PC|DOUT\(0),
	datad => \CPU|PC|DOUT\(4),
	combout => \CPU|ROM|memROM~36_combout\);

-- Location: LCCOMB_X107_Y6_N28
\CPU|ROM|memROM~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~37_combout\ = (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(2)) # ((!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(4))))) # (!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(4)) # (!\CPU|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(2),
	datac => \CPU|PC|DOUT\(0),
	datad => \CPU|PC|DOUT\(4),
	combout => \CPU|ROM|memROM~37_combout\);

-- Location: LCCOMB_X107_Y6_N26
\CPU|ROM|memROM~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~38_combout\ = (!\CPU|PC|DOUT\(5) & ((\CPU|PC|DOUT\(3) & (\CPU|ROM|memROM~36_combout\)) # (!\CPU|PC|DOUT\(3) & ((\CPU|ROM|memROM~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(3),
	datab => \CPU|PC|DOUT\(5),
	datac => \CPU|ROM|memROM~36_combout\,
	datad => \CPU|ROM|memROM~37_combout\,
	combout => \CPU|ROM|memROM~38_combout\);

-- Location: LCCOMB_X107_Y6_N24
\CPU|ROM|memROM~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~57_combout\ = (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & \CPU|ROM|memROM~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(7),
	datab => \CPU|PC|DOUT\(6),
	datad => \CPU|ROM|memROM~38_combout\,
	combout => \CPU|ROM|memROM~57_combout\);

-- Location: LCCOMB_X109_Y6_N6
\RAM_USAVEL|ram~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~319_combout\ = (\CPU|ROM|memROM~31_combout\ & (\CPU|ROM|memROM~35_combout\ & (!\CPU|ROM|memROM~57_combout\ & \CPU|ROM|memROM~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \CPU|ROM|memROM~35_combout\,
	datac => \CPU|ROM|memROM~57_combout\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \RAM_USAVEL|ram~319_combout\);

-- Location: LCCOMB_X109_Y6_N16
\RAM_USAVEL|ram~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~320_combout\ = (!\CPU|ROM|memROM~56_combout\ & (!\CPU|ROM|memROM~19_combout\ & (\DECODER|HabRAM_write~combout\ & \RAM_USAVEL|ram~319_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~56_combout\,
	datab => \CPU|ROM|memROM~19_combout\,
	datac => \DECODER|HabRAM_write~combout\,
	datad => \RAM_USAVEL|ram~319_combout\,
	combout => \RAM_USAVEL|ram~320_combout\);

-- Location: FF_X108_Y5_N17
\RAM_USAVEL|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~57feeder_combout\,
	ena => \RAM_USAVEL|ram~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~57_q\);

-- Location: LCCOMB_X109_Y5_N14
\RAM_USAVEL|ram~53feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~53feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(0),
	combout => \RAM_USAVEL|ram~53feeder_combout\);

-- Location: LCCOMB_X109_Y5_N6
\RAM_USAVEL|ram~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~313_combout\ = (!\CPU|ROM|memROM~31_combout\ & (\CPU|ROM|memROM~26_combout\ & (!\CPU|ROM|memROM~57_combout\ & \CPU|ROM|memROM~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \CPU|ROM|memROM~57_combout\,
	datad => \CPU|ROM|memROM~35_combout\,
	combout => \RAM_USAVEL|ram~313_combout\);

-- Location: LCCOMB_X109_Y5_N4
\RAM_USAVEL|ram~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~314_combout\ = (!\CPU|ROM|memROM~56_combout\ & (!\CPU|ROM|memROM~19_combout\ & (\DECODER|HabRAM_write~combout\ & \RAM_USAVEL|ram~313_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~56_combout\,
	datab => \CPU|ROM|memROM~19_combout\,
	datac => \DECODER|HabRAM_write~combout\,
	datad => \RAM_USAVEL|ram~313_combout\,
	combout => \RAM_USAVEL|ram~314_combout\);

-- Location: FF_X109_Y5_N15
\RAM_USAVEL|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~53feeder_combout\,
	ena => \RAM_USAVEL|ram~314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~53_q\);

-- Location: LCCOMB_X107_Y6_N20
\RAM_USAVEL|ram~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~315_combout\ = (\CPU|ROM|memROM~35_combout\ & (!\CPU|ROM|memROM~57_combout\ & (!\CPU|ROM|memROM~26_combout\ & \CPU|ROM|memROM~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~35_combout\,
	datab => \CPU|ROM|memROM~57_combout\,
	datac => \CPU|ROM|memROM~26_combout\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~315_combout\);

-- Location: LCCOMB_X107_Y6_N18
\RAM_USAVEL|ram~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~316_combout\ = (!\CPU|ROM|memROM~56_combout\ & (\DECODER|HabRAM_write~combout\ & (!\CPU|ROM|memROM~19_combout\ & \RAM_USAVEL|ram~315_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~56_combout\,
	datab => \DECODER|HabRAM_write~combout\,
	datac => \CPU|ROM|memROM~19_combout\,
	datad => \RAM_USAVEL|ram~315_combout\,
	combout => \RAM_USAVEL|ram~316_combout\);

-- Location: FF_X107_Y6_N31
\RAM_USAVEL|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM_USAVEL|ram~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~49_q\);

-- Location: LCCOMB_X109_Y5_N24
\RAM_USAVEL|ram~45feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~45feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(0),
	combout => \RAM_USAVEL|ram~45feeder_combout\);

-- Location: LCCOMB_X110_Y6_N18
\RAM_USAVEL|ram~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~317_combout\ = (!\CPU|ROM|memROM~31_combout\ & (!\CPU|ROM|memROM~57_combout\ & (\CPU|ROM|memROM~35_combout\ & !\CPU|ROM|memROM~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \CPU|ROM|memROM~57_combout\,
	datac => \CPU|ROM|memROM~35_combout\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \RAM_USAVEL|ram~317_combout\);

-- Location: LCCOMB_X109_Y5_N22
\RAM_USAVEL|ram~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~318_combout\ = (!\CPU|ROM|memROM~56_combout\ & (!\CPU|ROM|memROM~19_combout\ & (\DECODER|HabRAM_write~combout\ & \RAM_USAVEL|ram~317_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~56_combout\,
	datab => \CPU|ROM|memROM~19_combout\,
	datac => \DECODER|HabRAM_write~combout\,
	datad => \RAM_USAVEL|ram~317_combout\,
	combout => \RAM_USAVEL|ram~318_combout\);

-- Location: FF_X109_Y5_N25
\RAM_USAVEL|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~45feeder_combout\,
	ena => \RAM_USAVEL|ram~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~45_q\);

-- Location: LCCOMB_X110_Y5_N20
\RAM_USAVEL|ram~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~269_combout\ = (\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~49_q\) # ((\CPU|ROM|memROM~26_combout\)))) # (!\CPU|ROM|memROM~31_combout\ & (((\RAM_USAVEL|ram~45_q\ & !\CPU|ROM|memROM~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~49_q\,
	datab => \RAM_USAVEL|ram~45_q\,
	datac => \CPU|ROM|memROM~31_combout\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \RAM_USAVEL|ram~269_combout\);

-- Location: LCCOMB_X110_Y5_N2
\RAM_USAVEL|ram~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~270_combout\ = (\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~269_combout\ & (\RAM_USAVEL|ram~57_q\)) # (!\RAM_USAVEL|ram~269_combout\ & ((\RAM_USAVEL|ram~53_q\))))) # (!\CPU|ROM|memROM~26_combout\ & (((\RAM_USAVEL|ram~269_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \RAM_USAVEL|ram~57_q\,
	datac => \RAM_USAVEL|ram~53_q\,
	datad => \RAM_USAVEL|ram~269_combout\,
	combout => \RAM_USAVEL|ram~270_combout\);

-- Location: LCCOMB_X113_Y6_N28
\RAM_USAVEL|ram~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~65feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(0),
	combout => \RAM_USAVEL|ram~65feeder_combout\);

-- Location: LCCOMB_X112_Y6_N8
\RAM_USAVEL|ram~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~337_combout\ = (!\CPU|ROM|memROM~26_combout\ & (\CPU|ROM|memROM~35_combout\ & (\CPU|ROM|memROM~57_combout\ & \CPU|ROM|memROM~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \CPU|ROM|memROM~35_combout\,
	datac => \CPU|ROM|memROM~57_combout\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~337_combout\);

-- Location: LCCOMB_X113_Y6_N2
\RAM_USAVEL|ram~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~338_combout\ = (!\CPU|ROM|memROM~56_combout\ & (!\CPU|ROM|memROM~19_combout\ & (\DECODER|HabRAM_write~combout\ & \RAM_USAVEL|ram~337_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~56_combout\,
	datab => \CPU|ROM|memROM~19_combout\,
	datac => \DECODER|HabRAM_write~combout\,
	datad => \RAM_USAVEL|ram~337_combout\,
	combout => \RAM_USAVEL|ram~338_combout\);

-- Location: FF_X113_Y6_N29
\RAM_USAVEL|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~65feeder_combout\,
	ena => \RAM_USAVEL|ram~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~65_q\);

-- Location: LCCOMB_X112_Y6_N6
\RAM_USAVEL|ram~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~343_combout\ = (\CPU|ROM|memROM~26_combout\ & (\CPU|ROM|memROM~35_combout\ & (\CPU|ROM|memROM~57_combout\ & \CPU|ROM|memROM~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \CPU|ROM|memROM~35_combout\,
	datac => \CPU|ROM|memROM~57_combout\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~343_combout\);

-- Location: LCCOMB_X112_Y6_N4
\RAM_USAVEL|ram~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~344_combout\ = (!\CPU|ROM|memROM~19_combout\ & (!\CPU|ROM|memROM~56_combout\ & (\DECODER|HabRAM_write~combout\ & \RAM_USAVEL|ram~343_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~19_combout\,
	datab => \CPU|ROM|memROM~56_combout\,
	datac => \DECODER|HabRAM_write~combout\,
	datad => \RAM_USAVEL|ram~343_combout\,
	combout => \RAM_USAVEL|ram~344_combout\);

-- Location: FF_X112_Y6_N15
\RAM_USAVEL|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM_USAVEL|ram~344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~73_q\);

-- Location: LCCOMB_X111_Y5_N12
\RAM_USAVEL|ram~69feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~69feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(0),
	combout => \RAM_USAVEL|ram~69feeder_combout\);

-- Location: LCCOMB_X111_Y5_N6
\RAM_USAVEL|ram~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~339_combout\ = (\CPU|ROM|memROM~35_combout\ & (!\CPU|ROM|memROM~31_combout\ & (\CPU|ROM|memROM~26_combout\ & \CPU|ROM|memROM~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~35_combout\,
	datab => \CPU|ROM|memROM~31_combout\,
	datac => \CPU|ROM|memROM~26_combout\,
	datad => \CPU|ROM|memROM~57_combout\,
	combout => \RAM_USAVEL|ram~339_combout\);

-- Location: LCCOMB_X111_Y5_N20
\RAM_USAVEL|ram~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~340_combout\ = (!\CPU|ROM|memROM~56_combout\ & (!\CPU|ROM|memROM~19_combout\ & (\DECODER|HabRAM_write~combout\ & \RAM_USAVEL|ram~339_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~56_combout\,
	datab => \CPU|ROM|memROM~19_combout\,
	datac => \DECODER|HabRAM_write~combout\,
	datad => \RAM_USAVEL|ram~339_combout\,
	combout => \RAM_USAVEL|ram~340_combout\);

-- Location: FF_X111_Y5_N13
\RAM_USAVEL|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~69feeder_combout\,
	ena => \RAM_USAVEL|ram~340_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~69_q\);

-- Location: LCCOMB_X112_Y6_N18
\RAM_USAVEL|ram~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~341_combout\ = (!\CPU|ROM|memROM~26_combout\ & (\CPU|ROM|memROM~35_combout\ & (\CPU|ROM|memROM~57_combout\ & !\CPU|ROM|memROM~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \CPU|ROM|memROM~35_combout\,
	datac => \CPU|ROM|memROM~57_combout\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~341_combout\);

-- Location: LCCOMB_X112_Y6_N28
\RAM_USAVEL|ram~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~342_combout\ = (!\CPU|ROM|memROM~19_combout\ & (!\CPU|ROM|memROM~56_combout\ & (\DECODER|HabRAM_write~combout\ & \RAM_USAVEL|ram~341_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~19_combout\,
	datab => \CPU|ROM|memROM~56_combout\,
	datac => \DECODER|HabRAM_write~combout\,
	datad => \RAM_USAVEL|ram~341_combout\,
	combout => \RAM_USAVEL|ram~342_combout\);

-- Location: FF_X112_Y6_N1
\RAM_USAVEL|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM_USAVEL|ram~342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~61_q\);

-- Location: LCCOMB_X112_Y6_N0
\RAM_USAVEL|ram~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~276_combout\ = (\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~69_q\) # ((\CPU|ROM|memROM~31_combout\)))) # (!\CPU|ROM|memROM~26_combout\ & (((\RAM_USAVEL|ram~61_q\ & !\CPU|ROM|memROM~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~69_q\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \RAM_USAVEL|ram~61_q\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~276_combout\);

-- Location: LCCOMB_X112_Y6_N14
\RAM_USAVEL|ram~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~277_combout\ = (\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~276_combout\ & ((\RAM_USAVEL|ram~73_q\))) # (!\RAM_USAVEL|ram~276_combout\ & (\RAM_USAVEL|ram~65_q\)))) # (!\CPU|ROM|memROM~31_combout\ & (((\RAM_USAVEL|ram~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \RAM_USAVEL|ram~65_q\,
	datac => \RAM_USAVEL|ram~73_q\,
	datad => \RAM_USAVEL|ram~276_combout\,
	combout => \RAM_USAVEL|ram~277_combout\);

-- Location: LCCOMB_X110_Y6_N4
\RAM_USAVEL|ram~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~321_combout\ = (!\CPU|ROM|memROM~26_combout\ & (\CPU|ROM|memROM~31_combout\ & (!\CPU|ROM|memROM~35_combout\ & \CPU|ROM|memROM~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \CPU|ROM|memROM~31_combout\,
	datac => \CPU|ROM|memROM~35_combout\,
	datad => \CPU|ROM|memROM~57_combout\,
	combout => \RAM_USAVEL|ram~321_combout\);

-- Location: LCCOMB_X110_Y6_N10
\RAM_USAVEL|ram~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~322_combout\ = (!\CPU|ROM|memROM~56_combout\ & (!\CPU|ROM|memROM~19_combout\ & (\RAM_USAVEL|ram~321_combout\ & \DECODER|HabRAM_write~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~56_combout\,
	datab => \CPU|ROM|memROM~19_combout\,
	datac => \RAM_USAVEL|ram~321_combout\,
	datad => \DECODER|HabRAM_write~combout\,
	combout => \RAM_USAVEL|ram~322_combout\);

-- Location: FF_X110_Y6_N31
\RAM_USAVEL|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM_USAVEL|ram~322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~33_q\);

-- Location: LCCOMB_X110_Y5_N16
\RAM_USAVEL|ram~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~327_combout\ = (\CPU|ROM|memROM~26_combout\ & (!\CPU|ROM|memROM~35_combout\ & (\CPU|ROM|memROM~57_combout\ & \CPU|ROM|memROM~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \CPU|ROM|memROM~35_combout\,
	datac => \CPU|ROM|memROM~57_combout\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~327_combout\);

-- Location: LCCOMB_X110_Y5_N6
\RAM_USAVEL|ram~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~328_combout\ = (\DECODER|HabRAM_write~combout\ & (\RAM_USAVEL|ram~327_combout\ & (!\CPU|ROM|memROM~56_combout\ & !\CPU|ROM|memROM~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|HabRAM_write~combout\,
	datab => \RAM_USAVEL|ram~327_combout\,
	datac => \CPU|ROM|memROM~56_combout\,
	datad => \CPU|ROM|memROM~19_combout\,
	combout => \RAM_USAVEL|ram~328_combout\);

-- Location: FF_X110_Y5_N11
\RAM_USAVEL|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM_USAVEL|ram~328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~41_q\);

-- Location: LCCOMB_X109_Y6_N18
\RAM_USAVEL|ram~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~323_combout\ = (\CPU|ROM|memROM~57_combout\ & (\CPU|ROM|memROM~26_combout\ & (!\CPU|ROM|memROM~35_combout\ & !\CPU|ROM|memROM~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~57_combout\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \CPU|ROM|memROM~35_combout\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~323_combout\);

-- Location: LCCOMB_X109_Y6_N20
\RAM_USAVEL|ram~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~324_combout\ = (!\CPU|ROM|memROM~56_combout\ & (!\CPU|ROM|memROM~19_combout\ & (\DECODER|HabRAM_write~combout\ & \RAM_USAVEL|ram~323_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~56_combout\,
	datab => \CPU|ROM|memROM~19_combout\,
	datac => \DECODER|HabRAM_write~combout\,
	datad => \RAM_USAVEL|ram~323_combout\,
	combout => \RAM_USAVEL|ram~324_combout\);

-- Location: FF_X109_Y6_N31
\RAM_USAVEL|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM_USAVEL|ram~324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~37_q\);

-- Location: LCCOMB_X110_Y5_N4
\RAM_USAVEL|ram~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~325_combout\ = (!\CPU|ROM|memROM~26_combout\ & (!\CPU|ROM|memROM~35_combout\ & (\CPU|ROM|memROM~57_combout\ & !\CPU|ROM|memROM~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \CPU|ROM|memROM~35_combout\,
	datac => \CPU|ROM|memROM~57_combout\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~325_combout\);

-- Location: LCCOMB_X110_Y5_N26
\RAM_USAVEL|ram~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~326_combout\ = (!\CPU|ROM|memROM~19_combout\ & (\RAM_USAVEL|ram~325_combout\ & (\DECODER|HabRAM_write~combout\ & !\CPU|ROM|memROM~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~19_combout\,
	datab => \RAM_USAVEL|ram~325_combout\,
	datac => \DECODER|HabRAM_write~combout\,
	datad => \CPU|ROM|memROM~56_combout\,
	combout => \RAM_USAVEL|ram~326_combout\);

-- Location: FF_X110_Y5_N1
\RAM_USAVEL|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM_USAVEL|ram~326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~29_q\);

-- Location: LCCOMB_X110_Y5_N0
\RAM_USAVEL|ram~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~271_combout\ = (\CPU|ROM|memROM~31_combout\ & (((\CPU|ROM|memROM~26_combout\)))) # (!\CPU|ROM|memROM~31_combout\ & ((\CPU|ROM|memROM~26_combout\ & (\RAM_USAVEL|ram~37_q\)) # (!\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~29_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \RAM_USAVEL|ram~37_q\,
	datac => \RAM_USAVEL|ram~29_q\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \RAM_USAVEL|ram~271_combout\);

-- Location: LCCOMB_X110_Y5_N10
\RAM_USAVEL|ram~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~272_combout\ = (\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~271_combout\ & ((\RAM_USAVEL|ram~41_q\))) # (!\RAM_USAVEL|ram~271_combout\ & (\RAM_USAVEL|ram~33_q\)))) # (!\CPU|ROM|memROM~31_combout\ & (((\RAM_USAVEL|ram~271_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~33_q\,
	datab => \CPU|ROM|memROM~31_combout\,
	datac => \RAM_USAVEL|ram~41_q\,
	datad => \RAM_USAVEL|ram~271_combout\,
	combout => \RAM_USAVEL|ram~272_combout\);

-- Location: LCCOMB_X107_Y5_N4
\RAM_USAVEL|ram~21feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~21feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(0),
	combout => \RAM_USAVEL|ram~21feeder_combout\);

-- Location: LCCOMB_X107_Y5_N28
\RAM_USAVEL|ram~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~329_combout\ = (!\CPU|ROM|memROM~31_combout\ & (!\CPU|ROM|memROM~57_combout\ & (\CPU|ROM|memROM~26_combout\ & !\CPU|ROM|memROM~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \CPU|ROM|memROM~57_combout\,
	datac => \CPU|ROM|memROM~26_combout\,
	datad => \CPU|ROM|memROM~35_combout\,
	combout => \RAM_USAVEL|ram~329_combout\);

-- Location: LCCOMB_X107_Y5_N2
\RAM_USAVEL|ram~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~330_combout\ = (!\CPU|ROM|memROM~19_combout\ & (!\CPU|ROM|memROM~56_combout\ & (\DECODER|HabRAM_write~combout\ & \RAM_USAVEL|ram~329_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~19_combout\,
	datab => \CPU|ROM|memROM~56_combout\,
	datac => \DECODER|HabRAM_write~combout\,
	datad => \RAM_USAVEL|ram~329_combout\,
	combout => \RAM_USAVEL|ram~330_combout\);

-- Location: FF_X107_Y5_N5
\RAM_USAVEL|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~21feeder_combout\,
	ena => \RAM_USAVEL|ram~330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~21_q\);

-- Location: LCCOMB_X110_Y7_N6
\RAM_USAVEL|ram~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~335_combout\ = (!\CPU|ROM|memROM~35_combout\ & (\CPU|ROM|memROM~31_combout\ & (\CPU|ROM|memROM~26_combout\ & !\CPU|ROM|memROM~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~35_combout\,
	datab => \CPU|ROM|memROM~31_combout\,
	datac => \CPU|ROM|memROM~26_combout\,
	datad => \CPU|ROM|memROM~57_combout\,
	combout => \RAM_USAVEL|ram~335_combout\);

-- Location: LCCOMB_X110_Y7_N12
\RAM_USAVEL|ram~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~336_combout\ = (!\CPU|ROM|memROM~56_combout\ & (!\CPU|ROM|memROM~19_combout\ & (\DECODER|HabRAM_write~combout\ & \RAM_USAVEL|ram~335_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~56_combout\,
	datab => \CPU|ROM|memROM~19_combout\,
	datac => \DECODER|HabRAM_write~combout\,
	datad => \RAM_USAVEL|ram~335_combout\,
	combout => \RAM_USAVEL|ram~336_combout\);

-- Location: FF_X110_Y7_N29
\RAM_USAVEL|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM_USAVEL|ram~336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~25_q\);

-- Location: LCCOMB_X111_Y7_N16
\RAM_USAVEL|ram~17feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~17feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(0),
	combout => \RAM_USAVEL|ram~17feeder_combout\);

-- Location: LCCOMB_X110_Y6_N20
\RAM_USAVEL|ram~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~331_combout\ = (\CPU|ROM|memROM~31_combout\ & (!\CPU|ROM|memROM~57_combout\ & (!\CPU|ROM|memROM~35_combout\ & !\CPU|ROM|memROM~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \CPU|ROM|memROM~57_combout\,
	datac => \CPU|ROM|memROM~35_combout\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \RAM_USAVEL|ram~331_combout\);

-- Location: LCCOMB_X111_Y7_N4
\RAM_USAVEL|ram~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~332_combout\ = (!\CPU|ROM|memROM~19_combout\ & (!\CPU|ROM|memROM~56_combout\ & (\RAM_USAVEL|ram~331_combout\ & \DECODER|HabRAM_write~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~19_combout\,
	datab => \CPU|ROM|memROM~56_combout\,
	datac => \RAM_USAVEL|ram~331_combout\,
	datad => \DECODER|HabRAM_write~combout\,
	combout => \RAM_USAVEL|ram~332_combout\);

-- Location: FF_X111_Y7_N17
\RAM_USAVEL|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~17feeder_combout\,
	ena => \RAM_USAVEL|ram~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~17_q\);

-- Location: LCCOMB_X111_Y7_N14
\RAM_USAVEL|ram~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~333_combout\ = (!\CPU|ROM|memROM~35_combout\ & (!\CPU|ROM|memROM~26_combout\ & (!\CPU|ROM|memROM~57_combout\ & !\CPU|ROM|memROM~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~35_combout\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \CPU|ROM|memROM~57_combout\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~333_combout\);

-- Location: LCCOMB_X111_Y7_N24
\RAM_USAVEL|ram~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~334_combout\ = (!\CPU|ROM|memROM~19_combout\ & (!\CPU|ROM|memROM~56_combout\ & (\RAM_USAVEL|ram~333_combout\ & \DECODER|HabRAM_write~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~19_combout\,
	datab => \CPU|ROM|memROM~56_combout\,
	datac => \RAM_USAVEL|ram~333_combout\,
	datad => \DECODER|HabRAM_write~combout\,
	combout => \RAM_USAVEL|ram~334_combout\);

-- Location: FF_X111_Y7_N23
\RAM_USAVEL|ram~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \RAM_USAVEL|ram~334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~13_q\);

-- Location: LCCOMB_X111_Y7_N22
\RAM_USAVEL|ram~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~273_combout\ = (\CPU|ROM|memROM~26_combout\ & (((\CPU|ROM|memROM~31_combout\)))) # (!\CPU|ROM|memROM~26_combout\ & ((\CPU|ROM|memROM~31_combout\ & (\RAM_USAVEL|ram~17_q\)) # (!\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~13_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~17_q\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \RAM_USAVEL|ram~13_q\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~273_combout\);

-- Location: LCCOMB_X110_Y7_N28
\RAM_USAVEL|ram~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~274_combout\ = (\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~273_combout\ & ((\RAM_USAVEL|ram~25_q\))) # (!\RAM_USAVEL|ram~273_combout\ & (\RAM_USAVEL|ram~21_q\)))) # (!\CPU|ROM|memROM~26_combout\ & (((\RAM_USAVEL|ram~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \RAM_USAVEL|ram~21_q\,
	datac => \RAM_USAVEL|ram~25_q\,
	datad => \RAM_USAVEL|ram~273_combout\,
	combout => \RAM_USAVEL|ram~274_combout\);

-- Location: LCCOMB_X109_Y7_N28
\RAM_USAVEL|ram~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~275_combout\ = (\CPU|ROM|memROM~35_combout\ & (\CPU|ROM|memROM~57_combout\)) # (!\CPU|ROM|memROM~35_combout\ & ((\CPU|ROM|memROM~57_combout\ & (\RAM_USAVEL|ram~272_combout\)) # (!\CPU|ROM|memROM~57_combout\ & 
-- ((\RAM_USAVEL|ram~274_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~35_combout\,
	datab => \CPU|ROM|memROM~57_combout\,
	datac => \RAM_USAVEL|ram~272_combout\,
	datad => \RAM_USAVEL|ram~274_combout\,
	combout => \RAM_USAVEL|ram~275_combout\);

-- Location: LCCOMB_X109_Y7_N2
\RAM_USAVEL|ram~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~278_combout\ = (\CPU|ROM|memROM~35_combout\ & ((\RAM_USAVEL|ram~275_combout\ & ((\RAM_USAVEL|ram~277_combout\))) # (!\RAM_USAVEL|ram~275_combout\ & (\RAM_USAVEL|ram~270_combout\)))) # (!\CPU|ROM|memROM~35_combout\ & 
-- (((\RAM_USAVEL|ram~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~270_combout\,
	datab => \CPU|ROM|memROM~35_combout\,
	datac => \RAM_USAVEL|ram~277_combout\,
	datad => \RAM_USAVEL|ram~275_combout\,
	combout => \RAM_USAVEL|ram~278_combout\);

-- Location: LCCOMB_X109_Y7_N0
\RAM_USAVEL|ram~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~279_combout\ = (!\CPU|ROM|memROM~19_combout\ & (!\CPU|ROM|memROM~56_combout\ & \RAM_USAVEL|ram~278_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|memROM~19_combout\,
	datac => \CPU|ROM|memROM~56_combout\,
	datad => \RAM_USAVEL|ram~278_combout\,
	combout => \RAM_USAVEL|ram~279_combout\);

-- Location: LCCOMB_X109_Y7_N4
\CPU|MUX|saida_MUX[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[0]~1_combout\ = (\CPU|MUX|saida_MUX[0]~0_combout\) # ((\CPU|ACU|DOUT[2]~17_combout\ & \RAM_USAVEL|ram~279_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ACU|DOUT[2]~17_combout\,
	datac => \CPU|MUX|saida_MUX[0]~0_combout\,
	datad => \RAM_USAVEL|ram~279_combout\,
	combout => \CPU|MUX|saida_MUX[0]~1_combout\);

-- Location: LCCOMB_X111_Y6_N12
\CPU|ROM|memROM~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~53_combout\ = (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(1)) # (\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(5),
	datac => \CPU|PC|DOUT\(3),
	datad => \CPU|PC|DOUT\(2),
	combout => \CPU|ROM|memROM~53_combout\);

-- Location: LCCOMB_X111_Y6_N18
\CPU|ROM|memROM~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~52_combout\ = (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(5) $ (!\CPU|PC|DOUT\(3))))) # (!\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(5) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(3)))) # (!\CPU|PC|DOUT\(5) & ((\CPU|PC|DOUT\(3)) # 
-- (\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|PC|DOUT\(5),
	datac => \CPU|PC|DOUT\(3),
	datad => \CPU|PC|DOUT\(2),
	combout => \CPU|ROM|memROM~52_combout\);

-- Location: LCCOMB_X111_Y6_N6
\CPU|ROM|memROM~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~54_combout\ = (\CPU|ROM|memROM~44_combout\ & ((\CPU|PC|DOUT\(0) & (\CPU|ROM|memROM~53_combout\)) # (!\CPU|PC|DOUT\(0) & ((!\CPU|ROM|memROM~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~53_combout\,
	datab => \CPU|PC|DOUT\(0),
	datac => \CPU|ROM|memROM~44_combout\,
	datad => \CPU|ROM|memROM~52_combout\,
	combout => \CPU|ROM|memROM~54_combout\);

-- Location: FF_X109_Y7_N5
\CPU|ACU|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|MUX|saida_MUX[0]~1_combout\,
	ena => \CPU|ROM|memROM~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(0));

-- Location: LCCOMB_X109_Y7_N20
\CPU|ULA|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~2_combout\ = (\CPU|ACU|DOUT\(1) & ((\CPU|ROM|memROM~26_combout\ & (\CPU|ULA|Add0~1\ & VCC)) # (!\CPU|ROM|memROM~26_combout\ & (!\CPU|ULA|Add0~1\)))) # (!\CPU|ACU|DOUT\(1) & ((\CPU|ROM|memROM~26_combout\ & (!\CPU|ULA|Add0~1\)) # 
-- (!\CPU|ROM|memROM~26_combout\ & ((\CPU|ULA|Add0~1\) # (GND)))))
-- \CPU|ULA|Add0~3\ = CARRY((\CPU|ACU|DOUT\(1) & (!\CPU|ROM|memROM~26_combout\ & !\CPU|ULA|Add0~1\)) # (!\CPU|ACU|DOUT\(1) & ((!\CPU|ULA|Add0~1\) # (!\CPU|ROM|memROM~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ACU|DOUT\(1),
	datab => \CPU|ROM|memROM~26_combout\,
	datad => VCC,
	cin => \CPU|ULA|Add0~1\,
	combout => \CPU|ULA|Add0~2_combout\,
	cout => \CPU|ULA|Add0~3\);

-- Location: LCCOMB_X109_Y7_N8
\CPU|MUX|saida_MUX[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[1]~2_combout\ = (\CPU|ROM|memROM~59_combout\ & ((\CPU|ROM|memROM~51_combout\ & ((\CPU|ULA|Add0~2_combout\))) # (!\CPU|ROM|memROM~51_combout\ & (\CPU|ROM|memROM~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \CPU|ROM|memROM~59_combout\,
	datac => \CPU|ROM|memROM~51_combout\,
	datad => \CPU|ULA|Add0~2_combout\,
	combout => \CPU|MUX|saida_MUX[1]~2_combout\);

-- Location: FF_X109_Y7_N7
\RAM_USAVEL|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM_USAVEL|ram~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~58_q\);

-- Location: LCCOMB_X109_Y5_N2
\RAM_USAVEL|ram~54feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~54feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(1),
	combout => \RAM_USAVEL|ram~54feeder_combout\);

-- Location: FF_X109_Y5_N3
\RAM_USAVEL|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~54feeder_combout\,
	ena => \RAM_USAVEL|ram~314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~54_q\);

-- Location: FF_X107_Y6_N25
\RAM_USAVEL|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM_USAVEL|ram~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~50_q\);

-- Location: LCCOMB_X109_Y5_N12
\RAM_USAVEL|ram~46feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~46feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(1),
	combout => \RAM_USAVEL|ram~46feeder_combout\);

-- Location: FF_X109_Y5_N13
\RAM_USAVEL|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~46feeder_combout\,
	ena => \RAM_USAVEL|ram~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~46_q\);

-- Location: LCCOMB_X108_Y7_N8
\RAM_USAVEL|ram~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~280_combout\ = (\CPU|ROM|memROM~26_combout\ & (((\CPU|ROM|memROM~31_combout\)))) # (!\CPU|ROM|memROM~26_combout\ & ((\CPU|ROM|memROM~31_combout\ & (\RAM_USAVEL|ram~50_q\)) # (!\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~50_q\,
	datab => \RAM_USAVEL|ram~46_q\,
	datac => \CPU|ROM|memROM~26_combout\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~280_combout\);

-- Location: LCCOMB_X109_Y7_N26
\RAM_USAVEL|ram~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~281_combout\ = (\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~280_combout\ & (\RAM_USAVEL|ram~58_q\)) # (!\RAM_USAVEL|ram~280_combout\ & ((\RAM_USAVEL|ram~54_q\))))) # (!\CPU|ROM|memROM~26_combout\ & (((\RAM_USAVEL|ram~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~58_q\,
	datab => \RAM_USAVEL|ram~54_q\,
	datac => \CPU|ROM|memROM~26_combout\,
	datad => \RAM_USAVEL|ram~280_combout\,
	combout => \RAM_USAVEL|ram~281_combout\);

-- Location: LCCOMB_X113_Y6_N26
\RAM_USAVEL|ram~66feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~66feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(1),
	combout => \RAM_USAVEL|ram~66feeder_combout\);

-- Location: FF_X113_Y6_N27
\RAM_USAVEL|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~66feeder_combout\,
	ena => \RAM_USAVEL|ram~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~66_q\);

-- Location: FF_X112_Y6_N3
\RAM_USAVEL|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM_USAVEL|ram~344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~74_q\);

-- Location: LCCOMB_X111_Y5_N18
\RAM_USAVEL|ram~70feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~70feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(1),
	combout => \RAM_USAVEL|ram~70feeder_combout\);

-- Location: FF_X111_Y5_N19
\RAM_USAVEL|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~70feeder_combout\,
	ena => \RAM_USAVEL|ram~340_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~70_q\);

-- Location: FF_X112_Y6_N21
\RAM_USAVEL|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM_USAVEL|ram~342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~62_q\);

-- Location: LCCOMB_X112_Y6_N20
\RAM_USAVEL|ram~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~287_combout\ = (\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~70_q\) # ((\CPU|ROM|memROM~31_combout\)))) # (!\CPU|ROM|memROM~26_combout\ & (((\RAM_USAVEL|ram~62_q\ & !\CPU|ROM|memROM~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~70_q\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \RAM_USAVEL|ram~62_q\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~287_combout\);

-- Location: LCCOMB_X112_Y6_N2
\RAM_USAVEL|ram~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~288_combout\ = (\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~287_combout\ & ((\RAM_USAVEL|ram~74_q\))) # (!\RAM_USAVEL|ram~287_combout\ & (\RAM_USAVEL|ram~66_q\)))) # (!\CPU|ROM|memROM~31_combout\ & (((\RAM_USAVEL|ram~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \RAM_USAVEL|ram~66_q\,
	datac => \RAM_USAVEL|ram~74_q\,
	datad => \RAM_USAVEL|ram~287_combout\,
	combout => \RAM_USAVEL|ram~288_combout\);

-- Location: FF_X110_Y6_N7
\RAM_USAVEL|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM_USAVEL|ram~322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~34_q\);

-- Location: FF_X110_Y5_N19
\RAM_USAVEL|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM_USAVEL|ram~328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~42_q\);

-- Location: LCCOMB_X109_Y4_N22
\RAM_USAVEL|ram~38feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~38feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(1),
	combout => \RAM_USAVEL|ram~38feeder_combout\);

-- Location: FF_X109_Y4_N23
\RAM_USAVEL|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~38feeder_combout\,
	ena => \RAM_USAVEL|ram~324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~38_q\);

-- Location: FF_X110_Y5_N25
\RAM_USAVEL|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM_USAVEL|ram~326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~30_q\);

-- Location: LCCOMB_X110_Y5_N24
\RAM_USAVEL|ram~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~282_combout\ = (\CPU|ROM|memROM~31_combout\ & (((\CPU|ROM|memROM~26_combout\)))) # (!\CPU|ROM|memROM~31_combout\ & ((\CPU|ROM|memROM~26_combout\ & (\RAM_USAVEL|ram~38_q\)) # (!\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~30_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \RAM_USAVEL|ram~38_q\,
	datac => \RAM_USAVEL|ram~30_q\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \RAM_USAVEL|ram~282_combout\);

-- Location: LCCOMB_X110_Y5_N18
\RAM_USAVEL|ram~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~283_combout\ = (\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~282_combout\ & ((\RAM_USAVEL|ram~42_q\))) # (!\RAM_USAVEL|ram~282_combout\ & (\RAM_USAVEL|ram~34_q\)))) # (!\CPU|ROM|memROM~31_combout\ & (((\RAM_USAVEL|ram~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \RAM_USAVEL|ram~34_q\,
	datac => \RAM_USAVEL|ram~42_q\,
	datad => \RAM_USAVEL|ram~282_combout\,
	combout => \RAM_USAVEL|ram~283_combout\);

-- Location: LCCOMB_X107_Y5_N26
\RAM_USAVEL|ram~22feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~22feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(1),
	combout => \RAM_USAVEL|ram~22feeder_combout\);

-- Location: FF_X107_Y5_N27
\RAM_USAVEL|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~22feeder_combout\,
	ena => \RAM_USAVEL|ram~330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~22_q\);

-- Location: FF_X110_Y7_N3
\RAM_USAVEL|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM_USAVEL|ram~336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~26_q\);

-- Location: LCCOMB_X111_Y7_N20
\RAM_USAVEL|ram~18feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~18feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(1),
	combout => \RAM_USAVEL|ram~18feeder_combout\);

-- Location: FF_X111_Y7_N21
\RAM_USAVEL|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~18feeder_combout\,
	ena => \RAM_USAVEL|ram~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~18_q\);

-- Location: FF_X111_Y7_N27
\RAM_USAVEL|ram~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \RAM_USAVEL|ram~334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~14_q\);

-- Location: LCCOMB_X111_Y7_N26
\RAM_USAVEL|ram~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~284_combout\ = (\CPU|ROM|memROM~26_combout\ & (((\CPU|ROM|memROM~31_combout\)))) # (!\CPU|ROM|memROM~26_combout\ & ((\CPU|ROM|memROM~31_combout\ & (\RAM_USAVEL|ram~18_q\)) # (!\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~18_q\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \RAM_USAVEL|ram~14_q\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~284_combout\);

-- Location: LCCOMB_X110_Y7_N2
\RAM_USAVEL|ram~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~285_combout\ = (\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~284_combout\ & ((\RAM_USAVEL|ram~26_q\))) # (!\RAM_USAVEL|ram~284_combout\ & (\RAM_USAVEL|ram~22_q\)))) # (!\CPU|ROM|memROM~26_combout\ & (((\RAM_USAVEL|ram~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~22_q\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \RAM_USAVEL|ram~26_q\,
	datad => \RAM_USAVEL|ram~284_combout\,
	combout => \RAM_USAVEL|ram~285_combout\);

-- Location: LCCOMB_X109_Y7_N10
\RAM_USAVEL|ram~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~286_combout\ = (\CPU|ROM|memROM~35_combout\ & (\CPU|ROM|memROM~57_combout\)) # (!\CPU|ROM|memROM~35_combout\ & ((\CPU|ROM|memROM~57_combout\ & (\RAM_USAVEL|ram~283_combout\)) # (!\CPU|ROM|memROM~57_combout\ & 
-- ((\RAM_USAVEL|ram~285_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~35_combout\,
	datab => \CPU|ROM|memROM~57_combout\,
	datac => \RAM_USAVEL|ram~283_combout\,
	datad => \RAM_USAVEL|ram~285_combout\,
	combout => \RAM_USAVEL|ram~286_combout\);

-- Location: LCCOMB_X109_Y7_N12
\RAM_USAVEL|ram~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~289_combout\ = (\CPU|ROM|memROM~35_combout\ & ((\RAM_USAVEL|ram~286_combout\ & ((\RAM_USAVEL|ram~288_combout\))) # (!\RAM_USAVEL|ram~286_combout\ & (\RAM_USAVEL|ram~281_combout\)))) # (!\CPU|ROM|memROM~35_combout\ & 
-- (((\RAM_USAVEL|ram~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~281_combout\,
	datab => \CPU|ROM|memROM~35_combout\,
	datac => \RAM_USAVEL|ram~288_combout\,
	datad => \RAM_USAVEL|ram~286_combout\,
	combout => \RAM_USAVEL|ram~289_combout\);

-- Location: LCCOMB_X109_Y7_N16
\RAM_USAVEL|ram~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~290_combout\ = (!\CPU|ROM|memROM~19_combout\ & (!\CPU|ROM|memROM~56_combout\ & \RAM_USAVEL|ram~289_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|memROM~19_combout\,
	datac => \CPU|ROM|memROM~56_combout\,
	datad => \RAM_USAVEL|ram~289_combout\,
	combout => \RAM_USAVEL|ram~290_combout\);

-- Location: LCCOMB_X109_Y7_N30
\CPU|MUX|saida_MUX[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[1]~3_combout\ = (\CPU|MUX|saida_MUX[1]~2_combout\) # ((\CPU|ACU|DOUT[2]~17_combout\ & \RAM_USAVEL|ram~290_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ACU|DOUT[2]~17_combout\,
	datac => \CPU|MUX|saida_MUX[1]~2_combout\,
	datad => \RAM_USAVEL|ram~290_combout\,
	combout => \CPU|MUX|saida_MUX[1]~3_combout\);

-- Location: FF_X109_Y7_N31
\CPU|ACU|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|MUX|saida_MUX[1]~3_combout\,
	ena => \CPU|ROM|memROM~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(1));

-- Location: LCCOMB_X109_Y7_N6
\CPU|ACU|DOUT[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ACU|DOUT[2]~16_combout\ = (\CPU|ACU|DOUT[2]~17_combout\) # ((!\CPU|ROM|memROM~51_combout\ & \CPU|ROM|memROM~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ACU|DOUT[2]~17_combout\,
	datab => \CPU|ROM|memROM~51_combout\,
	datad => \CPU|ROM|memROM~59_combout\,
	combout => \CPU|ACU|DOUT[2]~16_combout\);

-- Location: LCCOMB_X113_Y6_N10
\RAM_USAVEL|ram~68feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~68feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(3),
	combout => \RAM_USAVEL|ram~68feeder_combout\);

-- Location: FF_X113_Y6_N11
\RAM_USAVEL|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~68feeder_combout\,
	ena => \RAM_USAVEL|ram~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~68_q\);

-- Location: LCCOMB_X112_Y6_N10
\RAM_USAVEL|ram~76feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~76feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(3),
	combout => \RAM_USAVEL|ram~76feeder_combout\);

-- Location: FF_X112_Y6_N11
\RAM_USAVEL|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~76feeder_combout\,
	ena => \RAM_USAVEL|ram~344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~76_q\);

-- Location: LCCOMB_X111_Y5_N14
\RAM_USAVEL|ram~72feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~72feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(3),
	combout => \RAM_USAVEL|ram~72feeder_combout\);

-- Location: FF_X111_Y5_N15
\RAM_USAVEL|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~72feeder_combout\,
	ena => \RAM_USAVEL|ram~340_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~72_q\);

-- Location: LCCOMB_X112_Y6_N24
\RAM_USAVEL|ram~64feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~64feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(3),
	combout => \RAM_USAVEL|ram~64feeder_combout\);

-- Location: FF_X112_Y6_N25
\RAM_USAVEL|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~64feeder_combout\,
	ena => \RAM_USAVEL|ram~342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~64_q\);

-- Location: LCCOMB_X111_Y6_N28
\RAM_USAVEL|ram~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~309_combout\ = (\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~72_q\) # ((\CPU|ROM|memROM~31_combout\)))) # (!\CPU|ROM|memROM~26_combout\ & (((!\CPU|ROM|memROM~31_combout\ & \RAM_USAVEL|ram~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~72_q\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \CPU|ROM|memROM~31_combout\,
	datad => \RAM_USAVEL|ram~64_q\,
	combout => \RAM_USAVEL|ram~309_combout\);

-- Location: LCCOMB_X111_Y6_N30
\RAM_USAVEL|ram~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~310_combout\ = (\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~309_combout\ & ((\RAM_USAVEL|ram~76_q\))) # (!\RAM_USAVEL|ram~309_combout\ & (\RAM_USAVEL|ram~68_q\)))) # (!\CPU|ROM|memROM~31_combout\ & (((\RAM_USAVEL|ram~309_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~68_q\,
	datab => \RAM_USAVEL|ram~76_q\,
	datac => \CPU|ROM|memROM~31_combout\,
	datad => \RAM_USAVEL|ram~309_combout\,
	combout => \RAM_USAVEL|ram~310_combout\);

-- Location: LCCOMB_X108_Y5_N26
\RAM_USAVEL|ram~60feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~60feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(3),
	combout => \RAM_USAVEL|ram~60feeder_combout\);

-- Location: FF_X108_Y5_N27
\RAM_USAVEL|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~60feeder_combout\,
	ena => \RAM_USAVEL|ram~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~60_q\);

-- Location: FF_X109_Y5_N27
\RAM_USAVEL|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM_USAVEL|ram~314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~56_q\);

-- Location: FF_X107_Y6_N9
\RAM_USAVEL|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM_USAVEL|ram~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~52_q\);

-- Location: FF_X109_Y5_N21
\RAM_USAVEL|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM_USAVEL|ram~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~48_q\);

-- Location: LCCOMB_X109_Y5_N20
\RAM_USAVEL|ram~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~302_combout\ = (\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~52_q\) # ((\CPU|ROM|memROM~26_combout\)))) # (!\CPU|ROM|memROM~31_combout\ & (((\RAM_USAVEL|ram~48_q\ & !\CPU|ROM|memROM~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \RAM_USAVEL|ram~52_q\,
	datac => \RAM_USAVEL|ram~48_q\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \RAM_USAVEL|ram~302_combout\);

-- Location: LCCOMB_X109_Y5_N26
\RAM_USAVEL|ram~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~303_combout\ = (\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~302_combout\ & (\RAM_USAVEL|ram~60_q\)) # (!\RAM_USAVEL|ram~302_combout\ & ((\RAM_USAVEL|ram~56_q\))))) # (!\CPU|ROM|memROM~26_combout\ & (((\RAM_USAVEL|ram~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~60_q\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \RAM_USAVEL|ram~56_q\,
	datad => \RAM_USAVEL|ram~302_combout\,
	combout => \RAM_USAVEL|ram~303_combout\);

-- Location: LCCOMB_X107_Y5_N10
\RAM_USAVEL|ram~24feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~24feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(3),
	combout => \RAM_USAVEL|ram~24feeder_combout\);

-- Location: FF_X107_Y5_N11
\RAM_USAVEL|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~24feeder_combout\,
	ena => \RAM_USAVEL|ram~330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~24_q\);

-- Location: FF_X110_Y7_N15
\RAM_USAVEL|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM_USAVEL|ram~336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~28_q\);

-- Location: FF_X111_Y7_N13
\RAM_USAVEL|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM_USAVEL|ram~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~20_q\);

-- Location: FF_X111_Y7_N19
\RAM_USAVEL|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM_USAVEL|ram~334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~16_q\);

-- Location: LCCOMB_X111_Y7_N18
\RAM_USAVEL|ram~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~306_combout\ = (\CPU|ROM|memROM~26_combout\ & (((\CPU|ROM|memROM~31_combout\)))) # (!\CPU|ROM|memROM~26_combout\ & ((\CPU|ROM|memROM~31_combout\ & (\RAM_USAVEL|ram~20_q\)) # (!\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~20_q\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \RAM_USAVEL|ram~16_q\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~306_combout\);

-- Location: LCCOMB_X110_Y7_N14
\RAM_USAVEL|ram~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~307_combout\ = (\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~306_combout\ & ((\RAM_USAVEL|ram~28_q\))) # (!\RAM_USAVEL|ram~306_combout\ & (\RAM_USAVEL|ram~24_q\)))) # (!\CPU|ROM|memROM~26_combout\ & (((\RAM_USAVEL|ram~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~24_q\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \RAM_USAVEL|ram~28_q\,
	datad => \RAM_USAVEL|ram~306_combout\,
	combout => \RAM_USAVEL|ram~307_combout\);

-- Location: LCCOMB_X106_Y6_N30
\RAM_USAVEL|ram~36feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~36feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(3),
	combout => \RAM_USAVEL|ram~36feeder_combout\);

-- Location: FF_X106_Y6_N31
\RAM_USAVEL|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~36feeder_combout\,
	ena => \RAM_USAVEL|ram~322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~36_q\);

-- Location: FF_X110_Y5_N31
\RAM_USAVEL|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM_USAVEL|ram~328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~44_q\);

-- Location: LCCOMB_X109_Y4_N0
\RAM_USAVEL|ram~40feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~40feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(3),
	combout => \RAM_USAVEL|ram~40feeder_combout\);

-- Location: FF_X109_Y4_N1
\RAM_USAVEL|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~40feeder_combout\,
	ena => \RAM_USAVEL|ram~324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~40_q\);

-- Location: FF_X110_Y5_N13
\RAM_USAVEL|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(3),
	sload => VCC,
	ena => \RAM_USAVEL|ram~326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~32_q\);

-- Location: LCCOMB_X110_Y5_N12
\RAM_USAVEL|ram~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~304_combout\ = (\CPU|ROM|memROM~31_combout\ & (((\CPU|ROM|memROM~26_combout\)))) # (!\CPU|ROM|memROM~31_combout\ & ((\CPU|ROM|memROM~26_combout\ & (\RAM_USAVEL|ram~40_q\)) # (!\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~32_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \RAM_USAVEL|ram~40_q\,
	datac => \RAM_USAVEL|ram~32_q\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \RAM_USAVEL|ram~304_combout\);

-- Location: LCCOMB_X110_Y5_N30
\RAM_USAVEL|ram~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~305_combout\ = (\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~304_combout\ & ((\RAM_USAVEL|ram~44_q\))) # (!\RAM_USAVEL|ram~304_combout\ & (\RAM_USAVEL|ram~36_q\)))) # (!\CPU|ROM|memROM~31_combout\ & (((\RAM_USAVEL|ram~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \RAM_USAVEL|ram~36_q\,
	datac => \RAM_USAVEL|ram~44_q\,
	datad => \RAM_USAVEL|ram~304_combout\,
	combout => \RAM_USAVEL|ram~305_combout\);

-- Location: LCCOMB_X110_Y7_N10
\RAM_USAVEL|ram~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~308_combout\ = (\CPU|ROM|memROM~35_combout\ & (\CPU|ROM|memROM~57_combout\)) # (!\CPU|ROM|memROM~35_combout\ & ((\CPU|ROM|memROM~57_combout\ & ((\RAM_USAVEL|ram~305_combout\))) # (!\CPU|ROM|memROM~57_combout\ & 
-- (\RAM_USAVEL|ram~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~35_combout\,
	datab => \CPU|ROM|memROM~57_combout\,
	datac => \RAM_USAVEL|ram~307_combout\,
	datad => \RAM_USAVEL|ram~305_combout\,
	combout => \RAM_USAVEL|ram~308_combout\);

-- Location: LCCOMB_X110_Y7_N0
\RAM_USAVEL|ram~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~311_combout\ = (\CPU|ROM|memROM~35_combout\ & ((\RAM_USAVEL|ram~308_combout\ & (\RAM_USAVEL|ram~310_combout\)) # (!\RAM_USAVEL|ram~308_combout\ & ((\RAM_USAVEL|ram~303_combout\))))) # (!\CPU|ROM|memROM~35_combout\ & 
-- (((\RAM_USAVEL|ram~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~35_combout\,
	datab => \RAM_USAVEL|ram~310_combout\,
	datac => \RAM_USAVEL|ram~303_combout\,
	datad => \RAM_USAVEL|ram~308_combout\,
	combout => \RAM_USAVEL|ram~311_combout\);

-- Location: LCCOMB_X110_Y7_N4
\RAM_USAVEL|ram~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~312_combout\ = (!\CPU|ROM|memROM~56_combout\ & (!\CPU|ROM|memROM~19_combout\ & \RAM_USAVEL|ram~311_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~56_combout\,
	datab => \CPU|ROM|memROM~19_combout\,
	datad => \RAM_USAVEL|ram~311_combout\,
	combout => \RAM_USAVEL|ram~312_combout\);

-- Location: LCCOMB_X112_Y6_N26
\RAM_USAVEL|ram~75feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~75feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(2),
	combout => \RAM_USAVEL|ram~75feeder_combout\);

-- Location: FF_X112_Y6_N27
\RAM_USAVEL|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~75feeder_combout\,
	ena => \RAM_USAVEL|ram~344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~75_q\);

-- Location: LCCOMB_X113_Y6_N0
\RAM_USAVEL|ram~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~67feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(2),
	combout => \RAM_USAVEL|ram~67feeder_combout\);

-- Location: FF_X113_Y6_N1
\RAM_USAVEL|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~67feeder_combout\,
	ena => \RAM_USAVEL|ram~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~67_q\);

-- Location: LCCOMB_X112_Y6_N16
\RAM_USAVEL|ram~63feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~63feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(2),
	combout => \RAM_USAVEL|ram~63feeder_combout\);

-- Location: FF_X112_Y6_N17
\RAM_USAVEL|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~63feeder_combout\,
	ena => \RAM_USAVEL|ram~342_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~63_q\);

-- Location: LCCOMB_X111_Y5_N0
\RAM_USAVEL|ram~71feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~71feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(2),
	combout => \RAM_USAVEL|ram~71feeder_combout\);

-- Location: FF_X111_Y5_N1
\RAM_USAVEL|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~71feeder_combout\,
	ena => \RAM_USAVEL|ram~340_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~71_q\);

-- Location: LCCOMB_X111_Y6_N16
\RAM_USAVEL|ram~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~298_combout\ = (\CPU|ROM|memROM~26_combout\ & (((\CPU|ROM|memROM~31_combout\) # (\RAM_USAVEL|ram~71_q\)))) # (!\CPU|ROM|memROM~26_combout\ & (\RAM_USAVEL|ram~63_q\ & (!\CPU|ROM|memROM~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~63_q\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \CPU|ROM|memROM~31_combout\,
	datad => \RAM_USAVEL|ram~71_q\,
	combout => \RAM_USAVEL|ram~298_combout\);

-- Location: LCCOMB_X111_Y6_N10
\RAM_USAVEL|ram~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~299_combout\ = (\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~298_combout\ & (\RAM_USAVEL|ram~75_q\)) # (!\RAM_USAVEL|ram~298_combout\ & ((\RAM_USAVEL|ram~67_q\))))) # (!\CPU|ROM|memROM~31_combout\ & (((\RAM_USAVEL|ram~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~75_q\,
	datab => \RAM_USAVEL|ram~67_q\,
	datac => \CPU|ROM|memROM~31_combout\,
	datad => \RAM_USAVEL|ram~298_combout\,
	combout => \RAM_USAVEL|ram~299_combout\);

-- Location: FF_X109_Y6_N5
\RAM_USAVEL|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM_USAVEL|ram~320_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~59_q\);

-- Location: LCCOMB_X109_Y5_N18
\RAM_USAVEL|ram~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~55feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(2),
	combout => \RAM_USAVEL|ram~55feeder_combout\);

-- Location: FF_X109_Y5_N19
\RAM_USAVEL|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~55feeder_combout\,
	ena => \RAM_USAVEL|ram~314_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~55_q\);

-- Location: FF_X107_Y6_N7
\RAM_USAVEL|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM_USAVEL|ram~316_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~51_q\);

-- Location: LCCOMB_X109_Y5_N16
\RAM_USAVEL|ram~47feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~47feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(2),
	combout => \RAM_USAVEL|ram~47feeder_combout\);

-- Location: FF_X109_Y5_N17
\RAM_USAVEL|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~47feeder_combout\,
	ena => \RAM_USAVEL|ram~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~47_q\);

-- Location: LCCOMB_X110_Y5_N8
\RAM_USAVEL|ram~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~291_combout\ = (\CPU|ROM|memROM~26_combout\ & (((\CPU|ROM|memROM~31_combout\)))) # (!\CPU|ROM|memROM~26_combout\ & ((\CPU|ROM|memROM~31_combout\ & (\RAM_USAVEL|ram~51_q\)) # (!\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \RAM_USAVEL|ram~51_q\,
	datac => \RAM_USAVEL|ram~47_q\,
	datad => \CPU|ROM|memROM~31_combout\,
	combout => \RAM_USAVEL|ram~291_combout\);

-- Location: LCCOMB_X110_Y5_N14
\RAM_USAVEL|ram~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~292_combout\ = (\RAM_USAVEL|ram~291_combout\ & ((\RAM_USAVEL|ram~59_q\) # ((!\CPU|ROM|memROM~26_combout\)))) # (!\RAM_USAVEL|ram~291_combout\ & (((\RAM_USAVEL|ram~55_q\ & \CPU|ROM|memROM~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~59_q\,
	datab => \RAM_USAVEL|ram~55_q\,
	datac => \RAM_USAVEL|ram~291_combout\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \RAM_USAVEL|ram~292_combout\);

-- Location: LCCOMB_X107_Y5_N12
\RAM_USAVEL|ram~23feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~23feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(2),
	combout => \RAM_USAVEL|ram~23feeder_combout\);

-- Location: FF_X107_Y5_N13
\RAM_USAVEL|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~23feeder_combout\,
	ena => \RAM_USAVEL|ram~330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~23_q\);

-- Location: FF_X110_Y7_N9
\RAM_USAVEL|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM_USAVEL|ram~336_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~27_q\);

-- Location: LCCOMB_X111_Y7_N30
\RAM_USAVEL|ram~15feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~15feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(2),
	combout => \RAM_USAVEL|ram~15feeder_combout\);

-- Location: FF_X111_Y7_N31
\RAM_USAVEL|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~15feeder_combout\,
	ena => \RAM_USAVEL|ram~334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~15_q\);

-- Location: LCCOMB_X111_Y7_N8
\RAM_USAVEL|ram~19feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~19feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(2),
	combout => \RAM_USAVEL|ram~19feeder_combout\);

-- Location: FF_X111_Y7_N9
\RAM_USAVEL|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \RAM_USAVEL|ram~19feeder_combout\,
	ena => \RAM_USAVEL|ram~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~19_q\);

-- Location: LCCOMB_X111_Y6_N2
\RAM_USAVEL|ram~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~295_combout\ = (\CPU|ROM|memROM~31_combout\ & (((\RAM_USAVEL|ram~19_q\) # (\CPU|ROM|memROM~26_combout\)))) # (!\CPU|ROM|memROM~31_combout\ & (\RAM_USAVEL|ram~15_q\ & ((!\CPU|ROM|memROM~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_USAVEL|ram~15_q\,
	datab => \RAM_USAVEL|ram~19_q\,
	datac => \CPU|ROM|memROM~31_combout\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \RAM_USAVEL|ram~295_combout\);

-- Location: LCCOMB_X110_Y7_N8
\RAM_USAVEL|ram~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~296_combout\ = (\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~295_combout\ & ((\RAM_USAVEL|ram~27_q\))) # (!\RAM_USAVEL|ram~295_combout\ & (\RAM_USAVEL|ram~23_q\)))) # (!\CPU|ROM|memROM~26_combout\ & (((\RAM_USAVEL|ram~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \RAM_USAVEL|ram~23_q\,
	datac => \RAM_USAVEL|ram~27_q\,
	datad => \RAM_USAVEL|ram~295_combout\,
	combout => \RAM_USAVEL|ram~296_combout\);

-- Location: FF_X110_Y6_N13
\RAM_USAVEL|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM_USAVEL|ram~322_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~35_q\);

-- Location: FF_X110_Y5_N23
\RAM_USAVEL|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM_USAVEL|ram~328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~43_q\);

-- Location: FF_X109_Y6_N27
\RAM_USAVEL|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM_USAVEL|ram~324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~39_q\);

-- Location: FF_X110_Y5_N29
\RAM_USAVEL|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \RAM_USAVEL|ram~326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_USAVEL|ram~31_q\);

-- Location: LCCOMB_X110_Y5_N28
\RAM_USAVEL|ram~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~293_combout\ = (\CPU|ROM|memROM~31_combout\ & (((\CPU|ROM|memROM~26_combout\)))) # (!\CPU|ROM|memROM~31_combout\ & ((\CPU|ROM|memROM~26_combout\ & (\RAM_USAVEL|ram~39_q\)) # (!\CPU|ROM|memROM~26_combout\ & ((\RAM_USAVEL|ram~31_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \RAM_USAVEL|ram~39_q\,
	datac => \RAM_USAVEL|ram~31_q\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \RAM_USAVEL|ram~293_combout\);

-- Location: LCCOMB_X110_Y5_N22
\RAM_USAVEL|ram~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~294_combout\ = (\CPU|ROM|memROM~31_combout\ & ((\RAM_USAVEL|ram~293_combout\ & ((\RAM_USAVEL|ram~43_q\))) # (!\RAM_USAVEL|ram~293_combout\ & (\RAM_USAVEL|ram~35_q\)))) # (!\CPU|ROM|memROM~31_combout\ & (((\RAM_USAVEL|ram~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \RAM_USAVEL|ram~35_q\,
	datac => \RAM_USAVEL|ram~43_q\,
	datad => \RAM_USAVEL|ram~293_combout\,
	combout => \RAM_USAVEL|ram~294_combout\);

-- Location: LCCOMB_X110_Y7_N16
\RAM_USAVEL|ram~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~297_combout\ = (\CPU|ROM|memROM~35_combout\ & (\CPU|ROM|memROM~57_combout\)) # (!\CPU|ROM|memROM~35_combout\ & ((\CPU|ROM|memROM~57_combout\ & ((\RAM_USAVEL|ram~294_combout\))) # (!\CPU|ROM|memROM~57_combout\ & 
-- (\RAM_USAVEL|ram~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~35_combout\,
	datab => \CPU|ROM|memROM~57_combout\,
	datac => \RAM_USAVEL|ram~296_combout\,
	datad => \RAM_USAVEL|ram~294_combout\,
	combout => \RAM_USAVEL|ram~297_combout\);

-- Location: LCCOMB_X110_Y7_N18
\RAM_USAVEL|ram~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~300_combout\ = (\CPU|ROM|memROM~35_combout\ & ((\RAM_USAVEL|ram~297_combout\ & (\RAM_USAVEL|ram~299_combout\)) # (!\RAM_USAVEL|ram~297_combout\ & ((\RAM_USAVEL|ram~292_combout\))))) # (!\CPU|ROM|memROM~35_combout\ & 
-- (((\RAM_USAVEL|ram~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~35_combout\,
	datab => \RAM_USAVEL|ram~299_combout\,
	datac => \RAM_USAVEL|ram~292_combout\,
	datad => \RAM_USAVEL|ram~297_combout\,
	combout => \RAM_USAVEL|ram~300_combout\);

-- Location: LCCOMB_X110_Y7_N22
\RAM_USAVEL|ram~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM_USAVEL|ram~301_combout\ = (!\CPU|ROM|memROM~56_combout\ & (!\CPU|ROM|memROM~19_combout\ & \RAM_USAVEL|ram~300_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~56_combout\,
	datab => \CPU|ROM|memROM~19_combout\,
	datad => \RAM_USAVEL|ram~300_combout\,
	combout => \RAM_USAVEL|ram~301_combout\);

-- Location: LCCOMB_X109_Y7_N22
\CPU|ULA|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~4_combout\ = ((\CPU|ACU|DOUT\(2) $ (\CPU|ROM|memROM~57_combout\ $ (!\CPU|ULA|Add0~3\)))) # (GND)
-- \CPU|ULA|Add0~5\ = CARRY((\CPU|ACU|DOUT\(2) & ((\CPU|ROM|memROM~57_combout\) # (!\CPU|ULA|Add0~3\))) # (!\CPU|ACU|DOUT\(2) & (\CPU|ROM|memROM~57_combout\ & !\CPU|ULA|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ACU|DOUT\(2),
	datab => \CPU|ROM|memROM~57_combout\,
	datad => VCC,
	cin => \CPU|ULA|Add0~3\,
	combout => \CPU|ULA|Add0~4_combout\,
	cout => \CPU|ULA|Add0~5\);

-- Location: LCCOMB_X24_Y33_N10
\BASE_DE_TEMPO_2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~0_combout\ = \BASE_DE_TEMPO_2|contador\(0) $ (VCC)
-- \BASE_DE_TEMPO_2|Add0~1\ = CARRY(\BASE_DE_TEMPO_2|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(0),
	datad => VCC,
	combout => \BASE_DE_TEMPO_2|Add0~0_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~1\);

-- Location: LCCOMB_X23_Y32_N12
\BASE_DE_TEMPO_2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Equal0~2_combout\ = (\BASE_DE_TEMPO_2|contador\(9) & (\BASE_DE_TEMPO_2|contador\(11) & (!\BASE_DE_TEMPO_2|contador\(10) & \BASE_DE_TEMPO_2|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(9),
	datab => \BASE_DE_TEMPO_2|contador\(11),
	datac => \BASE_DE_TEMPO_2|contador\(10),
	datad => \BASE_DE_TEMPO_2|contador\(8),
	combout => \BASE_DE_TEMPO_2|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y32_N4
\BASE_DE_TEMPO_2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Equal0~3_combout\ = (!\BASE_DE_TEMPO_2|contador\(13) & (!\BASE_DE_TEMPO_2|contador\(15) & (\BASE_DE_TEMPO_2|contador\(14) & !\BASE_DE_TEMPO_2|contador\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(13),
	datab => \BASE_DE_TEMPO_2|contador\(15),
	datac => \BASE_DE_TEMPO_2|contador\(14),
	datad => \BASE_DE_TEMPO_2|contador\(12),
	combout => \BASE_DE_TEMPO_2|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y33_N8
\BASE_DE_TEMPO_2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Equal0~1_combout\ = (\BASE_DE_TEMPO_2|contador\(6) & (!\BASE_DE_TEMPO_2|contador\(7) & (!\BASE_DE_TEMPO_2|contador\(5) & !\BASE_DE_TEMPO_2|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(6),
	datab => \BASE_DE_TEMPO_2|contador\(7),
	datac => \BASE_DE_TEMPO_2|contador\(5),
	datad => \BASE_DE_TEMPO_2|contador\(4),
	combout => \BASE_DE_TEMPO_2|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y33_N4
\BASE_DE_TEMPO_2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Equal0~0_combout\ = (!\BASE_DE_TEMPO_2|contador\(2) & (!\BASE_DE_TEMPO_2|contador\(0) & (!\BASE_DE_TEMPO_2|contador\(1) & !\BASE_DE_TEMPO_2|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(2),
	datab => \BASE_DE_TEMPO_2|contador\(0),
	datac => \BASE_DE_TEMPO_2|contador\(1),
	datad => \BASE_DE_TEMPO_2|contador\(3),
	combout => \BASE_DE_TEMPO_2|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y32_N10
\BASE_DE_TEMPO_2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Equal0~4_combout\ = (\BASE_DE_TEMPO_2|Equal0~2_combout\ & (\BASE_DE_TEMPO_2|Equal0~3_combout\ & (\BASE_DE_TEMPO_2|Equal0~1_combout\ & \BASE_DE_TEMPO_2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|Equal0~2_combout\,
	datab => \BASE_DE_TEMPO_2|Equal0~3_combout\,
	datac => \BASE_DE_TEMPO_2|Equal0~1_combout\,
	datad => \BASE_DE_TEMPO_2|Equal0~0_combout\,
	combout => \BASE_DE_TEMPO_2|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y33_N0
\BASE_DE_TEMPO_2|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|contador~0_combout\ = (\BASE_DE_TEMPO_2|Add0~0_combout\ & (((!\BASE_DE_TEMPO_2|Equal0~4_combout\) # (!\BASE_DE_TEMPO_2|Equal0~5_combout\)) # (!\BASE_DE_TEMPO_2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|Add0~0_combout\,
	datab => \BASE_DE_TEMPO_2|Equal0~6_combout\,
	datac => \BASE_DE_TEMPO_2|Equal0~5_combout\,
	datad => \BASE_DE_TEMPO_2|Equal0~4_combout\,
	combout => \BASE_DE_TEMPO_2|contador~0_combout\);

-- Location: FF_X24_Y33_N1
\BASE_DE_TEMPO_2|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(0));

-- Location: LCCOMB_X24_Y33_N12
\BASE_DE_TEMPO_2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~2_combout\ = (\BASE_DE_TEMPO_2|contador\(1) & (!\BASE_DE_TEMPO_2|Add0~1\)) # (!\BASE_DE_TEMPO_2|contador\(1) & ((\BASE_DE_TEMPO_2|Add0~1\) # (GND)))
-- \BASE_DE_TEMPO_2|Add0~3\ = CARRY((!\BASE_DE_TEMPO_2|Add0~1\) # (!\BASE_DE_TEMPO_2|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(1),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~1\,
	combout => \BASE_DE_TEMPO_2|Add0~2_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~3\);

-- Location: FF_X24_Y33_N13
\BASE_DE_TEMPO_2|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(1));

-- Location: LCCOMB_X24_Y33_N14
\BASE_DE_TEMPO_2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~4_combout\ = (\BASE_DE_TEMPO_2|contador\(2) & (\BASE_DE_TEMPO_2|Add0~3\ $ (GND))) # (!\BASE_DE_TEMPO_2|contador\(2) & (!\BASE_DE_TEMPO_2|Add0~3\ & VCC))
-- \BASE_DE_TEMPO_2|Add0~5\ = CARRY((\BASE_DE_TEMPO_2|contador\(2) & !\BASE_DE_TEMPO_2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(2),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~3\,
	combout => \BASE_DE_TEMPO_2|Add0~4_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~5\);

-- Location: FF_X24_Y33_N15
\BASE_DE_TEMPO_2|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(2));

-- Location: LCCOMB_X24_Y33_N16
\BASE_DE_TEMPO_2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~6_combout\ = (\BASE_DE_TEMPO_2|contador\(3) & (!\BASE_DE_TEMPO_2|Add0~5\)) # (!\BASE_DE_TEMPO_2|contador\(3) & ((\BASE_DE_TEMPO_2|Add0~5\) # (GND)))
-- \BASE_DE_TEMPO_2|Add0~7\ = CARRY((!\BASE_DE_TEMPO_2|Add0~5\) # (!\BASE_DE_TEMPO_2|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(3),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~5\,
	combout => \BASE_DE_TEMPO_2|Add0~6_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~7\);

-- Location: FF_X24_Y33_N17
\BASE_DE_TEMPO_2|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(3));

-- Location: LCCOMB_X24_Y33_N18
\BASE_DE_TEMPO_2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~8_combout\ = (\BASE_DE_TEMPO_2|contador\(4) & (\BASE_DE_TEMPO_2|Add0~7\ $ (GND))) # (!\BASE_DE_TEMPO_2|contador\(4) & (!\BASE_DE_TEMPO_2|Add0~7\ & VCC))
-- \BASE_DE_TEMPO_2|Add0~9\ = CARRY((\BASE_DE_TEMPO_2|contador\(4) & !\BASE_DE_TEMPO_2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(4),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~7\,
	combout => \BASE_DE_TEMPO_2|Add0~8_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~9\);

-- Location: FF_X24_Y33_N19
\BASE_DE_TEMPO_2|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(4));

-- Location: LCCOMB_X24_Y33_N20
\BASE_DE_TEMPO_2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~10_combout\ = (\BASE_DE_TEMPO_2|contador\(5) & (!\BASE_DE_TEMPO_2|Add0~9\)) # (!\BASE_DE_TEMPO_2|contador\(5) & ((\BASE_DE_TEMPO_2|Add0~9\) # (GND)))
-- \BASE_DE_TEMPO_2|Add0~11\ = CARRY((!\BASE_DE_TEMPO_2|Add0~9\) # (!\BASE_DE_TEMPO_2|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(5),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~9\,
	combout => \BASE_DE_TEMPO_2|Add0~10_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~11\);

-- Location: FF_X24_Y33_N21
\BASE_DE_TEMPO_2|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(5));

-- Location: LCCOMB_X24_Y33_N22
\BASE_DE_TEMPO_2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~12_combout\ = (\BASE_DE_TEMPO_2|contador\(6) & (\BASE_DE_TEMPO_2|Add0~11\ $ (GND))) # (!\BASE_DE_TEMPO_2|contador\(6) & (!\BASE_DE_TEMPO_2|Add0~11\ & VCC))
-- \BASE_DE_TEMPO_2|Add0~13\ = CARRY((\BASE_DE_TEMPO_2|contador\(6) & !\BASE_DE_TEMPO_2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(6),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~11\,
	combout => \BASE_DE_TEMPO_2|Add0~12_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~13\);

-- Location: LCCOMB_X24_Y33_N2
\BASE_DE_TEMPO_2|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|contador~1_combout\ = (\BASE_DE_TEMPO_2|Add0~12_combout\ & (((!\BASE_DE_TEMPO_2|Equal0~4_combout\) # (!\BASE_DE_TEMPO_2|Equal0~5_combout\)) # (!\BASE_DE_TEMPO_2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|Add0~12_combout\,
	datab => \BASE_DE_TEMPO_2|Equal0~6_combout\,
	datac => \BASE_DE_TEMPO_2|Equal0~5_combout\,
	datad => \BASE_DE_TEMPO_2|Equal0~4_combout\,
	combout => \BASE_DE_TEMPO_2|contador~1_combout\);

-- Location: FF_X24_Y33_N3
\BASE_DE_TEMPO_2|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(6));

-- Location: LCCOMB_X24_Y33_N24
\BASE_DE_TEMPO_2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~14_combout\ = (\BASE_DE_TEMPO_2|contador\(7) & (!\BASE_DE_TEMPO_2|Add0~13\)) # (!\BASE_DE_TEMPO_2|contador\(7) & ((\BASE_DE_TEMPO_2|Add0~13\) # (GND)))
-- \BASE_DE_TEMPO_2|Add0~15\ = CARRY((!\BASE_DE_TEMPO_2|Add0~13\) # (!\BASE_DE_TEMPO_2|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(7),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~13\,
	combout => \BASE_DE_TEMPO_2|Add0~14_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~15\);

-- Location: FF_X24_Y33_N25
\BASE_DE_TEMPO_2|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(7));

-- Location: LCCOMB_X24_Y33_N26
\BASE_DE_TEMPO_2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~16_combout\ = (\BASE_DE_TEMPO_2|contador\(8) & (\BASE_DE_TEMPO_2|Add0~15\ $ (GND))) # (!\BASE_DE_TEMPO_2|contador\(8) & (!\BASE_DE_TEMPO_2|Add0~15\ & VCC))
-- \BASE_DE_TEMPO_2|Add0~17\ = CARRY((\BASE_DE_TEMPO_2|contador\(8) & !\BASE_DE_TEMPO_2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(8),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~15\,
	combout => \BASE_DE_TEMPO_2|Add0~16_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~17\);

-- Location: LCCOMB_X24_Y33_N6
\BASE_DE_TEMPO_2|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|contador~2_combout\ = (\BASE_DE_TEMPO_2|Add0~16_combout\ & (((!\BASE_DE_TEMPO_2|Equal0~4_combout\) # (!\BASE_DE_TEMPO_2|Equal0~5_combout\)) # (!\BASE_DE_TEMPO_2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|Add0~16_combout\,
	datab => \BASE_DE_TEMPO_2|Equal0~6_combout\,
	datac => \BASE_DE_TEMPO_2|Equal0~5_combout\,
	datad => \BASE_DE_TEMPO_2|Equal0~4_combout\,
	combout => \BASE_DE_TEMPO_2|contador~2_combout\);

-- Location: FF_X24_Y33_N7
\BASE_DE_TEMPO_2|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(8));

-- Location: LCCOMB_X24_Y33_N28
\BASE_DE_TEMPO_2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~18_combout\ = (\BASE_DE_TEMPO_2|contador\(9) & (!\BASE_DE_TEMPO_2|Add0~17\)) # (!\BASE_DE_TEMPO_2|contador\(9) & ((\BASE_DE_TEMPO_2|Add0~17\) # (GND)))
-- \BASE_DE_TEMPO_2|Add0~19\ = CARRY((!\BASE_DE_TEMPO_2|Add0~17\) # (!\BASE_DE_TEMPO_2|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(9),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~17\,
	combout => \BASE_DE_TEMPO_2|Add0~18_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~19\);

-- Location: LCCOMB_X24_Y33_N4
\BASE_DE_TEMPO_2|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|contador~3_combout\ = (\BASE_DE_TEMPO_2|Add0~18_combout\ & (((!\BASE_DE_TEMPO_2|Equal0~4_combout\) # (!\BASE_DE_TEMPO_2|Equal0~5_combout\)) # (!\BASE_DE_TEMPO_2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|Add0~18_combout\,
	datab => \BASE_DE_TEMPO_2|Equal0~6_combout\,
	datac => \BASE_DE_TEMPO_2|Equal0~5_combout\,
	datad => \BASE_DE_TEMPO_2|Equal0~4_combout\,
	combout => \BASE_DE_TEMPO_2|contador~3_combout\);

-- Location: FF_X24_Y33_N5
\BASE_DE_TEMPO_2|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(9));

-- Location: LCCOMB_X24_Y33_N30
\BASE_DE_TEMPO_2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~20_combout\ = (\BASE_DE_TEMPO_2|contador\(10) & (\BASE_DE_TEMPO_2|Add0~19\ $ (GND))) # (!\BASE_DE_TEMPO_2|contador\(10) & (!\BASE_DE_TEMPO_2|Add0~19\ & VCC))
-- \BASE_DE_TEMPO_2|Add0~21\ = CARRY((\BASE_DE_TEMPO_2|contador\(10) & !\BASE_DE_TEMPO_2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(10),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~19\,
	combout => \BASE_DE_TEMPO_2|Add0~20_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~21\);

-- Location: FF_X24_Y33_N31
\BASE_DE_TEMPO_2|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(10));

-- Location: LCCOMB_X24_Y32_N0
\BASE_DE_TEMPO_2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~22_combout\ = (\BASE_DE_TEMPO_2|contador\(11) & (!\BASE_DE_TEMPO_2|Add0~21\)) # (!\BASE_DE_TEMPO_2|contador\(11) & ((\BASE_DE_TEMPO_2|Add0~21\) # (GND)))
-- \BASE_DE_TEMPO_2|Add0~23\ = CARRY((!\BASE_DE_TEMPO_2|Add0~21\) # (!\BASE_DE_TEMPO_2|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(11),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~21\,
	combout => \BASE_DE_TEMPO_2|Add0~22_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~23\);

-- Location: LCCOMB_X24_Y32_N28
\BASE_DE_TEMPO_2|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|contador~4_combout\ = (\BASE_DE_TEMPO_2|Add0~22_combout\ & (((!\BASE_DE_TEMPO_2|Equal0~4_combout\) # (!\BASE_DE_TEMPO_2|Equal0~6_combout\)) # (!\BASE_DE_TEMPO_2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|Equal0~5_combout\,
	datab => \BASE_DE_TEMPO_2|Add0~22_combout\,
	datac => \BASE_DE_TEMPO_2|Equal0~6_combout\,
	datad => \BASE_DE_TEMPO_2|Equal0~4_combout\,
	combout => \BASE_DE_TEMPO_2|contador~4_combout\);

-- Location: FF_X24_Y32_N29
\BASE_DE_TEMPO_2|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(11));

-- Location: LCCOMB_X24_Y32_N2
\BASE_DE_TEMPO_2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~24_combout\ = (\BASE_DE_TEMPO_2|contador\(12) & (\BASE_DE_TEMPO_2|Add0~23\ $ (GND))) # (!\BASE_DE_TEMPO_2|contador\(12) & (!\BASE_DE_TEMPO_2|Add0~23\ & VCC))
-- \BASE_DE_TEMPO_2|Add0~25\ = CARRY((\BASE_DE_TEMPO_2|contador\(12) & !\BASE_DE_TEMPO_2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(12),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~23\,
	combout => \BASE_DE_TEMPO_2|Add0~24_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~25\);

-- Location: FF_X24_Y32_N3
\BASE_DE_TEMPO_2|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(12));

-- Location: LCCOMB_X24_Y32_N4
\BASE_DE_TEMPO_2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~26_combout\ = (\BASE_DE_TEMPO_2|contador\(13) & (!\BASE_DE_TEMPO_2|Add0~25\)) # (!\BASE_DE_TEMPO_2|contador\(13) & ((\BASE_DE_TEMPO_2|Add0~25\) # (GND)))
-- \BASE_DE_TEMPO_2|Add0~27\ = CARRY((!\BASE_DE_TEMPO_2|Add0~25\) # (!\BASE_DE_TEMPO_2|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(13),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~25\,
	combout => \BASE_DE_TEMPO_2|Add0~26_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~27\);

-- Location: FF_X24_Y32_N5
\BASE_DE_TEMPO_2|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(13));

-- Location: LCCOMB_X24_Y32_N6
\BASE_DE_TEMPO_2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~28_combout\ = (\BASE_DE_TEMPO_2|contador\(14) & (\BASE_DE_TEMPO_2|Add0~27\ $ (GND))) # (!\BASE_DE_TEMPO_2|contador\(14) & (!\BASE_DE_TEMPO_2|Add0~27\ & VCC))
-- \BASE_DE_TEMPO_2|Add0~29\ = CARRY((\BASE_DE_TEMPO_2|contador\(14) & !\BASE_DE_TEMPO_2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(14),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~27\,
	combout => \BASE_DE_TEMPO_2|Add0~28_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~29\);

-- Location: LCCOMB_X23_Y32_N30
\BASE_DE_TEMPO_2|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|contador~5_combout\ = (\BASE_DE_TEMPO_2|Add0~28_combout\ & (((!\BASE_DE_TEMPO_2|Equal0~4_combout\) # (!\BASE_DE_TEMPO_2|Equal0~5_combout\)) # (!\BASE_DE_TEMPO_2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|Equal0~6_combout\,
	datab => \BASE_DE_TEMPO_2|Add0~28_combout\,
	datac => \BASE_DE_TEMPO_2|Equal0~5_combout\,
	datad => \BASE_DE_TEMPO_2|Equal0~4_combout\,
	combout => \BASE_DE_TEMPO_2|contador~5_combout\);

-- Location: FF_X23_Y32_N31
\BASE_DE_TEMPO_2|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(14));

-- Location: LCCOMB_X24_Y32_N8
\BASE_DE_TEMPO_2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~30_combout\ = (\BASE_DE_TEMPO_2|contador\(15) & (!\BASE_DE_TEMPO_2|Add0~29\)) # (!\BASE_DE_TEMPO_2|contador\(15) & ((\BASE_DE_TEMPO_2|Add0~29\) # (GND)))
-- \BASE_DE_TEMPO_2|Add0~31\ = CARRY((!\BASE_DE_TEMPO_2|Add0~29\) # (!\BASE_DE_TEMPO_2|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(15),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~29\,
	combout => \BASE_DE_TEMPO_2|Add0~30_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~31\);

-- Location: FF_X24_Y32_N9
\BASE_DE_TEMPO_2|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(15));

-- Location: LCCOMB_X24_Y32_N10
\BASE_DE_TEMPO_2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~32_combout\ = (\BASE_DE_TEMPO_2|contador\(16) & (\BASE_DE_TEMPO_2|Add0~31\ $ (GND))) # (!\BASE_DE_TEMPO_2|contador\(16) & (!\BASE_DE_TEMPO_2|Add0~31\ & VCC))
-- \BASE_DE_TEMPO_2|Add0~33\ = CARRY((\BASE_DE_TEMPO_2|contador\(16) & !\BASE_DE_TEMPO_2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(16),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~31\,
	combout => \BASE_DE_TEMPO_2|Add0~32_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~33\);

-- Location: FF_X24_Y32_N11
\BASE_DE_TEMPO_2|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(16));

-- Location: LCCOMB_X24_Y32_N12
\BASE_DE_TEMPO_2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~34_combout\ = (\BASE_DE_TEMPO_2|contador\(17) & (!\BASE_DE_TEMPO_2|Add0~33\)) # (!\BASE_DE_TEMPO_2|contador\(17) & ((\BASE_DE_TEMPO_2|Add0~33\) # (GND)))
-- \BASE_DE_TEMPO_2|Add0~35\ = CARRY((!\BASE_DE_TEMPO_2|Add0~33\) # (!\BASE_DE_TEMPO_2|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(17),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~33\,
	combout => \BASE_DE_TEMPO_2|Add0~34_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~35\);

-- Location: FF_X24_Y32_N13
\BASE_DE_TEMPO_2|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(17));

-- Location: LCCOMB_X24_Y32_N14
\BASE_DE_TEMPO_2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~36_combout\ = (\BASE_DE_TEMPO_2|contador\(18) & (\BASE_DE_TEMPO_2|Add0~35\ $ (GND))) # (!\BASE_DE_TEMPO_2|contador\(18) & (!\BASE_DE_TEMPO_2|Add0~35\ & VCC))
-- \BASE_DE_TEMPO_2|Add0~37\ = CARRY((\BASE_DE_TEMPO_2|contador\(18) & !\BASE_DE_TEMPO_2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(18),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~35\,
	combout => \BASE_DE_TEMPO_2|Add0~36_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~37\);

-- Location: LCCOMB_X24_Y32_N26
\BASE_DE_TEMPO_2|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|contador~6_combout\ = (\BASE_DE_TEMPO_2|Add0~36_combout\ & (((!\BASE_DE_TEMPO_2|Equal0~4_combout\) # (!\BASE_DE_TEMPO_2|Equal0~6_combout\)) # (!\BASE_DE_TEMPO_2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|Equal0~5_combout\,
	datab => \BASE_DE_TEMPO_2|Equal0~6_combout\,
	datac => \BASE_DE_TEMPO_2|Add0~36_combout\,
	datad => \BASE_DE_TEMPO_2|Equal0~4_combout\,
	combout => \BASE_DE_TEMPO_2|contador~6_combout\);

-- Location: FF_X24_Y32_N27
\BASE_DE_TEMPO_2|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(18));

-- Location: LCCOMB_X24_Y32_N16
\BASE_DE_TEMPO_2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~38_combout\ = (\BASE_DE_TEMPO_2|contador\(19) & (!\BASE_DE_TEMPO_2|Add0~37\)) # (!\BASE_DE_TEMPO_2|contador\(19) & ((\BASE_DE_TEMPO_2|Add0~37\) # (GND)))
-- \BASE_DE_TEMPO_2|Add0~39\ = CARRY((!\BASE_DE_TEMPO_2|Add0~37\) # (!\BASE_DE_TEMPO_2|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(19),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~37\,
	combout => \BASE_DE_TEMPO_2|Add0~38_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~39\);

-- Location: LCCOMB_X24_Y32_N24
\BASE_DE_TEMPO_2|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|contador~7_combout\ = (\BASE_DE_TEMPO_2|Add0~38_combout\ & (((!\BASE_DE_TEMPO_2|Equal0~4_combout\) # (!\BASE_DE_TEMPO_2|Equal0~6_combout\)) # (!\BASE_DE_TEMPO_2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|Add0~38_combout\,
	datab => \BASE_DE_TEMPO_2|Equal0~5_combout\,
	datac => \BASE_DE_TEMPO_2|Equal0~6_combout\,
	datad => \BASE_DE_TEMPO_2|Equal0~4_combout\,
	combout => \BASE_DE_TEMPO_2|contador~7_combout\);

-- Location: FF_X24_Y32_N25
\BASE_DE_TEMPO_2|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(19));

-- Location: LCCOMB_X23_Y32_N2
\BASE_DE_TEMPO_2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Equal0~5_combout\ = (\BASE_DE_TEMPO_2|contador\(19) & (!\BASE_DE_TEMPO_2|contador\(17) & (!\BASE_DE_TEMPO_2|contador\(16) & \BASE_DE_TEMPO_2|contador\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(19),
	datab => \BASE_DE_TEMPO_2|contador\(17),
	datac => \BASE_DE_TEMPO_2|contador\(16),
	datad => \BASE_DE_TEMPO_2|contador\(18),
	combout => \BASE_DE_TEMPO_2|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y32_N18
\BASE_DE_TEMPO_2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~40_combout\ = (\BASE_DE_TEMPO_2|contador\(20) & (\BASE_DE_TEMPO_2|Add0~39\ $ (GND))) # (!\BASE_DE_TEMPO_2|contador\(20) & (!\BASE_DE_TEMPO_2|Add0~39\ & VCC))
-- \BASE_DE_TEMPO_2|Add0~41\ = CARRY((\BASE_DE_TEMPO_2|contador\(20) & !\BASE_DE_TEMPO_2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(20),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~39\,
	combout => \BASE_DE_TEMPO_2|Add0~40_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~41\);

-- Location: FF_X24_Y32_N19
\BASE_DE_TEMPO_2|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(20));

-- Location: LCCOMB_X24_Y32_N20
\BASE_DE_TEMPO_2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~42_combout\ = (\BASE_DE_TEMPO_2|contador\(21) & (!\BASE_DE_TEMPO_2|Add0~41\)) # (!\BASE_DE_TEMPO_2|contador\(21) & ((\BASE_DE_TEMPO_2|Add0~41\) # (GND)))
-- \BASE_DE_TEMPO_2|Add0~43\ = CARRY((!\BASE_DE_TEMPO_2|Add0~41\) # (!\BASE_DE_TEMPO_2|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|contador\(21),
	datad => VCC,
	cin => \BASE_DE_TEMPO_2|Add0~41\,
	combout => \BASE_DE_TEMPO_2|Add0~42_combout\,
	cout => \BASE_DE_TEMPO_2|Add0~43\);

-- Location: FF_X24_Y32_N21
\BASE_DE_TEMPO_2|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(21));

-- Location: LCCOMB_X24_Y32_N22
\BASE_DE_TEMPO_2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Add0~44_combout\ = \BASE_DE_TEMPO_2|contador\(22) $ (!\BASE_DE_TEMPO_2|Add0~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(22),
	cin => \BASE_DE_TEMPO_2|Add0~43\,
	combout => \BASE_DE_TEMPO_2|Add0~44_combout\);

-- Location: LCCOMB_X24_Y32_N30
\BASE_DE_TEMPO_2|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|contador~8_combout\ = (\BASE_DE_TEMPO_2|Add0~44_combout\ & (((!\BASE_DE_TEMPO_2|Equal0~4_combout\) # (!\BASE_DE_TEMPO_2|Equal0~6_combout\)) # (!\BASE_DE_TEMPO_2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|Equal0~5_combout\,
	datab => \BASE_DE_TEMPO_2|Equal0~6_combout\,
	datac => \BASE_DE_TEMPO_2|Add0~44_combout\,
	datad => \BASE_DE_TEMPO_2|Equal0~4_combout\,
	combout => \BASE_DE_TEMPO_2|contador~8_combout\);

-- Location: FF_X24_Y32_N31
\BASE_DE_TEMPO_2|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_2|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|contador\(22));

-- Location: LCCOMB_X23_Y32_N6
\BASE_DE_TEMPO_2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|Equal0~6_combout\ = (\BASE_DE_TEMPO_2|contador\(22) & (!\BASE_DE_TEMPO_2|contador\(21) & !\BASE_DE_TEMPO_2|contador\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|contador\(22),
	datac => \BASE_DE_TEMPO_2|contador\(21),
	datad => \BASE_DE_TEMPO_2|contador\(20),
	combout => \BASE_DE_TEMPO_2|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y32_N24
\BASE_DE_TEMPO_2|tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_2|tick~0_combout\ = \BASE_DE_TEMPO_2|tick~q\ $ (((\BASE_DE_TEMPO_2|Equal0~6_combout\ & (\BASE_DE_TEMPO_2|Equal0~5_combout\ & \BASE_DE_TEMPO_2|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_2|Equal0~6_combout\,
	datab => \BASE_DE_TEMPO_2|Equal0~5_combout\,
	datac => \BASE_DE_TEMPO_2|tick~q\,
	datad => \BASE_DE_TEMPO_2|Equal0~4_combout\,
	combout => \BASE_DE_TEMPO_2|tick~0_combout\);

-- Location: FF_X23_Y32_N25
\BASE_DE_TEMPO_2|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_2|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_2|tick~q\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X66_Y31_N6
\BASE_DE_TEMPO_1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~0_combout\ = \BASE_DE_TEMPO_1|contador\(0) $ (VCC)
-- \BASE_DE_TEMPO_1|Add0~1\ = CARRY(\BASE_DE_TEMPO_1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(0),
	datad => VCC,
	combout => \BASE_DE_TEMPO_1|Add0~0_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~1\);

-- Location: LCCOMB_X66_Y31_N2
\BASE_DE_TEMPO_1|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~1_combout\ = (\BASE_DE_TEMPO_1|Add0~0_combout\ & !\BASE_DE_TEMPO_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BASE_DE_TEMPO_1|Add0~0_combout\,
	datad => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	combout => \BASE_DE_TEMPO_1|contador~1_combout\);

-- Location: FF_X66_Y31_N3
\BASE_DE_TEMPO_1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(0));

-- Location: LCCOMB_X66_Y31_N8
\BASE_DE_TEMPO_1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~2_combout\ = (\BASE_DE_TEMPO_1|contador\(1) & (!\BASE_DE_TEMPO_1|Add0~1\)) # (!\BASE_DE_TEMPO_1|contador\(1) & ((\BASE_DE_TEMPO_1|Add0~1\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~3\ = CARRY((!\BASE_DE_TEMPO_1|Add0~1\) # (!\BASE_DE_TEMPO_1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(1),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~1\,
	combout => \BASE_DE_TEMPO_1|Add0~2_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~3\);

-- Location: FF_X66_Y31_N9
\BASE_DE_TEMPO_1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(1));

-- Location: LCCOMB_X66_Y31_N10
\BASE_DE_TEMPO_1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~4_combout\ = (\BASE_DE_TEMPO_1|contador\(2) & (\BASE_DE_TEMPO_1|Add0~3\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(2) & (!\BASE_DE_TEMPO_1|Add0~3\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~5\ = CARRY((\BASE_DE_TEMPO_1|contador\(2) & !\BASE_DE_TEMPO_1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(2),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~3\,
	combout => \BASE_DE_TEMPO_1|Add0~4_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~5\);

-- Location: FF_X66_Y31_N11
\BASE_DE_TEMPO_1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(2));

-- Location: LCCOMB_X66_Y31_N12
\BASE_DE_TEMPO_1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~6_combout\ = (\BASE_DE_TEMPO_1|contador\(3) & (!\BASE_DE_TEMPO_1|Add0~5\)) # (!\BASE_DE_TEMPO_1|contador\(3) & ((\BASE_DE_TEMPO_1|Add0~5\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~7\ = CARRY((!\BASE_DE_TEMPO_1|Add0~5\) # (!\BASE_DE_TEMPO_1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(3),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~5\,
	combout => \BASE_DE_TEMPO_1|Add0~6_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~7\);

-- Location: FF_X66_Y31_N13
\BASE_DE_TEMPO_1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(3));

-- Location: LCCOMB_X66_Y31_N14
\BASE_DE_TEMPO_1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~8_combout\ = (\BASE_DE_TEMPO_1|contador\(4) & (\BASE_DE_TEMPO_1|Add0~7\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(4) & (!\BASE_DE_TEMPO_1|Add0~7\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~9\ = CARRY((\BASE_DE_TEMPO_1|contador\(4) & !\BASE_DE_TEMPO_1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(4),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~7\,
	combout => \BASE_DE_TEMPO_1|Add0~8_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~9\);

-- Location: FF_X66_Y31_N15
\BASE_DE_TEMPO_1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(4));

-- Location: LCCOMB_X66_Y31_N16
\BASE_DE_TEMPO_1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~10_combout\ = (\BASE_DE_TEMPO_1|contador\(5) & (!\BASE_DE_TEMPO_1|Add0~9\)) # (!\BASE_DE_TEMPO_1|contador\(5) & ((\BASE_DE_TEMPO_1|Add0~9\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~11\ = CARRY((!\BASE_DE_TEMPO_1|Add0~9\) # (!\BASE_DE_TEMPO_1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(5),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~9\,
	combout => \BASE_DE_TEMPO_1|Add0~10_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~11\);

-- Location: FF_X66_Y31_N17
\BASE_DE_TEMPO_1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(5));

-- Location: LCCOMB_X66_Y31_N18
\BASE_DE_TEMPO_1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~12_combout\ = (\BASE_DE_TEMPO_1|contador\(6) & (\BASE_DE_TEMPO_1|Add0~11\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(6) & (!\BASE_DE_TEMPO_1|Add0~11\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~13\ = CARRY((\BASE_DE_TEMPO_1|contador\(6) & !\BASE_DE_TEMPO_1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(6),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~11\,
	combout => \BASE_DE_TEMPO_1|Add0~12_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~13\);

-- Location: FF_X66_Y31_N19
\BASE_DE_TEMPO_1|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(6));

-- Location: LCCOMB_X66_Y31_N20
\BASE_DE_TEMPO_1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~14_combout\ = (\BASE_DE_TEMPO_1|contador\(7) & (!\BASE_DE_TEMPO_1|Add0~13\)) # (!\BASE_DE_TEMPO_1|contador\(7) & ((\BASE_DE_TEMPO_1|Add0~13\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~15\ = CARRY((!\BASE_DE_TEMPO_1|Add0~13\) # (!\BASE_DE_TEMPO_1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(7),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~13\,
	combout => \BASE_DE_TEMPO_1|Add0~14_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~15\);

-- Location: LCCOMB_X66_Y31_N0
\BASE_DE_TEMPO_1|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~0_combout\ = (\BASE_DE_TEMPO_1|Add0~14_combout\ & !\BASE_DE_TEMPO_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|Add0~14_combout\,
	datad => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	combout => \BASE_DE_TEMPO_1|contador~0_combout\);

-- Location: FF_X66_Y31_N1
\BASE_DE_TEMPO_1|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(7));

-- Location: LCCOMB_X66_Y31_N22
\BASE_DE_TEMPO_1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~16_combout\ = (\BASE_DE_TEMPO_1|contador\(8) & (\BASE_DE_TEMPO_1|Add0~15\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(8) & (!\BASE_DE_TEMPO_1|Add0~15\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~17\ = CARRY((\BASE_DE_TEMPO_1|contador\(8) & !\BASE_DE_TEMPO_1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(8),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~15\,
	combout => \BASE_DE_TEMPO_1|Add0~16_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~17\);

-- Location: FF_X66_Y31_N23
\BASE_DE_TEMPO_1|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(8));

-- Location: LCCOMB_X66_Y31_N24
\BASE_DE_TEMPO_1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~18_combout\ = (\BASE_DE_TEMPO_1|contador\(9) & (!\BASE_DE_TEMPO_1|Add0~17\)) # (!\BASE_DE_TEMPO_1|contador\(9) & ((\BASE_DE_TEMPO_1|Add0~17\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~19\ = CARRY((!\BASE_DE_TEMPO_1|Add0~17\) # (!\BASE_DE_TEMPO_1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(9),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~17\,
	combout => \BASE_DE_TEMPO_1|Add0~18_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~19\);

-- Location: FF_X66_Y31_N25
\BASE_DE_TEMPO_1|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(9));

-- Location: LCCOMB_X66_Y31_N26
\BASE_DE_TEMPO_1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~20_combout\ = (\BASE_DE_TEMPO_1|contador\(10) & (\BASE_DE_TEMPO_1|Add0~19\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(10) & (!\BASE_DE_TEMPO_1|Add0~19\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~21\ = CARRY((\BASE_DE_TEMPO_1|contador\(10) & !\BASE_DE_TEMPO_1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(10),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~19\,
	combout => \BASE_DE_TEMPO_1|Add0~20_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~21\);

-- Location: FF_X66_Y31_N27
\BASE_DE_TEMPO_1|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(10));

-- Location: LCCOMB_X66_Y31_N28
\BASE_DE_TEMPO_1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~22_combout\ = (\BASE_DE_TEMPO_1|contador\(11) & (!\BASE_DE_TEMPO_1|Add0~21\)) # (!\BASE_DE_TEMPO_1|contador\(11) & ((\BASE_DE_TEMPO_1|Add0~21\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~23\ = CARRY((!\BASE_DE_TEMPO_1|Add0~21\) # (!\BASE_DE_TEMPO_1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(11),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~21\,
	combout => \BASE_DE_TEMPO_1|Add0~22_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~23\);

-- Location: FF_X66_Y31_N29
\BASE_DE_TEMPO_1|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(11));

-- Location: LCCOMB_X66_Y31_N30
\BASE_DE_TEMPO_1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~24_combout\ = (\BASE_DE_TEMPO_1|contador\(12) & (\BASE_DE_TEMPO_1|Add0~23\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(12) & (!\BASE_DE_TEMPO_1|Add0~23\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~25\ = CARRY((\BASE_DE_TEMPO_1|contador\(12) & !\BASE_DE_TEMPO_1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(12),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~23\,
	combout => \BASE_DE_TEMPO_1|Add0~24_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~25\);

-- Location: LCCOMB_X65_Y30_N0
\BASE_DE_TEMPO_1|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~2_combout\ = (!\BASE_DE_TEMPO_1|Equal0~8_combout\ & \BASE_DE_TEMPO_1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	datac => \BASE_DE_TEMPO_1|Add0~24_combout\,
	combout => \BASE_DE_TEMPO_1|contador~2_combout\);

-- Location: FF_X65_Y30_N1
\BASE_DE_TEMPO_1|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(12));

-- Location: LCCOMB_X66_Y30_N0
\BASE_DE_TEMPO_1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~26_combout\ = (\BASE_DE_TEMPO_1|contador\(13) & (!\BASE_DE_TEMPO_1|Add0~25\)) # (!\BASE_DE_TEMPO_1|contador\(13) & ((\BASE_DE_TEMPO_1|Add0~25\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~27\ = CARRY((!\BASE_DE_TEMPO_1|Add0~25\) # (!\BASE_DE_TEMPO_1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(13),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~25\,
	combout => \BASE_DE_TEMPO_1|Add0~26_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~27\);

-- Location: LCCOMB_X65_Y30_N10
\BASE_DE_TEMPO_1|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~3_combout\ = (!\BASE_DE_TEMPO_1|Equal0~8_combout\ & \BASE_DE_TEMPO_1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	datac => \BASE_DE_TEMPO_1|Add0~26_combout\,
	combout => \BASE_DE_TEMPO_1|contador~3_combout\);

-- Location: FF_X65_Y30_N11
\BASE_DE_TEMPO_1|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(13));

-- Location: LCCOMB_X66_Y30_N2
\BASE_DE_TEMPO_1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~28_combout\ = (\BASE_DE_TEMPO_1|contador\(14) & (\BASE_DE_TEMPO_1|Add0~27\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(14) & (!\BASE_DE_TEMPO_1|Add0~27\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~29\ = CARRY((\BASE_DE_TEMPO_1|contador\(14) & !\BASE_DE_TEMPO_1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(14),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~27\,
	combout => \BASE_DE_TEMPO_1|Add0~28_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~29\);

-- Location: LCCOMB_X65_Y30_N4
\BASE_DE_TEMPO_1|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~4_combout\ = (!\BASE_DE_TEMPO_1|Equal0~8_combout\ & \BASE_DE_TEMPO_1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	datad => \BASE_DE_TEMPO_1|Add0~28_combout\,
	combout => \BASE_DE_TEMPO_1|contador~4_combout\);

-- Location: FF_X65_Y30_N5
\BASE_DE_TEMPO_1|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(14));

-- Location: LCCOMB_X66_Y30_N4
\BASE_DE_TEMPO_1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~30_combout\ = (\BASE_DE_TEMPO_1|contador\(15) & (!\BASE_DE_TEMPO_1|Add0~29\)) # (!\BASE_DE_TEMPO_1|contador\(15) & ((\BASE_DE_TEMPO_1|Add0~29\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~31\ = CARRY((!\BASE_DE_TEMPO_1|Add0~29\) # (!\BASE_DE_TEMPO_1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(15),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~29\,
	combout => \BASE_DE_TEMPO_1|Add0~30_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~31\);

-- Location: LCCOMB_X65_Y30_N6
\BASE_DE_TEMPO_1|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~5_combout\ = (!\BASE_DE_TEMPO_1|Equal0~8_combout\ & \BASE_DE_TEMPO_1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	datad => \BASE_DE_TEMPO_1|Add0~30_combout\,
	combout => \BASE_DE_TEMPO_1|contador~5_combout\);

-- Location: FF_X65_Y30_N7
\BASE_DE_TEMPO_1|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(15));

-- Location: LCCOMB_X66_Y30_N6
\BASE_DE_TEMPO_1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~32_combout\ = (\BASE_DE_TEMPO_1|contador\(16) & (\BASE_DE_TEMPO_1|Add0~31\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(16) & (!\BASE_DE_TEMPO_1|Add0~31\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~33\ = CARRY((\BASE_DE_TEMPO_1|contador\(16) & !\BASE_DE_TEMPO_1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(16),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~31\,
	combout => \BASE_DE_TEMPO_1|Add0~32_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~33\);

-- Location: FF_X66_Y30_N7
\BASE_DE_TEMPO_1|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(16));

-- Location: LCCOMB_X66_Y30_N8
\BASE_DE_TEMPO_1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~34_combout\ = (\BASE_DE_TEMPO_1|contador\(17) & (!\BASE_DE_TEMPO_1|Add0~33\)) # (!\BASE_DE_TEMPO_1|contador\(17) & ((\BASE_DE_TEMPO_1|Add0~33\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~35\ = CARRY((!\BASE_DE_TEMPO_1|Add0~33\) # (!\BASE_DE_TEMPO_1|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(17),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~33\,
	combout => \BASE_DE_TEMPO_1|Add0~34_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~35\);

-- Location: LCCOMB_X65_Y30_N16
\BASE_DE_TEMPO_1|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~6_combout\ = (!\BASE_DE_TEMPO_1|Equal0~8_combout\ & \BASE_DE_TEMPO_1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	datac => \BASE_DE_TEMPO_1|Add0~34_combout\,
	combout => \BASE_DE_TEMPO_1|contador~6_combout\);

-- Location: FF_X65_Y30_N17
\BASE_DE_TEMPO_1|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(17));

-- Location: LCCOMB_X66_Y30_N10
\BASE_DE_TEMPO_1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~36_combout\ = (\BASE_DE_TEMPO_1|contador\(18) & (\BASE_DE_TEMPO_1|Add0~35\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(18) & (!\BASE_DE_TEMPO_1|Add0~35\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~37\ = CARRY((\BASE_DE_TEMPO_1|contador\(18) & !\BASE_DE_TEMPO_1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(18),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~35\,
	combout => \BASE_DE_TEMPO_1|Add0~36_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~37\);

-- Location: FF_X66_Y30_N11
\BASE_DE_TEMPO_1|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(18));

-- Location: LCCOMB_X66_Y30_N12
\BASE_DE_TEMPO_1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~38_combout\ = (\BASE_DE_TEMPO_1|contador\(19) & (!\BASE_DE_TEMPO_1|Add0~37\)) # (!\BASE_DE_TEMPO_1|contador\(19) & ((\BASE_DE_TEMPO_1|Add0~37\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~39\ = CARRY((!\BASE_DE_TEMPO_1|Add0~37\) # (!\BASE_DE_TEMPO_1|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(19),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~37\,
	combout => \BASE_DE_TEMPO_1|Add0~38_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~39\);

-- Location: LCCOMB_X65_Y30_N30
\BASE_DE_TEMPO_1|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~7_combout\ = (!\BASE_DE_TEMPO_1|Equal0~8_combout\ & \BASE_DE_TEMPO_1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	datac => \BASE_DE_TEMPO_1|Add0~38_combout\,
	combout => \BASE_DE_TEMPO_1|contador~7_combout\);

-- Location: FF_X65_Y30_N31
\BASE_DE_TEMPO_1|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(19));

-- Location: LCCOMB_X66_Y30_N14
\BASE_DE_TEMPO_1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~40_combout\ = (\BASE_DE_TEMPO_1|contador\(20) & (\BASE_DE_TEMPO_1|Add0~39\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(20) & (!\BASE_DE_TEMPO_1|Add0~39\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~41\ = CARRY((\BASE_DE_TEMPO_1|contador\(20) & !\BASE_DE_TEMPO_1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(20),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~39\,
	combout => \BASE_DE_TEMPO_1|Add0~40_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~41\);

-- Location: LCCOMB_X65_Y30_N26
\BASE_DE_TEMPO_1|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~8_combout\ = (!\BASE_DE_TEMPO_1|Equal0~8_combout\ & \BASE_DE_TEMPO_1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	datac => \BASE_DE_TEMPO_1|Add0~40_combout\,
	combout => \BASE_DE_TEMPO_1|contador~8_combout\);

-- Location: FF_X65_Y30_N27
\BASE_DE_TEMPO_1|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(20));

-- Location: LCCOMB_X66_Y30_N16
\BASE_DE_TEMPO_1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~42_combout\ = (\BASE_DE_TEMPO_1|contador\(21) & (!\BASE_DE_TEMPO_1|Add0~41\)) # (!\BASE_DE_TEMPO_1|contador\(21) & ((\BASE_DE_TEMPO_1|Add0~41\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~43\ = CARRY((!\BASE_DE_TEMPO_1|Add0~41\) # (!\BASE_DE_TEMPO_1|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(21),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~41\,
	combout => \BASE_DE_TEMPO_1|Add0~42_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~43\);

-- Location: LCCOMB_X66_Y30_N26
\BASE_DE_TEMPO_1|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~9_combout\ = (!\BASE_DE_TEMPO_1|Equal0~8_combout\ & \BASE_DE_TEMPO_1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	datad => \BASE_DE_TEMPO_1|Add0~42_combout\,
	combout => \BASE_DE_TEMPO_1|contador~9_combout\);

-- Location: FF_X66_Y30_N27
\BASE_DE_TEMPO_1|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(21));

-- Location: LCCOMB_X66_Y30_N18
\BASE_DE_TEMPO_1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~44_combout\ = (\BASE_DE_TEMPO_1|contador\(22) & (\BASE_DE_TEMPO_1|Add0~43\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(22) & (!\BASE_DE_TEMPO_1|Add0~43\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~45\ = CARRY((\BASE_DE_TEMPO_1|contador\(22) & !\BASE_DE_TEMPO_1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|contador\(22),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~43\,
	combout => \BASE_DE_TEMPO_1|Add0~44_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~45\);

-- Location: LCCOMB_X66_Y30_N28
\BASE_DE_TEMPO_1|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~10_combout\ = (!\BASE_DE_TEMPO_1|Equal0~8_combout\ & \BASE_DE_TEMPO_1|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	datad => \BASE_DE_TEMPO_1|Add0~44_combout\,
	combout => \BASE_DE_TEMPO_1|contador~10_combout\);

-- Location: FF_X66_Y30_N29
\BASE_DE_TEMPO_1|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(22));

-- Location: LCCOMB_X66_Y30_N20
\BASE_DE_TEMPO_1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~46_combout\ = (\BASE_DE_TEMPO_1|contador\(23) & (!\BASE_DE_TEMPO_1|Add0~45\)) # (!\BASE_DE_TEMPO_1|contador\(23) & ((\BASE_DE_TEMPO_1|Add0~45\) # (GND)))
-- \BASE_DE_TEMPO_1|Add0~47\ = CARRY((!\BASE_DE_TEMPO_1|Add0~45\) # (!\BASE_DE_TEMPO_1|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(23),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~45\,
	combout => \BASE_DE_TEMPO_1|Add0~46_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~47\);

-- Location: LCCOMB_X66_Y30_N30
\BASE_DE_TEMPO_1|contador~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~11_combout\ = (!\BASE_DE_TEMPO_1|Equal0~8_combout\ & \BASE_DE_TEMPO_1|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	datad => \BASE_DE_TEMPO_1|Add0~46_combout\,
	combout => \BASE_DE_TEMPO_1|contador~11_combout\);

-- Location: FF_X66_Y30_N31
\BASE_DE_TEMPO_1|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(23));

-- Location: LCCOMB_X66_Y30_N22
\BASE_DE_TEMPO_1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~48_combout\ = (\BASE_DE_TEMPO_1|contador\(24) & (\BASE_DE_TEMPO_1|Add0~47\ $ (GND))) # (!\BASE_DE_TEMPO_1|contador\(24) & (!\BASE_DE_TEMPO_1|Add0~47\ & VCC))
-- \BASE_DE_TEMPO_1|Add0~49\ = CARRY((\BASE_DE_TEMPO_1|contador\(24) & !\BASE_DE_TEMPO_1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(24),
	datad => VCC,
	cin => \BASE_DE_TEMPO_1|Add0~47\,
	combout => \BASE_DE_TEMPO_1|Add0~48_combout\,
	cout => \BASE_DE_TEMPO_1|Add0~49\);

-- Location: FF_X66_Y30_N23
\BASE_DE_TEMPO_1|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(24));

-- Location: LCCOMB_X66_Y30_N24
\BASE_DE_TEMPO_1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Add0~50_combout\ = \BASE_DE_TEMPO_1|Add0~49\ $ (\BASE_DE_TEMPO_1|contador\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \BASE_DE_TEMPO_1|contador\(25),
	cin => \BASE_DE_TEMPO_1|Add0~49\,
	combout => \BASE_DE_TEMPO_1|Add0~50_combout\);

-- Location: LCCOMB_X65_Y30_N14
\BASE_DE_TEMPO_1|contador~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|contador~12_combout\ = (!\BASE_DE_TEMPO_1|Equal0~8_combout\ & \BASE_DE_TEMPO_1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	datad => \BASE_DE_TEMPO_1|Add0~50_combout\,
	combout => \BASE_DE_TEMPO_1|contador~12_combout\);

-- Location: FF_X65_Y30_N15
\BASE_DE_TEMPO_1|contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \BASE_DE_TEMPO_1|contador~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|contador\(25));

-- Location: LCCOMB_X65_Y30_N12
\BASE_DE_TEMPO_1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Equal0~7_combout\ = (\BASE_DE_TEMPO_1|contador\(25) & !\BASE_DE_TEMPO_1|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BASE_DE_TEMPO_1|contador\(25),
	datad => \BASE_DE_TEMPO_1|contador\(24),
	combout => \BASE_DE_TEMPO_1|Equal0~7_combout\);

-- Location: LCCOMB_X65_Y30_N20
\BASE_DE_TEMPO_1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Equal0~6_combout\ = (\BASE_DE_TEMPO_1|contador\(20) & (\BASE_DE_TEMPO_1|contador\(22) & (\BASE_DE_TEMPO_1|contador\(23) & \BASE_DE_TEMPO_1|contador\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(20),
	datab => \BASE_DE_TEMPO_1|contador\(22),
	datac => \BASE_DE_TEMPO_1|contador\(23),
	datad => \BASE_DE_TEMPO_1|contador\(21),
	combout => \BASE_DE_TEMPO_1|Equal0~6_combout\);

-- Location: LCCOMB_X65_Y30_N8
\BASE_DE_TEMPO_1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Equal0~5_combout\ = (\BASE_DE_TEMPO_1|contador\(19) & (\BASE_DE_TEMPO_1|contador\(17) & (!\BASE_DE_TEMPO_1|contador\(18) & !\BASE_DE_TEMPO_1|contador\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(19),
	datab => \BASE_DE_TEMPO_1|contador\(17),
	datac => \BASE_DE_TEMPO_1|contador\(18),
	datad => \BASE_DE_TEMPO_1|contador\(16),
	combout => \BASE_DE_TEMPO_1|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y31_N4
\BASE_DE_TEMPO_1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Equal0~1_combout\ = (!\BASE_DE_TEMPO_1|contador\(2) & (!\BASE_DE_TEMPO_1|contador\(0) & (!\BASE_DE_TEMPO_1|contador\(1) & !\BASE_DE_TEMPO_1|contador\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(2),
	datab => \BASE_DE_TEMPO_1|contador\(0),
	datac => \BASE_DE_TEMPO_1|contador\(1),
	datad => \BASE_DE_TEMPO_1|contador\(3),
	combout => \BASE_DE_TEMPO_1|Equal0~1_combout\);

-- Location: LCCOMB_X65_Y30_N28
\BASE_DE_TEMPO_1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Equal0~3_combout\ = (\BASE_DE_TEMPO_1|contador\(13) & (\BASE_DE_TEMPO_1|contador\(12) & (\BASE_DE_TEMPO_1|contador\(14) & \BASE_DE_TEMPO_1|contador\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(13),
	datab => \BASE_DE_TEMPO_1|contador\(12),
	datac => \BASE_DE_TEMPO_1|contador\(14),
	datad => \BASE_DE_TEMPO_1|contador\(15),
	combout => \BASE_DE_TEMPO_1|Equal0~3_combout\);

-- Location: LCCOMB_X65_Y31_N30
\BASE_DE_TEMPO_1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Equal0~2_combout\ = (!\BASE_DE_TEMPO_1|contador\(10) & (!\BASE_DE_TEMPO_1|contador\(8) & (!\BASE_DE_TEMPO_1|contador\(9) & !\BASE_DE_TEMPO_1|contador\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(10),
	datab => \BASE_DE_TEMPO_1|contador\(8),
	datac => \BASE_DE_TEMPO_1|contador\(9),
	datad => \BASE_DE_TEMPO_1|contador\(11),
	combout => \BASE_DE_TEMPO_1|Equal0~2_combout\);

-- Location: LCCOMB_X65_Y31_N12
\BASE_DE_TEMPO_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Equal0~0_combout\ = (!\BASE_DE_TEMPO_1|contador\(4) & (!\BASE_DE_TEMPO_1|contador\(6) & (\BASE_DE_TEMPO_1|contador\(7) & !\BASE_DE_TEMPO_1|contador\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|contador\(4),
	datab => \BASE_DE_TEMPO_1|contador\(6),
	datac => \BASE_DE_TEMPO_1|contador\(7),
	datad => \BASE_DE_TEMPO_1|contador\(5),
	combout => \BASE_DE_TEMPO_1|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y30_N18
\BASE_DE_TEMPO_1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Equal0~4_combout\ = (\BASE_DE_TEMPO_1|Equal0~1_combout\ & (\BASE_DE_TEMPO_1|Equal0~3_combout\ & (\BASE_DE_TEMPO_1|Equal0~2_combout\ & \BASE_DE_TEMPO_1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|Equal0~1_combout\,
	datab => \BASE_DE_TEMPO_1|Equal0~3_combout\,
	datac => \BASE_DE_TEMPO_1|Equal0~2_combout\,
	datad => \BASE_DE_TEMPO_1|Equal0~0_combout\,
	combout => \BASE_DE_TEMPO_1|Equal0~4_combout\);

-- Location: LCCOMB_X65_Y30_N22
\BASE_DE_TEMPO_1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|Equal0~8_combout\ = (\BASE_DE_TEMPO_1|Equal0~7_combout\ & (\BASE_DE_TEMPO_1|Equal0~6_combout\ & (\BASE_DE_TEMPO_1|Equal0~5_combout\ & \BASE_DE_TEMPO_1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BASE_DE_TEMPO_1|Equal0~7_combout\,
	datab => \BASE_DE_TEMPO_1|Equal0~6_combout\,
	datac => \BASE_DE_TEMPO_1|Equal0~5_combout\,
	datad => \BASE_DE_TEMPO_1|Equal0~4_combout\,
	combout => \BASE_DE_TEMPO_1|Equal0~8_combout\);

-- Location: LCCOMB_X63_Y30_N18
\BASE_DE_TEMPO_1|tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BASE_DE_TEMPO_1|tick~0_combout\ = \BASE_DE_TEMPO_1|tick~q\ $ (\BASE_DE_TEMPO_1|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BASE_DE_TEMPO_1|tick~q\,
	datad => \BASE_DE_TEMPO_1|Equal0~8_combout\,
	combout => \BASE_DE_TEMPO_1|tick~0_combout\);

-- Location: FF_X63_Y30_N19
\BASE_DE_TEMPO_1|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BASE_DE_TEMPO_1|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BASE_DE_TEMPO_1|tick~q\);

-- Location: LCCOMB_X63_Y30_N28
\MUX_BASE_TEMPO|saida_MUX\ : cycloneive_lcell_comb
-- Equation(s):
-- \MUX_BASE_TEMPO|saida_MUX~combout\ = LCELL((\SW[0]~input_o\ & ((\BASE_DE_TEMPO_1|tick~q\))) # (!\SW[0]~input_o\ & (\BASE_DE_TEMPO_2|tick~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BASE_DE_TEMPO_2|tick~q\,
	datac => \SW[0]~input_o\,
	datad => \BASE_DE_TEMPO_1|tick~q\,
	combout => \MUX_BASE_TEMPO|saida_MUX~combout\);

-- Location: LCCOMB_X110_Y6_N0
\TIMER|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \TIMER|DOUT[2]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \TIMER|DOUT[2]~feeder_combout\);

-- Location: LCCOMB_X110_Y6_N24
\DECODER|Habtimer_write~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER|Habtimer_write~3_combout\ = (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(7) & (!\CPU|ROM|memROM~45_combout\ & !\CPU|ROM|memROM~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(6),
	datab => \CPU|PC|DOUT\(7),
	datac => \CPU|ROM|memROM~45_combout\,
	datad => \CPU|ROM|memROM~56_combout\,
	combout => \DECODER|Habtimer_write~3_combout\);

-- Location: LCCOMB_X110_Y6_N14
\DECODER|Habtimer_write~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER|Habtimer_write~2_combout\ = (\CPU|ROM|memROM~60_combout\ & (\DECODER|Habtimer_write~3_combout\ & (!\CPU|ROM|memROM~35_combout\ & \CPU|ROM|memROM~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~60_combout\,
	datab => \DECODER|Habtimer_write~3_combout\,
	datac => \CPU|ROM|memROM~35_combout\,
	datad => \CPU|ROM|memROM~19_combout\,
	combout => \DECODER|Habtimer_write~2_combout\);

-- Location: LCCOMB_X110_Y6_N2
\DECODER|Habtimer_write\ : cycloneive_lcell_comb
-- Equation(s):
-- \DECODER|Habtimer_write~combout\ = (!\CPU|ROM|memROM~31_combout\ & (!\CPU|ROM|memROM~57_combout\ & (\DECODER|Habtimer_write~2_combout\ & !\CPU|ROM|memROM~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \CPU|ROM|memROM~57_combout\,
	datac => \DECODER|Habtimer_write~2_combout\,
	datad => \CPU|ROM|memROM~26_combout\,
	combout => \DECODER|Habtimer_write~combout\);

-- Location: FF_X110_Y6_N1
\TIMER|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MUX_BASE_TEMPO|saida_MUX~combout\,
	d => \TIMER|DOUT[2]~feeder_combout\,
	clrn => \DECODER|ALT_INV_Habtimer_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TIMER|DOUT\(2));

-- Location: LCCOMB_X110_Y7_N24
\CPU|MUX|saida_MUX[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[2]~4_combout\ = (\CPU|ROM|memROM~59_combout\ & ((\CPU|ULA|Add0~4_combout\) # ((\CPU|ACU|DOUT[2]~16_combout\)))) # (!\CPU|ROM|memROM~59_combout\ & (((!\CPU|ACU|DOUT[2]~16_combout\ & \TIMER|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~59_combout\,
	datab => \CPU|ULA|Add0~4_combout\,
	datac => \CPU|ACU|DOUT[2]~16_combout\,
	datad => \TIMER|DOUT\(2),
	combout => \CPU|MUX|saida_MUX[2]~4_combout\);

-- Location: LCCOMB_X110_Y7_N30
\CPU|MUX|saida_MUX[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[2]~5_combout\ = (\CPU|ACU|DOUT[2]~16_combout\ & ((\CPU|MUX|saida_MUX[2]~4_combout\ & (\CPU|ROM|memROM~57_combout\)) # (!\CPU|MUX|saida_MUX[2]~4_combout\ & ((\RAM_USAVEL|ram~301_combout\))))) # (!\CPU|ACU|DOUT[2]~16_combout\ & 
-- (((\CPU|MUX|saida_MUX[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~57_combout\,
	datab => \CPU|ACU|DOUT[2]~16_combout\,
	datac => \RAM_USAVEL|ram~301_combout\,
	datad => \CPU|MUX|saida_MUX[2]~4_combout\,
	combout => \CPU|MUX|saida_MUX[2]~5_combout\);

-- Location: FF_X110_Y7_N31
\CPU|ACU|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|MUX|saida_MUX[2]~5_combout\,
	ena => \CPU|ROM|memROM~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(2));

-- Location: LCCOMB_X109_Y7_N24
\CPU|ULA|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ULA|Add0~6_combout\ = \CPU|ROM|memROM~35_combout\ $ (\CPU|ULA|Add0~5\ $ (\CPU|ACU|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ROM|memROM~35_combout\,
	datad => \CPU|ACU|DOUT\(3),
	cin => \CPU|ULA|Add0~5\,
	combout => \CPU|ULA|Add0~6_combout\);

-- Location: LCCOMB_X110_Y7_N20
\CPU|MUX|saida_MUX[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[3]~6_combout\ = (\CPU|ROM|memROM~59_combout\ & ((\CPU|ULA|Add0~6_combout\) # ((\CPU|ACU|DOUT[2]~16_combout\)))) # (!\CPU|ROM|memROM~59_combout\ & (((!\CPU|ACU|DOUT[2]~16_combout\ & \TIMER|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~59_combout\,
	datab => \CPU|ULA|Add0~6_combout\,
	datac => \CPU|ACU|DOUT[2]~16_combout\,
	datad => \TIMER|DOUT\(2),
	combout => \CPU|MUX|saida_MUX[3]~6_combout\);

-- Location: LCCOMB_X110_Y7_N26
\CPU|MUX|saida_MUX[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|MUX|saida_MUX[3]~7_combout\ = (\CPU|ACU|DOUT[2]~16_combout\ & ((\CPU|MUX|saida_MUX[3]~6_combout\ & (\CPU|ROM|memROM~35_combout\)) # (!\CPU|MUX|saida_MUX[3]~6_combout\ & ((\RAM_USAVEL|ram~312_combout\))))) # (!\CPU|ACU|DOUT[2]~16_combout\ & 
-- (((\CPU|MUX|saida_MUX[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~35_combout\,
	datab => \CPU|ACU|DOUT[2]~16_combout\,
	datac => \RAM_USAVEL|ram~312_combout\,
	datad => \CPU|MUX|saida_MUX[3]~6_combout\,
	combout => \CPU|MUX|saida_MUX[3]~7_combout\);

-- Location: FF_X110_Y7_N27
\CPU|ACU|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|MUX|saida_MUX[3]~7_combout\,
	ena => \CPU|ROM|memROM~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|ACU|DOUT\(3));

-- Location: LCCOMB_X112_Y6_N12
\CPU|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|comb~0_combout\ = (\CPU|ACU|DOUT\(3) & ((\CPU|ACU|DOUT\(1)) # (\CPU|ACU|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CPU|ACU|DOUT\(1),
	datac => \CPU|ACU|DOUT\(3),
	datad => \CPU|ACU|DOUT\(2),
	combout => \CPU|comb~0_combout\);

-- Location: LCCOMB_X111_Y6_N0
\CPU|ROM|memROM~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~46_combout\ = (\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3))))) # (!\CPU|PC|DOUT\(5) & (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(5),
	datab => \CPU|PC|DOUT\(0),
	datac => \CPU|PC|DOUT\(3),
	datad => \CPU|PC|DOUT\(4),
	combout => \CPU|ROM|memROM~46_combout\);

-- Location: LCCOMB_X111_Y6_N14
\CPU|ROM|memROM~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~47_combout\ = (\CPU|PC|DOUT\(1) & (\CPU|ROM|memROM~46_combout\ & (\CPU|ROM|memROM~14_combout\ & \CPU|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(1),
	datab => \CPU|ROM|memROM~46_combout\,
	datac => \CPU|ROM|memROM~14_combout\,
	datad => \CPU|PC|DOUT\(2),
	combout => \CPU|ROM|memROM~47_combout\);

-- Location: LCCOMB_X112_Y6_N22
\CPU|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|comb~1_combout\ = (\CPU|ROM|memROM~47_combout\) # ((\CPU|comb~0_combout\ & \CPU|ROM|memROM~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|comb~0_combout\,
	datac => \CPU|ROM|memROM~56_combout\,
	datad => \CPU|ROM|memROM~47_combout\,
	combout => \CPU|comb~1_combout\);

-- Location: FF_X108_Y6_N17
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|DOUT[6]~20_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: LCCOMB_X108_Y6_N18
\CPU|PC|DOUT[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[7]~22_combout\ = \CPU|PC|DOUT[6]~21\ $ (\CPU|PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|DOUT\(7),
	cin => \CPU|PC|DOUT[6]~21\,
	combout => \CPU|PC|DOUT[7]~22_combout\);

-- Location: FF_X108_Y6_N19
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|DOUT[7]~22_combout\,
	asdata => \~GND~combout\,
	sload => \CPU|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: LCCOMB_X109_Y6_N10
\CPU|ROM|memROM~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~56_combout\ = (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & (\CPU|ROM|memROM~20_combout\ & \CPU|ROM|memROM~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(7),
	datab => \CPU|PC|DOUT\(6),
	datac => \CPU|ROM|memROM~20_combout\,
	datad => \CPU|ROM|memROM~21_combout\,
	combout => \CPU|ROM|memROM~56_combout\);

-- Location: FF_X108_Y6_N15
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|DOUT[5]~18_combout\,
	asdata => \CPU|ROM|memROM~56_combout\,
	sload => \CPU|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LCCOMB_X110_Y6_N12
\CPU|ROM|memROM~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~55_combout\ = (!\CPU|ROM|memROM~18_combout\ & (\CPU|PC|DOUT\(5) & \CPU|PC|DOUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~18_combout\,
	datab => \CPU|PC|DOUT\(5),
	datad => \CPU|PC|DOUT\(0),
	combout => \CPU|ROM|memROM~55_combout\);

-- Location: LCCOMB_X110_Y6_N8
\CPU|ROM|memROM~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~19_combout\ = (\CPU|ROM|memROM~14_combout\ & ((\CPU|ROM|memROM~55_combout\) # ((!\CPU|PC|DOUT\(0) & \CPU|ROM|memROM~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~55_combout\,
	datab => \CPU|ROM|memROM~14_combout\,
	datac => \CPU|PC|DOUT\(0),
	datad => \CPU|ROM|memROM~16_combout\,
	combout => \CPU|ROM|memROM~19_combout\);

-- Location: FF_X108_Y6_N13
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|DOUT[4]~16_combout\,
	asdata => \CPU|ROM|memROM~19_combout\,
	sload => \CPU|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: LCCOMB_X111_Y6_N26
\CPU|ROM|memROM~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~23_combout\ = (\CPU|PC|DOUT\(3) & ((\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1))) # (!\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(4)))))) # (!\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(3),
	datab => \CPU|PC|DOUT\(0),
	datac => \CPU|PC|DOUT\(1),
	datad => \CPU|PC|DOUT\(4),
	combout => \CPU|ROM|memROM~23_combout\);

-- Location: LCCOMB_X111_Y6_N4
\CPU|ROM|memROM~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~22_combout\ = (\CPU|PC|DOUT\(0) & ((\CPU|PC|DOUT\(3)) # ((!\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(3),
	datab => \CPU|PC|DOUT\(0),
	datac => \CPU|PC|DOUT\(1),
	datad => \CPU|PC|DOUT\(4),
	combout => \CPU|ROM|memROM~22_combout\);

-- Location: LCCOMB_X111_Y6_N22
\CPU|ROM|memROM~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~25_combout\ = (\CPU|PC|DOUT\(4) & ((\CPU|PC|DOUT\(2) & ((\CPU|ROM|memROM~22_combout\))) # (!\CPU|PC|DOUT\(2) & (\CPU|ROM|memROM~23_combout\)))) # (!\CPU|PC|DOUT\(4) & (((\CPU|ROM|memROM~23_combout\ & !\CPU|ROM|memROM~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(4),
	datab => \CPU|PC|DOUT\(2),
	datac => \CPU|ROM|memROM~23_combout\,
	datad => \CPU|ROM|memROM~22_combout\,
	combout => \CPU|ROM|memROM~25_combout\);

-- Location: LCCOMB_X111_Y6_N8
\CPU|ROM|memROM~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~24_combout\ = (!\CPU|PC|DOUT\(4) & (\CPU|ROM|memROM~22_combout\ & (\CPU|PC|DOUT\(2) $ (\CPU|ROM|memROM~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(4),
	datab => \CPU|PC|DOUT\(2),
	datac => \CPU|ROM|memROM~23_combout\,
	datad => \CPU|ROM|memROM~22_combout\,
	combout => \CPU|ROM|memROM~24_combout\);

-- Location: LCCOMB_X111_Y6_N20
\CPU|ROM|memROM~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~26_combout\ = (\CPU|ROM|memROM~14_combout\ & ((\CPU|ROM|memROM~25_combout\ & (!\CPU|PC|DOUT\(5) & !\CPU|ROM|memROM~24_combout\)) # (!\CPU|ROM|memROM~25_combout\ & (\CPU|PC|DOUT\(5) & \CPU|ROM|memROM~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~25_combout\,
	datab => \CPU|ROM|memROM~14_combout\,
	datac => \CPU|PC|DOUT\(5),
	datad => \CPU|ROM|memROM~24_combout\,
	combout => \CPU|ROM|memROM~26_combout\);

-- Location: FF_X108_Y6_N7
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|DOUT[1]~10_combout\,
	asdata => \CPU|ROM|memROM~26_combout\,
	sload => \CPU|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: LCCOMB_X108_Y6_N8
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

-- Location: FF_X108_Y6_N9
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|DOUT[2]~12_combout\,
	asdata => \CPU|ROM|memROM~57_combout\,
	sload => \CPU|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: FF_X108_Y6_N11
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|DOUT[3]~14_combout\,
	asdata => \CPU|ROM|memROM~35_combout\,
	sload => \CPU|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: LCCOMB_X110_Y6_N28
\CPU|ROM|memROM~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~28_combout\ = (\CPU|PC|DOUT\(0)) # ((\CPU|PC|DOUT\(4) & ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(3),
	datab => \CPU|PC|DOUT\(0),
	datac => \CPU|PC|DOUT\(4),
	datad => \CPU|PC|DOUT\(2),
	combout => \CPU|ROM|memROM~28_combout\);

-- Location: LCCOMB_X109_Y6_N24
\CPU|ROM|memROM~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~29_combout\ = (\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))))) # (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (\CPU|PC|DOUT\(1) $ (\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(4),
	datab => \CPU|PC|DOUT\(0),
	datac => \CPU|PC|DOUT\(1),
	datad => \CPU|PC|DOUT\(2),
	combout => \CPU|ROM|memROM~29_combout\);

-- Location: LCCOMB_X110_Y6_N30
\CPU|ROM|memROM~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~30_combout\ = (\CPU|PC|DOUT\(5) & ((\CPU|ROM|memROM~29_combout\))) # (!\CPU|PC|DOUT\(5) & (\CPU|ROM|memROM~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(5),
	datab => \CPU|ROM|memROM~28_combout\,
	datad => \CPU|ROM|memROM~29_combout\,
	combout => \CPU|ROM|memROM~30_combout\);

-- Location: LCCOMB_X110_Y6_N26
\CPU|ROM|memROM~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~27_combout\ = (\CPU|PC|DOUT\(4) & (((!\CPU|PC|DOUT\(1))))) # (!\CPU|PC|DOUT\(4) & (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(1))) # (!\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|DOUT\(3),
	datab => \CPU|PC|DOUT\(4),
	datac => \CPU|PC|DOUT\(2),
	datad => \CPU|PC|DOUT\(1),
	combout => \CPU|ROM|memROM~27_combout\);

-- Location: LCCOMB_X110_Y6_N16
\CPU|ROM|memROM~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CPU|ROM|memROM~31_combout\ = (\CPU|ROM|memROM~14_combout\ & (\CPU|ROM|memROM~30_combout\ & ((\CPU|ROM|memROM~27_combout\) # (!\CPU|ROM|memROM~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~28_combout\,
	datab => \CPU|ROM|memROM~14_combout\,
	datac => \CPU|ROM|memROM~30_combout\,
	datad => \CPU|ROM|memROM~27_combout\,
	combout => \CPU|ROM|memROM~31_combout\);

-- Location: FF_X108_Y6_N5
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CPU|PC|DOUT[0]~8_combout\,
	asdata => \CPU|ROM|memROM~31_combout\,
	sload => \CPU|comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: LCCOMB_X108_Y5_N6
\SEG7ALL|REGSEG7_AMPM|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_AMPM|DOUT[0]~feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(0),
	combout => \SEG7ALL|REGSEG7_AMPM|DOUT[0]~feeder_combout\);

-- Location: LCCOMB_X108_Y5_N28
\SEG7ALL|hab_AMPM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|hab_AMPM~0_combout\ = (!\CPU|ROM|memROM~57_combout\ & (!\CPU|ROM|memROM~26_combout\ & (!\CPU|ROM|memROM~31_combout\ & \CPU|ROM|memROM~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~57_combout\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \CPU|ROM|memROM~31_combout\,
	datad => \CPU|ROM|memROM~35_combout\,
	combout => \SEG7ALL|hab_AMPM~0_combout\);

-- Location: LCCOMB_X108_Y5_N30
\SEG7ALL|hab_AMPM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|hab_AMPM~1_combout\ = (\DECODER|HabRAM_write~2_combout\ & (!\CPU|ROM|memROM~56_combout\ & (\CPU|ROM|memROM~19_combout\ & \SEG7ALL|hab_AMPM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|HabRAM_write~2_combout\,
	datab => \CPU|ROM|memROM~56_combout\,
	datac => \CPU|ROM|memROM~19_combout\,
	datad => \SEG7ALL|hab_AMPM~0_combout\,
	combout => \SEG7ALL|hab_AMPM~1_combout\);

-- Location: FF_X108_Y5_N7
\SEG7ALL|REGSEG7_AMPM|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_AMPM|DOUT[0]~feeder_combout\,
	ena => \SEG7ALL|hab_AMPM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_AMPM|DOUT\(0));

-- Location: LCCOMB_X108_Y5_N0
\SEG7ALL|REGSEG7_AMPM|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_AMPM|DOUT[3]~feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(3),
	combout => \SEG7ALL|REGSEG7_AMPM|DOUT[3]~feeder_combout\);

-- Location: FF_X108_Y5_N1
\SEG7ALL|REGSEG7_AMPM|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_AMPM|DOUT[3]~feeder_combout\,
	ena => \SEG7ALL|hab_AMPM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_AMPM|DOUT\(3));

-- Location: LCCOMB_X108_Y5_N14
\SEG7ALL|REGSEG7_AMPM|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_AMPM|DOUT[2]~feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(2),
	combout => \SEG7ALL|REGSEG7_AMPM|DOUT[2]~feeder_combout\);

-- Location: FF_X108_Y5_N15
\SEG7ALL|REGSEG7_AMPM|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_AMPM|DOUT[2]~feeder_combout\,
	ena => \SEG7ALL|hab_AMPM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_AMPM|DOUT\(2));

-- Location: LCCOMB_X108_Y5_N24
\SEG7ALL|REGSEG7_AMPM|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_AMPM|DOUT[1]~feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(1),
	combout => \SEG7ALL|REGSEG7_AMPM|DOUT[1]~feeder_combout\);

-- Location: FF_X108_Y5_N25
\SEG7ALL|REGSEG7_AMPM|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_AMPM|DOUT[1]~feeder_combout\,
	ena => \SEG7ALL|hab_AMPM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_AMPM|DOUT\(1));

-- Location: LCCOMB_X108_Y5_N20
\SEG7ALL|SEG7_AMPM|rascSaida7seg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_AMPM|rascSaida7seg[0]~4_combout\ = (\SEG7ALL|REGSEG7_AMPM|DOUT\(0) & (\SEG7ALL|REGSEG7_AMPM|DOUT\(3) $ (((!\SEG7ALL|REGSEG7_AMPM|DOUT\(2) & !\SEG7ALL|REGSEG7_AMPM|DOUT\(1)))))) # (!\SEG7ALL|REGSEG7_AMPM|DOUT\(0) & 
-- (!\SEG7ALL|REGSEG7_AMPM|DOUT\(3) & (\SEG7ALL|REGSEG7_AMPM|DOUT\(2) & !\SEG7ALL|REGSEG7_AMPM|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_AMPM|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_AMPM|DOUT\(3),
	datac => \SEG7ALL|REGSEG7_AMPM|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_AMPM|DOUT\(1),
	combout => \SEG7ALL|SEG7_AMPM|rascSaida7seg[0]~4_combout\);

-- Location: LCCOMB_X108_Y5_N12
\SEG7ALL|SEG7_AMPM|rascSaida7seg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_AMPM|rascSaida7seg[1]~9_combout\ = (\SEG7ALL|REGSEG7_AMPM|DOUT\(2) & (\SEG7ALL|REGSEG7_AMPM|DOUT\(0) $ (\SEG7ALL|REGSEG7_AMPM|DOUT\(3) $ (\SEG7ALL|REGSEG7_AMPM|DOUT\(1))))) # (!\SEG7ALL|REGSEG7_AMPM|DOUT\(2) & (\SEG7ALL|REGSEG7_AMPM|DOUT\(0) 
-- & (\SEG7ALL|REGSEG7_AMPM|DOUT\(3) & \SEG7ALL|REGSEG7_AMPM|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_AMPM|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_AMPM|DOUT\(3),
	datac => \SEG7ALL|REGSEG7_AMPM|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_AMPM|DOUT\(1),
	combout => \SEG7ALL|SEG7_AMPM|rascSaida7seg[1]~9_combout\);

-- Location: LCCOMB_X108_Y5_N10
\SEG7ALL|SEG7_AMPM|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_AMPM|rascSaida7seg[2]~5_combout\ = (\SEG7ALL|REGSEG7_AMPM|DOUT\(3) & (\SEG7ALL|REGSEG7_AMPM|DOUT\(2) & ((\SEG7ALL|REGSEG7_AMPM|DOUT\(1)) # (!\SEG7ALL|REGSEG7_AMPM|DOUT\(0))))) # (!\SEG7ALL|REGSEG7_AMPM|DOUT\(3) & 
-- (!\SEG7ALL|REGSEG7_AMPM|DOUT\(0) & (!\SEG7ALL|REGSEG7_AMPM|DOUT\(2) & \SEG7ALL|REGSEG7_AMPM|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_AMPM|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_AMPM|DOUT\(3),
	datac => \SEG7ALL|REGSEG7_AMPM|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_AMPM|DOUT\(1),
	combout => \SEG7ALL|SEG7_AMPM|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X109_Y5_N28
\SEG7ALL|SEG7_AMPM|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_AMPM|rascSaida7seg[3]~6_combout\ = (\SEG7ALL|REGSEG7_AMPM|DOUT\(1) & ((\SEG7ALL|REGSEG7_AMPM|DOUT\(0) & ((\SEG7ALL|REGSEG7_AMPM|DOUT\(2)))) # (!\SEG7ALL|REGSEG7_AMPM|DOUT\(0) & (\SEG7ALL|REGSEG7_AMPM|DOUT\(3))))) # 
-- (!\SEG7ALL|REGSEG7_AMPM|DOUT\(1) & (!\SEG7ALL|REGSEG7_AMPM|DOUT\(3) & (\SEG7ALL|REGSEG7_AMPM|DOUT\(0) $ (\SEG7ALL|REGSEG7_AMPM|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_AMPM|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_AMPM|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_AMPM|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_AMPM|DOUT\(2),
	combout => \SEG7ALL|SEG7_AMPM|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X109_Y5_N30
\SEG7ALL|SEG7_AMPM|rascSaida7seg[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_AMPM|rascSaida7seg[4]~7_combout\ = (\SEG7ALL|REGSEG7_AMPM|DOUT\(3) & (\SEG7ALL|REGSEG7_AMPM|DOUT\(0) & (\SEG7ALL|REGSEG7_AMPM|DOUT\(1) $ (!\SEG7ALL|REGSEG7_AMPM|DOUT\(2))))) # (!\SEG7ALL|REGSEG7_AMPM|DOUT\(3) & 
-- ((\SEG7ALL|REGSEG7_AMPM|DOUT\(0)) # ((!\SEG7ALL|REGSEG7_AMPM|DOUT\(1) & \SEG7ALL|REGSEG7_AMPM|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_AMPM|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_AMPM|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_AMPM|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_AMPM|DOUT\(2),
	combout => \SEG7ALL|SEG7_AMPM|rascSaida7seg[4]~7_combout\);

-- Location: LCCOMB_X109_Y5_N0
\SEG7ALL|SEG7_AMPM|rascSaida7seg[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_AMPM|rascSaida7seg[5]~8_combout\ = (\SEG7ALL|REGSEG7_AMPM|DOUT\(1) & ((\SEG7ALL|REGSEG7_AMPM|DOUT\(2) & ((\SEG7ALL|REGSEG7_AMPM|DOUT\(0)))) # (!\SEG7ALL|REGSEG7_AMPM|DOUT\(2) & (!\SEG7ALL|REGSEG7_AMPM|DOUT\(3))))) # 
-- (!\SEG7ALL|REGSEG7_AMPM|DOUT\(1) & (\SEG7ALL|REGSEG7_AMPM|DOUT\(0) & (\SEG7ALL|REGSEG7_AMPM|DOUT\(3) $ (!\SEG7ALL|REGSEG7_AMPM|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_AMPM|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_AMPM|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_AMPM|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_AMPM|DOUT\(2),
	combout => \SEG7ALL|SEG7_AMPM|rascSaida7seg[5]~8_combout\);

-- Location: LCCOMB_X109_Y5_N8
\SEG7ALL|SEG7_AMPM|rascSaida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_AMPM|rascSaida7seg[6]~10_combout\ = (\SEG7ALL|REGSEG7_AMPM|DOUT\(1) & (((\SEG7ALL|REGSEG7_AMPM|DOUT\(0) & \SEG7ALL|REGSEG7_AMPM|DOUT\(2))))) # (!\SEG7ALL|REGSEG7_AMPM|DOUT\(1) & ((\SEG7ALL|REGSEG7_AMPM|DOUT\(3) & 
-- (!\SEG7ALL|REGSEG7_AMPM|DOUT\(0) & \SEG7ALL|REGSEG7_AMPM|DOUT\(2))) # (!\SEG7ALL|REGSEG7_AMPM|DOUT\(3) & ((!\SEG7ALL|REGSEG7_AMPM|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_AMPM|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_AMPM|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_AMPM|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_AMPM|DOUT\(2),
	combout => \SEG7ALL|SEG7_AMPM|rascSaida7seg[6]~10_combout\);

-- Location: LCCOMB_X113_Y6_N14
\SEG7ALL|REGSEG7_DH|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DH|DOUT[0]~feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(0),
	combout => \SEG7ALL|REGSEG7_DH|DOUT[0]~feeder_combout\);

-- Location: LCCOMB_X113_Y6_N4
\SEG7ALL|hab_DH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|hab_DH~0_combout\ = (\CPU|ROM|memROM~26_combout\ & (!\CPU|ROM|memROM~31_combout\ & (\CPU|ROM|memROM~57_combout\ & \DECODER|Habtimer_write~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \CPU|ROM|memROM~31_combout\,
	datac => \CPU|ROM|memROM~57_combout\,
	datad => \DECODER|Habtimer_write~2_combout\,
	combout => \SEG7ALL|hab_DH~0_combout\);

-- Location: FF_X113_Y6_N15
\SEG7ALL|REGSEG7_DH|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DH|DOUT[0]~feeder_combout\,
	ena => \SEG7ALL|hab_DH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DH|DOUT\(0));

-- Location: LCCOMB_X113_Y6_N22
\SEG7ALL|REGSEG7_DH|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DH|DOUT[2]~feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(2),
	combout => \SEG7ALL|REGSEG7_DH|DOUT[2]~feeder_combout\);

-- Location: FF_X113_Y6_N23
\SEG7ALL|REGSEG7_DH|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DH|DOUT[2]~feeder_combout\,
	ena => \SEG7ALL|hab_DH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DH|DOUT\(2));

-- Location: LCCOMB_X113_Y6_N16
\SEG7ALL|REGSEG7_DH|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DH|DOUT[1]~feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(1),
	combout => \SEG7ALL|REGSEG7_DH|DOUT[1]~feeder_combout\);

-- Location: FF_X113_Y6_N17
\SEG7ALL|REGSEG7_DH|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DH|DOUT[1]~feeder_combout\,
	ena => \SEG7ALL|hab_DH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DH|DOUT\(1));

-- Location: LCCOMB_X113_Y6_N8
\SEG7ALL|REGSEG7_DH|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DH|DOUT[3]~feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(3),
	combout => \SEG7ALL|REGSEG7_DH|DOUT[3]~feeder_combout\);

-- Location: FF_X113_Y6_N9
\SEG7ALL|REGSEG7_DH|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DH|DOUT[3]~feeder_combout\,
	ena => \SEG7ALL|hab_DH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DH|DOUT\(3));

-- Location: LCCOMB_X114_Y6_N4
\SEG7ALL|SEG7_DH|rascSaida7seg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DH|rascSaida7seg[0]~4_combout\ = (\SEG7ALL|REGSEG7_DH|DOUT\(0) & (\SEG7ALL|REGSEG7_DH|DOUT\(3) $ (((!\SEG7ALL|REGSEG7_DH|DOUT\(2) & !\SEG7ALL|REGSEG7_DH|DOUT\(1)))))) # (!\SEG7ALL|REGSEG7_DH|DOUT\(0) & (\SEG7ALL|REGSEG7_DH|DOUT\(2) & 
-- (!\SEG7ALL|REGSEG7_DH|DOUT\(1) & !\SEG7ALL|REGSEG7_DH|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DH|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DH|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_DH|DOUT\(3),
	combout => \SEG7ALL|SEG7_DH|rascSaida7seg[0]~4_combout\);

-- Location: LCCOMB_X114_Y6_N22
\SEG7ALL|SEG7_DH|rascSaida7seg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DH|rascSaida7seg[1]~9_combout\ = (\SEG7ALL|REGSEG7_DH|DOUT\(2) & (\SEG7ALL|REGSEG7_DH|DOUT\(0) $ (\SEG7ALL|REGSEG7_DH|DOUT\(1) $ (\SEG7ALL|REGSEG7_DH|DOUT\(3))))) # (!\SEG7ALL|REGSEG7_DH|DOUT\(2) & (\SEG7ALL|REGSEG7_DH|DOUT\(0) & 
-- (\SEG7ALL|REGSEG7_DH|DOUT\(1) & \SEG7ALL|REGSEG7_DH|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DH|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DH|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_DH|DOUT\(3),
	combout => \SEG7ALL|SEG7_DH|rascSaida7seg[1]~9_combout\);

-- Location: LCCOMB_X114_Y6_N14
\SEG7ALL|SEG7_DH|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DH|rascSaida7seg[2]~5_combout\ = (\SEG7ALL|REGSEG7_DH|DOUT\(2) & (\SEG7ALL|REGSEG7_DH|DOUT\(3) & ((\SEG7ALL|REGSEG7_DH|DOUT\(1)) # (!\SEG7ALL|REGSEG7_DH|DOUT\(0))))) # (!\SEG7ALL|REGSEG7_DH|DOUT\(2) & (!\SEG7ALL|REGSEG7_DH|DOUT\(0) & 
-- (\SEG7ALL|REGSEG7_DH|DOUT\(1) & !\SEG7ALL|REGSEG7_DH|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DH|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DH|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_DH|DOUT\(3),
	combout => \SEG7ALL|SEG7_DH|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X114_Y6_N28
\SEG7ALL|SEG7_DH|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DH|rascSaida7seg[3]~6_combout\ = (\SEG7ALL|REGSEG7_DH|DOUT\(1) & ((\SEG7ALL|REGSEG7_DH|DOUT\(0) & (\SEG7ALL|REGSEG7_DH|DOUT\(2))) # (!\SEG7ALL|REGSEG7_DH|DOUT\(0) & ((\SEG7ALL|REGSEG7_DH|DOUT\(3)))))) # (!\SEG7ALL|REGSEG7_DH|DOUT\(1) & 
-- (!\SEG7ALL|REGSEG7_DH|DOUT\(3) & (\SEG7ALL|REGSEG7_DH|DOUT\(0) $ (\SEG7ALL|REGSEG7_DH|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DH|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DH|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_DH|DOUT\(3),
	combout => \SEG7ALL|SEG7_DH|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X114_Y6_N10
\SEG7ALL|SEG7_DH|rascSaida7seg[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DH|rascSaida7seg[4]~7_combout\ = (\SEG7ALL|REGSEG7_DH|DOUT\(0) & ((\SEG7ALL|REGSEG7_DH|DOUT\(2) $ (!\SEG7ALL|REGSEG7_DH|DOUT\(1))) # (!\SEG7ALL|REGSEG7_DH|DOUT\(3)))) # (!\SEG7ALL|REGSEG7_DH|DOUT\(0) & (\SEG7ALL|REGSEG7_DH|DOUT\(2) & 
-- (!\SEG7ALL|REGSEG7_DH|DOUT\(1) & !\SEG7ALL|REGSEG7_DH|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DH|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DH|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_DH|DOUT\(3),
	combout => \SEG7ALL|SEG7_DH|rascSaida7seg[4]~7_combout\);

-- Location: LCCOMB_X114_Y6_N0
\SEG7ALL|SEG7_DH|rascSaida7seg[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DH|rascSaida7seg[5]~8_combout\ = (\SEG7ALL|REGSEG7_DH|DOUT\(2) & (\SEG7ALL|REGSEG7_DH|DOUT\(0) & ((\SEG7ALL|REGSEG7_DH|DOUT\(1)) # (\SEG7ALL|REGSEG7_DH|DOUT\(3))))) # (!\SEG7ALL|REGSEG7_DH|DOUT\(2) & (!\SEG7ALL|REGSEG7_DH|DOUT\(3) & 
-- ((\SEG7ALL|REGSEG7_DH|DOUT\(0)) # (\SEG7ALL|REGSEG7_DH|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DH|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DH|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_DH|DOUT\(3),
	combout => \SEG7ALL|SEG7_DH|rascSaida7seg[5]~8_combout\);

-- Location: LCCOMB_X114_Y6_N12
\SEG7ALL|SEG7_DH|rascSaida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DH|rascSaida7seg[6]~10_combout\ = (\SEG7ALL|REGSEG7_DH|DOUT\(2) & ((\SEG7ALL|REGSEG7_DH|DOUT\(0) & (\SEG7ALL|REGSEG7_DH|DOUT\(1))) # (!\SEG7ALL|REGSEG7_DH|DOUT\(0) & (!\SEG7ALL|REGSEG7_DH|DOUT\(1) & \SEG7ALL|REGSEG7_DH|DOUT\(3))))) # 
-- (!\SEG7ALL|REGSEG7_DH|DOUT\(2) & (((!\SEG7ALL|REGSEG7_DH|DOUT\(1) & !\SEG7ALL|REGSEG7_DH|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DH|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DH|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_DH|DOUT\(3),
	combout => \SEG7ALL|SEG7_DH|rascSaida7seg[6]~10_combout\);

-- Location: LCCOMB_X111_Y5_N4
\SEG7ALL|hab_UH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|hab_UH~0_combout\ = (!\CPU|ROM|memROM~26_combout\ & (\CPU|ROM|memROM~31_combout\ & (\DECODER|Habtimer_write~2_combout\ & \CPU|ROM|memROM~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \CPU|ROM|memROM~31_combout\,
	datac => \DECODER|Habtimer_write~2_combout\,
	datad => \CPU|ROM|memROM~57_combout\,
	combout => \SEG7ALL|hab_UH~0_combout\);

-- Location: FF_X111_Y5_N23
\SEG7ALL|REGSEG7_UH|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(0),
	sload => VCC,
	ena => \SEG7ALL|hab_UH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_UH|DOUT\(0));

-- Location: FF_X111_Y5_N9
\SEG7ALL|REGSEG7_UH|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(1),
	sload => VCC,
	ena => \SEG7ALL|hab_UH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_UH|DOUT\(1));

-- Location: LCCOMB_X111_Y5_N26
\SEG7ALL|REGSEG7_UH|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_UH|DOUT[2]~feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(2),
	combout => \SEG7ALL|REGSEG7_UH|DOUT[2]~feeder_combout\);

-- Location: FF_X111_Y5_N27
\SEG7ALL|REGSEG7_UH|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_UH|DOUT[2]~feeder_combout\,
	ena => \SEG7ALL|hab_UH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_UH|DOUT\(2));

-- Location: LCCOMB_X111_Y5_N24
\SEG7ALL|REGSEG7_UH|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_UH|DOUT[3]~feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(3),
	combout => \SEG7ALL|REGSEG7_UH|DOUT[3]~feeder_combout\);

-- Location: FF_X111_Y5_N25
\SEG7ALL|REGSEG7_UH|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_UH|DOUT[3]~feeder_combout\,
	ena => \SEG7ALL|hab_UH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_UH|DOUT\(3));

-- Location: LCCOMB_X111_Y5_N16
\SEG7ALL|SEG7_UH|rascSaida7seg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UH|rascSaida7seg[0]~4_combout\ = (\SEG7ALL|REGSEG7_UH|DOUT\(0) & (\SEG7ALL|REGSEG7_UH|DOUT\(3) $ (((!\SEG7ALL|REGSEG7_UH|DOUT\(1) & !\SEG7ALL|REGSEG7_UH|DOUT\(2)))))) # (!\SEG7ALL|REGSEG7_UH|DOUT\(0) & (!\SEG7ALL|REGSEG7_UH|DOUT\(1) & 
-- (\SEG7ALL|REGSEG7_UH|DOUT\(2) & !\SEG7ALL|REGSEG7_UH|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_UH|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_UH|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_UH|DOUT\(3),
	combout => \SEG7ALL|SEG7_UH|rascSaida7seg[0]~4_combout\);

-- Location: LCCOMB_X111_Y5_N2
\SEG7ALL|SEG7_UH|rascSaida7seg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UH|rascSaida7seg[1]~9_combout\ = (\SEG7ALL|REGSEG7_UH|DOUT\(2) & (\SEG7ALL|REGSEG7_UH|DOUT\(0) $ (\SEG7ALL|REGSEG7_UH|DOUT\(1) $ (\SEG7ALL|REGSEG7_UH|DOUT\(3))))) # (!\SEG7ALL|REGSEG7_UH|DOUT\(2) & (\SEG7ALL|REGSEG7_UH|DOUT\(0) & 
-- (\SEG7ALL|REGSEG7_UH|DOUT\(1) & \SEG7ALL|REGSEG7_UH|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_UH|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_UH|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_UH|DOUT\(3),
	combout => \SEG7ALL|SEG7_UH|rascSaida7seg[1]~9_combout\);

-- Location: LCCOMB_X111_Y5_N8
\SEG7ALL|SEG7_UH|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UH|rascSaida7seg[2]~5_combout\ = (\SEG7ALL|REGSEG7_UH|DOUT\(3) & (\SEG7ALL|REGSEG7_UH|DOUT\(2) & ((\SEG7ALL|REGSEG7_UH|DOUT\(1)) # (!\SEG7ALL|REGSEG7_UH|DOUT\(0))))) # (!\SEG7ALL|REGSEG7_UH|DOUT\(3) & (!\SEG7ALL|REGSEG7_UH|DOUT\(0) & 
-- (\SEG7ALL|REGSEG7_UH|DOUT\(1) & !\SEG7ALL|REGSEG7_UH|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_UH|DOUT\(3),
	datac => \SEG7ALL|REGSEG7_UH|DOUT\(1),
	datad => \SEG7ALL|REGSEG7_UH|DOUT\(2),
	combout => \SEG7ALL|SEG7_UH|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X111_Y5_N30
\SEG7ALL|SEG7_UH|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UH|rascSaida7seg[3]~6_combout\ = (\SEG7ALL|REGSEG7_UH|DOUT\(1) & ((\SEG7ALL|REGSEG7_UH|DOUT\(0) & (\SEG7ALL|REGSEG7_UH|DOUT\(2))) # (!\SEG7ALL|REGSEG7_UH|DOUT\(0) & ((\SEG7ALL|REGSEG7_UH|DOUT\(3)))))) # (!\SEG7ALL|REGSEG7_UH|DOUT\(1) & 
-- (!\SEG7ALL|REGSEG7_UH|DOUT\(3) & (\SEG7ALL|REGSEG7_UH|DOUT\(0) $ (\SEG7ALL|REGSEG7_UH|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_UH|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_UH|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_UH|DOUT\(3),
	combout => \SEG7ALL|SEG7_UH|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X111_Y5_N28
\SEG7ALL|SEG7_UH|rascSaida7seg[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UH|rascSaida7seg[4]~7_combout\ = (\SEG7ALL|REGSEG7_UH|DOUT\(0) & ((\SEG7ALL|REGSEG7_UH|DOUT\(1) $ (!\SEG7ALL|REGSEG7_UH|DOUT\(2))) # (!\SEG7ALL|REGSEG7_UH|DOUT\(3)))) # (!\SEG7ALL|REGSEG7_UH|DOUT\(0) & (!\SEG7ALL|REGSEG7_UH|DOUT\(1) & 
-- (\SEG7ALL|REGSEG7_UH|DOUT\(2) & !\SEG7ALL|REGSEG7_UH|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_UH|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_UH|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_UH|DOUT\(3),
	combout => \SEG7ALL|SEG7_UH|rascSaida7seg[4]~7_combout\);

-- Location: LCCOMB_X111_Y5_N10
\SEG7ALL|SEG7_UH|rascSaida7seg[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UH|rascSaida7seg[5]~8_combout\ = (\SEG7ALL|REGSEG7_UH|DOUT\(1) & ((\SEG7ALL|REGSEG7_UH|DOUT\(2) & (\SEG7ALL|REGSEG7_UH|DOUT\(0))) # (!\SEG7ALL|REGSEG7_UH|DOUT\(2) & ((!\SEG7ALL|REGSEG7_UH|DOUT\(3)))))) # (!\SEG7ALL|REGSEG7_UH|DOUT\(1) & 
-- (\SEG7ALL|REGSEG7_UH|DOUT\(0) & (\SEG7ALL|REGSEG7_UH|DOUT\(2) $ (!\SEG7ALL|REGSEG7_UH|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UH|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_UH|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_UH|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_UH|DOUT\(3),
	combout => \SEG7ALL|SEG7_UH|rascSaida7seg[5]~8_combout\);

-- Location: LCCOMB_X111_Y5_N22
\SEG7ALL|SEG7_UH|rascSaida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UH|rascSaida7seg[6]~10_combout\ = (\SEG7ALL|REGSEG7_UH|DOUT\(2) & ((\SEG7ALL|REGSEG7_UH|DOUT\(1) & (\SEG7ALL|REGSEG7_UH|DOUT\(0))) # (!\SEG7ALL|REGSEG7_UH|DOUT\(1) & (!\SEG7ALL|REGSEG7_UH|DOUT\(0) & \SEG7ALL|REGSEG7_UH|DOUT\(3))))) # 
-- (!\SEG7ALL|REGSEG7_UH|DOUT\(2) & (!\SEG7ALL|REGSEG7_UH|DOUT\(1) & ((!\SEG7ALL|REGSEG7_UH|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UH|DOUT\(2),
	datab => \SEG7ALL|REGSEG7_UH|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_UH|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_UH|DOUT\(3),
	combout => \SEG7ALL|SEG7_UH|rascSaida7seg[6]~10_combout\);

-- Location: LCCOMB_X106_Y6_N10
\SEG7ALL|REGSEG7_DM|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DM|DOUT[0]~feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(0),
	combout => \SEG7ALL|REGSEG7_DM|DOUT[0]~feeder_combout\);

-- Location: LCCOMB_X106_Y6_N16
\SEG7ALL|hab_DM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|hab_DM~0_combout\ = (\DECODER|Habtimer_write~2_combout\ & (!\CPU|ROM|memROM~31_combout\ & (!\CPU|ROM|memROM~26_combout\ & \CPU|ROM|memROM~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DECODER|Habtimer_write~2_combout\,
	datab => \CPU|ROM|memROM~31_combout\,
	datac => \CPU|ROM|memROM~26_combout\,
	datad => \CPU|ROM|memROM~57_combout\,
	combout => \SEG7ALL|hab_DM~0_combout\);

-- Location: FF_X106_Y6_N11
\SEG7ALL|REGSEG7_DM|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DM|DOUT[0]~feeder_combout\,
	ena => \SEG7ALL|hab_DM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DM|DOUT\(0));

-- Location: LCCOMB_X106_Y6_N18
\SEG7ALL|REGSEG7_DM|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DM|DOUT[2]~feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(2),
	combout => \SEG7ALL|REGSEG7_DM|DOUT[2]~feeder_combout\);

-- Location: FF_X106_Y6_N19
\SEG7ALL|REGSEG7_DM|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DM|DOUT[2]~feeder_combout\,
	ena => \SEG7ALL|hab_DM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DM|DOUT\(2));

-- Location: LCCOMB_X106_Y6_N8
\SEG7ALL|REGSEG7_DM|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DM|DOUT[3]~feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(3),
	combout => \SEG7ALL|REGSEG7_DM|DOUT[3]~feeder_combout\);

-- Location: FF_X106_Y6_N9
\SEG7ALL|REGSEG7_DM|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DM|DOUT[3]~feeder_combout\,
	ena => \SEG7ALL|hab_DM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DM|DOUT\(3));

-- Location: LCCOMB_X106_Y6_N12
\SEG7ALL|REGSEG7_DM|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DM|DOUT[1]~feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(1),
	combout => \SEG7ALL|REGSEG7_DM|DOUT[1]~feeder_combout\);

-- Location: FF_X106_Y6_N13
\SEG7ALL|REGSEG7_DM|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DM|DOUT[1]~feeder_combout\,
	ena => \SEG7ALL|hab_DM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DM|DOUT\(1));

-- Location: LCCOMB_X106_Y6_N4
\SEG7ALL|SEG7_DM|rascSaida7seg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DM|rascSaida7seg[0]~4_combout\ = (\SEG7ALL|REGSEG7_DM|DOUT\(0) & (\SEG7ALL|REGSEG7_DM|DOUT\(3) $ (((!\SEG7ALL|REGSEG7_DM|DOUT\(2) & !\SEG7ALL|REGSEG7_DM|DOUT\(1)))))) # (!\SEG7ALL|REGSEG7_DM|DOUT\(0) & (\SEG7ALL|REGSEG7_DM|DOUT\(2) & 
-- (!\SEG7ALL|REGSEG7_DM|DOUT\(3) & !\SEG7ALL|REGSEG7_DM|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DM|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DM|DOUT\(3),
	datad => \SEG7ALL|REGSEG7_DM|DOUT\(1),
	combout => \SEG7ALL|SEG7_DM|rascSaida7seg[0]~4_combout\);

-- Location: LCCOMB_X106_Y6_N6
\SEG7ALL|SEG7_DM|rascSaida7seg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DM|rascSaida7seg[1]~9_combout\ = (\SEG7ALL|REGSEG7_DM|DOUT\(2) & (\SEG7ALL|REGSEG7_DM|DOUT\(0) $ (\SEG7ALL|REGSEG7_DM|DOUT\(3) $ (\SEG7ALL|REGSEG7_DM|DOUT\(1))))) # (!\SEG7ALL|REGSEG7_DM|DOUT\(2) & (\SEG7ALL|REGSEG7_DM|DOUT\(0) & 
-- (\SEG7ALL|REGSEG7_DM|DOUT\(3) & \SEG7ALL|REGSEG7_DM|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DM|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DM|DOUT\(3),
	datad => \SEG7ALL|REGSEG7_DM|DOUT\(1),
	combout => \SEG7ALL|SEG7_DM|rascSaida7seg[1]~9_combout\);

-- Location: LCCOMB_X106_Y6_N2
\SEG7ALL|SEG7_DM|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DM|rascSaida7seg[2]~5_combout\ = (\SEG7ALL|REGSEG7_DM|DOUT\(2) & (\SEG7ALL|REGSEG7_DM|DOUT\(3) & ((\SEG7ALL|REGSEG7_DM|DOUT\(1)) # (!\SEG7ALL|REGSEG7_DM|DOUT\(0))))) # (!\SEG7ALL|REGSEG7_DM|DOUT\(2) & (!\SEG7ALL|REGSEG7_DM|DOUT\(0) & 
-- (!\SEG7ALL|REGSEG7_DM|DOUT\(3) & \SEG7ALL|REGSEG7_DM|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DM|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DM|DOUT\(3),
	datad => \SEG7ALL|REGSEG7_DM|DOUT\(1),
	combout => \SEG7ALL|SEG7_DM|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X106_Y6_N28
\SEG7ALL|SEG7_DM|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DM|rascSaida7seg[3]~6_combout\ = (\SEG7ALL|REGSEG7_DM|DOUT\(1) & ((\SEG7ALL|REGSEG7_DM|DOUT\(0) & (\SEG7ALL|REGSEG7_DM|DOUT\(2))) # (!\SEG7ALL|REGSEG7_DM|DOUT\(0) & ((\SEG7ALL|REGSEG7_DM|DOUT\(3)))))) # (!\SEG7ALL|REGSEG7_DM|DOUT\(1) & 
-- (!\SEG7ALL|REGSEG7_DM|DOUT\(3) & (\SEG7ALL|REGSEG7_DM|DOUT\(0) $ (\SEG7ALL|REGSEG7_DM|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DM|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DM|DOUT\(3),
	datad => \SEG7ALL|REGSEG7_DM|DOUT\(1),
	combout => \SEG7ALL|SEG7_DM|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X106_Y6_N22
\SEG7ALL|SEG7_DM|rascSaida7seg[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DM|rascSaida7seg[4]~7_combout\ = (\SEG7ALL|REGSEG7_DM|DOUT\(0) & ((\SEG7ALL|REGSEG7_DM|DOUT\(2) $ (!\SEG7ALL|REGSEG7_DM|DOUT\(1))) # (!\SEG7ALL|REGSEG7_DM|DOUT\(3)))) # (!\SEG7ALL|REGSEG7_DM|DOUT\(0) & (\SEG7ALL|REGSEG7_DM|DOUT\(2) & 
-- (!\SEG7ALL|REGSEG7_DM|DOUT\(3) & !\SEG7ALL|REGSEG7_DM|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DM|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DM|DOUT\(3),
	datad => \SEG7ALL|REGSEG7_DM|DOUT\(1),
	combout => \SEG7ALL|SEG7_DM|rascSaida7seg[4]~7_combout\);

-- Location: LCCOMB_X106_Y6_N24
\SEG7ALL|SEG7_DM|rascSaida7seg[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DM|rascSaida7seg[5]~8_combout\ = (\SEG7ALL|REGSEG7_DM|DOUT\(2) & (\SEG7ALL|REGSEG7_DM|DOUT\(0) & ((\SEG7ALL|REGSEG7_DM|DOUT\(3)) # (\SEG7ALL|REGSEG7_DM|DOUT\(1))))) # (!\SEG7ALL|REGSEG7_DM|DOUT\(2) & (!\SEG7ALL|REGSEG7_DM|DOUT\(3) & 
-- ((\SEG7ALL|REGSEG7_DM|DOUT\(0)) # (\SEG7ALL|REGSEG7_DM|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DM|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DM|DOUT\(3),
	datad => \SEG7ALL|REGSEG7_DM|DOUT\(1),
	combout => \SEG7ALL|SEG7_DM|rascSaida7seg[5]~8_combout\);

-- Location: LCCOMB_X106_Y6_N20
\SEG7ALL|SEG7_DM|rascSaida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DM|rascSaida7seg[6]~10_combout\ = (\SEG7ALL|REGSEG7_DM|DOUT\(2) & ((\SEG7ALL|REGSEG7_DM|DOUT\(0) & ((\SEG7ALL|REGSEG7_DM|DOUT\(1)))) # (!\SEG7ALL|REGSEG7_DM|DOUT\(0) & (\SEG7ALL|REGSEG7_DM|DOUT\(3) & !\SEG7ALL|REGSEG7_DM|DOUT\(1))))) # 
-- (!\SEG7ALL|REGSEG7_DM|DOUT\(2) & (((!\SEG7ALL|REGSEG7_DM|DOUT\(3) & !\SEG7ALL|REGSEG7_DM|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DM|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_DM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_DM|DOUT\(3),
	datad => \SEG7ALL|REGSEG7_DM|DOUT\(1),
	combout => \SEG7ALL|SEG7_DM|rascSaida7seg[6]~10_combout\);

-- Location: LCCOMB_X106_Y5_N4
\SEG7ALL|REGSEG7_UM|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_UM|DOUT[3]~feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(3),
	combout => \SEG7ALL|REGSEG7_UM|DOUT[3]~feeder_combout\);

-- Location: LCCOMB_X106_Y5_N14
\SEG7ALL|hab_UM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|hab_UM~0_combout\ = (\CPU|ROM|memROM~26_combout\ & (\CPU|ROM|memROM~31_combout\ & (!\CPU|ROM|memROM~57_combout\ & \DECODER|Habtimer_write~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \CPU|ROM|memROM~31_combout\,
	datac => \CPU|ROM|memROM~57_combout\,
	datad => \DECODER|Habtimer_write~2_combout\,
	combout => \SEG7ALL|hab_UM~0_combout\);

-- Location: FF_X106_Y5_N5
\SEG7ALL|REGSEG7_UM|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_UM|DOUT[3]~feeder_combout\,
	ena => \SEG7ALL|hab_UM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_UM|DOUT\(3));

-- Location: LCCOMB_X106_Y5_N18
\SEG7ALL|REGSEG7_UM|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_UM|DOUT[2]~feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CPU|ACU|DOUT\(2),
	combout => \SEG7ALL|REGSEG7_UM|DOUT[2]~feeder_combout\);

-- Location: FF_X106_Y5_N19
\SEG7ALL|REGSEG7_UM|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_UM|DOUT[2]~feeder_combout\,
	ena => \SEG7ALL|hab_UM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_UM|DOUT\(2));

-- Location: LCCOMB_X106_Y5_N10
\SEG7ALL|REGSEG7_UM|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_UM|DOUT[0]~feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(0),
	combout => \SEG7ALL|REGSEG7_UM|DOUT[0]~feeder_combout\);

-- Location: FF_X106_Y5_N11
\SEG7ALL|REGSEG7_UM|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_UM|DOUT[0]~feeder_combout\,
	ena => \SEG7ALL|hab_UM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_UM|DOUT\(0));

-- Location: LCCOMB_X106_Y5_N24
\SEG7ALL|REGSEG7_UM|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_UM|DOUT[1]~feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(1),
	combout => \SEG7ALL|REGSEG7_UM|DOUT[1]~feeder_combout\);

-- Location: FF_X106_Y5_N25
\SEG7ALL|REGSEG7_UM|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_UM|DOUT[1]~feeder_combout\,
	ena => \SEG7ALL|hab_UM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_UM|DOUT\(1));

-- Location: LCCOMB_X105_Y5_N24
\SEG7ALL|SEG7_UM|rascSaida7seg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UM|rascSaida7seg[0]~4_combout\ = (\SEG7ALL|REGSEG7_UM|DOUT\(3) & (\SEG7ALL|REGSEG7_UM|DOUT\(0) & ((\SEG7ALL|REGSEG7_UM|DOUT\(2)) # (\SEG7ALL|REGSEG7_UM|DOUT\(1))))) # (!\SEG7ALL|REGSEG7_UM|DOUT\(3) & (!\SEG7ALL|REGSEG7_UM|DOUT\(1) & 
-- (\SEG7ALL|REGSEG7_UM|DOUT\(2) $ (\SEG7ALL|REGSEG7_UM|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UM|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_UM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_UM|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_UM|DOUT\(1),
	combout => \SEG7ALL|SEG7_UM|rascSaida7seg[0]~4_combout\);

-- Location: LCCOMB_X105_Y5_N10
\SEG7ALL|SEG7_UM|rascSaida7seg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UM|rascSaida7seg[1]~9_combout\ = (\SEG7ALL|REGSEG7_UM|DOUT\(2) & (\SEG7ALL|REGSEG7_UM|DOUT\(3) $ (\SEG7ALL|REGSEG7_UM|DOUT\(0) $ (\SEG7ALL|REGSEG7_UM|DOUT\(1))))) # (!\SEG7ALL|REGSEG7_UM|DOUT\(2) & (\SEG7ALL|REGSEG7_UM|DOUT\(3) & 
-- (\SEG7ALL|REGSEG7_UM|DOUT\(0) & \SEG7ALL|REGSEG7_UM|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UM|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_UM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_UM|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_UM|DOUT\(1),
	combout => \SEG7ALL|SEG7_UM|rascSaida7seg[1]~9_combout\);

-- Location: LCCOMB_X105_Y5_N30
\SEG7ALL|SEG7_UM|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UM|rascSaida7seg[2]~5_combout\ = (\SEG7ALL|REGSEG7_UM|DOUT\(3) & (\SEG7ALL|REGSEG7_UM|DOUT\(2) & ((\SEG7ALL|REGSEG7_UM|DOUT\(1)) # (!\SEG7ALL|REGSEG7_UM|DOUT\(0))))) # (!\SEG7ALL|REGSEG7_UM|DOUT\(3) & (!\SEG7ALL|REGSEG7_UM|DOUT\(2) & 
-- (!\SEG7ALL|REGSEG7_UM|DOUT\(0) & \SEG7ALL|REGSEG7_UM|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UM|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_UM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_UM|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_UM|DOUT\(1),
	combout => \SEG7ALL|SEG7_UM|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X105_Y5_N12
\SEG7ALL|SEG7_UM|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UM|rascSaida7seg[3]~6_combout\ = (\SEG7ALL|REGSEG7_UM|DOUT\(1) & ((\SEG7ALL|REGSEG7_UM|DOUT\(0) & ((\SEG7ALL|REGSEG7_UM|DOUT\(2)))) # (!\SEG7ALL|REGSEG7_UM|DOUT\(0) & (\SEG7ALL|REGSEG7_UM|DOUT\(3))))) # (!\SEG7ALL|REGSEG7_UM|DOUT\(1) & 
-- (!\SEG7ALL|REGSEG7_UM|DOUT\(3) & (\SEG7ALL|REGSEG7_UM|DOUT\(2) $ (\SEG7ALL|REGSEG7_UM|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UM|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_UM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_UM|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_UM|DOUT\(1),
	combout => \SEG7ALL|SEG7_UM|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X105_Y5_N14
\SEG7ALL|SEG7_UM|rascSaida7seg[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UM|rascSaida7seg[4]~7_combout\ = (\SEG7ALL|REGSEG7_UM|DOUT\(3) & (\SEG7ALL|REGSEG7_UM|DOUT\(0) & (\SEG7ALL|REGSEG7_UM|DOUT\(2) $ (!\SEG7ALL|REGSEG7_UM|DOUT\(1))))) # (!\SEG7ALL|REGSEG7_UM|DOUT\(3) & ((\SEG7ALL|REGSEG7_UM|DOUT\(0)) # 
-- ((\SEG7ALL|REGSEG7_UM|DOUT\(2) & !\SEG7ALL|REGSEG7_UM|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UM|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_UM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_UM|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_UM|DOUT\(1),
	combout => \SEG7ALL|SEG7_UM|rascSaida7seg[4]~7_combout\);

-- Location: LCCOMB_X105_Y5_N20
\SEG7ALL|SEG7_UM|rascSaida7seg[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UM|rascSaida7seg[5]~8_combout\ = (\SEG7ALL|REGSEG7_UM|DOUT\(2) & (\SEG7ALL|REGSEG7_UM|DOUT\(0) & ((\SEG7ALL|REGSEG7_UM|DOUT\(3)) # (\SEG7ALL|REGSEG7_UM|DOUT\(1))))) # (!\SEG7ALL|REGSEG7_UM|DOUT\(2) & (!\SEG7ALL|REGSEG7_UM|DOUT\(3) & 
-- ((\SEG7ALL|REGSEG7_UM|DOUT\(0)) # (\SEG7ALL|REGSEG7_UM|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UM|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_UM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_UM|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_UM|DOUT\(1),
	combout => \SEG7ALL|SEG7_UM|rascSaida7seg[5]~8_combout\);

-- Location: LCCOMB_X105_Y5_N4
\SEG7ALL|SEG7_UM|rascSaida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_UM|rascSaida7seg[6]~10_combout\ = (\SEG7ALL|REGSEG7_UM|DOUT\(2) & ((\SEG7ALL|REGSEG7_UM|DOUT\(0) & ((\SEG7ALL|REGSEG7_UM|DOUT\(1)))) # (!\SEG7ALL|REGSEG7_UM|DOUT\(0) & (\SEG7ALL|REGSEG7_UM|DOUT\(3) & !\SEG7ALL|REGSEG7_UM|DOUT\(1))))) # 
-- (!\SEG7ALL|REGSEG7_UM|DOUT\(2) & (!\SEG7ALL|REGSEG7_UM|DOUT\(3) & ((!\SEG7ALL|REGSEG7_UM|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_UM|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_UM|DOUT\(2),
	datac => \SEG7ALL|REGSEG7_UM|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_UM|DOUT\(1),
	combout => \SEG7ALL|SEG7_UM|rascSaida7seg[6]~10_combout\);

-- Location: LCCOMB_X109_Y4_N12
\SEG7ALL|REGSEG7_DS|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DS|DOUT[3]~feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(3),
	combout => \SEG7ALL|REGSEG7_DS|DOUT[3]~feeder_combout\);

-- Location: LCCOMB_X109_Y4_N26
\SEG7ALL|hab_DS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|hab_DS~0_combout\ = (!\CPU|ROM|memROM~31_combout\ & (\CPU|ROM|memROM~26_combout\ & (\DECODER|Habtimer_write~2_combout\ & !\CPU|ROM|memROM~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~31_combout\,
	datab => \CPU|ROM|memROM~26_combout\,
	datac => \DECODER|Habtimer_write~2_combout\,
	datad => \CPU|ROM|memROM~57_combout\,
	combout => \SEG7ALL|hab_DS~0_combout\);

-- Location: FF_X109_Y4_N13
\SEG7ALL|REGSEG7_DS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DS|DOUT[3]~feeder_combout\,
	ena => \SEG7ALL|hab_DS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DS|DOUT\(3));

-- Location: LCCOMB_X109_Y4_N28
\SEG7ALL|REGSEG7_DS|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DS|DOUT[1]~feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(1),
	combout => \SEG7ALL|REGSEG7_DS|DOUT[1]~feeder_combout\);

-- Location: FF_X109_Y4_N29
\SEG7ALL|REGSEG7_DS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DS|DOUT[1]~feeder_combout\,
	ena => \SEG7ALL|hab_DS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DS|DOUT\(1));

-- Location: LCCOMB_X109_Y4_N30
\SEG7ALL|REGSEG7_DS|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DS|DOUT[0]~feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(0),
	combout => \SEG7ALL|REGSEG7_DS|DOUT[0]~feeder_combout\);

-- Location: FF_X109_Y4_N31
\SEG7ALL|REGSEG7_DS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DS|DOUT[0]~feeder_combout\,
	ena => \SEG7ALL|hab_DS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DS|DOUT\(0));

-- Location: LCCOMB_X109_Y4_N18
\SEG7ALL|REGSEG7_DS|DOUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_DS|DOUT[2]~feeder_combout\ = \CPU|ACU|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(2),
	combout => \SEG7ALL|REGSEG7_DS|DOUT[2]~feeder_combout\);

-- Location: FF_X109_Y4_N19
\SEG7ALL|REGSEG7_DS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_DS|DOUT[2]~feeder_combout\,
	ena => \SEG7ALL|hab_DS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_DS|DOUT\(2));

-- Location: LCCOMB_X109_Y4_N24
\SEG7ALL|SEG7_DS|rascSaida7seg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[0]~4_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(3) & (\SEG7ALL|REGSEG7_DS|DOUT\(0) & ((\SEG7ALL|REGSEG7_DS|DOUT\(1)) # (\SEG7ALL|REGSEG7_DS|DOUT\(2))))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(3) & (!\SEG7ALL|REGSEG7_DS|DOUT\(1) & 
-- (\SEG7ALL|REGSEG7_DS|DOUT\(0) $ (\SEG7ALL|REGSEG7_DS|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[0]~4_combout\);

-- Location: LCCOMB_X109_Y4_N16
\SEG7ALL|SEG7_DS|rascSaida7seg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[1]~9_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(2) & (\SEG7ALL|REGSEG7_DS|DOUT\(3) $ (\SEG7ALL|REGSEG7_DS|DOUT\(1) $ (\SEG7ALL|REGSEG7_DS|DOUT\(0))))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(2) & (\SEG7ALL|REGSEG7_DS|DOUT\(3) & 
-- (\SEG7ALL|REGSEG7_DS|DOUT\(1) & \SEG7ALL|REGSEG7_DS|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[1]~9_combout\);

-- Location: LCCOMB_X109_Y4_N6
\SEG7ALL|SEG7_DS|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[2]~5_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(3) & (\SEG7ALL|REGSEG7_DS|DOUT\(2) & ((\SEG7ALL|REGSEG7_DS|DOUT\(1)) # (!\SEG7ALL|REGSEG7_DS|DOUT\(0))))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(3) & (\SEG7ALL|REGSEG7_DS|DOUT\(1) & 
-- (!\SEG7ALL|REGSEG7_DS|DOUT\(0) & !\SEG7ALL|REGSEG7_DS|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X109_Y4_N20
\SEG7ALL|SEG7_DS|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[3]~6_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(1) & ((\SEG7ALL|REGSEG7_DS|DOUT\(0) & ((\SEG7ALL|REGSEG7_DS|DOUT\(2)))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(0) & (\SEG7ALL|REGSEG7_DS|DOUT\(3))))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(1) & 
-- (!\SEG7ALL|REGSEG7_DS|DOUT\(3) & (\SEG7ALL|REGSEG7_DS|DOUT\(0) $ (\SEG7ALL|REGSEG7_DS|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X109_Y4_N10
\SEG7ALL|SEG7_DS|rascSaida7seg[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[4]~7_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(3) & (\SEG7ALL|REGSEG7_DS|DOUT\(0) & (\SEG7ALL|REGSEG7_DS|DOUT\(1) $ (!\SEG7ALL|REGSEG7_DS|DOUT\(2))))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(3) & ((\SEG7ALL|REGSEG7_DS|DOUT\(0)) # 
-- ((!\SEG7ALL|REGSEG7_DS|DOUT\(1) & \SEG7ALL|REGSEG7_DS|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[4]~7_combout\);

-- Location: LCCOMB_X109_Y4_N4
\SEG7ALL|SEG7_DS|rascSaida7seg[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[5]~8_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(1) & ((\SEG7ALL|REGSEG7_DS|DOUT\(2) & ((\SEG7ALL|REGSEG7_DS|DOUT\(0)))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(2) & (!\SEG7ALL|REGSEG7_DS|DOUT\(3))))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(1) & 
-- (\SEG7ALL|REGSEG7_DS|DOUT\(0) & (\SEG7ALL|REGSEG7_DS|DOUT\(3) $ (!\SEG7ALL|REGSEG7_DS|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[5]~8_combout\);

-- Location: LCCOMB_X109_Y4_N14
\SEG7ALL|SEG7_DS|rascSaida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_DS|rascSaida7seg[6]~10_combout\ = (\SEG7ALL|REGSEG7_DS|DOUT\(1) & (((\SEG7ALL|REGSEG7_DS|DOUT\(0) & \SEG7ALL|REGSEG7_DS|DOUT\(2))))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(1) & ((\SEG7ALL|REGSEG7_DS|DOUT\(3) & (!\SEG7ALL|REGSEG7_DS|DOUT\(0) & 
-- \SEG7ALL|REGSEG7_DS|DOUT\(2))) # (!\SEG7ALL|REGSEG7_DS|DOUT\(3) & ((!\SEG7ALL|REGSEG7_DS|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_DS|DOUT\(3),
	datab => \SEG7ALL|REGSEG7_DS|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_DS|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_DS|DOUT\(2),
	combout => \SEG7ALL|SEG7_DS|rascSaida7seg[6]~10_combout\);

-- Location: LCCOMB_X106_Y5_N16
\SEG7ALL|hab_US~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|hab_US~0_combout\ = (!\CPU|ROM|memROM~26_combout\ & (!\CPU|ROM|memROM~57_combout\ & (\CPU|ROM|memROM~31_combout\ & \DECODER|Habtimer_write~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ROM|memROM~26_combout\,
	datab => \CPU|ROM|memROM~57_combout\,
	datac => \CPU|ROM|memROM~31_combout\,
	datad => \DECODER|Habtimer_write~2_combout\,
	combout => \SEG7ALL|hab_US~0_combout\);

-- Location: FF_X106_Y5_N7
\SEG7ALL|REGSEG7_US|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \CPU|ACU|DOUT\(2),
	sload => VCC,
	ena => \SEG7ALL|hab_US~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_US|DOUT\(2));

-- Location: LCCOMB_X106_Y5_N20
\SEG7ALL|REGSEG7_US|DOUT[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_US|DOUT[1]~feeder_combout\ = \CPU|ACU|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(1),
	combout => \SEG7ALL|REGSEG7_US|DOUT[1]~feeder_combout\);

-- Location: FF_X106_Y5_N21
\SEG7ALL|REGSEG7_US|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_US|DOUT[1]~feeder_combout\,
	ena => \SEG7ALL|hab_US~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_US|DOUT\(1));

-- Location: LCCOMB_X106_Y5_N22
\SEG7ALL|REGSEG7_US|DOUT[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_US|DOUT[0]~feeder_combout\ = \CPU|ACU|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(0),
	combout => \SEG7ALL|REGSEG7_US|DOUT[0]~feeder_combout\);

-- Location: FF_X106_Y5_N23
\SEG7ALL|REGSEG7_US|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_US|DOUT[0]~feeder_combout\,
	ena => \SEG7ALL|hab_US~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_US|DOUT\(0));

-- Location: LCCOMB_X106_Y5_N0
\SEG7ALL|REGSEG7_US|DOUT[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|REGSEG7_US|DOUT[3]~feeder_combout\ = \CPU|ACU|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ACU|DOUT\(3),
	combout => \SEG7ALL|REGSEG7_US|DOUT[3]~feeder_combout\);

-- Location: FF_X106_Y5_N1
\SEG7ALL|REGSEG7_US|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \SEG7ALL|REGSEG7_US|DOUT[3]~feeder_combout\,
	ena => \SEG7ALL|hab_US~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SEG7ALL|REGSEG7_US|DOUT\(3));

-- Location: LCCOMB_X106_Y5_N28
\SEG7ALL|SEG7_US|rascSaida7seg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[0]~4_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(0) & (\SEG7ALL|REGSEG7_US|DOUT\(3) $ (((!\SEG7ALL|REGSEG7_US|DOUT\(2) & !\SEG7ALL|REGSEG7_US|DOUT\(1)))))) # (!\SEG7ALL|REGSEG7_US|DOUT\(0) & (\SEG7ALL|REGSEG7_US|DOUT\(2) & 
-- (!\SEG7ALL|REGSEG7_US|DOUT\(1) & !\SEG7ALL|REGSEG7_US|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(3),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[0]~4_combout\);

-- Location: LCCOMB_X106_Y5_N6
\SEG7ALL|SEG7_US|rascSaida7seg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[1]~9_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(2) & (\SEG7ALL|REGSEG7_US|DOUT\(0) $ (\SEG7ALL|REGSEG7_US|DOUT\(1) $ (\SEG7ALL|REGSEG7_US|DOUT\(3))))) # (!\SEG7ALL|REGSEG7_US|DOUT\(2) & (\SEG7ALL|REGSEG7_US|DOUT\(0) & 
-- (\SEG7ALL|REGSEG7_US|DOUT\(1) & \SEG7ALL|REGSEG7_US|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(0),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(3),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[1]~9_combout\);

-- Location: LCCOMB_X106_Y5_N26
\SEG7ALL|SEG7_US|rascSaida7seg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[2]~5_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(2) & (\SEG7ALL|REGSEG7_US|DOUT\(3) & ((\SEG7ALL|REGSEG7_US|DOUT\(1)) # (!\SEG7ALL|REGSEG7_US|DOUT\(0))))) # (!\SEG7ALL|REGSEG7_US|DOUT\(2) & (\SEG7ALL|REGSEG7_US|DOUT\(1) & 
-- (!\SEG7ALL|REGSEG7_US|DOUT\(0) & !\SEG7ALL|REGSEG7_US|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(3),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[2]~5_combout\);

-- Location: LCCOMB_X106_Y5_N12
\SEG7ALL|SEG7_US|rascSaida7seg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[3]~6_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(1) & ((\SEG7ALL|REGSEG7_US|DOUT\(0) & (\SEG7ALL|REGSEG7_US|DOUT\(2))) # (!\SEG7ALL|REGSEG7_US|DOUT\(0) & ((\SEG7ALL|REGSEG7_US|DOUT\(3)))))) # (!\SEG7ALL|REGSEG7_US|DOUT\(1) & 
-- (!\SEG7ALL|REGSEG7_US|DOUT\(3) & (\SEG7ALL|REGSEG7_US|DOUT\(2) $ (\SEG7ALL|REGSEG7_US|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(3),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[3]~6_combout\);

-- Location: LCCOMB_X106_Y5_N2
\SEG7ALL|SEG7_US|rascSaida7seg[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[4]~7_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(2) & ((\SEG7ALL|REGSEG7_US|DOUT\(1) & (\SEG7ALL|REGSEG7_US|DOUT\(0))) # (!\SEG7ALL|REGSEG7_US|DOUT\(1) & ((!\SEG7ALL|REGSEG7_US|DOUT\(3)))))) # (!\SEG7ALL|REGSEG7_US|DOUT\(2) & 
-- (\SEG7ALL|REGSEG7_US|DOUT\(0) & ((!\SEG7ALL|REGSEG7_US|DOUT\(3)) # (!\SEG7ALL|REGSEG7_US|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(3),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[4]~7_combout\);

-- Location: LCCOMB_X106_Y5_N8
\SEG7ALL|SEG7_US|rascSaida7seg[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[5]~8_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(2) & (\SEG7ALL|REGSEG7_US|DOUT\(0) & ((\SEG7ALL|REGSEG7_US|DOUT\(1)) # (\SEG7ALL|REGSEG7_US|DOUT\(3))))) # (!\SEG7ALL|REGSEG7_US|DOUT\(2) & (!\SEG7ALL|REGSEG7_US|DOUT\(3) & 
-- ((\SEG7ALL|REGSEG7_US|DOUT\(1)) # (\SEG7ALL|REGSEG7_US|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(3),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[5]~8_combout\);

-- Location: LCCOMB_X106_Y5_N30
\SEG7ALL|SEG7_US|rascSaida7seg[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SEG7ALL|SEG7_US|rascSaida7seg[6]~10_combout\ = (\SEG7ALL|REGSEG7_US|DOUT\(2) & ((\SEG7ALL|REGSEG7_US|DOUT\(1) & (\SEG7ALL|REGSEG7_US|DOUT\(0))) # (!\SEG7ALL|REGSEG7_US|DOUT\(1) & (!\SEG7ALL|REGSEG7_US|DOUT\(0) & \SEG7ALL|REGSEG7_US|DOUT\(3))))) # 
-- (!\SEG7ALL|REGSEG7_US|DOUT\(2) & (!\SEG7ALL|REGSEG7_US|DOUT\(1) & ((!\SEG7ALL|REGSEG7_US|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEG7ALL|REGSEG7_US|DOUT\(2),
	datab => \SEG7ALL|REGSEG7_US|DOUT\(1),
	datac => \SEG7ALL|REGSEG7_US|DOUT\(0),
	datad => \SEG7ALL|REGSEG7_US|DOUT\(3),
	combout => \SEG7ALL|SEG7_US|rascSaida7seg[6]~10_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_DADO(0) <= \DADO[0]~output_o\;

ww_DADO(1) <= \DADO[1]~output_o\;

ww_DADO(2) <= \DADO[2]~output_o\;

ww_DADO(3) <= \DADO[3]~output_o\;

ww_RAM_DADO(0) <= \RAM_DADO[0]~output_o\;

ww_RAM_DADO(1) <= \RAM_DADO[1]~output_o\;

ww_RAM_DADO(2) <= \RAM_DADO[2]~output_o\;

ww_RAM_DADO(3) <= \RAM_DADO[3]~output_o\;

ww_ENDERECO(0) <= \ENDERECO[0]~output_o\;

ww_ENDERECO(1) <= \ENDERECO[1]~output_o\;

ww_ENDERECO(2) <= \ENDERECO[2]~output_o\;

ww_ENDERECO(3) <= \ENDERECO[3]~output_o\;

ww_ENDERECO(4) <= \ENDERECO[4]~output_o\;

ww_ENDERECO(5) <= \ENDERECO[5]~output_o\;

ww_ENDERECO(6) <= \ENDERECO[6]~output_o\;

ww_ENDERECO(7) <= \ENDERECO[7]~output_o\;

ww_WENABLE <= \WENABLE~output_o\;
END structure;


