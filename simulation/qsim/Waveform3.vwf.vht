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
-- Generated on "10/07/2019 09:53:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cpu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cpu_vhd_vec_tst IS
END cpu_vhd_vec_tst;
ARCHITECTURE cpu_arch OF cpu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL barramentoDadosEntrada : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL barramentoDadosSaida : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL barramentoEnderecos : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL readEnable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL writeEnable : STD_LOGIC;
COMPONENT cpu
	PORT (
	barramentoDadosEntrada : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	barramentoDadosSaida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	barramentoEnderecos : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	readEnable : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	writeEnable : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : cpu
	PORT MAP (
-- list connections between master ports and signals
	barramentoDadosEntrada => barramentoDadosEntrada,
	barramentoDadosSaida => barramentoDadosSaida,
	barramentoEnderecos => barramentoEnderecos,
	clk => clk,
	readEnable => readEnable,
	reset => reset,
	writeEnable => writeEnable
	);

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- barramentoDadosEntrada[3]
t_prcs_barramentoDadosEntrada_3: PROCESS
BEGIN
	barramentoDadosEntrada(3) <= '0';
WAIT;
END PROCESS t_prcs_barramentoDadosEntrada_3;
-- barramentoDadosEntrada[2]
t_prcs_barramentoDadosEntrada_2: PROCESS
BEGIN
	barramentoDadosEntrada(2) <= '0';
WAIT;
END PROCESS t_prcs_barramentoDadosEntrada_2;
-- barramentoDadosEntrada[1]
t_prcs_barramentoDadosEntrada_1: PROCESS
BEGIN
	barramentoDadosEntrada(1) <= '0';
WAIT;
END PROCESS t_prcs_barramentoDadosEntrada_1;
-- barramentoDadosEntrada[0]
t_prcs_barramentoDadosEntrada_0: PROCESS
BEGIN
	barramentoDadosEntrada(0) <= '0';
WAIT;
END PROCESS t_prcs_barramentoDadosEntrada_0;
END cpu_arch;
