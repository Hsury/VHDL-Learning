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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Standard Edition"

-- DATE "04/27/2017 15:20:19"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	QUICK_ANSWER IS
    PORT (
	CLK_50MHZ : IN std_logic;
	KEY_MASTER : IN std_logic;
	KEY_CLIENT : IN std_logic_vector(2 DOWNTO 0);
	LED : OUT std_logic_vector(3 DOWNTO 0)
	);
END QUICK_ANSWER;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[2]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[3]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK_50MHZ	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY_CLIENT[0]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY_CLIENT[1]	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY_CLIENT[2]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY_MASTER	=>  Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF QUICK_ANSWER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_50MHZ : std_logic;
SIGNAL ww_KEY_MASTER : std_logic;
SIGNAL ww_KEY_CLIENT : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CLK_1KHZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \CLK_50MHZ~input_o\ : std_logic;
SIGNAL \CLK_50MHZ~inputclkctrl_outclk\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|Add0~1\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|Add0~3\ : std_logic;
SIGNAL \U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|Add0~5\ : std_logic;
SIGNAL \U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|Add0~7\ : std_logic;
SIGNAL \U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|Add0~11\ : std_logic;
SIGNAL \U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|Add0~23\ : std_logic;
SIGNAL \U0|Add0~24_combout\ : std_logic;
SIGNAL \U0|Add0~25\ : std_logic;
SIGNAL \U0|Add0~26_combout\ : std_logic;
SIGNAL \U0|Add0~27\ : std_logic;
SIGNAL \U0|Add0~28_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~19_combout\ : std_logic;
SIGNAL \U0|Add0~29\ : std_logic;
SIGNAL \U0|Add0~30_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~18_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~14_combout\ : std_logic;
SIGNAL \U0|Add0~13\ : std_logic;
SIGNAL \U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|Add0~15\ : std_logic;
SIGNAL \U0|Add0~16_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~20_combout\ : std_logic;
SIGNAL \U0|Add0~17\ : std_logic;
SIGNAL \U0|Add0~18_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~15_combout\ : std_logic;
SIGNAL \U0|Add0~19\ : std_logic;
SIGNAL \U0|Add0~20_combout\ : std_logic;
SIGNAL \U0|Add0~21\ : std_logic;
SIGNAL \U0|Add0~22_combout\ : std_logic;
SIGNAL \U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~12_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~16_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~13_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~17_combout\ : std_logic;
SIGNAL \U0|Add0~9\ : std_logic;
SIGNAL \U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|Equal0~1_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~3_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~0_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~4_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~2_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~1_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~5_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~q\ : std_logic;
SIGNAL \U0|CLK_1KHZ~clkctrl_outclk\ : std_logic;
SIGNAL \KEY_CLIENT[0]~input_o\ : std_logic;
SIGNAL \U3|CNT_KEY_DOWN[0]~1_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_DOWN[1]~2_combout\ : std_logic;
SIGNAL \U3|Add0~0_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_DOWN[2]~3_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_DOWN[3]~0_combout\ : std_logic;
SIGNAL \U3|LessThan0~0_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[1]~5_combout\ : std_logic;
SIGNAL \U3|Add1~0_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[2]~6_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[3]~2_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[0]~3_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[0]~4_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[0]~0_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[3]~1_combout\ : std_logic;
SIGNAL \U3|KEY_OUT~0_combout\ : std_logic;
SIGNAL \U3|KEY_OUT~q\ : std_logic;
SIGNAL \KEY_CLIENT[2]~input_o\ : std_logic;
SIGNAL \U5|CNT_KEY_DOWN[0]~1_combout\ : std_logic;
SIGNAL \U5|CNT_KEY_DOWN[1]~2_combout\ : std_logic;
SIGNAL \U5|Add0~0_combout\ : std_logic;
SIGNAL \U5|CNT_KEY_DOWN[2]~3_combout\ : std_logic;
SIGNAL \U5|CNT_KEY_DOWN[3]~0_combout\ : std_logic;
SIGNAL \U5|LessThan0~0_combout\ : std_logic;
SIGNAL \U5|CNT_KEY_UP[1]~7_combout\ : std_logic;
SIGNAL \U5|CNT_KEY_UP[2]~8_combout\ : std_logic;
SIGNAL \U5|CNT_KEY_UP[2]~10_combout\ : std_logic;
SIGNAL \U5|Add1~0_combout\ : std_logic;
SIGNAL \U5|CNT_KEY_UP[3]~6_combout\ : std_logic;
SIGNAL \U5|CNT_KEY_UP[0]~9_combout\ : std_logic;
SIGNAL \U5|CNT_KEY_UP[0]~4_combout\ : std_logic;
SIGNAL \U5|CNT_KEY_UP[3]~5_combout\ : std_logic;
SIGNAL \U5|KEY_OUT~0_combout\ : std_logic;
SIGNAL \U5|KEY_OUT~q\ : std_logic;
SIGNAL \KEY_CLIENT[1]~input_o\ : std_logic;
SIGNAL \U4|CNT_KEY_DOWN[0]~1_combout\ : std_logic;
SIGNAL \U4|CNT_KEY_DOWN[1]~2_combout\ : std_logic;
SIGNAL \U4|Add0~0_combout\ : std_logic;
SIGNAL \U4|CNT_KEY_DOWN[2]~3_combout\ : std_logic;
SIGNAL \U4|CNT_KEY_DOWN[3]~0_combout\ : std_logic;
SIGNAL \U4|LessThan0~0_combout\ : std_logic;
SIGNAL \U4|CNT_KEY_UP[3]~2_combout\ : std_logic;
SIGNAL \U4|CNT_KEY_UP[0]~3_combout\ : std_logic;
SIGNAL \U4|CNT_KEY_UP[0]~4_combout\ : std_logic;
SIGNAL \U4|CNT_KEY_UP[1]~5_combout\ : std_logic;
SIGNAL \U4|Add1~0_combout\ : std_logic;
SIGNAL \U4|CNT_KEY_UP[2]~6_combout\ : std_logic;
SIGNAL \U4|CNT_KEY_UP[0]~0_combout\ : std_logic;
SIGNAL \U4|CNT_KEY_UP[0]~1_combout\ : std_logic;
SIGNAL \U4|KEY_OUT~0_combout\ : std_logic;
SIGNAL \U4|KEY_OUT~q\ : std_logic;
SIGNAL \U1|ST~0_combout\ : std_logic;
SIGNAL \KEY_MASTER~input_o\ : std_logic;
SIGNAL \U2|CNT_KEY_DOWN[0]~1_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_DOWN[1]~2_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_DOWN[2]~3_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_DOWN[3]~0_combout\ : std_logic;
SIGNAL \U2|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[3]~4_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[0]~7_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[1]~5_combout\ : std_logic;
SIGNAL \U2|Add1~0_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[2]~6_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[0]~2_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[3]~3_combout\ : std_logic;
SIGNAL \U2|KEY_OUT~0_combout\ : std_logic;
SIGNAL \U2|KEY_OUT~q\ : std_logic;
SIGNAL \U1|ST~1_combout\ : std_logic;
SIGNAL \U1|ST~feeder_combout\ : std_logic;
SIGNAL \U1|ST~q\ : std_logic;
SIGNAL \U1|ST~clkctrl_outclk\ : std_logic;
SIGNAL \U2|CNT_KEY_DOWN\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|CNT_KEY_UP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|CNT_KEY_DOWN\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|CNT_KEY_UP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|CNT_KEY_DOWN\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|CNT_KEY_UP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|CNT_KEY_UP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|CNT_KEY_DOWN\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CNT_1KHZ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U1|LED\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK_50MHZ <= CLK_50MHZ;
ww_KEY_MASTER <= KEY_MASTER;
ww_KEY_CLIENT <= KEY_CLIENT;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U0|CLK_1KHZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|CLK_1KHZ~q\);

\U1|ST~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|ST~q\);

\CLK_50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHZ~input_o\);

-- Location: IOOBUF_X18_Y24_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LED\(0),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LED\(1),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|LED\(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ST~q\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK_50MHZ~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_50MHZ,
	o => \CLK_50MHZ~input_o\);

-- Location: CLKCTRL_G2
\CLK_50MHZ~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50MHZ~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50MHZ~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y6_N0
\U0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~0_combout\ = \U0|CNT_1KHZ\(0) $ (VCC)
-- \U0|Add0~1\ = CARRY(\U0|CNT_1KHZ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1KHZ\(0),
	datad => VCC,
	combout => \U0|Add0~0_combout\,
	cout => \U0|Add0~1\);

-- Location: FF_X12_Y6_N1
\U0|CNT_1KHZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(0));

