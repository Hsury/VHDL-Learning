-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/27/2017 15:20:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          QUICK_ANSWER
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY QUICK_ANSWER_vhd_vec_tst IS
END QUICK_ANSWER_vhd_vec_tst;
ARCHITECTURE QUICK_ANSWER_arch OF QUICK_ANSWER_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_50MHZ : STD_LOGIC;
SIGNAL KEY_CLIENT : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL KEY_MASTER : STD_LOGIC;
SIGNAL LED : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT QUICK_ANSWER
	PORT (
	CLK_50MHZ : IN STD_LOGIC;
	KEY_CLIENT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	KEY_MASTER : IN STD_LOGIC;
	LED : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : QUICK_ANSWER
	PORT MAP (
-- list connections between master ports and signals
	CLK_50MHZ => CLK_50MHZ,
	KEY_CLIENT => KEY_CLIENT,
	KEY_MASTER => KEY_MASTER,
	LED => LED
	);

-- CLK_50MHZ
t_prcs_CLK_50MHZ: PROCESS
BEGIN
	CLK_50MHZ <= '0';
WAIT;
END PROCESS t_prcs_CLK_50MHZ;

-- KEY_MASTER
t_prcs_KEY_MASTER: PROCESS
BEGIN
	KEY_MASTER <= '0';
WAIT;
END PROCESS t_prcs_KEY_MASTER;
-- KEY_CLIENT[2]
t_prcs_KEY_CLIENT_2: PROCESS
BEGIN
	KEY_CLIENT(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_CLIENT_2;
-- KEY_CLIENT[1]
t_prcs_KEY_CLIENT_1: PROCESS
BEGIN
	KEY_CLIENT(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_CLIENT_1;
-- KEY_CLIENT[0]
t_prcs_KEY_CLIENT_0: PROCESS
BEGIN
	KEY_CLIENT(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_CLIENT_0;
END QUICK_ANSWER_arch;
