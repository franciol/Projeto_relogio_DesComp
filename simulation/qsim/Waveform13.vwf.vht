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
-- Generated on "10/10/2019 15:12:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ram20
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ram20_vhd_vec_tst IS
END ram20_vhd_vec_tst;
ARCHITECTURE ram20_arch OF ram20_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL dado_in : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dado_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL we : STD_LOGIC;
COMPONENT ram20
	PORT (
	addr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	clk : IN STD_LOGIC;
	dado_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dado_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	we : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ram20
	PORT MAP (
-- list connections between master ports and signals
	addr => addr,
	clk => clk,
	dado_in => dado_in,
	dado_out => dado_out,
	we => we
	);
-- addr[7]
t_prcs_addr_7: PROCESS
BEGIN
	addr(7) <= '0';
WAIT;
END PROCESS t_prcs_addr_7;
-- addr[6]
t_prcs_addr_6: PROCESS
BEGIN
	addr(6) <= '0';
WAIT;
END PROCESS t_prcs_addr_6;
-- addr[5]
t_prcs_addr_5: PROCESS
BEGIN
	addr(5) <= '0';
WAIT;
END PROCESS t_prcs_addr_5;
-- addr[4]
t_prcs_addr_4: PROCESS
BEGIN
	addr(4) <= '0';
WAIT;
END PROCESS t_prcs_addr_4;
-- addr[3]
t_prcs_addr_3: PROCESS
BEGIN
	addr(3) <= '0';
WAIT;
END PROCESS t_prcs_addr_3;
-- addr[2]
t_prcs_addr_2: PROCESS
BEGIN
	addr(2) <= '0';
WAIT;
END PROCESS t_prcs_addr_2;
-- addr[1]
t_prcs_addr_1: PROCESS
BEGIN
	addr(1) <= '0';
WAIT;
END PROCESS t_prcs_addr_1;
-- addr[0]
t_prcs_addr_0: PROCESS
BEGIN
	addr(0) <= '0';
WAIT;
END PROCESS t_prcs_addr_0;

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- dado_in[7]
t_prcs_dado_in_7: PROCESS
BEGIN
	dado_in(7) <= '1';
	WAIT FOR 30000 ps;
	dado_in(7) <= '0';
	WAIT FOR 20000 ps;
	dado_in(7) <= '1';
	WAIT FOR 10000 ps;
	dado_in(7) <= '0';
	WAIT FOR 40000 ps;
	dado_in(7) <= '1';
	WAIT FOR 50000 ps;
	dado_in(7) <= '0';
	WAIT FOR 10000 ps;
	dado_in(7) <= '1';
	WAIT FOR 30000 ps;
	dado_in(7) <= '0';
	WAIT FOR 20000 ps;
	dado_in(7) <= '1';
	WAIT FOR 10000 ps;
	dado_in(7) <= '0';
	WAIT FOR 20000 ps;
	dado_in(7) <= '1';
	WAIT FOR 30000 ps;
	dado_in(7) <= '0';
	WAIT FOR 20000 ps;
	dado_in(7) <= '1';
	WAIT FOR 40000 ps;
	dado_in(7) <= '0';
	WAIT FOR 40000 ps;
	dado_in(7) <= '1';
	WAIT FOR 10000 ps;
	dado_in(7) <= '0';
	WAIT FOR 10000 ps;
	dado_in(7) <= '1';
	WAIT FOR 10000 ps;
	dado_in(7) <= '0';
	WAIT FOR 30000 ps;
	dado_in(7) <= '1';
	WAIT FOR 20000 ps;
	dado_in(7) <= '0';
	WAIT FOR 30000 ps;
	dado_in(7) <= '1';
	WAIT FOR 30000 ps;
	dado_in(7) <= '0';
	WAIT FOR 50000 ps;
	dado_in(7) <= '1';
	WAIT FOR 10000 ps;
	dado_in(7) <= '0';
	WAIT FOR 40000 ps;
	dado_in(7) <= '1';
	WAIT FOR 20000 ps;
	dado_in(7) <= '0';
	WAIT FOR 20000 ps;
	dado_in(7) <= '1';
	WAIT FOR 70000 ps;
	dado_in(7) <= '0';
	WAIT FOR 10000 ps;
	dado_in(7) <= '1';
	WAIT FOR 20000 ps;
	dado_in(7) <= '0';
	WAIT FOR 10000 ps;
	dado_in(7) <= '1';
	WAIT FOR 20000 ps;
	dado_in(7) <= '0';
	WAIT FOR 10000 ps;
	dado_in(7) <= '1';
	WAIT FOR 30000 ps;
	dado_in(7) <= '0';
	WAIT FOR 20000 ps;
	dado_in(7) <= '1';
	WAIT FOR 60000 ps;
	dado_in(7) <= '0';
	WAIT FOR 40000 ps;
	dado_in(7) <= '1';
	WAIT FOR 10000 ps;
	dado_in(7) <= '0';
	WAIT FOR 10000 ps;
	dado_in(7) <= '1';
WAIT;
END PROCESS t_prcs_dado_in_7;
-- dado_in[6]
t_prcs_dado_in_6: PROCESS
BEGIN
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 20000 ps;
	dado_in(6) <= '1';
	WAIT FOR 20000 ps;
	dado_in(6) <= '0';
	WAIT FOR 70000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 50000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 50000 ps;
	dado_in(6) <= '0';
	WAIT FOR 20000 ps;
	dado_in(6) <= '1';
	WAIT FOR 50000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 40000 ps;
	dado_in(6) <= '0';
	WAIT FOR 40000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 20000 ps;
	dado_in(6) <= '1';
	WAIT FOR 20000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 40000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 20000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 100000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 20000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 20000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 20000 ps;
	dado_in(6) <= '0';
	WAIT FOR 20000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 10000 ps;
	dado_in(6) <= '1';
	WAIT FOR 10000 ps;
	dado_in(6) <= '0';
	WAIT FOR 20000 ps;
	dado_in(6) <= '1';
	WAIT FOR 20000 ps;
	dado_in(6) <= '0';
	WAIT FOR 20000 ps;
	dado_in(6) <= '1';
WAIT;
END PROCESS t_prcs_dado_in_6;
-- dado_in[5]
t_prcs_dado_in_5: PROCESS
BEGIN
	dado_in(5) <= '0';
	WAIT FOR 10000 ps;
	dado_in(5) <= '1';
	WAIT FOR 20000 ps;
	dado_in(5) <= '0';
	WAIT FOR 10000 ps;
	dado_in(5) <= '1';
	WAIT FOR 10000 ps;
	dado_in(5) <= '0';
	WAIT FOR 10000 ps;
	dado_in(5) <= '1';
	WAIT FOR 10000 ps;
	dado_in(5) <= '0';
	WAIT FOR 20000 ps;
	dado_in(5) <= '1';
	WAIT FOR 20000 ps;
	dado_in(5) <= '0';
	WAIT FOR 10000 ps;
	dado_in(5) <= '1';
	WAIT FOR 30000 ps;
	dado_in(5) <= '0';
	WAIT FOR 10000 ps;
	dado_in(5) <= '1';
	WAIT FOR 30000 ps;
	dado_in(5) <= '0';
	WAIT FOR 10000 ps;
	dado_in(5) <= '1';
	WAIT FOR 20000 ps;
	dado_in(5) <= '0';
	WAIT FOR 30000 ps;
	dado_in(5) <= '1';
	WAIT FOR 20000 ps;
	dado_in(5) <= '0';
	WAIT FOR 20000 ps;
	dado_in(5) <= '1';
	WAIT FOR 20000 ps;
	dado_in(5) <= '0';
	WAIT FOR 20000 ps;
	dado_in(5) <= '1';
	WAIT FOR 30000 ps;
	dado_in(5) <= '0';
	WAIT FOR 20000 ps;
	dado_in(5) <= '1';
	WAIT FOR 60000 ps;
	dado_in(5) <= '0';
	WAIT FOR 10000 ps;
	dado_in(5) <= '1';
	WAIT FOR 50000 ps;
	dado_in(5) <= '0';
	WAIT FOR 100000 ps;
	dado_in(5) <= '1';
	WAIT FOR 10000 ps;
	dado_in(5) <= '0';
	WAIT FOR 20000 ps;
	dado_in(5) <= '1';
	WAIT FOR 20000 ps;
	dado_in(5) <= '0';
	WAIT FOR 20000 ps;
	dado_in(5) <= '1';
	WAIT FOR 20000 ps;
	dado_in(5) <= '0';
	WAIT FOR 10000 ps;
	dado_in(5) <= '1';
	WAIT FOR 70000 ps;
	dado_in(5) <= '0';
	WAIT FOR 10000 ps;
	dado_in(5) <= '1';
	WAIT FOR 30000 ps;
	dado_in(5) <= '0';
	WAIT FOR 20000 ps;
	dado_in(5) <= '1';
	WAIT FOR 20000 ps;
	dado_in(5) <= '0';
	WAIT FOR 20000 ps;
	dado_in(5) <= '1';
	WAIT FOR 10000 ps;
	dado_in(5) <= '0';
	WAIT FOR 10000 ps;
	dado_in(5) <= '1';
	WAIT FOR 10000 ps;
	dado_in(5) <= '0';
	WAIT FOR 10000 ps;
	dado_in(5) <= '1';
	WAIT FOR 10000 ps;
	dado_in(5) <= '0';
	WAIT FOR 30000 ps;
	dado_in(5) <= '1';
	WAIT FOR 10000 ps;
	dado_in(5) <= '0';
WAIT;
END PROCESS t_prcs_dado_in_5;
-- dado_in[4]
t_prcs_dado_in_4: PROCESS
BEGIN
	dado_in(4) <= '0';
	WAIT FOR 60000 ps;
	dado_in(4) <= '1';
	WAIT FOR 10000 ps;
	dado_in(4) <= '0';
	WAIT FOR 20000 ps;
	dado_in(4) <= '1';
	WAIT FOR 50000 ps;
	dado_in(4) <= '0';
	WAIT FOR 10000 ps;
	dado_in(4) <= '1';
	WAIT FOR 20000 ps;
	dado_in(4) <= '0';
	WAIT FOR 10000 ps;
	dado_in(4) <= '1';
	WAIT FOR 10000 ps;
	dado_in(4) <= '0';
	WAIT FOR 10000 ps;
	dado_in(4) <= '1';
	WAIT FOR 30000 ps;
	dado_in(4) <= '0';
	WAIT FOR 30000 ps;
	dado_in(4) <= '1';
	WAIT FOR 20000 ps;
	dado_in(4) <= '0';
	WAIT FOR 20000 ps;
	dado_in(4) <= '1';
	WAIT FOR 20000 ps;
	dado_in(4) <= '0';
	WAIT FOR 30000 ps;
	dado_in(4) <= '1';
	WAIT FOR 40000 ps;
	dado_in(4) <= '0';
	WAIT FOR 10000 ps;
	dado_in(4) <= '1';
	WAIT FOR 40000 ps;
	dado_in(4) <= '0';
	WAIT FOR 40000 ps;
	dado_in(4) <= '1';
	WAIT FOR 10000 ps;
	dado_in(4) <= '0';
	WAIT FOR 10000 ps;
	dado_in(4) <= '1';
	WAIT FOR 50000 ps;
	dado_in(4) <= '0';
	WAIT FOR 10000 ps;
	dado_in(4) <= '1';
	WAIT FOR 10000 ps;
	dado_in(4) <= '0';
	WAIT FOR 40000 ps;
	dado_in(4) <= '1';
	WAIT FOR 20000 ps;
	dado_in(4) <= '0';
	WAIT FOR 30000 ps;
	dado_in(4) <= '1';
	WAIT FOR 10000 ps;
	dado_in(4) <= '0';
	WAIT FOR 10000 ps;
	dado_in(4) <= '1';
	WAIT FOR 10000 ps;
	dado_in(4) <= '0';
	WAIT FOR 20000 ps;
	dado_in(4) <= '1';
	WAIT FOR 10000 ps;
	dado_in(4) <= '0';
	WAIT FOR 10000 ps;
	dado_in(4) <= '1';
	WAIT FOR 10000 ps;
	dado_in(4) <= '0';
	WAIT FOR 60000 ps;
	dado_in(4) <= '1';
	WAIT FOR 10000 ps;
	dado_in(4) <= '0';
	WAIT FOR 30000 ps;
	dado_in(4) <= '1';
	WAIT FOR 10000 ps;
	dado_in(4) <= '0';
	WAIT FOR 20000 ps;
	dado_in(4) <= '1';
	WAIT FOR 70000 ps;
	dado_in(4) <= '0';
	WAIT FOR 10000 ps;
	dado_in(4) <= '1';
	WAIT FOR 20000 ps;
	dado_in(4) <= '0';
	WAIT FOR 10000 ps;
	dado_in(4) <= '1';
WAIT;
END PROCESS t_prcs_dado_in_4;
-- dado_in[3]
t_prcs_dado_in_3: PROCESS
BEGIN
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 20000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 40000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 20000 ps;
	dado_in(3) <= '1';
	WAIT FOR 40000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 80000 ps;
	dado_in(3) <= '0';
	WAIT FOR 50000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 30000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 20000 ps;
	dado_in(3) <= '0';
	WAIT FOR 30000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 20000 ps;
	dado_in(3) <= '0';
	WAIT FOR 50000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 30000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 20000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 40000 ps;
	dado_in(3) <= '1';
	WAIT FOR 20000 ps;
	dado_in(3) <= '0';
	WAIT FOR 20000 ps;
	dado_in(3) <= '1';
	WAIT FOR 20000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 40000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 20000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 20000 ps;
	dado_in(3) <= '1';
	WAIT FOR 20000 ps;
	dado_in(3) <= '0';
	WAIT FOR 20000 ps;
	dado_in(3) <= '1';
	WAIT FOR 20000 ps;
	dado_in(3) <= '0';
	WAIT FOR 30000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
	WAIT FOR 10000 ps;
	dado_in(3) <= '1';
	WAIT FOR 10000 ps;
	dado_in(3) <= '0';
WAIT;
END PROCESS t_prcs_dado_in_3;
-- dado_in[2]
t_prcs_dado_in_2: PROCESS
BEGIN
	dado_in(2) <= '1';
	WAIT FOR 40000 ps;
	dado_in(2) <= '0';
	WAIT FOR 20000 ps;
	dado_in(2) <= '1';
	WAIT FOR 50000 ps;
	dado_in(2) <= '0';
	WAIT FOR 20000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 20000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 60000 ps;
	dado_in(2) <= '0';
	WAIT FOR 50000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 30000 ps;
	dado_in(2) <= '0';
	WAIT FOR 30000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 60000 ps;
	dado_in(2) <= '1';
	WAIT FOR 20000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 20000 ps;
	dado_in(2) <= '1';
	WAIT FOR 20000 ps;
	dado_in(2) <= '0';
	WAIT FOR 40000 ps;
	dado_in(2) <= '1';
	WAIT FOR 30000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 30000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 20000 ps;
	dado_in(2) <= '1';
	WAIT FOR 20000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 20000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 20000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 10000 ps;
	dado_in(2) <= '0';
	WAIT FOR 40000 ps;
	dado_in(2) <= '1';
	WAIT FOR 20000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
	WAIT FOR 20000 ps;
	dado_in(2) <= '0';
	WAIT FOR 10000 ps;
	dado_in(2) <= '1';
WAIT;
END PROCESS t_prcs_dado_in_2;
-- dado_in[1]
t_prcs_dado_in_1: PROCESS
BEGIN
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 20000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 50000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 20000 ps;
	dado_in(1) <= '0';
	WAIT FOR 20000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 20000 ps;
	dado_in(1) <= '1';
	WAIT FOR 30000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 20000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 20000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 50000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 20000 ps;
	dado_in(1) <= '0';
	WAIT FOR 60000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 40000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 40000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 20000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 30000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 40000 ps;
	dado_in(1) <= '1';
	WAIT FOR 20000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 30000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 30000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
	WAIT FOR 20000 ps;
	dado_in(1) <= '0';
	WAIT FOR 20000 ps;
	dado_in(1) <= '1';
	WAIT FOR 30000 ps;
	dado_in(1) <= '0';
	WAIT FOR 20000 ps;
	dado_in(1) <= '1';
	WAIT FOR 10000 ps;
	dado_in(1) <= '0';
	WAIT FOR 10000 ps;
	dado_in(1) <= '1';
WAIT;
END PROCESS t_prcs_dado_in_1;
-- dado_in[0]
t_prcs_dado_in_0: PROCESS
BEGIN
	dado_in(0) <= '0';
	WAIT FOR 20000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 20000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 40000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 40000 ps;
	dado_in(0) <= '1';
	WAIT FOR 20000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 20000 ps;
	dado_in(0) <= '0';
	WAIT FOR 20000 ps;
	dado_in(0) <= '1';
	WAIT FOR 30000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 20000 ps;
	dado_in(0) <= '0';
	WAIT FOR 20000 ps;
	dado_in(0) <= '1';
	WAIT FOR 20000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 30000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 30000 ps;
	dado_in(0) <= '1';
	WAIT FOR 20000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 20000 ps;
	dado_in(0) <= '1';
	WAIT FOR 20000 ps;
	dado_in(0) <= '0';
	WAIT FOR 20000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 30000 ps;
	dado_in(0) <= '1';
	WAIT FOR 20000 ps;
	dado_in(0) <= '0';
	WAIT FOR 20000 ps;
	dado_in(0) <= '1';
	WAIT FOR 20000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 60000 ps;
	dado_in(0) <= '1';
	WAIT FOR 40000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 20000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 20000 ps;
	dado_in(0) <= '1';
	WAIT FOR 10000 ps;
	dado_in(0) <= '0';
	WAIT FOR 10000 ps;
	dado_in(0) <= '1';
	WAIT FOR 20000 ps;
	dado_in(0) <= '0';
	WAIT FOR 40000 ps;
	dado_in(0) <= '1';
	WAIT FOR 30000 ps;
	dado_in(0) <= '0';
WAIT;
END PROCESS t_prcs_dado_in_0;

-- we
t_prcs_we: PROCESS
BEGIN
	we <= '0';
	WAIT FOR 300000 ps;
	we <= '1';
	WAIT FOR 200000 ps;
	we <= '0';
	WAIT FOR 200000 ps;
	we <= '1';
WAIT;
END PROCESS t_prcs_we;
END ram20_arch;
