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
-- Generated on "10/07/2019 11:59:05"
                                                             
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
SIGNAL ENTRADA_A : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ENTRADA_B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL hab_AND1 : STD_LOGIC;
SIGNAL PCC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL readEnable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL saida_AND1 : STD_LOGIC;
SIGNAL SAIDA_ULA_OUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL writeEnable : STD_LOGIC;
COMPONENT cpu
	PORT (
	barramentoDadosEntrada : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	barramentoDadosSaida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	barramentoEnderecos : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	ENTRADA_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ENTRADA_B : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	hab_AND1 : OUT STD_LOGIC;
	PCC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	readEnable : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	saida_AND1 : OUT STD_LOGIC;
	SAIDA_ULA_OUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
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
	ENTRADA_A => ENTRADA_A,
	ENTRADA_B => ENTRADA_B,
	hab_AND1 => hab_AND1,
	PCC => PCC,
	readEnable => readEnable,
	reset => reset,
	saida_AND1 => saida_AND1,
	SAIDA_ULA_OUT => SAIDA_ULA_OUT,
	writeEnable => writeEnable
	);
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END cpu_arch;
