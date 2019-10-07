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
-- Generated on "10/07/2019 10:10:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ULAGenerico
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ULAGenerico_vhd_vec_tst IS
END ULAGenerico_vhd_vec_tst;
ARCHITECTURE ULAGenerico_arch OF ULAGenerico_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL ENTRADA_A : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ENTRADA_B : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL INSTRUCAO : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL SAIDA : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT ULAGenerico
	PORT (
	CLK : IN STD_LOGIC;
	ENTRADA_A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	ENTRADA_B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	INSTRUCAO : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	SAIDA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ULAGenerico
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	ENTRADA_A => ENTRADA_A,
	ENTRADA_B => ENTRADA_B,
	INSTRUCAO => INSTRUCAO,
	SAIDA => SAIDA
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- ENTRADA_A[1]
t_prcs_ENTRADA_A_1: PROCESS
BEGIN
	ENTRADA_A(1) <= '1';
	WAIT FOR 50000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 40000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 40000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 60000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 90000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 130000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(1) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_A(1) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA_A_1;
-- ENTRADA_A[0]
t_prcs_ENTRADA_A_0: PROCESS
BEGIN
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 40000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 40000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 50000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_A(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_A(0) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_A(0) <= '0';
WAIT;
END PROCESS t_prcs_ENTRADA_A_0;
-- ENTRADA_B[1]
t_prcs_ENTRADA_B_1: PROCESS
BEGIN
	ENTRADA_B(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 50000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 50000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 50000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 60000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 40000 ps;
	ENTRADA_B(1) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(1) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(1) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA_B_1;
-- ENTRADA_B[0]
t_prcs_ENTRADA_B_0: PROCESS
BEGIN
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 50000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 30000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 30000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 20000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 70000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '0';
	WAIT FOR 10000 ps;
	ENTRADA_B(0) <= '1';
WAIT;
END PROCESS t_prcs_ENTRADA_B_0;
-- INSTRUCAO[1]
t_prcs_INSTRUCAO_1: PROCESS
BEGIN
LOOP
	INSTRUCAO(1) <= '0';
	WAIT FOR 20000 ps;
	INSTRUCAO(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INSTRUCAO_1;
-- INSTRUCAO[0]
t_prcs_INSTRUCAO_0: PROCESS
BEGIN
LOOP
	INSTRUCAO(0) <= '0';
	WAIT FOR 10000 ps;
	INSTRUCAO(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INSTRUCAO_0;
END ULAGenerico_arch;
