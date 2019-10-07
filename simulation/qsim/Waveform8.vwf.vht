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
-- Generated on "10/07/2019 13:35:13"
                                                             
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
SIGNAL CLK_EXT : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL saida7seg_DH : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL saida7seg_DM : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL saida7seg_DS : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL saida7seg_UH : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL saida7seg_UM : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL saida7seg_US : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT relogio
	PORT (
	CLK_EXT : IN STD_LOGIC;
	RESET : IN STD_LOGIC;
	saida7seg_DH : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	saida7seg_DM : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	saida7seg_DS : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	saida7seg_UH : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	saida7seg_UM : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	saida7seg_US : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : relogio
	PORT MAP (
-- list connections between master ports and signals
	CLK_EXT => CLK_EXT,
	RESET => RESET,
	saida7seg_DH => saida7seg_DH,
	saida7seg_DM => saida7seg_DM,
	saida7seg_DS => saida7seg_DS,
	saida7seg_UH => saida7seg_UH,
	saida7seg_UM => saida7seg_UM,
	saida7seg_US => saida7seg_US
	);

-- CLK_EXT
t_prcs_CLK_EXT: PROCESS
BEGIN
LOOP
	CLK_EXT <= '0';
	WAIT FOR 5000 ps;
	CLK_EXT <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_EXT;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;
END relogio_arch;