-- Location: LCCOMB_X12_Y6_N2
\U0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~2_combout\ = (\U0|CNT_1KHZ\(1) & (!\U0|Add0~1\)) # (!\U0|CNT_1KHZ\(1) & ((\U0|Add0~1\) # (GND)))
-- \U0|Add0~3\ = CARRY((!\U0|Add0~1\) # (!\U0|CNT_1KHZ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1KHZ\(1),
	datad => VCC,
	cin => \U0|Add0~1\,
	combout => \U0|Add0~2_combout\,
	cout => \U0|Add0~3\);

-- Location: FF_X12_Y6_N3
\U0|CNT_1KHZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(1));

-- Location: LCCOMB_X12_Y6_N4
\U0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~4_combout\ = (\U0|CNT_1KHZ\(2) & (\U0|Add0~3\ $ (GND))) # (!\U0|CNT_1KHZ\(2) & (!\U0|Add0~3\ & VCC))
-- \U0|Add0~5\ = CARRY((\U0|CNT_1KHZ\(2) & !\U0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1KHZ\(2),
	datad => VCC,
	cin => \U0|Add0~3\,
	combout => \U0|Add0~4_combout\,
	cout => \U0|Add0~5\);

-- Location: FF_X12_Y6_N5
\U0|CNT_1KHZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(2));

-- Location: LCCOMB_X12_Y6_N6
\U0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~6_combout\ = (\U0|CNT_1KHZ\(3) & (!\U0|Add0~5\)) # (!\U0|CNT_1KHZ\(3) & ((\U0|Add0~5\) # (GND)))
-- \U0|Add0~7\ = CARRY((!\U0|Add0~5\) # (!\U0|CNT_1KHZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(3),
	datad => VCC,
	cin => \U0|Add0~5\,
	combout => \U0|Add0~6_combout\,
	cout => \U0|Add0~7\);

-- Location: FF_X12_Y6_N7
\U0|CNT_1KHZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(3));

