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
-- Generated on "04/11/2017 13:10:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CLOCK
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CLOCK_vhd_vec_tst IS
END CLOCK_vhd_vec_tst;
ARCHITECTURE CLOCK_arch OF CLOCK_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BUZZER : STD_LOGIC;
SIGNAL CLK_50MHZ : STD_LOGIC;
SIGNAL DUAN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL KEY_ENA : STD_LOGIC;
SIGNAL KEY_RST : STD_LOGIC;
SIGNAL WEI : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT CLOCK
	PORT (
	BUZZER : BUFFER STD_LOGIC;
	CLK_50MHZ : IN STD_LOGIC;
	DUAN : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	KEY_ENA : IN STD_LOGIC;
	KEY_RST : IN STD_LOGIC;
	WEI : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : CLOCK
	PORT MAP (
-- list connections between master ports and signals
	BUZZER => BUZZER,
	CLK_50MHZ => CLK_50MHZ,
	DUAN => DUAN,
	KEY_ENA => KEY_ENA,
	KEY_RST => KEY_RST,
	WEI => WEI
	);

-- CLK_50MHZ
t_prcs_CLK_50MHZ: PROCESS
BEGIN
	CLK_50MHZ <= '0';
WAIT;
END PROCESS t_prcs_CLK_50MHZ;

-- KEY_ENA
t_prcs_KEY_ENA: PROCESS
BEGIN
	KEY_ENA <= '0';
WAIT;
END PROCESS t_prcs_KEY_ENA;

-- KEY_RST
t_prcs_KEY_RST: PROCESS
BEGIN
	KEY_RST <= '0';
WAIT;
END PROCESS t_prcs_KEY_RST;
END CLOCK_arch;
