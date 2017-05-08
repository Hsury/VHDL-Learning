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
-- Generated on "05/08/2017 22:01:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SINE_WAVE_GENERATOR
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SINE_WAVE_GENERATOR_vhd_vec_tst IS
END SINE_WAVE_GENERATOR_vhd_vec_tst;
ARCHITECTURE SINE_WAVE_GENERATOR_arch OF SINE_WAVE_GENERATOR_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK_50MHZ : STD_LOGIC;
SIGNAL DATA_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT SINE_WAVE_GENERATOR
	PORT (
	CLK_50MHZ : IN STD_LOGIC;
	DATA_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SINE_WAVE_GENERATOR
	PORT MAP (
-- list connections between master ports and signals
	CLK_50MHZ => CLK_50MHZ,
	DATA_OUT => DATA_OUT
	);

-- CLK_50MHZ
t_prcs_CLK_50MHZ: PROCESS
BEGIN
LOOP
	CLK_50MHZ <= '0';
	WAIT FOR 10000 ps;
	CLK_50MHZ <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK_50MHZ;
END SINE_WAVE_GENERATOR_arch;