-- Location: LCCOMB_X12_Y6_N8
\U0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~8_combout\ = (\U0|CNT_1KHZ\(4) & (\U0|Add0~7\ $ (GND))) # (!\U0|CNT_1KHZ\(4) & (!\U0|Add0~7\ & VCC))
-- \U0|Add0~9\ = CARRY((\U0|CNT_1KHZ\(4) & !\U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(4),
	datad => VCC,
	cin => \U0|Add0~7\,
	combout => \U0|Add0~8_combout\,
	cout => \U0|Add0~9\);

-- Location: LCCOMB_X12_Y6_N10
\U0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~10_combout\ = (\U0|CNT_1KHZ\(5) & (!\U0|Add0~9\)) # (!\U0|CNT_1KHZ\(5) & ((\U0|Add0~9\) # (GND)))
-- \U0|Add0~11\ = CARRY((!\U0|Add0~9\) # (!\U0|CNT_1KHZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(5),
	datad => VCC,
	cin => \U0|Add0~9\,
	combout => \U0|Add0~10_combout\,
	cout => \U0|Add0~11\);

-- Location: LCCOMB_X12_Y6_N12
\U0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~12_combout\ = (\U0|CNT_1KHZ\(6) & (\U0|Add0~11\ $ (GND))) # (!\U0|CNT_1KHZ\(6) & (!\U0|Add0~11\ & VCC))
-- \U0|Add0~13\ = CARRY((\U0|CNT_1KHZ\(6) & !\U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1KHZ\(6),
	datad => VCC,
	cin => \U0|Add0~11\,
	combout => \U0|Add0~12_combout\,
	cout => \U0|Add0~13\);

-- Location: LCCOMB_X12_Y6_N22
\U0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~22_combout\ = (\U0|CNT_1KHZ\(11) & (!\U0|Add0~21\)) # (!\U0|CNT_1KHZ\(11) & ((\U0|Add0~21\) # (GND)))
-- \U0|Add0~23\ = CARRY((!\U0|Add0~21\) # (!\U0|CNT_1KHZ\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(11),
	datad => VCC,
	cin => \U0|Add0~21\,
	combout => \U0|Add0~22_combout\,
	cout => \U0|Add0~23\);

-- Location: LCCOMB_X12_Y6_N24
\U0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~24_combout\ = (\U0|CNT_1KHZ\(12) & (\U0|Add0~23\ $ (GND))) # (!\U0|CNT_1KHZ\(12) & (!\U0|Add0~23\ & VCC))
-- \U0|Add0~25\ = CARRY((\U0|CNT_1KHZ\(12) & !\U0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1KHZ\(12),
	datad => VCC,
	cin => \U0|Add0~23\,
	combout => \U0|Add0~24_combout\,
	cout => \U0|Add0~25\);

-- Location: FF_X12_Y6_N25
\U0|CNT_1KHZ[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(12));

-- Location: LCCOMB_X12_Y6_N26
\U0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~26_combout\ = (\U0|CNT_1KHZ\(13) & (!\U0|Add0~25\)) # (!\U0|CNT_1KHZ\(13) & ((\U0|Add0~25\) # (GND)))
-- \U0|Add0~27\ = CARRY((!\U0|Add0~25\) # (!\U0|CNT_1KHZ\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(13),
	datad => VCC,
	cin => \U0|Add0~25\,
	combout => \U0|Add0~26_combout\,
	cout => \U0|Add0~27\);

-- Location: FF_X12_Y6_N27
\U0|CNT_1KHZ[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(13));

-- Location: LCCOMB_X12_Y6_N28
\U0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~28_combout\ = (\U0|CNT_1KHZ\(14) & (\U0|Add0~27\ $ (GND))) # (!\U0|CNT_1KHZ\(14) & (!\U0|Add0~27\ & VCC))
-- \U0|Add0~29\ = CARRY((\U0|CNT_1KHZ\(14) & !\U0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(14),
	datad => VCC,
	cin => \U0|Add0~27\,
	combout => \U0|Add0~28_combout\,
	cout => \U0|Add0~29\);

-- Location: LCCOMB_X13_Y6_N2
\U0|CNT_1KHZ~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~19_combout\ = (\U0|Add0~28_combout\ & (((!\U0|CNT_1KHZ~13_combout\) # (!\U0|CNT_1KHZ~14_combout\)) # (!\U0|CNT_1KHZ~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ~12_combout\,
	datab => \U0|CNT_1KHZ~14_combout\,
	datac => \U0|CNT_1KHZ~13_combout\,
	datad => \U0|Add0~28_combout\,
	combout => \U0|CNT_1KHZ~19_combout\);

-- Location: FF_X13_Y6_N3
\U0|CNT_1KHZ[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|CNT_1KHZ~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(14));

-- Location: LCCOMB_X12_Y6_N30
\U0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~30_combout\ = \U0|Add0~29\ $ (\U0|CNT_1KHZ\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|CNT_1KHZ\(15),
	cin => \U0|Add0~29\,
	combout => \U0|Add0~30_combout\);

-- Location: LCCOMB_X13_Y6_N24
\U0|CNT_1KHZ~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~18_combout\ = (\U0|Add0~30_combout\ & (((!\U0|CNT_1KHZ~13_combout\) # (!\U0|CNT_1KHZ~14_combout\)) # (!\U0|CNT_1KHZ~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ~12_combout\,
	datab => \U0|CNT_1KHZ~14_combout\,
	datac => \U0|CNT_1KHZ~13_combout\,
	datad => \U0|Add0~30_combout\,
	combout => \U0|CNT_1KHZ~18_combout\);

-- Location: FF_X13_Y6_N25
\U0|CNT_1KHZ[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|CNT_1KHZ~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(15));

-- Location: LCCOMB_X14_Y6_N24
\U0|CNT_1KHZ~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~14_combout\ = (\U0|CNT_1KHZ\(0) & (\U0|CNT_1KHZ\(15) & (\U0|CNT_1KHZ\(1) & \U0|CNT_1KHZ\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(0),
	datab => \U0|CNT_1KHZ\(15),
	datac => \U0|CNT_1KHZ\(1),
	datad => \U0|CNT_1KHZ\(2),
	combout => \U0|CNT_1KHZ~14_combout\);

-- Location: LCCOMB_X12_Y6_N14
\U0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~14_combout\ = (\U0|CNT_1KHZ\(7) & (!\U0|Add0~13\)) # (!\U0|CNT_1KHZ\(7) & ((\U0|Add0~13\) # (GND)))
-- \U0|Add0~15\ = CARRY((!\U0|Add0~13\) # (!\U0|CNT_1KHZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1KHZ\(7),
	datad => VCC,
	cin => \U0|Add0~13\,
	combout => \U0|Add0~14_combout\,
	cout => \U0|Add0~15\);

-- Location: FF_X12_Y6_N15
\U0|CNT_1KHZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(7));

-- Location: LCCOMB_X12_Y6_N16
\U0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~16_combout\ = (\U0|CNT_1KHZ\(8) & (\U0|Add0~15\ $ (GND))) # (!\U0|CNT_1KHZ\(8) & (!\U0|Add0~15\ & VCC))
-- \U0|Add0~17\ = CARRY((\U0|CNT_1KHZ\(8) & !\U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(8),
	datad => VCC,
	cin => \U0|Add0~15\,
	combout => \U0|Add0~16_combout\,
	cout => \U0|Add0~17\);

-- Location: LCCOMB_X13_Y6_N30
\U0|CNT_1KHZ~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~20_combout\ = (\U0|Add0~16_combout\ & (((!\U0|CNT_1KHZ~14_combout\) # (!\U0|CNT_1KHZ~13_combout\)) # (!\U0|CNT_1KHZ~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ~12_combout\,
	datab => \U0|CNT_1KHZ~13_combout\,
	datac => \U0|Add0~16_combout\,
	datad => \U0|CNT_1KHZ~14_combout\,
	combout => \U0|CNT_1KHZ~20_combout\);

-- Location: FF_X13_Y6_N31
\U0|CNT_1KHZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|CNT_1KHZ~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(8));

-- Location: LCCOMB_X12_Y6_N18
\U0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~18_combout\ = (\U0|CNT_1KHZ\(9) & (!\U0|Add0~17\)) # (!\U0|CNT_1KHZ\(9) & ((\U0|Add0~17\) # (GND)))
-- \U0|Add0~19\ = CARRY((!\U0|Add0~17\) # (!\U0|CNT_1KHZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(9),
	datad => VCC,
	cin => \U0|Add0~17\,
	combout => \U0|Add0~18_combout\,
	cout => \U0|Add0~19\);

-- Location: LCCOMB_X13_Y6_N20
\U0|CNT_1KHZ~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~15_combout\ = (\U0|Add0~18_combout\ & (((!\U0|CNT_1KHZ~13_combout\) # (!\U0|CNT_1KHZ~14_combout\)) # (!\U0|CNT_1KHZ~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ~12_combout\,
	datab => \U0|CNT_1KHZ~14_combout\,
	datac => \U0|CNT_1KHZ~13_combout\,
	datad => \U0|Add0~18_combout\,
	combout => \U0|CNT_1KHZ~15_combout\);

-- Location: FF_X13_Y6_N21
\U0|CNT_1KHZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|CNT_1KHZ~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(9));

-- Location: LCCOMB_X12_Y6_N20
\U0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~20_combout\ = (\U0|CNT_1KHZ\(10) & (\U0|Add0~19\ $ (GND))) # (!\U0|CNT_1KHZ\(10) & (!\U0|Add0~19\ & VCC))
-- \U0|Add0~21\ = CARRY((\U0|CNT_1KHZ\(10) & !\U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1KHZ\(10),
	datad => VCC,
	cin => \U0|Add0~19\,
	combout => \U0|Add0~20_combout\,
	cout => \U0|Add0~21\);

-- Location: FF_X12_Y6_N21
\U0|CNT_1KHZ[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(10));

-- Location: FF_X12_Y6_N23
\U0|CNT_1KHZ[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(11));

-- Location: LCCOMB_X13_Y6_N26
\U0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Equal0~0_combout\ = (!\U0|CNT_1KHZ\(4) & (!\U0|CNT_1KHZ\(11) & (!\U0|CNT_1KHZ\(10) & !\U0|CNT_1KHZ\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(4),
	datab => \U0|CNT_1KHZ\(11),
	datac => \U0|CNT_1KHZ\(10),
	datad => \U0|CNT_1KHZ\(12),
	combout => \U0|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y6_N0
\U0|CNT_1KHZ~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~12_combout\ = (\U0|Equal0~0_combout\ & (\U0|CNT_1KHZ\(9) & \U0|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~0_combout\,
	datab => \U0|CNT_1KHZ\(9),
	datad => \U0|Equal0~1_combout\,
	combout => \U0|CNT_1KHZ~12_combout\);

-- Location: LCCOMB_X13_Y6_N22
\U0|CNT_1KHZ~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~16_combout\ = (\U0|Add0~12_combout\ & (((!\U0|CNT_1KHZ~14_combout\) # (!\U0|CNT_1KHZ~12_combout\)) # (!\U0|CNT_1KHZ~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~12_combout\,
	datab => \U0|CNT_1KHZ~13_combout\,
	datac => \U0|CNT_1KHZ~12_combout\,
	datad => \U0|CNT_1KHZ~14_combout\,
	combout => \U0|CNT_1KHZ~16_combout\);

-- Location: FF_X13_Y6_N23
\U0|CNT_1KHZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|CNT_1KHZ~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(6));

-- Location: LCCOMB_X13_Y6_N12
\U0|CNT_1KHZ~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~13_combout\ = (\U0|CNT_1KHZ\(6) & (\U0|CNT_1KHZ\(3) & (\U0|CNT_1KHZ\(8) & \U0|CNT_1KHZ\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(6),
	datab => \U0|CNT_1KHZ\(3),
	datac => \U0|CNT_1KHZ\(8),
	datad => \U0|CNT_1KHZ\(14),
	combout => \U0|CNT_1KHZ~13_combout\);

-- Location: LCCOMB_X13_Y6_N6
\U0|CNT_1KHZ~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~17_combout\ = (\U0|Add0~8_combout\ & (((!\U0|CNT_1KHZ~14_combout\) # (!\U0|CNT_1KHZ~12_combout\)) # (!\U0|CNT_1KHZ~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~8_combout\,
	datab => \U0|CNT_1KHZ~13_combout\,
	datac => \U0|CNT_1KHZ~12_combout\,
	datad => \U0|CNT_1KHZ~14_combout\,
	combout => \U0|CNT_1KHZ~17_combout\);

-- Location: FF_X13_Y6_N7
\U0|CNT_1KHZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|CNT_1KHZ~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(4));

-- Location: FF_X12_Y6_N11
\U0|CNT_1KHZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1KHZ\(5));

-- Location: LCCOMB_X13_Y6_N10
\U0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Equal0~1_combout\ = (!\U0|CNT_1KHZ\(5) & (!\U0|CNT_1KHZ\(13) & !\U0|CNT_1KHZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(5),
	datac => \U0|CNT_1KHZ\(13),
	datad => \U0|CNT_1KHZ\(7),
	combout => \U0|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y6_N8
\U0|CLK_1KHZ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1KHZ~3_combout\ = (\U0|CNT_1KHZ\(8) & (((\U0|CNT_1KHZ\(3) & \U0|CNT_1KHZ\(14))) # (!\U0|CLK_1KHZ~q\))) # (!\U0|CNT_1KHZ\(8) & (!\U0|CLK_1KHZ~q\ & ((\U0|CNT_1KHZ\(3)) # (\U0|CNT_1KHZ\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(8),
	datab => \U0|CLK_1KHZ~q\,
	datac => \U0|CNT_1KHZ\(3),
	datad => \U0|CNT_1KHZ\(14),
	combout => \U0|CLK_1KHZ~3_combout\);

-- Location: LCCOMB_X13_Y6_N14
\U0|CLK_1KHZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1KHZ~0_combout\ = (\U0|CNT_1KHZ\(1)) # ((\U0|CNT_1KHZ\(2)) # ((\U0|CNT_1KHZ\(9)) # (\U0|CNT_1KHZ\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(1),
	datab => \U0|CNT_1KHZ\(2),
	datac => \U0|CNT_1KHZ\(9),
	datad => \U0|CNT_1KHZ\(6),
	combout => \U0|CLK_1KHZ~0_combout\);

-- Location: LCCOMB_X13_Y6_N18
\U0|CLK_1KHZ~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1KHZ~4_combout\ = (\U0|CLK_1KHZ~3_combout\ & (((\U0|CLK_1KHZ~q\)))) # (!\U0|CLK_1KHZ~3_combout\ & (\U0|Equal0~1_combout\ & (!\U0|CLK_1KHZ~0_combout\ & !\U0|CLK_1KHZ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~1_combout\,
	datab => \U0|CLK_1KHZ~3_combout\,
	datac => \U0|CLK_1KHZ~0_combout\,
	datad => \U0|CLK_1KHZ~q\,
	combout => \U0|CLK_1KHZ~4_combout\);

-- Location: LCCOMB_X13_Y6_N28
\U0|CLK_1KHZ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1KHZ~2_combout\ = (\U0|Equal0~0_combout\ & (!\U0|CNT_1KHZ\(0) & !\U0|CNT_1KHZ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~0_combout\,
	datac => \U0|CNT_1KHZ\(0),
	datad => \U0|CNT_1KHZ\(15),
	combout => \U0|CLK_1KHZ~2_combout\);

-- Location: LCCOMB_X13_Y6_N16
\U0|CLK_1KHZ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1KHZ~1_combout\ = ((\U0|CLK_1KHZ~0_combout\) # ((!\U0|CNT_1KHZ\(7)) # (!\U0|CNT_1KHZ\(13)))) # (!\U0|CNT_1KHZ\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(5),
	datab => \U0|CLK_1KHZ~0_combout\,
	datac => \U0|CNT_1KHZ\(13),
	datad => \U0|CNT_1KHZ\(7),
	combout => \U0|CLK_1KHZ~1_combout\);

-- Location: LCCOMB_X13_Y6_N4
\U0|CLK_1KHZ~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1KHZ~5_combout\ = (\U0|CLK_1KHZ~4_combout\ & ((\U0|CLK_1KHZ~2_combout\ & ((\U0|CLK_1KHZ~1_combout\) # (!\U0|CLK_1KHZ~q\))) # (!\U0|CLK_1KHZ~2_combout\ & (\U0|CLK_1KHZ~q\)))) # (!\U0|CLK_1KHZ~4_combout\ & (((\U0|CLK_1KHZ~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CLK_1KHZ~4_combout\,
	datab => \U0|CLK_1KHZ~2_combout\,
	datac => \U0|CLK_1KHZ~q\,
	datad => \U0|CLK_1KHZ~1_combout\,
	combout => \U0|CLK_1KHZ~5_combout\);

-- Location: FF_X13_Y6_N1
\U0|CLK_1KHZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	asdata => \U0|CLK_1KHZ~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CLK_1KHZ~q\);

-- Location: CLKCTRL_G4
\U0|CLK_1KHZ~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|CLK_1KHZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|CLK_1KHZ~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N8
\KEY_CLIENT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_CLIENT(0),
	o => \KEY_CLIENT[0]~input_o\);

-- Location: LCCOMB_X31_Y11_N24
\U3|CNT_KEY_DOWN[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_DOWN[0]~1_combout\ = (!\KEY_CLIENT[0]~input_o\ & (\U3|CNT_KEY_DOWN\(0) $ (!\U3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[0]~input_o\,
	datac => \U3|CNT_KEY_DOWN\(0),
	datad => \U3|LessThan0~0_combout\,
	combout => \U3|CNT_KEY_DOWN[0]~1_combout\);

-- Location: FF_X31_Y11_N25
\U3|CNT_KEY_DOWN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U3|CNT_KEY_DOWN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CNT_KEY_DOWN\(0));

-- Location: LCCOMB_X31_Y11_N14
\U3|CNT_KEY_DOWN[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_DOWN[1]~2_combout\ = (!\KEY_CLIENT[0]~input_o\ & (\U3|CNT_KEY_DOWN\(1) $ (((\U3|CNT_KEY_DOWN\(0) & !\U3|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[0]~input_o\,
	datab => \U3|CNT_KEY_DOWN\(0),
	datac => \U3|CNT_KEY_DOWN\(1),
	datad => \U3|LessThan0~0_combout\,
	combout => \U3|CNT_KEY_DOWN[1]~2_combout\);

-- Location: FF_X31_Y11_N15
\U3|CNT_KEY_DOWN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U3|CNT_KEY_DOWN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CNT_KEY_DOWN\(1));

-- Location: LCCOMB_X31_Y11_N20
\U3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~0_combout\ = (\U3|CNT_KEY_DOWN\(1) & \U3|CNT_KEY_DOWN\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|CNT_KEY_DOWN\(1),
	datad => \U3|CNT_KEY_DOWN\(0),
	combout => \U3|Add0~0_combout\);

-- Location: LCCOMB_X31_Y11_N8
\U3|CNT_KEY_DOWN[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_DOWN[2]~3_combout\ = (!\KEY_CLIENT[0]~input_o\ & (\U3|CNT_KEY_DOWN\(2) $ (((\U3|Add0~0_combout\ & !\U3|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[0]~input_o\,
	datab => \U3|Add0~0_combout\,
	datac => \U3|CNT_KEY_DOWN\(2),
	datad => \U3|LessThan0~0_combout\,
	combout => \U3|CNT_KEY_DOWN[2]~3_combout\);

-- Location: FF_X31_Y11_N9
\U3|CNT_KEY_DOWN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U3|CNT_KEY_DOWN[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CNT_KEY_DOWN\(2));

-- Location: LCCOMB_X31_Y11_N30
\U3|CNT_KEY_DOWN[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_DOWN[3]~0_combout\ = (!\KEY_CLIENT[0]~input_o\ & ((\U3|CNT_KEY_DOWN\(3)) # ((\U3|CNT_KEY_DOWN\(2) & \U3|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[0]~input_o\,
	datab => \U3|CNT_KEY_DOWN\(2),
	datac => \U3|CNT_KEY_DOWN\(3),
	datad => \U3|Add0~0_combout\,
	combout => \U3|CNT_KEY_DOWN[3]~0_combout\);

-- Location: FF_X31_Y11_N31
\U3|CNT_KEY_DOWN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U3|CNT_KEY_DOWN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CNT_KEY_DOWN\(3));

-- Location: LCCOMB_X31_Y11_N6
\U3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan0~0_combout\ = (\U3|CNT_KEY_DOWN\(3) & ((\U3|CNT_KEY_DOWN\(1)) # ((\U3|CNT_KEY_DOWN\(2)) # (\U3|CNT_KEY_DOWN\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CNT_KEY_DOWN\(3),
	datab => \U3|CNT_KEY_DOWN\(1),
	datac => \U3|CNT_KEY_DOWN\(2),
	datad => \U3|CNT_KEY_DOWN\(0),
	combout => \U3|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y11_N28
\U3|CNT_KEY_UP[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[1]~5_combout\ = (\U3|CNT_KEY_UP[3]~1_combout\ & (((\U3|CNT_KEY_UP\(1))))) # (!\U3|CNT_KEY_UP[3]~1_combout\ & (\KEY_CLIENT[0]~input_o\ & (\U3|CNT_KEY_UP\(0) $ (\U3|CNT_KEY_UP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CNT_KEY_UP\(0),
	datab => \KEY_CLIENT[0]~input_o\,
	datac => \U3|CNT_KEY_UP\(1),
	datad => \U3|CNT_KEY_UP[3]~1_combout\,
	combout => \U3|CNT_KEY_UP[1]~5_combout\);

-- Location: FF_X31_Y11_N29
\U3|CNT_KEY_UP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U3|CNT_KEY_UP[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CNT_KEY_UP\(1));

-- Location: LCCOMB_X31_Y11_N4
\U3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add1~0_combout\ = (\U3|CNT_KEY_UP\(0) & \U3|CNT_KEY_UP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|CNT_KEY_UP\(0),
	datad => \U3|CNT_KEY_UP\(1),
	combout => \U3|Add1~0_combout\);

-- Location: LCCOMB_X31_Y11_N26
\U3|CNT_KEY_UP[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[2]~6_combout\ = (\U3|CNT_KEY_UP[3]~1_combout\ & (((\U3|CNT_KEY_UP\(2))))) # (!\U3|CNT_KEY_UP[3]~1_combout\ & (\KEY_CLIENT[0]~input_o\ & (\U3|Add1~0_combout\ $ (\U3|CNT_KEY_UP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[0]~input_o\,
	datab => \U3|Add1~0_combout\,
	datac => \U3|CNT_KEY_UP\(2),
	datad => \U3|CNT_KEY_UP[3]~1_combout\,
	combout => \U3|CNT_KEY_UP[2]~6_combout\);

-- Location: FF_X31_Y11_N27
\U3|CNT_KEY_UP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U3|CNT_KEY_UP[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CNT_KEY_UP\(2));

-- Location: LCCOMB_X31_Y11_N2
\U3|CNT_KEY_UP[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[3]~2_combout\ = (\KEY_CLIENT[0]~input_o\ & ((\U3|CNT_KEY_UP\(3)) # ((\U3|Add1~0_combout\ & \U3|CNT_KEY_UP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[0]~input_o\,
	datab => \U3|Add1~0_combout\,
	datac => \U3|CNT_KEY_UP\(3),
	datad => \U3|CNT_KEY_UP\(2),
	combout => \U3|CNT_KEY_UP[3]~2_combout\);

-- Location: FF_X31_Y11_N3
\U3|CNT_KEY_UP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U3|CNT_KEY_UP[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CNT_KEY_UP\(3));

-- Location: LCCOMB_X31_Y11_N10
\U3|CNT_KEY_UP[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[0]~3_combout\ = (!\U3|CNT_KEY_UP\(2) & !\U3|CNT_KEY_UP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U3|CNT_KEY_UP\(2),
	datad => \U3|CNT_KEY_UP\(1),
	combout => \U3|CNT_KEY_UP[0]~3_combout\);

-- Location: LCCOMB_X31_Y11_N22
\U3|CNT_KEY_UP[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[0]~4_combout\ = (\KEY_CLIENT[0]~input_o\ & ((\U3|CNT_KEY_UP\(3) & ((\U3|CNT_KEY_UP\(0)) # (\U3|CNT_KEY_UP[0]~3_combout\))) # (!\U3|CNT_KEY_UP\(3) & (!\U3|CNT_KEY_UP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[0]~input_o\,
	datab => \U3|CNT_KEY_UP\(3),
	datac => \U3|CNT_KEY_UP\(0),
	datad => \U3|CNT_KEY_UP[0]~3_combout\,
	combout => \U3|CNT_KEY_UP[0]~4_combout\);

-- Location: FF_X31_Y11_N23
\U3|CNT_KEY_UP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U3|CNT_KEY_UP[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|CNT_KEY_UP\(0));

-- Location: LCCOMB_X31_Y11_N16
\U3|CNT_KEY_UP[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[0]~0_combout\ = (\KEY_CLIENT[0]~input_o\ & \U3|CNT_KEY_UP\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY_CLIENT[0]~input_o\,
	datad => \U3|CNT_KEY_UP\(3),
	combout => \U3|CNT_KEY_UP[0]~0_combout\);

-- Location: LCCOMB_X31_Y11_N0
\U3|CNT_KEY_UP[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[3]~1_combout\ = (\U3|CNT_KEY_UP[0]~0_combout\ & ((\U3|CNT_KEY_UP\(0)) # ((\U3|CNT_KEY_UP\(1)) # (\U3|CNT_KEY_UP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CNT_KEY_UP\(0),
	datab => \U3|CNT_KEY_UP\(1),
	datac => \U3|CNT_KEY_UP\(2),
	datad => \U3|CNT_KEY_UP[0]~0_combout\,
	combout => \U3|CNT_KEY_UP[3]~1_combout\);

-- Location: LCCOMB_X31_Y11_N12
\U3|KEY_OUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|KEY_OUT~0_combout\ = (\U3|CNT_KEY_UP[3]~1_combout\ & (((!\KEY_CLIENT[0]~input_o\)))) # (!\U3|CNT_KEY_UP[3]~1_combout\ & ((\U3|KEY_OUT~q\) # ((\U3|LessThan0~0_combout\ & !\KEY_CLIENT[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|LessThan0~0_combout\,
	datab => \KEY_CLIENT[0]~input_o\,
	datac => \U3|KEY_OUT~q\,
	datad => \U3|CNT_KEY_UP[3]~1_combout\,
	combout => \U3|KEY_OUT~0_combout\);

-- Location: FF_X31_Y11_N13
\U3|KEY_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U3|KEY_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|KEY_OUT~q\);

-- Location: IOIBUF_X34_Y12_N15
\KEY_CLIENT[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_CLIENT(2),
	o => \KEY_CLIENT[2]~input_o\);

-- Location: LCCOMB_X33_Y11_N24
\U5|CNT_KEY_DOWN[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CNT_KEY_DOWN[0]~1_combout\ = (!\KEY_CLIENT[2]~input_o\ & (\U5|CNT_KEY_DOWN\(0) $ (!\U5|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY_CLIENT[2]~input_o\,
	datac => \U5|CNT_KEY_DOWN\(0),
	datad => \U5|LessThan0~0_combout\,
	combout => \U5|CNT_KEY_DOWN[0]~1_combout\);

-- Location: FF_X33_Y11_N25
\U5|CNT_KEY_DOWN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U5|CNT_KEY_DOWN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CNT_KEY_DOWN\(0));

-- Location: LCCOMB_X33_Y11_N14
\U5|CNT_KEY_DOWN[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CNT_KEY_DOWN[1]~2_combout\ = (!\KEY_CLIENT[2]~input_o\ & (\U5|CNT_KEY_DOWN\(1) $ (((\U5|CNT_KEY_DOWN\(0) & !\U5|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[2]~input_o\,
	datab => \U5|CNT_KEY_DOWN\(0),
	datac => \U5|CNT_KEY_DOWN\(1),
	datad => \U5|LessThan0~0_combout\,
	combout => \U5|CNT_KEY_DOWN[1]~2_combout\);

-- Location: FF_X33_Y11_N15
\U5|CNT_KEY_DOWN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U5|CNT_KEY_DOWN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CNT_KEY_DOWN\(1));

-- Location: LCCOMB_X33_Y11_N8
\U5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|Add0~0_combout\ = (\U5|CNT_KEY_DOWN\(1) & \U5|CNT_KEY_DOWN\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U5|CNT_KEY_DOWN\(1),
	datad => \U5|CNT_KEY_DOWN\(0),
	combout => \U5|Add0~0_combout\);

-- Location: LCCOMB_X33_Y11_N4
\U5|CNT_KEY_DOWN[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CNT_KEY_DOWN[2]~3_combout\ = (!\KEY_CLIENT[2]~input_o\ & (\U5|CNT_KEY_DOWN\(2) $ (((\U5|Add0~0_combout\ & !\U5|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[2]~input_o\,
	datab => \U5|Add0~0_combout\,
	datac => \U5|CNT_KEY_DOWN\(2),
	datad => \U5|LessThan0~0_combout\,
	combout => \U5|CNT_KEY_DOWN[2]~3_combout\);

-- Location: FF_X33_Y11_N5
\U5|CNT_KEY_DOWN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U5|CNT_KEY_DOWN[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CNT_KEY_DOWN\(2));

-- Location: LCCOMB_X33_Y11_N22
\U5|CNT_KEY_DOWN[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CNT_KEY_DOWN[3]~0_combout\ = (!\KEY_CLIENT[2]~input_o\ & ((\U5|CNT_KEY_DOWN\(3)) # ((\U5|CNT_KEY_DOWN\(2) & \U5|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[2]~input_o\,
	datab => \U5|CNT_KEY_DOWN\(2),
	datac => \U5|CNT_KEY_DOWN\(3),
	datad => \U5|Add0~0_combout\,
	combout => \U5|CNT_KEY_DOWN[3]~0_combout\);

-- Location: FF_X33_Y11_N23
\U5|CNT_KEY_DOWN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U5|CNT_KEY_DOWN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CNT_KEY_DOWN\(3));

-- Location: LCCOMB_X33_Y11_N10
\U5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|LessThan0~0_combout\ = (\U5|CNT_KEY_DOWN\(3) & ((\U5|CNT_KEY_DOWN\(2)) # ((\U5|CNT_KEY_DOWN\(1)) # (\U5|CNT_KEY_DOWN\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CNT_KEY_DOWN\(3),
	datab => \U5|CNT_KEY_DOWN\(2),
	datac => \U5|CNT_KEY_DOWN\(1),
	datad => \U5|CNT_KEY_DOWN\(0),
	combout => \U5|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y11_N0
\U5|CNT_KEY_UP[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CNT_KEY_UP[1]~7_combout\ = (\U5|CNT_KEY_UP[3]~5_combout\ & (((\U5|CNT_KEY_UP\(1))))) # (!\U5|CNT_KEY_UP[3]~5_combout\ & (\KEY_CLIENT[2]~input_o\ & (\U5|CNT_KEY_UP\(0) $ (\U5|CNT_KEY_UP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CNT_KEY_UP\(0),
	datab => \KEY_CLIENT[2]~input_o\,
	datac => \U5|CNT_KEY_UP\(1),
	datad => \U5|CNT_KEY_UP[3]~5_combout\,
	combout => \U5|CNT_KEY_UP[1]~7_combout\);

-- Location: FF_X33_Y11_N1
\U5|CNT_KEY_UP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U5|CNT_KEY_UP[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CNT_KEY_UP\(1));

-- Location: LCCOMB_X33_Y11_N2
\U5|CNT_KEY_UP[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CNT_KEY_UP[2]~8_combout\ = (!\U5|CNT_KEY_UP\(0)) # (!\U5|CNT_KEY_UP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|CNT_KEY_UP\(1),
	datac => \U5|CNT_KEY_UP\(0),
	combout => \U5|CNT_KEY_UP[2]~8_combout\);

-- Location: LCCOMB_X33_Y11_N26
\U5|CNT_KEY_UP[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CNT_KEY_UP[2]~10_combout\ = (\KEY_CLIENT[2]~input_o\ & (\U5|CNT_KEY_UP\(2) $ (((!\U5|CNT_KEY_UP\(3) & !\U5|CNT_KEY_UP[2]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[2]~input_o\,
	datab => \U5|CNT_KEY_UP\(3),
	datac => \U5|CNT_KEY_UP\(2),
	datad => \U5|CNT_KEY_UP[2]~8_combout\,
	combout => \U5|CNT_KEY_UP[2]~10_combout\);

-- Location: FF_X33_Y11_N27
\U5|CNT_KEY_UP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U5|CNT_KEY_UP[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CNT_KEY_UP\(2));

-- Location: LCCOMB_X33_Y11_N16
\U5|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|Add1~0_combout\ = (\U5|CNT_KEY_UP\(1) & \U5|CNT_KEY_UP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|CNT_KEY_UP\(1),
	datac => \U5|CNT_KEY_UP\(0),
	combout => \U5|Add1~0_combout\);

-- Location: LCCOMB_X33_Y11_N6
\U5|CNT_KEY_UP[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CNT_KEY_UP[3]~6_combout\ = (\KEY_CLIENT[2]~input_o\ & ((\U5|CNT_KEY_UP\(3)) # ((\U5|CNT_KEY_UP\(2) & \U5|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CNT_KEY_UP\(2),
	datab => \KEY_CLIENT[2]~input_o\,
	datac => \U5|CNT_KEY_UP\(3),
	datad => \U5|Add1~0_combout\,
	combout => \U5|CNT_KEY_UP[3]~6_combout\);

-- Location: FF_X33_Y11_N7
\U5|CNT_KEY_UP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U5|CNT_KEY_UP[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CNT_KEY_UP\(3));

-- Location: LCCOMB_X33_Y11_N30
\U5|CNT_KEY_UP[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CNT_KEY_UP[0]~9_combout\ = (\KEY_CLIENT[2]~input_o\ & ((\U5|CNT_KEY_UP\(0) & (\U5|CNT_KEY_UP\(3))) # (!\U5|CNT_KEY_UP\(0) & ((!\U5|CNT_KEY_UP[3]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[2]~input_o\,
	datab => \U5|CNT_KEY_UP\(3),
	datac => \U5|CNT_KEY_UP\(0),
	datad => \U5|CNT_KEY_UP[3]~5_combout\,
	combout => \U5|CNT_KEY_UP[0]~9_combout\);

-- Location: FF_X33_Y11_N31
\U5|CNT_KEY_UP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U5|CNT_KEY_UP[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|CNT_KEY_UP\(0));

-- Location: LCCOMB_X33_Y11_N12
\U5|CNT_KEY_UP[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CNT_KEY_UP[0]~4_combout\ = (\KEY_CLIENT[2]~input_o\ & \U5|CNT_KEY_UP\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY_CLIENT[2]~input_o\,
	datad => \U5|CNT_KEY_UP\(3),
	combout => \U5|CNT_KEY_UP[0]~4_combout\);

-- Location: LCCOMB_X33_Y11_N28
\U5|CNT_KEY_UP[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|CNT_KEY_UP[3]~5_combout\ = (\U5|CNT_KEY_UP[0]~4_combout\ & ((\U5|CNT_KEY_UP\(0)) # ((\U5|CNT_KEY_UP\(1)) # (\U5|CNT_KEY_UP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|CNT_KEY_UP\(0),
	datab => \U5|CNT_KEY_UP\(1),
	datac => \U5|CNT_KEY_UP\(2),
	datad => \U5|CNT_KEY_UP[0]~4_combout\,
	combout => \U5|CNT_KEY_UP[3]~5_combout\);

-- Location: LCCOMB_X33_Y11_N20
\U5|KEY_OUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|KEY_OUT~0_combout\ = (\U5|CNT_KEY_UP[3]~5_combout\ & (((!\KEY_CLIENT[2]~input_o\)))) # (!\U5|CNT_KEY_UP[3]~5_combout\ & ((\U5|KEY_OUT~q\) # ((\U5|LessThan0~0_combout\ & !\KEY_CLIENT[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|LessThan0~0_combout\,
	datab => \KEY_CLIENT[2]~input_o\,
	datac => \U5|KEY_OUT~q\,
	datad => \U5|CNT_KEY_UP[3]~5_combout\,
	combout => \U5|KEY_OUT~0_combout\);

-- Location: FF_X33_Y11_N21
\U5|KEY_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U5|KEY_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|KEY_OUT~q\);

-- Location: IOIBUF_X34_Y12_N22
\KEY_CLIENT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_CLIENT(1),
	o => \KEY_CLIENT[1]~input_o\);

-- Location: LCCOMB_X30_Y11_N12
\U4|CNT_KEY_DOWN[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT_KEY_DOWN[0]~1_combout\ = (!\KEY_CLIENT[1]~input_o\ & (\U4|CNT_KEY_DOWN\(0) $ (!\U4|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[1]~input_o\,
	datac => \U4|CNT_KEY_DOWN\(0),
	datad => \U4|LessThan0~0_combout\,
	combout => \U4|CNT_KEY_DOWN[0]~1_combout\);

-- Location: FF_X30_Y11_N13
\U4|CNT_KEY_DOWN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CNT_KEY_DOWN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CNT_KEY_DOWN\(0));

-- Location: LCCOMB_X30_Y11_N22
\U4|CNT_KEY_DOWN[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT_KEY_DOWN[1]~2_combout\ = (!\KEY_CLIENT[1]~input_o\ & (\U4|CNT_KEY_DOWN\(1) $ (((\U4|CNT_KEY_DOWN\(0) & !\U4|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[1]~input_o\,
	datab => \U4|CNT_KEY_DOWN\(0),
	datac => \U4|CNT_KEY_DOWN\(1),
	datad => \U4|LessThan0~0_combout\,
	combout => \U4|CNT_KEY_DOWN[1]~2_combout\);

-- Location: FF_X30_Y11_N23
\U4|CNT_KEY_DOWN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CNT_KEY_DOWN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CNT_KEY_DOWN\(1));

-- Location: LCCOMB_X30_Y11_N8
\U4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add0~0_combout\ = (\U4|CNT_KEY_DOWN\(1) & \U4|CNT_KEY_DOWN\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|CNT_KEY_DOWN\(1),
	datad => \U4|CNT_KEY_DOWN\(0),
	combout => \U4|Add0~0_combout\);

-- Location: LCCOMB_X30_Y11_N16
\U4|CNT_KEY_DOWN[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT_KEY_DOWN[2]~3_combout\ = (!\KEY_CLIENT[1]~input_o\ & (\U4|CNT_KEY_DOWN\(2) $ (((\U4|Add0~0_combout\ & !\U4|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[1]~input_o\,
	datab => \U4|Add0~0_combout\,
	datac => \U4|CNT_KEY_DOWN\(2),
	datad => \U4|LessThan0~0_combout\,
	combout => \U4|CNT_KEY_DOWN[2]~3_combout\);

-- Location: FF_X30_Y11_N17
\U4|CNT_KEY_DOWN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CNT_KEY_DOWN[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CNT_KEY_DOWN\(2));

-- Location: LCCOMB_X30_Y11_N26
\U4|CNT_KEY_DOWN[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT_KEY_DOWN[3]~0_combout\ = (!\KEY_CLIENT[1]~input_o\ & ((\U4|CNT_KEY_DOWN\(3)) # ((\U4|Add0~0_combout\ & \U4|CNT_KEY_DOWN\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[1]~input_o\,
	datab => \U4|Add0~0_combout\,
	datac => \U4|CNT_KEY_DOWN\(3),
	datad => \U4|CNT_KEY_DOWN\(2),
	combout => \U4|CNT_KEY_DOWN[3]~0_combout\);

-- Location: FF_X30_Y11_N27
\U4|CNT_KEY_DOWN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CNT_KEY_DOWN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CNT_KEY_DOWN\(3));

-- Location: LCCOMB_X30_Y11_N10
\U4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LessThan0~0_combout\ = (\U4|CNT_KEY_DOWN\(3) & ((\U4|CNT_KEY_DOWN\(2)) # ((\U4|CNT_KEY_DOWN\(1)) # (\U4|CNT_KEY_DOWN\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CNT_KEY_DOWN\(3),
	datab => \U4|CNT_KEY_DOWN\(2),
	datac => \U4|CNT_KEY_DOWN\(1),
	datad => \U4|CNT_KEY_DOWN\(0),
	combout => \U4|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y11_N6
\U4|CNT_KEY_UP[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT_KEY_UP[3]~2_combout\ = (\KEY_CLIENT[1]~input_o\ & ((\U4|CNT_KEY_UP\(3)) # ((\U4|CNT_KEY_UP\(2) & \U4|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[1]~input_o\,
	datab => \U4|CNT_KEY_UP\(2),
	datac => \U4|CNT_KEY_UP\(3),
	datad => \U4|Add1~0_combout\,
	combout => \U4|CNT_KEY_UP[3]~2_combout\);

-- Location: FF_X30_Y11_N7
\U4|CNT_KEY_UP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CNT_KEY_UP[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CNT_KEY_UP\(3));

-- Location: LCCOMB_X30_Y11_N18
\U4|CNT_KEY_UP[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT_KEY_UP[0]~3_combout\ = (!\U4|CNT_KEY_UP\(1) & !\U4|CNT_KEY_UP\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|CNT_KEY_UP\(1),
	datad => \U4|CNT_KEY_UP\(2),
	combout => \U4|CNT_KEY_UP[0]~3_combout\);

-- Location: LCCOMB_X30_Y11_N2
\U4|CNT_KEY_UP[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT_KEY_UP[0]~4_combout\ = (\KEY_CLIENT[1]~input_o\ & ((\U4|CNT_KEY_UP\(3) & ((\U4|CNT_KEY_UP\(0)) # (\U4|CNT_KEY_UP[0]~3_combout\))) # (!\U4|CNT_KEY_UP\(3) & (!\U4|CNT_KEY_UP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[1]~input_o\,
	datab => \U4|CNT_KEY_UP\(3),
	datac => \U4|CNT_KEY_UP\(0),
	datad => \U4|CNT_KEY_UP[0]~3_combout\,
	combout => \U4|CNT_KEY_UP[0]~4_combout\);

-- Location: FF_X30_Y11_N3
\U4|CNT_KEY_UP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CNT_KEY_UP[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CNT_KEY_UP\(0));

-- Location: LCCOMB_X30_Y11_N4
\U4|CNT_KEY_UP[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT_KEY_UP[1]~5_combout\ = (\U4|CNT_KEY_UP[0]~1_combout\ & (((\U4|CNT_KEY_UP\(1))))) # (!\U4|CNT_KEY_UP[0]~1_combout\ & (\KEY_CLIENT[1]~input_o\ & (\U4|CNT_KEY_UP\(0) $ (\U4|CNT_KEY_UP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[1]~input_o\,
	datab => \U4|CNT_KEY_UP\(0),
	datac => \U4|CNT_KEY_UP\(1),
	datad => \U4|CNT_KEY_UP[0]~1_combout\,
	combout => \U4|CNT_KEY_UP[1]~5_combout\);

-- Location: FF_X30_Y11_N5
\U4|CNT_KEY_UP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CNT_KEY_UP[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CNT_KEY_UP\(1));

-- Location: LCCOMB_X30_Y11_N28
\U4|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Add1~0_combout\ = (\U4|CNT_KEY_UP\(1) & \U4|CNT_KEY_UP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|CNT_KEY_UP\(1),
	datad => \U4|CNT_KEY_UP\(0),
	combout => \U4|Add1~0_combout\);

-- Location: LCCOMB_X30_Y11_N30
\U4|CNT_KEY_UP[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT_KEY_UP[2]~6_combout\ = (\U4|CNT_KEY_UP[0]~1_combout\ & (((\U4|CNT_KEY_UP\(2))))) # (!\U4|CNT_KEY_UP[0]~1_combout\ & (\KEY_CLIENT[1]~input_o\ & (\U4|Add1~0_combout\ $ (\U4|CNT_KEY_UP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_CLIENT[1]~input_o\,
	datab => \U4|Add1~0_combout\,
	datac => \U4|CNT_KEY_UP\(2),
	datad => \U4|CNT_KEY_UP[0]~1_combout\,
	combout => \U4|CNT_KEY_UP[2]~6_combout\);

-- Location: FF_X30_Y11_N31
\U4|CNT_KEY_UP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CNT_KEY_UP[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CNT_KEY_UP\(2));

-- Location: LCCOMB_X30_Y11_N20
\U4|CNT_KEY_UP[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT_KEY_UP[0]~0_combout\ = (\KEY_CLIENT[1]~input_o\ & \U4|CNT_KEY_UP\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY_CLIENT[1]~input_o\,
	datad => \U4|CNT_KEY_UP\(3),
	combout => \U4|CNT_KEY_UP[0]~0_combout\);

-- Location: LCCOMB_X30_Y11_N24
\U4|CNT_KEY_UP[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT_KEY_UP[0]~1_combout\ = (\U4|CNT_KEY_UP[0]~0_combout\ & ((\U4|CNT_KEY_UP\(2)) # ((\U4|CNT_KEY_UP\(0)) # (\U4|CNT_KEY_UP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CNT_KEY_UP\(2),
	datab => \U4|CNT_KEY_UP\(0),
	datac => \U4|CNT_KEY_UP\(1),
	datad => \U4|CNT_KEY_UP[0]~0_combout\,
	combout => \U4|CNT_KEY_UP[0]~1_combout\);

-- Location: LCCOMB_X30_Y11_N0
\U4|KEY_OUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|KEY_OUT~0_combout\ = (\U4|CNT_KEY_UP[0]~1_combout\ & (((!\KEY_CLIENT[1]~input_o\)))) # (!\U4|CNT_KEY_UP[0]~1_combout\ & ((\U4|KEY_OUT~q\) # ((\U4|LessThan0~0_combout\ & !\KEY_CLIENT[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|LessThan0~0_combout\,
	datab => \KEY_CLIENT[1]~input_o\,
	datac => \U4|KEY_OUT~q\,
	datad => \U4|CNT_KEY_UP[0]~1_combout\,
	combout => \U4|KEY_OUT~0_combout\);

-- Location: FF_X30_Y11_N1
\U4|KEY_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|KEY_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|KEY_OUT~q\);

-- Location: LCCOMB_X32_Y11_N22
\U1|ST~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|ST~0_combout\ = (!\U3|KEY_OUT~q\ & (\U1|ST~q\ & (!\U5|KEY_OUT~q\ & !\U4|KEY_OUT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|KEY_OUT~q\,
	datab => \U1|ST~q\,
	datac => \U5|KEY_OUT~q\,
	datad => \U4|KEY_OUT~q\,
	combout => \U1|ST~0_combout\);

-- Location: IOIBUF_X34_Y2_N22
\KEY_MASTER~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_MASTER,
	o => \KEY_MASTER~input_o\);

-- Location: LCCOMB_X33_Y10_N24
\U2|CNT_KEY_DOWN[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_DOWN[0]~1_combout\ = (!\KEY_MASTER~input_o\ & (\U2|CNT_KEY_DOWN\(0) $ (!\U2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_MASTER~input_o\,
	datac => \U2|CNT_KEY_DOWN\(0),
	datad => \U2|LessThan0~0_combout\,
	combout => \U2|CNT_KEY_DOWN[0]~1_combout\);

-- Location: FF_X33_Y10_N25
\U2|CNT_KEY_DOWN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|CNT_KEY_DOWN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_KEY_DOWN\(0));

-- Location: LCCOMB_X33_Y10_N30
\U2|CNT_KEY_DOWN[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_DOWN[1]~2_combout\ = (!\KEY_MASTER~input_o\ & (\U2|CNT_KEY_DOWN\(1) $ (((\U2|CNT_KEY_DOWN\(0) & !\U2|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_MASTER~input_o\,
	datab => \U2|CNT_KEY_DOWN\(0),
	datac => \U2|CNT_KEY_DOWN\(1),
	datad => \U2|LessThan0~0_combout\,
	combout => \U2|CNT_KEY_DOWN[1]~2_combout\);

-- Location: FF_X33_Y10_N31
\U2|CNT_KEY_DOWN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|CNT_KEY_DOWN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_KEY_DOWN\(1));

-- Location: LCCOMB_X33_Y10_N26
\U2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = (\U2|CNT_KEY_DOWN\(1) & \U2|CNT_KEY_DOWN\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|CNT_KEY_DOWN\(1),
	datad => \U2|CNT_KEY_DOWN\(0),
	combout => \U2|Add0~0_combout\);

-- Location: LCCOMB_X33_Y10_N4
\U2|CNT_KEY_DOWN[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_DOWN[2]~3_combout\ = (!\KEY_MASTER~input_o\ & (\U2|CNT_KEY_DOWN\(2) $ (((\U2|Add0~0_combout\ & !\U2|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~0_combout\,
	datab => \KEY_MASTER~input_o\,
	datac => \U2|CNT_KEY_DOWN\(2),
	datad => \U2|LessThan0~0_combout\,
	combout => \U2|CNT_KEY_DOWN[2]~3_combout\);

-- Location: FF_X33_Y10_N5
\U2|CNT_KEY_DOWN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|CNT_KEY_DOWN[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_KEY_DOWN\(2));

-- Location: LCCOMB_X33_Y10_N18
\U2|CNT_KEY_DOWN[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_DOWN[3]~0_combout\ = (!\KEY_MASTER~input_o\ & ((\U2|CNT_KEY_DOWN\(3)) # ((\U2|Add0~0_combout\ & \U2|CNT_KEY_DOWN\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~0_combout\,
	datab => \U2|CNT_KEY_DOWN\(2),
	datac => \U2|CNT_KEY_DOWN\(3),
	datad => \KEY_MASTER~input_o\,
	combout => \U2|CNT_KEY_DOWN[3]~0_combout\);

-- Location: FF_X33_Y10_N19
\U2|CNT_KEY_DOWN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|CNT_KEY_DOWN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_KEY_DOWN\(3));

-- Location: LCCOMB_X33_Y10_N10
\U2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~0_combout\ = (\U2|CNT_KEY_DOWN\(3) & ((\U2|CNT_KEY_DOWN\(1)) # ((\U2|CNT_KEY_DOWN\(0)) # (\U2|CNT_KEY_DOWN\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_KEY_DOWN\(1),
	datab => \U2|CNT_KEY_DOWN\(0),
	datac => \U2|CNT_KEY_DOWN\(2),
	datad => \U2|CNT_KEY_DOWN\(3),
	combout => \U2|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y10_N6
\U2|CNT_KEY_UP[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[3]~4_combout\ = (\KEY_MASTER~input_o\ & ((\U2|CNT_KEY_UP\(3)) # ((\U2|CNT_KEY_UP\(2) & \U2|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_MASTER~input_o\,
	datab => \U2|CNT_KEY_UP\(2),
	datac => \U2|CNT_KEY_UP\(3),
	datad => \U2|Add1~0_combout\,
	combout => \U2|CNT_KEY_UP[3]~4_combout\);

-- Location: FF_X33_Y10_N7
\U2|CNT_KEY_UP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|CNT_KEY_UP[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_KEY_UP\(3));

-- Location: LCCOMB_X33_Y10_N2
\U2|CNT_KEY_UP[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[0]~7_combout\ = (\KEY_MASTER~input_o\ & ((\U2|CNT_KEY_UP\(0) & (\U2|CNT_KEY_UP\(3))) # (!\U2|CNT_KEY_UP\(0) & ((!\U2|CNT_KEY_UP[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_MASTER~input_o\,
	datab => \U2|CNT_KEY_UP\(3),
	datac => \U2|CNT_KEY_UP\(0),
	datad => \U2|CNT_KEY_UP[3]~3_combout\,
	combout => \U2|CNT_KEY_UP[0]~7_combout\);

-- Location: FF_X33_Y10_N3
\U2|CNT_KEY_UP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|CNT_KEY_UP[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_KEY_UP\(0));

-- Location: LCCOMB_X33_Y10_N20
\U2|CNT_KEY_UP[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[1]~5_combout\ = (\U2|CNT_KEY_UP[3]~3_combout\ & (((\U2|CNT_KEY_UP\(1))))) # (!\U2|CNT_KEY_UP[3]~3_combout\ & (\KEY_MASTER~input_o\ & (\U2|CNT_KEY_UP\(0) $ (\U2|CNT_KEY_UP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_MASTER~input_o\,
	datab => \U2|CNT_KEY_UP\(0),
	datac => \U2|CNT_KEY_UP\(1),
	datad => \U2|CNT_KEY_UP[3]~3_combout\,
	combout => \U2|CNT_KEY_UP[1]~5_combout\);

-- Location: FF_X33_Y10_N21
\U2|CNT_KEY_UP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|CNT_KEY_UP[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_KEY_UP\(1));

-- Location: LCCOMB_X33_Y10_N28
\U2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add1~0_combout\ = (\U2|CNT_KEY_UP\(1) & \U2|CNT_KEY_UP\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|CNT_KEY_UP\(1),
	datad => \U2|CNT_KEY_UP\(0),
	combout => \U2|Add1~0_combout\);

-- Location: LCCOMB_X33_Y10_N22
\U2|CNT_KEY_UP[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[2]~6_combout\ = (\U2|CNT_KEY_UP[3]~3_combout\ & (((\U2|CNT_KEY_UP\(2))))) # (!\U2|CNT_KEY_UP[3]~3_combout\ & (\KEY_MASTER~input_o\ & (\U2|Add1~0_combout\ $ (\U2|CNT_KEY_UP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_MASTER~input_o\,
	datab => \U2|Add1~0_combout\,
	datac => \U2|CNT_KEY_UP\(2),
	datad => \U2|CNT_KEY_UP[3]~3_combout\,
	combout => \U2|CNT_KEY_UP[2]~6_combout\);

-- Location: FF_X33_Y10_N23
\U2|CNT_KEY_UP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|CNT_KEY_UP[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_KEY_UP\(2));

-- Location: LCCOMB_X33_Y10_N12
\U2|CNT_KEY_UP[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[0]~2_combout\ = (\KEY_MASTER~input_o\ & \U2|CNT_KEY_UP\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY_MASTER~input_o\,
	datad => \U2|CNT_KEY_UP\(3),
	combout => \U2|CNT_KEY_UP[0]~2_combout\);

-- Location: LCCOMB_X33_Y10_N16
\U2|CNT_KEY_UP[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[3]~3_combout\ = (\U2|CNT_KEY_UP[0]~2_combout\ & ((\U2|CNT_KEY_UP\(2)) # ((\U2|CNT_KEY_UP\(0)) # (\U2|CNT_KEY_UP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_KEY_UP\(2),
	datab => \U2|CNT_KEY_UP\(0),
	datac => \U2|CNT_KEY_UP\(1),
	datad => \U2|CNT_KEY_UP[0]~2_combout\,
	combout => \U2|CNT_KEY_UP[3]~3_combout\);

-- Location: LCCOMB_X33_Y10_N0
\U2|KEY_OUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|KEY_OUT~0_combout\ = (\U2|CNT_KEY_UP[3]~3_combout\ & (((!\KEY_MASTER~input_o\)))) # (!\U2|CNT_KEY_UP[3]~3_combout\ & ((\U2|KEY_OUT~q\) # ((\U2|LessThan0~0_combout\ & !\KEY_MASTER~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~0_combout\,
	datab => \KEY_MASTER~input_o\,
	datac => \U2|KEY_OUT~q\,
	datad => \U2|CNT_KEY_UP[3]~3_combout\,
	combout => \U2|KEY_OUT~0_combout\);

-- Location: FF_X33_Y10_N1
\U2|KEY_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|KEY_OUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|KEY_OUT~q\);

-- Location: LCCOMB_X32_Y11_N18
\U1|ST~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|ST~1_combout\ = (\U1|ST~0_combout\) # ((!\U1|ST~q\ & \U2|KEY_OUT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|ST~0_combout\,
	datac => \U1|ST~q\,
	datad => \U2|KEY_OUT~q\,
	combout => \U1|ST~1_combout\);

-- Location: LCCOMB_X32_Y11_N12
\U1|ST~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|ST~feeder_combout\ = \U1|ST~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|ST~1_combout\,
	combout => \U1|ST~feeder_combout\);

-- Location: FF_X32_Y11_N13
\U1|ST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	d => \U1|ST~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ST~q\);

-- Location: CLKCTRL_G9
\U1|ST~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|ST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|ST~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y11_N18
\U1|LED[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LED\(0) = (GLOBAL(\U1|ST~clkctrl_outclk\) & ((\U3|KEY_OUT~q\))) # (!GLOBAL(\U1|ST~clkctrl_outclk\) & (\U1|LED\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|LED\(0),
	datac => \U1|ST~clkctrl_outclk\,
	datad => \U3|KEY_OUT~q\,
	combout => \U1|LED\(0));

-- Location: LCCOMB_X30_Y11_N14
\U1|LED[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LED\(1) = (GLOBAL(\U1|ST~clkctrl_outclk\) & ((\U4|KEY_OUT~q\))) # (!GLOBAL(\U1|ST~clkctrl_outclk\) & (\U1|LED\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|LED\(1),
	datac => \U1|ST~clkctrl_outclk\,
	datad => \U4|KEY_OUT~q\,
	combout => \U1|LED\(1));

-- Location: LCCOMB_X33_Y11_N18
\U1|LED[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LED\(2) = (GLOBAL(\U1|ST~clkctrl_outclk\) & ((\U5|KEY_OUT~q\))) # (!GLOBAL(\U1|ST~clkctrl_outclk\) & (\U1|LED\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|LED\(2),
	datac => \U1|ST~clkctrl_outclk\,
	datad => \U5|KEY_OUT~q\,
	combout => \U1|LED\(2));

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;
END structure;


