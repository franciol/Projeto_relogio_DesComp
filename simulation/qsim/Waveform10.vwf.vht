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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/08/2019 09:33:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          relogio
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY relogio_vhd_vec_tst IS
END relogio_vhd_vec_tst;
ARCHITECTURE relogio_arch OF relogio_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_OUT : STD_LOGIC;
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL DATA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ENDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HAB7SEG_OUT : STD_LOGIC;
SIGNAL HAB_IO_OUT : STD_LOGIC;
SIGNAL HABRAM_OUT : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX6 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SW0 : STD_LOGIC;
COMPONENT relogio
	PORT (
	CLK_OUT : OUT STD_LOGIC;
	CLOCK_50 : IN STD_LOGIC;
	DATA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ENDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HAB7SEG_OUT : OUT STD_LOGIC;
	HAB_IO_OUT : OUT STD_LOGIC;
	HABRAM_OUT : OUT STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX6 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SW0 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : relogio
	PORT MAP (
-- list connections between master ports and signals
	CLK_OUT => CLK_OUT,
	CLOCK_50 => CLOCK_50,
	DATA => DATA,
	ENDR => ENDR,
	HAB7SEG_OUT => HAB7SEG_OUT,
	HAB_IO_OUT => HAB_IO_OUT,
	HABRAM_OUT => HABRAM_OUT,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	HEX6 => HEX6,
	HEX7 => HEX7,
	SW0 => SW0
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 500 ps;
	CLOCK_50 <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;

-- SW0
t_prcs_SW0: PROCESS
BEGIN
	SW0 <= '1';
	WAIT FOR 250000 ps;
	SW0 <= '0';
	WAIT FOR 250000 ps;
	SW0 <= '1';
	WAIT FOR 250000 ps;
	SW0 <= '0';
WAIT;
END PROCESS t_prcs_SW0;
END relogio_arch;
