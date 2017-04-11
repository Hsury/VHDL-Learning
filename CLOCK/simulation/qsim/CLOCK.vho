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

-- DATE "04/11/2017 13:10:48"

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

ENTITY 	CLOCK IS
    PORT (
	CLK_50MHZ : IN std_logic;
	KEY_ENA : IN std_logic;
	KEY_RST : IN std_logic;
	DUAN : BUFFER std_logic_vector(7 DOWNTO 0);
	WEI : BUFFER std_logic_vector(5 DOWNTO 0);
	BUZZER : BUFFER std_logic
	);
END CLOCK;

-- Design Ports Information
-- DUAN[0]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[1]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[2]	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[3]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[4]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[5]	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[6]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DUAN[7]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[0]	=>  Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[1]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[2]	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[3]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[4]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- WEI[5]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- BUZZER	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLK_50MHZ	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY_RST	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY_ENA	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CLOCK IS
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
SIGNAL ww_KEY_ENA : std_logic;
SIGNAL ww_KEY_RST : std_logic;
SIGNAL ww_DUAN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WEI : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_BUZZER : std_logic;
SIGNAL \U0|CLK_1KHZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U0|CLK_1HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50MHZ~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DUAN[0]~output_o\ : std_logic;
SIGNAL \DUAN[1]~output_o\ : std_logic;
SIGNAL \DUAN[2]~output_o\ : std_logic;
SIGNAL \DUAN[3]~output_o\ : std_logic;
SIGNAL \DUAN[4]~output_o\ : std_logic;
SIGNAL \DUAN[5]~output_o\ : std_logic;
SIGNAL \DUAN[6]~output_o\ : std_logic;
SIGNAL \DUAN[7]~output_o\ : std_logic;
SIGNAL \WEI[0]~output_o\ : std_logic;
SIGNAL \WEI[1]~output_o\ : std_logic;
SIGNAL \WEI[2]~output_o\ : std_logic;
SIGNAL \WEI[3]~output_o\ : std_logic;
SIGNAL \WEI[4]~output_o\ : std_logic;
SIGNAL \WEI[5]~output_o\ : std_logic;
SIGNAL \BUZZER~output_o\ : std_logic;
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
SIGNAL \U0|CNT_1KHZ~15_combout\ : std_logic;
SIGNAL \U0|Add0~9\ : std_logic;
SIGNAL \U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|Add0~11\ : std_logic;
SIGNAL \U0|Add0~13\ : std_logic;
SIGNAL \U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|Add0~15\ : std_logic;
SIGNAL \U0|Add0~16_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~19_combout\ : std_logic;
SIGNAL \U0|Add0~17\ : std_logic;
SIGNAL \U0|Add0~18_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~16_combout\ : std_logic;
SIGNAL \U0|Add0~19\ : std_logic;
SIGNAL \U0|Add0~20_combout\ : std_logic;
SIGNAL \U0|Add0~21\ : std_logic;
SIGNAL \U0|Add0~22_combout\ : std_logic;
SIGNAL \U0|Add0~23\ : std_logic;
SIGNAL \U0|Add0~24_combout\ : std_logic;
SIGNAL \U0|Add0~25\ : std_logic;
SIGNAL \U0|Add0~26_combout\ : std_logic;
SIGNAL \U0|Equal0~3_combout\ : std_logic;
SIGNAL \U0|Equal0~0_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~12_combout\ : std_logic;
SIGNAL \U0|Add0~27\ : std_logic;
SIGNAL \U0|Add0~29\ : std_logic;
SIGNAL \U0|Add0~30_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~18_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~14_combout\ : std_logic;
SIGNAL \U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~17_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~13_combout\ : std_logic;
SIGNAL \U0|Add0~28_combout\ : std_logic;
SIGNAL \U0|CNT_1KHZ~20_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~1_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~0_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~2_combout\ : std_logic;
SIGNAL \U0|Equal0~1_combout\ : std_logic;
SIGNAL \U0|Equal0~2_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~3_combout\ : std_logic;
SIGNAL \U0|CLK_1KHZ~q\ : std_logic;
SIGNAL \U0|CLK_1KHZ~clkctrl_outclk\ : std_logic;
SIGNAL \U4|CURSOR[0]~0_combout\ : std_logic;
SIGNAL \U0|Add1~0_combout\ : std_logic;
SIGNAL \U0|Add1~1\ : std_logic;
SIGNAL \U0|Add1~2_combout\ : std_logic;
SIGNAL \U0|Add1~3\ : std_logic;
SIGNAL \U0|Add1~4_combout\ : std_logic;
SIGNAL \U0|Add1~5\ : std_logic;
SIGNAL \U0|Add1~6_combout\ : std_logic;
SIGNAL \U0|Add1~9\ : std_logic;
SIGNAL \U0|Add1~10_combout\ : std_logic;
SIGNAL \U0|CNT_1HZ~5_combout\ : std_logic;
SIGNAL \U0|Add1~11\ : std_logic;
SIGNAL \U0|Add1~12_combout\ : std_logic;
SIGNAL \U0|CNT_1HZ~4_combout\ : std_logic;
SIGNAL \U0|Add1~13\ : std_logic;
SIGNAL \U0|Add1~14_combout\ : std_logic;
SIGNAL \U0|CNT_1HZ~3_combout\ : std_logic;
SIGNAL \U0|Add1~15\ : std_logic;
SIGNAL \U0|Add1~16_combout\ : std_logic;
SIGNAL \U0|CNT_1HZ~2_combout\ : std_logic;
SIGNAL \U0|Equal4~0_combout\ : std_logic;
SIGNAL \U0|Add1~17\ : std_logic;
SIGNAL \U0|Add1~18_combout\ : std_logic;
SIGNAL \U0|CNT_1HZ~7_combout\ : std_logic;
SIGNAL \U0|CNT_1HZ~0_combout\ : std_logic;
SIGNAL \U0|CNT_1HZ~1_combout\ : std_logic;
SIGNAL \U0|CNT_1HZ~6_combout\ : std_logic;
SIGNAL \U0|Add1~7\ : std_logic;
SIGNAL \U0|Add1~8_combout\ : std_logic;
SIGNAL \U0|CLK_1HZ~0_combout\ : std_logic;
SIGNAL \U0|CLK_1HZ~1_combout\ : std_logic;
SIGNAL \U0|CLK_1HZ~3_combout\ : std_logic;
SIGNAL \U0|CLK_1HZ~2_combout\ : std_logic;
SIGNAL \U0|CLK_1HZ~4_combout\ : std_logic;
SIGNAL \U0|CLK_1HZ~feeder_combout\ : std_logic;
SIGNAL \U0|CLK_1HZ~q\ : std_logic;
SIGNAL \U0|CLK_1HZ~clkctrl_outclk\ : std_logic;
SIGNAL \U1|SECOND_LOW~1_combout\ : std_logic;
SIGNAL \KEY_RST~input_o\ : std_logic;
SIGNAL \U3|CNT_KEY_DOWN[0]~1_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_DOWN[1]~2_combout\ : std_logic;
SIGNAL \U3|Add0~0_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_DOWN[2]~3_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_DOWN[3]~0_combout\ : std_logic;
SIGNAL \U3|LessThan0~0_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[3]~2_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[1]~5_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[0]~3_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[0]~4_combout\ : std_logic;
SIGNAL \U3|Add1~0_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[2]~6_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[0]~0_combout\ : std_logic;
SIGNAL \U3|CNT_KEY_UP[3]~1_combout\ : std_logic;
SIGNAL \U3|KEY_OUT~0_combout\ : std_logic;
SIGNAL \U3|KEY_OUT~feeder_combout\ : std_logic;
SIGNAL \U3|KEY_OUT~q\ : std_logic;
SIGNAL \KEY_ENA~input_o\ : std_logic;
SIGNAL \U2|CNT_KEY_DOWN[0]~1_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_DOWN[1]~2_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_DOWN[2]~3_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_DOWN[3]~0_combout\ : std_logic;
SIGNAL \U2|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|Add1~0_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[2]~6_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[3]~2_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[0]~3_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[0]~4_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[1]~5_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[0]~0_combout\ : std_logic;
SIGNAL \U2|CNT_KEY_UP[3]~1_combout\ : std_logic;
SIGNAL \U2|KEY_OUT~0_combout\ : std_logic;
SIGNAL \U2|KEY_OUT~feeder_combout\ : std_logic;
SIGNAL \U2|KEY_OUT~q\ : std_logic;
SIGNAL \U1|PAUSE~0_combout\ : std_logic;
SIGNAL \U1|PAUSE~feeder_combout\ : std_logic;
SIGNAL \U1|PAUSE~q\ : std_logic;
SIGNAL \U1|SECOND_LOW~0_combout\ : std_logic;
SIGNAL \U1|SECOND_LOW~3_combout\ : std_logic;
SIGNAL \U1|SECOND_LOW~2_combout\ : std_logic;
SIGNAL \U1|process_0~2_combout\ : std_logic;
SIGNAL \U1|LessThan2~0_combout\ : std_logic;
SIGNAL \U1|SECOND_HIGH[0]~2_combout\ : std_logic;
SIGNAL \U1|SECOND_HIGH~4_combout\ : std_logic;
SIGNAL \U1|SECOND_HIGH[2]~3_combout\ : std_logic;
SIGNAL \U1|SECOND_HIGH~5_combout\ : std_logic;
SIGNAL \U4|DATA_OUT[1]~1_combout\ : std_logic;
SIGNAL \U1|MINUTE_LOW~2_combout\ : std_logic;
SIGNAL \U1|process_0~3_combout\ : std_logic;
SIGNAL \U1|MINUTE_LOW[3]~1_combout\ : std_logic;
SIGNAL \U1|MINUTE_LOW~3_combout\ : std_logic;
SIGNAL \U1|MINUTE_LOW~4_combout\ : std_logic;
SIGNAL \U1|MINUTE_LOW~0_combout\ : std_logic;
SIGNAL \U1|process_0~5_combout\ : std_logic;
SIGNAL \U1|MINUTE_HIGH[0]~3_combout\ : std_logic;
SIGNAL \U1|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|MINUTE_HIGH[2]~0_combout\ : std_logic;
SIGNAL \U1|MINUTE_HIGH~2_combout\ : std_logic;
SIGNAL \U1|MINUTE_HIGH~1_combout\ : std_logic;
SIGNAL \U4|CNT~1_combout\ : std_logic;
SIGNAL \U4|CNT~0_combout\ : std_logic;
SIGNAL \U1|process_0~6_combout\ : std_logic;
SIGNAL \U1|HOUR_HIGH[0]~0_combout\ : std_logic;
SIGNAL \U1|HOUR_LOW~8_combout\ : std_logic;
SIGNAL \U1|HOUR_LOW[3]~5_combout\ : std_logic;
SIGNAL \U1|process_0~7_combout\ : std_logic;
SIGNAL \U1|HOUR_LOW~7_combout\ : std_logic;
SIGNAL \U1|process_0~4_combout\ : std_logic;
SIGNAL \U1|HOUR_HIGH[1]~2_combout\ : std_logic;
SIGNAL \U1|HOUR_HIGH[0]~1_combout\ : std_logic;
SIGNAL \U1|HOUR_LOW[3]~2_combout\ : std_logic;
SIGNAL \U1|HOUR_LOW[3]~3_combout\ : std_logic;
SIGNAL \U1|HOUR_LOW~4_combout\ : std_logic;
SIGNAL \U1|HOUR_LOW~6_combout\ : std_logic;
SIGNAL \U4|Mux2~0_combout\ : std_logic;
SIGNAL \U4|Mux2~1_combout\ : std_logic;
SIGNAL \U4|Mux0~0_combout\ : std_logic;
SIGNAL \U4|Mux0~1_combout\ : std_logic;
SIGNAL \U4|Mux1~0_combout\ : std_logic;
SIGNAL \U4|Mux1~1_combout\ : std_logic;
SIGNAL \U4|Mux1~2_combout\ : std_logic;
SIGNAL \U4|DATA_OUT[0]~0_combout\ : std_logic;
SIGNAL \U4|Mux3~0_combout\ : std_logic;
SIGNAL \U4|Mux3~1_combout\ : std_logic;
SIGNAL \U6|Mux7~0_combout\ : std_logic;
SIGNAL \U6|Mux6~0_combout\ : std_logic;
SIGNAL \U6|Mux5~0_combout\ : std_logic;
SIGNAL \U6|Mux4~0_combout\ : std_logic;
SIGNAL \U6|Mux3~0_combout\ : std_logic;
SIGNAL \U6|Mux2~0_combout\ : std_logic;
SIGNAL \U6|Mux1~0_combout\ : std_logic;
SIGNAL \U4|Mux4~0_combout\ : std_logic;
SIGNAL \U4|DP_OUT~q\ : std_logic;
SIGNAL \U6|Mux0~0_combout\ : std_logic;
SIGNAL \U4|CURSOR[2]~feeder_combout\ : std_logic;
SIGNAL \U4|CURSOR[1]~feeder_combout\ : std_logic;
SIGNAL \U5|RotateRight0~0_combout\ : std_logic;
SIGNAL \U5|RotateRight0~1_combout\ : std_logic;
SIGNAL \U5|RotateRight0~2_combout\ : std_logic;
SIGNAL \U5|RotateRight0~3_combout\ : std_logic;
SIGNAL \U5|RotateRight0~4_combout\ : std_logic;
SIGNAL \U5|RotateRight0~5_combout\ : std_logic;
SIGNAL \U1|process_0~8_combout\ : std_logic;
SIGNAL \U1|CO_SECOND~q\ : std_logic;
SIGNAL \U1|MINUTE_HIGH\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U4|DATA_OUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|HOUR_LOW\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|CURSOR\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|SECOND_LOW\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|SECOND_HIGH\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U3|CNT_KEY_DOWN\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|MINUTE_LOW\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|HOUR_HIGH\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U0|CNT_1KHZ\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U4|CNT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U0|CNT_1HZ\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U3|CNT_KEY_UP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|CNT_KEY_UP\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|CNT_KEY_DOWN\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_PAUSE~q\ : std_logic;
SIGNAL \U3|ALT_INV_KEY_OUT~q\ : std_logic;
SIGNAL \U4|ALT_INV_CNT\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \U1|ALT_INV_CO_SECOND~q\ : std_logic;
SIGNAL \U4|ALT_INV_CURSOR\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U6|ALT_INV_Mux1~0_combout\ : std_logic;

BEGIN

ww_CLK_50MHZ <= CLK_50MHZ;
ww_KEY_ENA <= KEY_ENA;
ww_KEY_RST <= KEY_RST;
DUAN <= ww_DUAN;
WEI <= ww_WEI;
BUZZER <= ww_BUZZER;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U0|CLK_1KHZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|CLK_1KHZ~q\);

\U0|CLK_1HZ~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U0|CLK_1HZ~q\);

\CLK_50MHZ~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_50MHZ~input_o\);
\U1|ALT_INV_PAUSE~q\ <= NOT \U1|PAUSE~q\;
\U3|ALT_INV_KEY_OUT~q\ <= NOT \U3|KEY_OUT~q\;
\U4|ALT_INV_CNT\(2) <= NOT \U4|CNT\(2);
\U1|ALT_INV_CO_SECOND~q\ <= NOT \U1|CO_SECOND~q\;
\U4|ALT_INV_CURSOR\(0) <= NOT \U4|CURSOR\(0);
\U6|ALT_INV_Mux1~0_combout\ <= NOT \U6|Mux1~0_combout\;

-- Location: IOOBUF_X30_Y0_N2
\DUAN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[0]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\DUAN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[1]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\DUAN[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\DUAN[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\DUAN[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\DUAN[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\DUAN[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[6]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\DUAN[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U6|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \DUAN[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\WEI[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|RotateRight0~0_combout\,
	devoe => ww_devoe,
	o => \WEI[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\WEI[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|RotateRight0~1_combout\,
	devoe => ww_devoe,
	o => \WEI[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\WEI[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|RotateRight0~2_combout\,
	devoe => ww_devoe,
	o => \WEI[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\WEI[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|RotateRight0~3_combout\,
	devoe => ww_devoe,
	o => \WEI[3]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\WEI[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|RotateRight0~4_combout\,
	devoe => ww_devoe,
	o => \WEI[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\WEI[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|RotateRight0~5_combout\,
	devoe => ww_devoe,
	o => \WEI[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\BUZZER~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|ALT_INV_CO_SECOND~q\,
	devoe => ww_devoe,
	o => \BUZZER~output_o\);

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

-- Location: LCCOMB_X5_Y9_N0
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

-- Location: FF_X5_Y9_N1
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

-- Location: LCCOMB_X5_Y9_N2
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

-- Location: FF_X5_Y9_N3
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

-- Location: LCCOMB_X5_Y9_N4
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

-- Location: FF_X5_Y9_N5
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

-- Location: LCCOMB_X5_Y9_N6
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

-- Location: FF_X5_Y9_N7
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

-- Location: LCCOMB_X5_Y9_N8
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

-- Location: LCCOMB_X6_Y9_N4
\U0|CNT_1KHZ~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~15_combout\ = (\U0|Add0~8_combout\ & (((!\U0|CNT_1KHZ~12_combout\) # (!\U0|CNT_1KHZ~14_combout\)) # (!\U0|CNT_1KHZ~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ~13_combout\,
	datab => \U0|CNT_1KHZ~14_combout\,
	datac => \U0|CNT_1KHZ~12_combout\,
	datad => \U0|Add0~8_combout\,
	combout => \U0|CNT_1KHZ~15_combout\);

-- Location: FF_X6_Y9_N5
\U0|CNT_1KHZ[4]\ : dffeas
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
	q => \U0|CNT_1KHZ\(4));

-- Location: LCCOMB_X5_Y9_N10
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

-- Location: FF_X5_Y9_N11
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

-- Location: LCCOMB_X5_Y9_N12
\U0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~12_combout\ = (\U0|CNT_1KHZ\(6) & (\U0|Add0~11\ $ (GND))) # (!\U0|CNT_1KHZ\(6) & (!\U0|Add0~11\ & VCC))
-- \U0|Add0~13\ = CARRY((\U0|CNT_1KHZ\(6) & !\U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(6),
	datad => VCC,
	cin => \U0|Add0~11\,
	combout => \U0|Add0~12_combout\,
	cout => \U0|Add0~13\);

-- Location: LCCOMB_X5_Y9_N14
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

-- Location: FF_X5_Y9_N15
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

-- Location: LCCOMB_X5_Y9_N16
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

-- Location: LCCOMB_X6_Y9_N30
\U0|CNT_1KHZ~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~19_combout\ = (\U0|Add0~16_combout\ & (((!\U0|CNT_1KHZ~14_combout\) # (!\U0|CNT_1KHZ~12_combout\)) # (!\U0|CNT_1KHZ~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ~13_combout\,
	datab => \U0|CNT_1KHZ~12_combout\,
	datac => \U0|Add0~16_combout\,
	datad => \U0|CNT_1KHZ~14_combout\,
	combout => \U0|CNT_1KHZ~19_combout\);

-- Location: FF_X6_Y9_N31
\U0|CNT_1KHZ[8]\ : dffeas
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
	q => \U0|CNT_1KHZ\(8));

-- Location: LCCOMB_X5_Y9_N18
\U0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add0~18_combout\ = (\U0|CNT_1KHZ\(9) & (!\U0|Add0~17\)) # (!\U0|CNT_1KHZ\(9) & ((\U0|Add0~17\) # (GND)))
-- \U0|Add0~19\ = CARRY((!\U0|Add0~17\) # (!\U0|CNT_1KHZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1KHZ\(9),
	datad => VCC,
	cin => \U0|Add0~17\,
	combout => \U0|Add0~18_combout\,
	cout => \U0|Add0~19\);

-- Location: LCCOMB_X6_Y9_N0
\U0|CNT_1KHZ~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~16_combout\ = (\U0|Add0~18_combout\ & (((!\U0|CNT_1KHZ~12_combout\) # (!\U0|CNT_1KHZ~14_combout\)) # (!\U0|CNT_1KHZ~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ~13_combout\,
	datab => \U0|CNT_1KHZ~14_combout\,
	datac => \U0|CNT_1KHZ~12_combout\,
	datad => \U0|Add0~18_combout\,
	combout => \U0|CNT_1KHZ~16_combout\);

-- Location: FF_X6_Y9_N1
\U0|CNT_1KHZ[9]\ : dffeas
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
	q => \U0|CNT_1KHZ\(9));

-- Location: LCCOMB_X5_Y9_N20
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

-- Location: FF_X5_Y9_N21
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

-- Location: LCCOMB_X5_Y9_N22
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

-- Location: FF_X5_Y9_N23
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

-- Location: LCCOMB_X5_Y9_N24
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

-- Location: FF_X5_Y9_N25
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

-- Location: LCCOMB_X5_Y9_N26
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

-- Location: FF_X5_Y9_N27
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

-- Location: LCCOMB_X6_Y9_N10
\U0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Equal0~3_combout\ = (!\U0|CNT_1KHZ\(5) & (!\U0|CNT_1KHZ\(13) & !\U0|CNT_1KHZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(5),
	datac => \U0|CNT_1KHZ\(13),
	datad => \U0|CNT_1KHZ\(7),
	combout => \U0|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y9_N20
\U0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Equal0~0_combout\ = (!\U0|CNT_1KHZ\(12) & (!\U0|CNT_1KHZ\(11) & (!\U0|CNT_1KHZ\(4) & !\U0|CNT_1KHZ\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(12),
	datab => \U0|CNT_1KHZ\(11),
	datac => \U0|CNT_1KHZ\(4),
	datad => \U0|CNT_1KHZ\(10),
	combout => \U0|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y9_N8
\U0|CNT_1KHZ~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~12_combout\ = (\U0|Equal0~3_combout\ & (\U0|CNT_1KHZ\(9) & \U0|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal0~3_combout\,
	datab => \U0|CNT_1KHZ\(9),
	datad => \U0|Equal0~0_combout\,
	combout => \U0|CNT_1KHZ~12_combout\);

-- Location: LCCOMB_X5_Y9_N28
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

-- Location: LCCOMB_X5_Y9_N30
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

-- Location: LCCOMB_X6_Y9_N14
\U0|CNT_1KHZ~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~18_combout\ = (\U0|Add0~30_combout\ & (((!\U0|CNT_1KHZ~12_combout\) # (!\U0|CNT_1KHZ~14_combout\)) # (!\U0|CNT_1KHZ~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ~13_combout\,
	datab => \U0|CNT_1KHZ~14_combout\,
	datac => \U0|CNT_1KHZ~12_combout\,
	datad => \U0|Add0~30_combout\,
	combout => \U0|CNT_1KHZ~18_combout\);

-- Location: FF_X6_Y9_N15
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

-- Location: LCCOMB_X7_Y9_N24
\U0|CNT_1KHZ~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~14_combout\ = (\U0|CNT_1KHZ\(0) & (\U0|CNT_1KHZ\(2) & (\U0|CNT_1KHZ\(1) & \U0|CNT_1KHZ\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(0),
	datab => \U0|CNT_1KHZ\(2),
	datac => \U0|CNT_1KHZ\(1),
	datad => \U0|CNT_1KHZ\(15),
	combout => \U0|CNT_1KHZ~14_combout\);

-- Location: LCCOMB_X6_Y9_N6
\U0|CNT_1KHZ~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~17_combout\ = (\U0|Add0~12_combout\ & (((!\U0|CNT_1KHZ~12_combout\) # (!\U0|CNT_1KHZ~14_combout\)) # (!\U0|CNT_1KHZ~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ~13_combout\,
	datab => \U0|CNT_1KHZ~14_combout\,
	datac => \U0|CNT_1KHZ~12_combout\,
	datad => \U0|Add0~12_combout\,
	combout => \U0|CNT_1KHZ~17_combout\);

-- Location: FF_X6_Y9_N7
\U0|CNT_1KHZ[6]\ : dffeas
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
	q => \U0|CNT_1KHZ\(6));

-- Location: LCCOMB_X6_Y9_N26
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

-- Location: LCCOMB_X6_Y9_N2
\U0|CNT_1KHZ~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1KHZ~20_combout\ = (\U0|Add0~28_combout\ & (((!\U0|CNT_1KHZ~12_combout\) # (!\U0|CNT_1KHZ~14_combout\)) # (!\U0|CNT_1KHZ~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ~13_combout\,
	datab => \U0|CNT_1KHZ~14_combout\,
	datac => \U0|CNT_1KHZ~12_combout\,
	datad => \U0|Add0~28_combout\,
	combout => \U0|CNT_1KHZ~20_combout\);

-- Location: FF_X6_Y9_N3
\U0|CNT_1KHZ[14]\ : dffeas
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
	q => \U0|CNT_1KHZ\(14));

-- Location: LCCOMB_X6_Y9_N24
\U0|CLK_1KHZ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1KHZ~1_combout\ = (\U0|CLK_1KHZ~q\ & (\U0|CNT_1KHZ\(3) & \U0|CNT_1KHZ\(14))) # (!\U0|CLK_1KHZ~q\ & ((\U0|CNT_1KHZ\(3)) # (\U0|CNT_1KHZ\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CLK_1KHZ~q\,
	datac => \U0|CNT_1KHZ\(3),
	datad => \U0|CNT_1KHZ\(14),
	combout => \U0|CLK_1KHZ~1_combout\);

-- Location: LCCOMB_X6_Y9_N16
\U0|CLK_1KHZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1KHZ~0_combout\ = (\U0|CNT_1KHZ\(5) & (\U0|CNT_1KHZ\(13) & \U0|CNT_1KHZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(5),
	datac => \U0|CNT_1KHZ\(13),
	datad => \U0|CNT_1KHZ\(7),
	combout => \U0|CLK_1KHZ~0_combout\);

-- Location: LCCOMB_X6_Y9_N28
\U0|CLK_1KHZ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1KHZ~2_combout\ = (\U0|CLK_1KHZ~1_combout\ & (\U0|CLK_1KHZ~0_combout\ & (\U0|CNT_1KHZ\(8)))) # (!\U0|CLK_1KHZ~1_combout\ & (((!\U0|CNT_1KHZ\(8) & \U0|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CLK_1KHZ~1_combout\,
	datab => \U0|CLK_1KHZ~0_combout\,
	datac => \U0|CNT_1KHZ\(8),
	datad => \U0|Equal0~3_combout\,
	combout => \U0|CLK_1KHZ~2_combout\);

-- Location: LCCOMB_X6_Y9_N22
\U0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Equal0~1_combout\ = (!\U0|CNT_1KHZ\(6) & (!\U0|CNT_1KHZ\(9) & (!\U0|CNT_1KHZ\(2) & !\U0|CNT_1KHZ\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(6),
	datab => \U0|CNT_1KHZ\(9),
	datac => \U0|CNT_1KHZ\(2),
	datad => \U0|CNT_1KHZ\(1),
	combout => \U0|Equal0~1_combout\);

-- Location: LCCOMB_X6_Y9_N12
\U0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Equal0~2_combout\ = (!\U0|CNT_1KHZ\(0) & (!\U0|CNT_1KHZ\(15) & (\U0|Equal0~1_combout\ & \U0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1KHZ\(0),
	datab => \U0|CNT_1KHZ\(15),
	datac => \U0|Equal0~1_combout\,
	datad => \U0|Equal0~0_combout\,
	combout => \U0|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y9_N18
\U0|CLK_1KHZ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1KHZ~3_combout\ = (\U0|CLK_1KHZ~2_combout\ & ((\U0|Equal0~2_combout\ & ((!\U0|CNT_1KHZ\(8)))) # (!\U0|Equal0~2_combout\ & (\U0|CLK_1KHZ~q\)))) # (!\U0|CLK_1KHZ~2_combout\ & (\U0|CLK_1KHZ~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CLK_1KHZ~2_combout\,
	datab => \U0|CLK_1KHZ~q\,
	datac => \U0|CNT_1KHZ\(8),
	datad => \U0|Equal0~2_combout\,
	combout => \U0|CLK_1KHZ~3_combout\);

-- Location: FF_X6_Y9_N9
\U0|CLK_1KHZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_50MHZ~inputclkctrl_outclk\,
	asdata => \U0|CLK_1KHZ~3_combout\,
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

-- Location: LCCOMB_X32_Y7_N16
\U4|CURSOR[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CURSOR[0]~0_combout\ = !\U4|CURSOR\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|CURSOR\(0),
	combout => \U4|CURSOR[0]~0_combout\);

-- Location: FF_X32_Y7_N17
\U4|CURSOR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CURSOR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CURSOR\(0));

-- Location: LCCOMB_X33_Y9_N2
\U0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add1~0_combout\ = \U0|CNT_1HZ\(0) $ (VCC)
-- \U0|Add1~1\ = CARRY(\U0|CNT_1HZ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1HZ\(0),
	datad => VCC,
	combout => \U0|Add1~0_combout\,
	cout => \U0|Add1~1\);

-- Location: FF_X33_Y9_N3
\U0|CNT_1HZ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U0|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1HZ\(0));

-- Location: LCCOMB_X33_Y9_N4
\U0|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add1~2_combout\ = (\U0|CNT_1HZ\(1) & (!\U0|Add1~1\)) # (!\U0|CNT_1HZ\(1) & ((\U0|Add1~1\) # (GND)))
-- \U0|Add1~3\ = CARRY((!\U0|Add1~1\) # (!\U0|CNT_1HZ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1HZ\(1),
	datad => VCC,
	cin => \U0|Add1~1\,
	combout => \U0|Add1~2_combout\,
	cout => \U0|Add1~3\);

-- Location: FF_X33_Y9_N5
\U0|CNT_1HZ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U0|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1HZ\(1));

-- Location: LCCOMB_X33_Y9_N6
\U0|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add1~4_combout\ = (\U0|CNT_1HZ\(2) & (\U0|Add1~3\ $ (GND))) # (!\U0|CNT_1HZ\(2) & (!\U0|Add1~3\ & VCC))
-- \U0|Add1~5\ = CARRY((\U0|CNT_1HZ\(2) & !\U0|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ\(2),
	datad => VCC,
	cin => \U0|Add1~3\,
	combout => \U0|Add1~4_combout\,
	cout => \U0|Add1~5\);

-- Location: FF_X33_Y9_N7
\U0|CNT_1HZ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U0|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1HZ\(2));

-- Location: LCCOMB_X33_Y9_N8
\U0|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add1~6_combout\ = (\U0|CNT_1HZ\(3) & (!\U0|Add1~5\)) # (!\U0|CNT_1HZ\(3) & ((\U0|Add1~5\) # (GND)))
-- \U0|Add1~7\ = CARRY((!\U0|Add1~5\) # (!\U0|CNT_1HZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1HZ\(3),
	datad => VCC,
	cin => \U0|Add1~5\,
	combout => \U0|Add1~6_combout\,
	cout => \U0|Add1~7\);

-- Location: LCCOMB_X33_Y9_N10
\U0|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add1~8_combout\ = (\U0|CNT_1HZ\(4) & (\U0|Add1~7\ $ (GND))) # (!\U0|CNT_1HZ\(4) & (!\U0|Add1~7\ & VCC))
-- \U0|Add1~9\ = CARRY((\U0|CNT_1HZ\(4) & !\U0|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ\(4),
	datad => VCC,
	cin => \U0|Add1~7\,
	combout => \U0|Add1~8_combout\,
	cout => \U0|Add1~9\);

-- Location: LCCOMB_X33_Y9_N12
\U0|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add1~10_combout\ = (\U0|CNT_1HZ\(5) & (!\U0|Add1~9\)) # (!\U0|CNT_1HZ\(5) & ((\U0|Add1~9\) # (GND)))
-- \U0|Add1~11\ = CARRY((!\U0|Add1~9\) # (!\U0|CNT_1HZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ\(5),
	datad => VCC,
	cin => \U0|Add1~9\,
	combout => \U0|Add1~10_combout\,
	cout => \U0|Add1~11\);

-- Location: LCCOMB_X33_Y9_N22
\U0|CNT_1HZ~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1HZ~5_combout\ = (!\U0|CNT_1HZ~1_combout\ & \U0|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ~1_combout\,
	datad => \U0|Add1~10_combout\,
	combout => \U0|CNT_1HZ~5_combout\);

-- Location: FF_X33_Y9_N23
\U0|CNT_1HZ[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U0|CNT_1HZ~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1HZ\(5));

-- Location: LCCOMB_X33_Y9_N14
\U0|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add1~12_combout\ = (\U0|CNT_1HZ\(6) & (\U0|Add1~11\ $ (GND))) # (!\U0|CNT_1HZ\(6) & (!\U0|Add1~11\ & VCC))
-- \U0|Add1~13\ = CARRY((\U0|CNT_1HZ\(6) & !\U0|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1HZ\(6),
	datad => VCC,
	cin => \U0|Add1~11\,
	combout => \U0|Add1~12_combout\,
	cout => \U0|Add1~13\);

-- Location: LCCOMB_X33_Y9_N28
\U0|CNT_1HZ~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1HZ~4_combout\ = (\U0|Add1~12_combout\ & !\U0|CNT_1HZ~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Add1~12_combout\,
	datad => \U0|CNT_1HZ~1_combout\,
	combout => \U0|CNT_1HZ~4_combout\);

-- Location: FF_X33_Y9_N29
\U0|CNT_1HZ[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U0|CNT_1HZ~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1HZ\(6));

-- Location: LCCOMB_X33_Y9_N16
\U0|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add1~14_combout\ = (\U0|CNT_1HZ\(7) & (!\U0|Add1~13\)) # (!\U0|CNT_1HZ\(7) & ((\U0|Add1~13\) # (GND)))
-- \U0|Add1~15\ = CARRY((!\U0|Add1~13\) # (!\U0|CNT_1HZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ\(7),
	datad => VCC,
	cin => \U0|Add1~13\,
	combout => \U0|Add1~14_combout\,
	cout => \U0|Add1~15\);

-- Location: LCCOMB_X33_Y9_N26
\U0|CNT_1HZ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1HZ~3_combout\ = (!\U0|CNT_1HZ~1_combout\ & \U0|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ~1_combout\,
	datad => \U0|Add1~14_combout\,
	combout => \U0|CNT_1HZ~3_combout\);

-- Location: FF_X33_Y9_N27
\U0|CNT_1HZ[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U0|CNT_1HZ~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1HZ\(7));

-- Location: LCCOMB_X33_Y9_N18
\U0|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add1~16_combout\ = (\U0|CNT_1HZ\(8) & (\U0|Add1~15\ $ (GND))) # (!\U0|CNT_1HZ\(8) & (!\U0|Add1~15\ & VCC))
-- \U0|Add1~17\ = CARRY((\U0|CNT_1HZ\(8) & !\U0|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1HZ\(8),
	datad => VCC,
	cin => \U0|Add1~15\,
	combout => \U0|Add1~16_combout\,
	cout => \U0|Add1~17\);

-- Location: LCCOMB_X33_Y9_N24
\U0|CNT_1HZ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1HZ~2_combout\ = (!\U0|CNT_1HZ~1_combout\ & \U0|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ~1_combout\,
	datad => \U0|Add1~16_combout\,
	combout => \U0|CNT_1HZ~2_combout\);

-- Location: FF_X33_Y9_N25
\U0|CNT_1HZ[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U0|CNT_1HZ~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1HZ\(8));

-- Location: LCCOMB_X32_Y9_N26
\U0|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Equal4~0_combout\ = (\U0|CNT_1HZ\(7) & (\U0|CNT_1HZ\(6) & (\U0|CNT_1HZ\(8) & \U0|CNT_1HZ\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ\(7),
	datab => \U0|CNT_1HZ\(6),
	datac => \U0|CNT_1HZ\(8),
	datad => \U0|CNT_1HZ\(5),
	combout => \U0|Equal4~0_combout\);

-- Location: LCCOMB_X33_Y9_N20
\U0|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|Add1~18_combout\ = \U0|CNT_1HZ\(9) $ (\U0|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ\(9),
	cin => \U0|Add1~17\,
	combout => \U0|Add1~18_combout\);

-- Location: LCCOMB_X33_Y9_N30
\U0|CNT_1HZ~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1HZ~7_combout\ = (!\U0|CNT_1HZ~1_combout\ & \U0|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ~1_combout\,
	datad => \U0|Add1~18_combout\,
	combout => \U0|CNT_1HZ~7_combout\);

-- Location: FF_X33_Y9_N31
\U0|CNT_1HZ[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U0|CNT_1HZ~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1HZ\(9));

-- Location: LCCOMB_X32_Y9_N20
\U0|CNT_1HZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1HZ~0_combout\ = (\U0|CNT_1HZ\(0) & (!\U0|CNT_1HZ\(4) & (\U0|CNT_1HZ\(9) & \U0|CNT_1HZ\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ\(0),
	datab => \U0|CNT_1HZ\(4),
	datac => \U0|CNT_1HZ\(9),
	datad => \U0|CNT_1HZ\(1),
	combout => \U0|CNT_1HZ~0_combout\);

-- Location: LCCOMB_X32_Y9_N14
\U0|CNT_1HZ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1HZ~1_combout\ = (\U0|CNT_1HZ\(2) & (!\U0|CNT_1HZ\(3) & (\U0|Equal4~0_combout\ & \U0|CNT_1HZ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ\(2),
	datab => \U0|CNT_1HZ\(3),
	datac => \U0|Equal4~0_combout\,
	datad => \U0|CNT_1HZ~0_combout\,
	combout => \U0|CNT_1HZ~1_combout\);

-- Location: LCCOMB_X33_Y9_N0
\U0|CNT_1HZ~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CNT_1HZ~6_combout\ = (\U0|Add1~6_combout\ & !\U0|CNT_1HZ~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|Add1~6_combout\,
	datad => \U0|CNT_1HZ~1_combout\,
	combout => \U0|CNT_1HZ~6_combout\);

-- Location: FF_X33_Y9_N1
\U0|CNT_1HZ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U0|CNT_1HZ~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1HZ\(3));

-- Location: FF_X33_Y9_N11
\U0|CNT_1HZ[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U0|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CNT_1HZ\(4));

-- Location: LCCOMB_X32_Y9_N16
\U0|CLK_1HZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1HZ~0_combout\ = (\U0|CNT_1HZ\(0)) # ((\U0|CNT_1HZ\(3)) # ((\U0|CNT_1HZ\(9)) # (\U0|CNT_1HZ\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ\(0),
	datab => \U0|CNT_1HZ\(3),
	datac => \U0|CNT_1HZ\(9),
	datad => \U0|CNT_1HZ\(1),
	combout => \U0|CLK_1HZ~0_combout\);

-- Location: LCCOMB_X32_Y9_N12
\U0|CLK_1HZ~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1HZ~1_combout\ = (((\U0|CLK_1HZ~0_combout\) # (!\U0|Equal4~0_combout\)) # (!\U0|CNT_1HZ\(4))) # (!\U0|CNT_1HZ\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ\(2),
	datab => \U0|CNT_1HZ\(4),
	datac => \U0|Equal4~0_combout\,
	datad => \U0|CLK_1HZ~0_combout\,
	combout => \U0|CLK_1HZ~1_combout\);

-- Location: LCCOMB_X32_Y9_N18
\U0|CLK_1HZ~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1HZ~3_combout\ = (!\U0|CNT_1HZ\(4) & (!\U0|CNT_1HZ\(7) & !\U0|CNT_1HZ\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|CNT_1HZ\(4),
	datac => \U0|CNT_1HZ\(7),
	datad => \U0|CNT_1HZ\(2),
	combout => \U0|CLK_1HZ~3_combout\);

-- Location: LCCOMB_X32_Y9_N22
\U0|CLK_1HZ~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1HZ~2_combout\ = (!\U0|CNT_1HZ\(5) & (!\U0|CNT_1HZ\(6) & (!\U0|CNT_1HZ\(8) & !\U0|CLK_1HZ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CNT_1HZ\(5),
	datab => \U0|CNT_1HZ\(6),
	datac => \U0|CNT_1HZ\(8),
	datad => \U0|CLK_1HZ~0_combout\,
	combout => \U0|CLK_1HZ~2_combout\);

-- Location: LCCOMB_X32_Y9_N28
\U0|CLK_1HZ~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1HZ~4_combout\ = (\U0|CLK_1HZ~q\ & (\U0|CLK_1HZ~1_combout\)) # (!\U0|CLK_1HZ~q\ & (((\U0|CLK_1HZ~3_combout\ & \U0|CLK_1HZ~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CLK_1HZ~1_combout\,
	datab => \U0|CLK_1HZ~3_combout\,
	datac => \U0|CLK_1HZ~2_combout\,
	datad => \U0|CLK_1HZ~q\,
	combout => \U0|CLK_1HZ~4_combout\);

-- Location: LCCOMB_X32_Y9_N30
\U0|CLK_1HZ~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U0|CLK_1HZ~feeder_combout\ = \U0|CLK_1HZ~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|CLK_1HZ~4_combout\,
	combout => \U0|CLK_1HZ~feeder_combout\);

-- Location: FF_X32_Y9_N31
\U0|CLK_1HZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U0|CLK_1HZ~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|CLK_1HZ~q\);

-- Location: CLKCTRL_G5
\U0|CLK_1HZ~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U0|CLK_1HZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U0|CLK_1HZ~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y7_N6
\U1|SECOND_LOW~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|SECOND_LOW~1_combout\ = (!\U1|SECOND_LOW\(3) & (\U1|SECOND_LOW\(1) $ (\U1|SECOND_LOW\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|SECOND_LOW\(3),
	datac => \U1|SECOND_LOW\(1),
	datad => \U1|SECOND_LOW\(0),
	combout => \U1|SECOND_LOW~1_combout\);

-- Location: IOIBUF_X34_Y12_N22
\KEY_RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_RST,
	o => \KEY_RST~input_o\);

-- Location: LCCOMB_X30_Y9_N0
\U3|CNT_KEY_DOWN[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_DOWN[0]~1_combout\ = (!\KEY_RST~input_o\ & (\U3|LessThan0~0_combout\ $ (!\U3|CNT_KEY_DOWN\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|LessThan0~0_combout\,
	datac => \U3|CNT_KEY_DOWN\(0),
	datad => \KEY_RST~input_o\,
	combout => \U3|CNT_KEY_DOWN[0]~1_combout\);

-- Location: FF_X30_Y9_N1
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

-- Location: LCCOMB_X30_Y9_N2
\U3|CNT_KEY_DOWN[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_DOWN[1]~2_combout\ = (!\KEY_RST~input_o\ & (\U3|CNT_KEY_DOWN\(1) $ (((!\U3|LessThan0~0_combout\ & \U3|CNT_KEY_DOWN\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_RST~input_o\,
	datab => \U3|LessThan0~0_combout\,
	datac => \U3|CNT_KEY_DOWN\(1),
	datad => \U3|CNT_KEY_DOWN\(0),
	combout => \U3|CNT_KEY_DOWN[1]~2_combout\);

-- Location: FF_X30_Y9_N3
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

-- Location: LCCOMB_X30_Y9_N18
\U3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add0~0_combout\ = (\U3|CNT_KEY_DOWN\(1) & \U3|CNT_KEY_DOWN\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|CNT_KEY_DOWN\(1),
	datad => \U3|CNT_KEY_DOWN\(0),
	combout => \U3|Add0~0_combout\);

-- Location: LCCOMB_X30_Y9_N12
\U3|CNT_KEY_DOWN[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_DOWN[2]~3_combout\ = (!\KEY_RST~input_o\ & (\U3|CNT_KEY_DOWN\(2) $ (((!\U3|LessThan0~0_combout\ & \U3|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_RST~input_o\,
	datab => \U3|LessThan0~0_combout\,
	datac => \U3|CNT_KEY_DOWN\(2),
	datad => \U3|Add0~0_combout\,
	combout => \U3|CNT_KEY_DOWN[2]~3_combout\);

-- Location: FF_X30_Y9_N13
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

-- Location: LCCOMB_X30_Y9_N22
\U3|CNT_KEY_DOWN[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_DOWN[3]~0_combout\ = (!\KEY_RST~input_o\ & ((\U3|CNT_KEY_DOWN\(3)) # ((\U3|CNT_KEY_DOWN\(2) & \U3|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CNT_KEY_DOWN\(2),
	datab => \KEY_RST~input_o\,
	datac => \U3|CNT_KEY_DOWN\(3),
	datad => \U3|Add0~0_combout\,
	combout => \U3|CNT_KEY_DOWN[3]~0_combout\);

-- Location: FF_X30_Y9_N23
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

-- Location: LCCOMB_X30_Y9_N14
\U3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan0~0_combout\ = (\U3|CNT_KEY_DOWN\(3) & ((\U3|CNT_KEY_DOWN\(2)) # ((\U3|CNT_KEY_DOWN\(1)) # (\U3|CNT_KEY_DOWN\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CNT_KEY_DOWN\(2),
	datab => \U3|CNT_KEY_DOWN\(1),
	datac => \U3|CNT_KEY_DOWN\(3),
	datad => \U3|CNT_KEY_DOWN\(0),
	combout => \U3|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y9_N10
\U3|CNT_KEY_UP[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[3]~2_combout\ = (\KEY_RST~input_o\ & ((\U3|CNT_KEY_UP\(3)) # ((\U3|CNT_KEY_UP\(2) & \U3|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CNT_KEY_UP\(2),
	datab => \KEY_RST~input_o\,
	datac => \U3|CNT_KEY_UP\(3),
	datad => \U3|Add1~0_combout\,
	combout => \U3|CNT_KEY_UP[3]~2_combout\);

-- Location: FF_X30_Y9_N11
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

-- Location: LCCOMB_X30_Y9_N20
\U3|CNT_KEY_UP[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[1]~5_combout\ = (\U3|CNT_KEY_UP[3]~1_combout\ & (((\U3|CNT_KEY_UP\(1))))) # (!\U3|CNT_KEY_UP[3]~1_combout\ & (\KEY_RST~input_o\ & (\U3|CNT_KEY_UP\(0) $ (\U3|CNT_KEY_UP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CNT_KEY_UP\(0),
	datab => \KEY_RST~input_o\,
	datac => \U3|CNT_KEY_UP\(1),
	datad => \U3|CNT_KEY_UP[3]~1_combout\,
	combout => \U3|CNT_KEY_UP[1]~5_combout\);

-- Location: FF_X30_Y9_N21
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

-- Location: LCCOMB_X30_Y9_N4
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

-- Location: LCCOMB_X30_Y9_N30
\U3|CNT_KEY_UP[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[0]~4_combout\ = (\KEY_RST~input_o\ & ((\U3|CNT_KEY_UP\(3) & ((\U3|CNT_KEY_UP[0]~3_combout\) # (\U3|CNT_KEY_UP\(0)))) # (!\U3|CNT_KEY_UP\(3) & ((!\U3|CNT_KEY_UP\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CNT_KEY_UP\(3),
	datab => \U3|CNT_KEY_UP[0]~3_combout\,
	datac => \U3|CNT_KEY_UP\(0),
	datad => \KEY_RST~input_o\,
	combout => \U3|CNT_KEY_UP[0]~4_combout\);

-- Location: FF_X30_Y9_N31
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

-- Location: LCCOMB_X30_Y9_N6
\U3|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|Add1~0_combout\ = (\U3|CNT_KEY_UP\(0) & \U3|CNT_KEY_UP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CNT_KEY_UP\(0),
	datad => \U3|CNT_KEY_UP\(1),
	combout => \U3|Add1~0_combout\);

-- Location: LCCOMB_X30_Y9_N26
\U3|CNT_KEY_UP[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[2]~6_combout\ = (\U3|CNT_KEY_UP[3]~1_combout\ & (((\U3|CNT_KEY_UP\(2))))) # (!\U3|CNT_KEY_UP[3]~1_combout\ & (\KEY_RST~input_o\ & (\U3|Add1~0_combout\ $ (\U3|CNT_KEY_UP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add1~0_combout\,
	datab => \KEY_RST~input_o\,
	datac => \U3|CNT_KEY_UP\(2),
	datad => \U3|CNT_KEY_UP[3]~1_combout\,
	combout => \U3|CNT_KEY_UP[2]~6_combout\);

-- Location: FF_X30_Y9_N27
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

-- Location: LCCOMB_X30_Y9_N28
\U3|CNT_KEY_UP[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[0]~0_combout\ = (\KEY_RST~input_o\ & \U3|CNT_KEY_UP\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY_RST~input_o\,
	datad => \U3|CNT_KEY_UP\(3),
	combout => \U3|CNT_KEY_UP[0]~0_combout\);

-- Location: LCCOMB_X30_Y9_N16
\U3|CNT_KEY_UP[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|CNT_KEY_UP[3]~1_combout\ = (\U3|CNT_KEY_UP[0]~0_combout\ & ((\U3|CNT_KEY_UP\(2)) # ((\U3|CNT_KEY_UP\(1)) # (\U3|CNT_KEY_UP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|CNT_KEY_UP\(2),
	datab => \U3|CNT_KEY_UP\(1),
	datac => \U3|CNT_KEY_UP\(0),
	datad => \U3|CNT_KEY_UP[0]~0_combout\,
	combout => \U3|CNT_KEY_UP[3]~1_combout\);

-- Location: LCCOMB_X30_Y9_N24
\U3|KEY_OUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|KEY_OUT~0_combout\ = (\U3|CNT_KEY_UP[3]~1_combout\ & (!\KEY_RST~input_o\)) # (!\U3|CNT_KEY_UP[3]~1_combout\ & ((\U3|KEY_OUT~q\) # ((!\KEY_RST~input_o\ & \U3|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_RST~input_o\,
	datab => \U3|KEY_OUT~q\,
	datac => \U3|LessThan0~0_combout\,
	datad => \U3|CNT_KEY_UP[3]~1_combout\,
	combout => \U3|KEY_OUT~0_combout\);

-- Location: LCCOMB_X30_Y9_N8
\U3|KEY_OUT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|KEY_OUT~feeder_combout\ = \U3|KEY_OUT~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|KEY_OUT~0_combout\,
	combout => \U3|KEY_OUT~feeder_combout\);

-- Location: FF_X30_Y9_N9
\U3|KEY_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U3|KEY_OUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|KEY_OUT~q\);

-- Location: IOIBUF_X34_Y12_N15
\KEY_ENA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_ENA,
	o => \KEY_ENA~input_o\);

-- Location: LCCOMB_X32_Y10_N16
\U2|CNT_KEY_DOWN[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_DOWN[0]~1_combout\ = (!\KEY_ENA~input_o\ & (\U2|LessThan0~0_combout\ $ (!\U2|CNT_KEY_DOWN\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~0_combout\,
	datac => \U2|CNT_KEY_DOWN\(0),
	datad => \KEY_ENA~input_o\,
	combout => \U2|CNT_KEY_DOWN[0]~1_combout\);

-- Location: FF_X32_Y10_N17
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

-- Location: LCCOMB_X32_Y10_N30
\U2|CNT_KEY_DOWN[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_DOWN[1]~2_combout\ = (!\KEY_ENA~input_o\ & (\U2|CNT_KEY_DOWN\(1) $ (((!\U2|LessThan0~0_combout\ & \U2|CNT_KEY_DOWN\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~0_combout\,
	datab => \U2|CNT_KEY_DOWN\(0),
	datac => \U2|CNT_KEY_DOWN\(1),
	datad => \KEY_ENA~input_o\,
	combout => \U2|CNT_KEY_DOWN[1]~2_combout\);

-- Location: FF_X32_Y10_N31
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

-- Location: LCCOMB_X32_Y10_N20
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

-- Location: LCCOMB_X32_Y10_N28
\U2|CNT_KEY_DOWN[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_DOWN[2]~3_combout\ = (!\KEY_ENA~input_o\ & (\U2|CNT_KEY_DOWN\(2) $ (((!\U2|LessThan0~0_combout\ & \U2|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~0_combout\,
	datab => \KEY_ENA~input_o\,
	datac => \U2|CNT_KEY_DOWN\(2),
	datad => \U2|Add0~0_combout\,
	combout => \U2|CNT_KEY_DOWN[2]~3_combout\);

-- Location: FF_X32_Y10_N29
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

-- Location: LCCOMB_X32_Y10_N26
\U2|CNT_KEY_DOWN[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_DOWN[3]~0_combout\ = (!\KEY_ENA~input_o\ & ((\U2|CNT_KEY_DOWN\(3)) # ((\U2|CNT_KEY_DOWN\(2) & \U2|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_ENA~input_o\,
	datab => \U2|CNT_KEY_DOWN\(2),
	datac => \U2|CNT_KEY_DOWN\(3),
	datad => \U2|Add0~0_combout\,
	combout => \U2|CNT_KEY_DOWN[3]~0_combout\);

-- Location: FF_X32_Y10_N27
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

-- Location: LCCOMB_X32_Y10_N22
\U2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~0_combout\ = (\U2|CNT_KEY_DOWN\(3) & ((\U2|CNT_KEY_DOWN\(0)) # ((\U2|CNT_KEY_DOWN\(1)) # (\U2|CNT_KEY_DOWN\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_KEY_DOWN\(3),
	datab => \U2|CNT_KEY_DOWN\(0),
	datac => \U2|CNT_KEY_DOWN\(1),
	datad => \U2|CNT_KEY_DOWN\(2),
	combout => \U2|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y10_N24
\U2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|Add1~0_combout\ = (\U2|CNT_KEY_UP\(0) & \U2|CNT_KEY_UP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|CNT_KEY_UP\(0),
	datad => \U2|CNT_KEY_UP\(1),
	combout => \U2|Add1~0_combout\);

-- Location: LCCOMB_X32_Y10_N8
\U2|CNT_KEY_UP[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[2]~6_combout\ = (\U2|CNT_KEY_UP[3]~1_combout\ & (((\U2|CNT_KEY_UP\(2))))) # (!\U2|CNT_KEY_UP[3]~1_combout\ & (\KEY_ENA~input_o\ & (\U2|Add1~0_combout\ $ (\U2|CNT_KEY_UP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_ENA~input_o\,
	datab => \U2|Add1~0_combout\,
	datac => \U2|CNT_KEY_UP\(2),
	datad => \U2|CNT_KEY_UP[3]~1_combout\,
	combout => \U2|CNT_KEY_UP[2]~6_combout\);

-- Location: FF_X32_Y10_N9
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

-- Location: LCCOMB_X32_Y10_N12
\U2|CNT_KEY_UP[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[3]~2_combout\ = (\KEY_ENA~input_o\ & ((\U2|CNT_KEY_UP\(3)) # ((\U2|CNT_KEY_UP\(2) & \U2|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_ENA~input_o\,
	datab => \U2|CNT_KEY_UP\(2),
	datac => \U2|CNT_KEY_UP\(3),
	datad => \U2|Add1~0_combout\,
	combout => \U2|CNT_KEY_UP[3]~2_combout\);

-- Location: FF_X32_Y10_N13
\U2|CNT_KEY_UP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|CNT_KEY_UP[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_KEY_UP\(3));

-- Location: LCCOMB_X32_Y10_N0
\U2|CNT_KEY_UP[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[0]~3_combout\ = (!\U2|CNT_KEY_UP\(2) & !\U2|CNT_KEY_UP\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2|CNT_KEY_UP\(2),
	datad => \U2|CNT_KEY_UP\(1),
	combout => \U2|CNT_KEY_UP[0]~3_combout\);

-- Location: LCCOMB_X32_Y10_N4
\U2|CNT_KEY_UP[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[0]~4_combout\ = (\KEY_ENA~input_o\ & ((\U2|CNT_KEY_UP\(3) & ((\U2|CNT_KEY_UP\(0)) # (\U2|CNT_KEY_UP[0]~3_combout\))) # (!\U2|CNT_KEY_UP\(3) & (!\U2|CNT_KEY_UP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_ENA~input_o\,
	datab => \U2|CNT_KEY_UP\(3),
	datac => \U2|CNT_KEY_UP\(0),
	datad => \U2|CNT_KEY_UP[0]~3_combout\,
	combout => \U2|CNT_KEY_UP[0]~4_combout\);

-- Location: FF_X32_Y10_N5
\U2|CNT_KEY_UP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|CNT_KEY_UP[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|CNT_KEY_UP\(0));

-- Location: LCCOMB_X32_Y10_N6
\U2|CNT_KEY_UP[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[1]~5_combout\ = (\U2|CNT_KEY_UP[3]~1_combout\ & (((\U2|CNT_KEY_UP\(1))))) # (!\U2|CNT_KEY_UP[3]~1_combout\ & (\KEY_ENA~input_o\ & (\U2|CNT_KEY_UP\(0) $ (\U2|CNT_KEY_UP\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_ENA~input_o\,
	datab => \U2|CNT_KEY_UP\(0),
	datac => \U2|CNT_KEY_UP\(1),
	datad => \U2|CNT_KEY_UP[3]~1_combout\,
	combout => \U2|CNT_KEY_UP[1]~5_combout\);

-- Location: FF_X32_Y10_N7
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

-- Location: LCCOMB_X32_Y10_N2
\U2|CNT_KEY_UP[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[0]~0_combout\ = (\KEY_ENA~input_o\ & \U2|CNT_KEY_UP\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY_ENA~input_o\,
	datad => \U2|CNT_KEY_UP\(3),
	combout => \U2|CNT_KEY_UP[0]~0_combout\);

-- Location: LCCOMB_X32_Y10_N10
\U2|CNT_KEY_UP[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|CNT_KEY_UP[3]~1_combout\ = (\U2|CNT_KEY_UP[0]~0_combout\ & ((\U2|CNT_KEY_UP\(1)) # ((\U2|CNT_KEY_UP\(0)) # (\U2|CNT_KEY_UP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|CNT_KEY_UP\(1),
	datab => \U2|CNT_KEY_UP\(0),
	datac => \U2|CNT_KEY_UP\(2),
	datad => \U2|CNT_KEY_UP[0]~0_combout\,
	combout => \U2|CNT_KEY_UP[3]~1_combout\);

-- Location: LCCOMB_X32_Y10_N18
\U2|KEY_OUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|KEY_OUT~0_combout\ = (\U2|CNT_KEY_UP[3]~1_combout\ & (!\KEY_ENA~input_o\)) # (!\U2|CNT_KEY_UP[3]~1_combout\ & ((\U2|KEY_OUT~q\) # ((!\KEY_ENA~input_o\ & \U2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_ENA~input_o\,
	datab => \U2|KEY_OUT~q\,
	datac => \U2|LessThan0~0_combout\,
	datad => \U2|CNT_KEY_UP[3]~1_combout\,
	combout => \U2|KEY_OUT~0_combout\);

-- Location: LCCOMB_X32_Y10_N14
\U2|KEY_OUT~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|KEY_OUT~feeder_combout\ = \U2|KEY_OUT~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|KEY_OUT~0_combout\,
	combout => \U2|KEY_OUT~feeder_combout\);

-- Location: FF_X32_Y10_N15
\U2|KEY_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U2|KEY_OUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|KEY_OUT~q\);

-- Location: LCCOMB_X29_Y7_N20
\U1|PAUSE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PAUSE~0_combout\ = !\U1|PAUSE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|PAUSE~q\,
	combout => \U1|PAUSE~0_combout\);

-- Location: LCCOMB_X29_Y7_N2
\U1|PAUSE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|PAUSE~feeder_combout\ = \U1|PAUSE~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|PAUSE~0_combout\,
	combout => \U1|PAUSE~feeder_combout\);

-- Location: FF_X29_Y7_N3
\U1|PAUSE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U2|KEY_OUT~q\,
	d => \U1|PAUSE~feeder_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|PAUSE~q\);

-- Location: FF_X28_Y7_N7
\U1|SECOND_LOW[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|SECOND_LOW~1_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|ALT_INV_PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|SECOND_LOW\(1));

-- Location: LCCOMB_X28_Y7_N20
\U1|SECOND_LOW~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|SECOND_LOW~0_combout\ = (!\U1|SECOND_LOW\(0) & (((!\U1|SECOND_LOW\(2) & !\U1|SECOND_LOW\(1))) # (!\U1|SECOND_LOW\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|SECOND_LOW\(3),
	datab => \U1|SECOND_LOW\(2),
	datac => \U1|SECOND_LOW\(0),
	datad => \U1|SECOND_LOW\(1),
	combout => \U1|SECOND_LOW~0_combout\);

-- Location: FF_X28_Y7_N21
\U1|SECOND_LOW[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|SECOND_LOW~0_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|ALT_INV_PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|SECOND_LOW\(0));

-- Location: LCCOMB_X28_Y7_N22
\U1|SECOND_LOW~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|SECOND_LOW~3_combout\ = (\U1|SECOND_LOW\(2) & (\U1|SECOND_LOW\(0) & (!\U1|SECOND_LOW\(3) & \U1|SECOND_LOW\(1)))) # (!\U1|SECOND_LOW\(2) & (!\U1|SECOND_LOW\(0) & (\U1|SECOND_LOW\(3) & !\U1|SECOND_LOW\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|SECOND_LOW\(2),
	datab => \U1|SECOND_LOW\(0),
	datac => \U1|SECOND_LOW\(3),
	datad => \U1|SECOND_LOW\(1),
	combout => \U1|SECOND_LOW~3_combout\);

-- Location: FF_X28_Y7_N23
\U1|SECOND_LOW[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|SECOND_LOW~3_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|ALT_INV_PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|SECOND_LOW\(3));

-- Location: LCCOMB_X28_Y7_N30
\U1|SECOND_LOW~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|SECOND_LOW~2_combout\ = (!\U1|SECOND_LOW\(3) & (\U1|SECOND_LOW\(2) $ (((\U1|SECOND_LOW\(0) & \U1|SECOND_LOW\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|SECOND_LOW\(3),
	datab => \U1|SECOND_LOW\(0),
	datac => \U1|SECOND_LOW\(2),
	datad => \U1|SECOND_LOW\(1),
	combout => \U1|SECOND_LOW~2_combout\);

-- Location: FF_X28_Y7_N31
\U1|SECOND_LOW[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|SECOND_LOW~2_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|ALT_INV_PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|SECOND_LOW\(2));

-- Location: LCCOMB_X28_Y7_N0
\U1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~2_combout\ = (!\U1|SECOND_LOW\(2) & (\U1|SECOND_LOW\(0) & (\U1|SECOND_LOW\(3) & !\U1|SECOND_LOW\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|SECOND_LOW\(2),
	datab => \U1|SECOND_LOW\(0),
	datac => \U1|SECOND_LOW\(3),
	datad => \U1|SECOND_LOW\(1),
	combout => \U1|process_0~2_combout\);

-- Location: LCCOMB_X28_Y7_N28
\U1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan2~0_combout\ = ((!\U1|SECOND_LOW\(2) & (!\U1|SECOND_LOW\(0) & !\U1|SECOND_LOW\(1)))) # (!\U1|SECOND_LOW\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|SECOND_LOW\(2),
	datab => \U1|SECOND_LOW\(0),
	datac => \U1|SECOND_LOW\(3),
	datad => \U1|SECOND_LOW\(1),
	combout => \U1|LessThan2~0_combout\);

-- Location: LCCOMB_X29_Y7_N24
\U1|SECOND_HIGH[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|SECOND_HIGH[0]~2_combout\ = \U1|SECOND_HIGH\(0) $ (((!\U1|PAUSE~q\ & !\U1|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|PAUSE~q\,
	datac => \U1|SECOND_HIGH\(0),
	datad => \U1|LessThan2~0_combout\,
	combout => \U1|SECOND_HIGH[0]~2_combout\);

-- Location: FF_X29_Y7_N25
\U1|SECOND_HIGH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|SECOND_HIGH[0]~2_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|SECOND_HIGH\(0));

-- Location: LCCOMB_X28_Y7_N8
\U1|SECOND_HIGH~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|SECOND_HIGH~4_combout\ = (\U1|SECOND_HIGH\(1) & ((\U1|SECOND_HIGH\(2) $ (\U1|SECOND_HIGH\(0))))) # (!\U1|SECOND_HIGH\(1) & (\U1|SECOND_HIGH\(2) & ((!\U1|SECOND_HIGH\(0)) # (!\U1|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~2_combout\,
	datab => \U1|SECOND_HIGH\(1),
	datac => \U1|SECOND_HIGH\(2),
	datad => \U1|SECOND_HIGH\(0),
	combout => \U1|SECOND_HIGH~4_combout\);

-- Location: LCCOMB_X28_Y7_N18
\U1|SECOND_HIGH[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|SECOND_HIGH[2]~3_combout\ = (!\U1|PAUSE~q\ & !\U1|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|PAUSE~q\,
	datad => \U1|LessThan2~0_combout\,
	combout => \U1|SECOND_HIGH[2]~3_combout\);

-- Location: FF_X28_Y7_N9
\U1|SECOND_HIGH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|SECOND_HIGH~4_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|SECOND_HIGH[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|SECOND_HIGH\(2));

-- Location: LCCOMB_X28_Y7_N24
\U1|SECOND_HIGH~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|SECOND_HIGH~5_combout\ = (\U1|SECOND_HIGH\(1) & (((!\U1|SECOND_HIGH\(0))))) # (!\U1|SECOND_HIGH\(1) & (\U1|SECOND_HIGH\(0) & ((!\U1|SECOND_HIGH\(2)) # (!\U1|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~2_combout\,
	datab => \U1|SECOND_HIGH\(2),
	datac => \U1|SECOND_HIGH\(1),
	datad => \U1|SECOND_HIGH\(0),
	combout => \U1|SECOND_HIGH~5_combout\);

-- Location: FF_X28_Y7_N25
\U1|SECOND_HIGH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|SECOND_HIGH~5_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|SECOND_HIGH[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|SECOND_HIGH\(1));

-- Location: LCCOMB_X32_Y7_N4
\U4|DATA_OUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|DATA_OUT[1]~1_combout\ = (\U4|CURSOR\(0) & ((\U1|SECOND_LOW\(1)))) # (!\U4|CURSOR\(0) & (\U1|SECOND_HIGH\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CURSOR\(0),
	datab => \U1|SECOND_HIGH\(1),
	datad => \U1|SECOND_LOW\(1),
	combout => \U4|DATA_OUT[1]~1_combout\);

-- Location: LCCOMB_X30_Y7_N4
\U1|MINUTE_LOW~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|MINUTE_LOW~2_combout\ = (!\U1|MINUTE_LOW\(3) & (\U1|MINUTE_LOW\(1) $ (\U1|MINUTE_LOW\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|MINUTE_LOW\(3),
	datac => \U1|MINUTE_LOW\(1),
	datad => \U1|MINUTE_LOW\(0),
	combout => \U1|MINUTE_LOW~2_combout\);

-- Location: LCCOMB_X28_Y7_N2
\U1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~3_combout\ = (!\U1|SECOND_HIGH\(1) & (\U1|SECOND_HIGH\(2) & \U1|SECOND_HIGH\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|SECOND_HIGH\(1),
	datac => \U1|SECOND_HIGH\(2),
	datad => \U1|SECOND_HIGH\(0),
	combout => \U1|process_0~3_combout\);

-- Location: LCCOMB_X29_Y7_N12
\U1|MINUTE_LOW[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|MINUTE_LOW[3]~1_combout\ = (!\U1|PAUSE~q\ & (\U1|process_0~2_combout\ & \U1|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|PAUSE~q\,
	datac => \U1|process_0~2_combout\,
	datad => \U1|process_0~3_combout\,
	combout => \U1|MINUTE_LOW[3]~1_combout\);

-- Location: FF_X30_Y7_N5
\U1|MINUTE_LOW[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|MINUTE_LOW~2_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|MINUTE_LOW[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MINUTE_LOW\(1));

-- Location: LCCOMB_X30_Y7_N2
\U1|MINUTE_LOW~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|MINUTE_LOW~3_combout\ = (!\U1|MINUTE_LOW\(3) & (\U1|MINUTE_LOW\(2) $ (((\U1|MINUTE_LOW\(1) & \U1|MINUTE_LOW\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|MINUTE_LOW\(3),
	datab => \U1|MINUTE_LOW\(1),
	datac => \U1|MINUTE_LOW\(2),
	datad => \U1|MINUTE_LOW\(0),
	combout => \U1|MINUTE_LOW~3_combout\);

-- Location: FF_X30_Y7_N3
\U1|MINUTE_LOW[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|MINUTE_LOW~3_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|MINUTE_LOW[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MINUTE_LOW\(2));

-- Location: LCCOMB_X30_Y7_N24
\U1|MINUTE_LOW~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|MINUTE_LOW~4_combout\ = (\U1|MINUTE_LOW\(2) & (\U1|MINUTE_LOW\(1) & (!\U1|MINUTE_LOW\(3) & \U1|MINUTE_LOW\(0)))) # (!\U1|MINUTE_LOW\(2) & (!\U1|MINUTE_LOW\(1) & (\U1|MINUTE_LOW\(3) & !\U1|MINUTE_LOW\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|MINUTE_LOW\(2),
	datab => \U1|MINUTE_LOW\(1),
	datac => \U1|MINUTE_LOW\(3),
	datad => \U1|MINUTE_LOW\(0),
	combout => \U1|MINUTE_LOW~4_combout\);

-- Location: FF_X30_Y7_N25
\U1|MINUTE_LOW[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|MINUTE_LOW~4_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|MINUTE_LOW[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MINUTE_LOW\(3));

-- Location: LCCOMB_X30_Y7_N10
\U1|MINUTE_LOW~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|MINUTE_LOW~0_combout\ = (!\U1|MINUTE_LOW\(0) & (((!\U1|MINUTE_LOW\(1) & !\U1|MINUTE_LOW\(2))) # (!\U1|MINUTE_LOW\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|MINUTE_LOW\(3),
	datab => \U1|MINUTE_LOW\(1),
	datac => \U1|MINUTE_LOW\(0),
	datad => \U1|MINUTE_LOW\(2),
	combout => \U1|MINUTE_LOW~0_combout\);

-- Location: FF_X30_Y7_N11
\U1|MINUTE_LOW[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|MINUTE_LOW~0_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|MINUTE_LOW[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MINUTE_LOW\(0));

-- Location: LCCOMB_X30_Y7_N14
\U1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~5_combout\ = (\U1|MINUTE_LOW\(0) & (\U1|MINUTE_LOW\(3) & (!\U1|MINUTE_LOW\(1) & !\U1|MINUTE_LOW\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|MINUTE_LOW\(0),
	datab => \U1|MINUTE_LOW\(3),
	datac => \U1|MINUTE_LOW\(1),
	datad => \U1|MINUTE_LOW\(2),
	combout => \U1|process_0~5_combout\);

-- Location: LCCOMB_X31_Y8_N20
\U1|MINUTE_HIGH[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|MINUTE_HIGH[0]~3_combout\ = !\U1|MINUTE_HIGH\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|MINUTE_HIGH\(0),
	combout => \U1|MINUTE_HIGH[0]~3_combout\);

-- Location: LCCOMB_X30_Y7_N28
\U1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~0_combout\ = ((!\U1|MINUTE_LOW\(0) & (!\U1|MINUTE_LOW\(1) & !\U1|MINUTE_LOW\(2)))) # (!\U1|MINUTE_LOW\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|MINUTE_LOW\(0),
	datab => \U1|MINUTE_LOW\(1),
	datac => \U1|MINUTE_LOW\(2),
	datad => \U1|MINUTE_LOW\(3),
	combout => \U1|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y8_N14
\U1|MINUTE_HIGH[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|MINUTE_HIGH[2]~0_combout\ = (\U1|process_0~2_combout\ & (!\U1|LessThan1~0_combout\ & (!\U1|PAUSE~q\ & \U1|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~2_combout\,
	datab => \U1|LessThan1~0_combout\,
	datac => \U1|PAUSE~q\,
	datad => \U1|process_0~3_combout\,
	combout => \U1|MINUTE_HIGH[2]~0_combout\);

-- Location: FF_X31_Y8_N21
\U1|MINUTE_HIGH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|MINUTE_HIGH[0]~3_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|MINUTE_HIGH[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MINUTE_HIGH\(0));

-- Location: LCCOMB_X31_Y8_N28
\U1|MINUTE_HIGH~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|MINUTE_HIGH~2_combout\ = (\U1|MINUTE_HIGH\(1) & ((\U1|MINUTE_HIGH\(2) $ (\U1|MINUTE_HIGH\(0))))) # (!\U1|MINUTE_HIGH\(1) & (\U1|MINUTE_HIGH\(2) & ((!\U1|MINUTE_HIGH\(0)) # (!\U1|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~5_combout\,
	datab => \U1|MINUTE_HIGH\(1),
	datac => \U1|MINUTE_HIGH\(2),
	datad => \U1|MINUTE_HIGH\(0),
	combout => \U1|MINUTE_HIGH~2_combout\);

-- Location: FF_X31_Y8_N29
\U1|MINUTE_HIGH[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|MINUTE_HIGH~2_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|MINUTE_HIGH[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MINUTE_HIGH\(2));

-- Location: LCCOMB_X31_Y8_N30
\U1|MINUTE_HIGH~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|MINUTE_HIGH~1_combout\ = (\U1|MINUTE_HIGH\(1) & (((!\U1|MINUTE_HIGH\(0))))) # (!\U1|MINUTE_HIGH\(1) & (\U1|MINUTE_HIGH\(0) & ((!\U1|MINUTE_HIGH\(2)) # (!\U1|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~5_combout\,
	datab => \U1|MINUTE_HIGH\(2),
	datac => \U1|MINUTE_HIGH\(1),
	datad => \U1|MINUTE_HIGH\(0),
	combout => \U1|MINUTE_HIGH~1_combout\);

-- Location: FF_X31_Y8_N31
\U1|MINUTE_HIGH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|MINUTE_HIGH~1_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|MINUTE_HIGH[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|MINUTE_HIGH\(1));

-- Location: LCCOMB_X32_Y7_N24
\U4|CNT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT~1_combout\ = (\U4|CNT\(2) & ((!\U4|CURSOR\(0)))) # (!\U4|CNT\(2) & (\U4|CNT\(1) & \U4|CURSOR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CNT\(1),
	datac => \U4|CNT\(2),
	datad => \U4|CURSOR\(0),
	combout => \U4|CNT~1_combout\);

-- Location: FF_X32_Y7_N25
\U4|CNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CNT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CNT\(2));

-- Location: LCCOMB_X32_Y7_N10
\U4|CNT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CNT~0_combout\ = (\U4|CURSOR\(0) & (!\U4|CNT\(2) & !\U4|CNT\(1))) # (!\U4|CURSOR\(0) & ((\U4|CNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CNT\(2),
	datab => \U4|CURSOR\(0),
	datac => \U4|CNT\(1),
	combout => \U4|CNT~0_combout\);

-- Location: FF_X32_Y7_N11
\U4|CNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CNT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CNT\(1));

-- Location: LCCOMB_X31_Y7_N2
\U1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~6_combout\ = (!\U1|MINUTE_HIGH\(1) & (\U1|MINUTE_HIGH\(2) & (\U1|MINUTE_HIGH\(0) & \U1|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|MINUTE_HIGH\(1),
	datab => \U1|MINUTE_HIGH\(2),
	datac => \U1|MINUTE_HIGH\(0),
	datad => \U1|process_0~5_combout\,
	combout => \U1|process_0~6_combout\);

-- Location: LCCOMB_X29_Y7_N26
\U1|HOUR_HIGH[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|HOUR_HIGH[0]~0_combout\ = (\U1|process_0~6_combout\ & (\U1|MINUTE_LOW[3]~1_combout\ & !\U1|HOUR_LOW[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|process_0~6_combout\,
	datac => \U1|MINUTE_LOW[3]~1_combout\,
	datad => \U1|HOUR_LOW[3]~3_combout\,
	combout => \U1|HOUR_HIGH[0]~0_combout\);

-- Location: LCCOMB_X31_Y7_N26
\U1|HOUR_LOW~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|HOUR_LOW~8_combout\ = (\U1|HOUR_LOW[3]~3_combout\ & (\U1|HOUR_LOW\(2) $ (((\U1|HOUR_LOW\(0) & \U1|HOUR_LOW\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|HOUR_LOW[3]~3_combout\,
	datab => \U1|HOUR_LOW\(0),
	datac => \U1|HOUR_LOW\(2),
	datad => \U1|HOUR_LOW\(1),
	combout => \U1|HOUR_LOW~8_combout\);

-- Location: LCCOMB_X31_Y7_N28
\U1|HOUR_LOW[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|HOUR_LOW[3]~5_combout\ = (\U1|process_0~2_combout\ & (\U1|process_0~3_combout\ & (!\U1|PAUSE~q\ & \U1|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|process_0~2_combout\,
	datab => \U1|process_0~3_combout\,
	datac => \U1|PAUSE~q\,
	datad => \U1|process_0~6_combout\,
	combout => \U1|HOUR_LOW[3]~5_combout\);

-- Location: FF_X31_Y7_N27
\U1|HOUR_LOW[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|HOUR_LOW~8_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|HOUR_LOW[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|HOUR_LOW\(2));

-- Location: LCCOMB_X31_Y7_N14
\U1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~7_combout\ = (\U1|HOUR_LOW\(0) & \U1|HOUR_LOW\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|HOUR_LOW\(0),
	datad => \U1|HOUR_LOW\(1),
	combout => \U1|process_0~7_combout\);

-- Location: LCCOMB_X31_Y7_N4
\U1|HOUR_LOW~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|HOUR_LOW~7_combout\ = (\U1|HOUR_LOW[3]~3_combout\ & (\U1|HOUR_LOW\(3) $ (((\U1|HOUR_LOW\(2) & \U1|process_0~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|HOUR_LOW\(2),
	datab => \U1|process_0~7_combout\,
	datac => \U1|HOUR_LOW\(3),
	datad => \U1|HOUR_LOW[3]~3_combout\,
	combout => \U1|HOUR_LOW~7_combout\);

-- Location: FF_X31_Y7_N5
\U1|HOUR_LOW[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|HOUR_LOW~7_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|HOUR_LOW[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|HOUR_LOW\(3));

-- Location: LCCOMB_X31_Y7_N0
\U1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~4_combout\ = (!\U1|HOUR_LOW\(2) & (\U1|HOUR_LOW\(0) & (!\U1|HOUR_LOW\(3) & \U1|HOUR_LOW\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|HOUR_LOW\(2),
	datab => \U1|HOUR_LOW\(0),
	datac => \U1|HOUR_LOW\(3),
	datad => \U1|HOUR_LOW\(1),
	combout => \U1|process_0~4_combout\);

-- Location: LCCOMB_X29_Y7_N16
\U1|HOUR_HIGH[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|HOUR_HIGH[1]~2_combout\ = (\U1|HOUR_HIGH[0]~0_combout\ & ((\U1|HOUR_HIGH\(1) & (!\U1|process_0~4_combout\ & !\U1|HOUR_HIGH\(0))) # (!\U1|HOUR_HIGH\(1) & ((\U1|HOUR_HIGH\(0)))))) # (!\U1|HOUR_HIGH[0]~0_combout\ & (((\U1|HOUR_HIGH\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|HOUR_HIGH[0]~0_combout\,
	datab => \U1|process_0~4_combout\,
	datac => \U1|HOUR_HIGH\(1),
	datad => \U1|HOUR_HIGH\(0),
	combout => \U1|HOUR_HIGH[1]~2_combout\);

-- Location: FF_X29_Y7_N17
\U1|HOUR_HIGH[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|HOUR_HIGH[1]~2_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|HOUR_HIGH\(1));

-- Location: LCCOMB_X29_Y7_N6
\U1|HOUR_HIGH[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|HOUR_HIGH[0]~1_combout\ = (\U1|HOUR_HIGH[0]~0_combout\ & (!\U1|HOUR_HIGH\(0) & ((!\U1|process_0~4_combout\) # (!\U1|HOUR_HIGH\(1))))) # (!\U1|HOUR_HIGH[0]~0_combout\ & (((\U1|HOUR_HIGH\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|HOUR_HIGH[0]~0_combout\,
	datab => \U1|HOUR_HIGH\(1),
	datac => \U1|HOUR_HIGH\(0),
	datad => \U1|process_0~4_combout\,
	combout => \U1|HOUR_HIGH[0]~1_combout\);

-- Location: FF_X29_Y7_N7
\U1|HOUR_HIGH[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|HOUR_HIGH[0]~1_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|HOUR_HIGH\(0));

-- Location: LCCOMB_X31_Y7_N20
\U1|HOUR_LOW[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|HOUR_LOW[3]~2_combout\ = ((!\U1|HOUR_LOW\(2) & (!\U1|HOUR_LOW\(0) & !\U1|HOUR_LOW\(1)))) # (!\U1|HOUR_LOW\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|HOUR_LOW\(2),
	datab => \U1|HOUR_LOW\(0),
	datac => \U1|HOUR_LOW\(3),
	datad => \U1|HOUR_LOW\(1),
	combout => \U1|HOUR_LOW[3]~2_combout\);

-- Location: LCCOMB_X31_Y7_N22
\U1|HOUR_LOW[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|HOUR_LOW[3]~3_combout\ = (\U1|HOUR_LOW[3]~2_combout\ & ((\U1|HOUR_HIGH\(0)) # ((!\U1|process_0~4_combout\) # (!\U1|HOUR_HIGH\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|HOUR_HIGH\(0),
	datab => \U1|HOUR_LOW[3]~2_combout\,
	datac => \U1|HOUR_HIGH\(1),
	datad => \U1|process_0~4_combout\,
	combout => \U1|HOUR_LOW[3]~3_combout\);

-- Location: LCCOMB_X31_Y7_N16
\U1|HOUR_LOW~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|HOUR_LOW~4_combout\ = (\U1|HOUR_LOW[3]~3_combout\ & !\U1|HOUR_LOW\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|HOUR_LOW[3]~3_combout\,
	datac => \U1|HOUR_LOW\(0),
	combout => \U1|HOUR_LOW~4_combout\);

-- Location: FF_X31_Y7_N17
\U1|HOUR_LOW[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|HOUR_LOW~4_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|HOUR_LOW[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|HOUR_LOW\(0));

-- Location: LCCOMB_X32_Y7_N6
\U1|HOUR_LOW~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|HOUR_LOW~6_combout\ = (\U1|HOUR_LOW[3]~3_combout\ & (\U1|HOUR_LOW\(0) $ (\U1|HOUR_LOW\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|HOUR_LOW\(0),
	datac => \U1|HOUR_LOW\(1),
	datad => \U1|HOUR_LOW[3]~3_combout\,
	combout => \U1|HOUR_LOW~6_combout\);

-- Location: FF_X32_Y7_N7
\U1|HOUR_LOW[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|HOUR_LOW~6_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|HOUR_LOW[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|HOUR_LOW\(1));

-- Location: LCCOMB_X32_Y7_N12
\U4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux2~0_combout\ = (\U4|CNT\(1) & (!\U4|CURSOR\(0))) # (!\U4|CNT\(1) & ((\U4|CURSOR\(0) & (\U1|HOUR_LOW\(1))) # (!\U4|CURSOR\(0) & ((\U1|HOUR_HIGH\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CNT\(1),
	datab => \U4|CURSOR\(0),
	datac => \U1|HOUR_LOW\(1),
	datad => \U1|HOUR_HIGH\(1),
	combout => \U4|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y7_N22
\U4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux2~1_combout\ = (\U4|CNT\(1) & ((\U4|Mux2~0_combout\ & (\U1|MINUTE_HIGH\(1))) # (!\U4|Mux2~0_combout\ & ((\U1|MINUTE_LOW\(1)))))) # (!\U4|CNT\(1) & (((\U4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|MINUTE_HIGH\(1),
	datab => \U4|CNT\(1),
	datac => \U1|MINUTE_LOW\(1),
	datad => \U4|Mux2~0_combout\,
	combout => \U4|Mux2~1_combout\);

-- Location: FF_X32_Y7_N5
\U4|DATA_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|DATA_OUT[1]~1_combout\,
	asdata => \U4|Mux2~1_combout\,
	sload => \U4|ALT_INV_CNT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|DATA_OUT\(1));

-- Location: LCCOMB_X31_Y7_N6
\U4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux0~0_combout\ = (!\U4|CNT\(1) & ((\U4|CNT\(2) & ((\U1|SECOND_LOW\(3)))) # (!\U4|CNT\(2) & (\U1|HOUR_LOW\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CNT\(1),
	datab => \U4|CNT\(2),
	datac => \U1|HOUR_LOW\(3),
	datad => \U1|SECOND_LOW\(3),
	combout => \U4|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y7_N16
\U4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux0~1_combout\ = (\U4|Mux0~0_combout\) # ((!\U4|CNT\(2) & (\U4|CNT\(1) & \U1|MINUTE_LOW\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CNT\(2),
	datab => \U4|CNT\(1),
	datac => \U1|MINUTE_LOW\(3),
	datad => \U4|Mux0~0_combout\,
	combout => \U4|Mux0~1_combout\);

-- Location: FF_X30_Y7_N17
\U4|DATA_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|Mux0~1_combout\,
	sclr => \U4|ALT_INV_CURSOR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|DATA_OUT\(3));

-- Location: LCCOMB_X32_Y7_N0
\U4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux1~0_combout\ = (\U4|CNT\(1) & ((\U4|CURSOR\(0) & (\U1|MINUTE_LOW\(2))) # (!\U4|CURSOR\(0) & ((\U1|MINUTE_HIGH\(2)))))) # (!\U4|CNT\(1) & (\U4|CURSOR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CNT\(1),
	datab => \U4|CURSOR\(0),
	datac => \U1|MINUTE_LOW\(2),
	datad => \U1|MINUTE_HIGH\(2),
	combout => \U4|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y7_N18
\U4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux1~1_combout\ = (\U4|CNT\(2) & ((\U4|Mux1~0_combout\ & (\U1|SECOND_LOW\(2))) # (!\U4|Mux1~0_combout\ & ((\U1|SECOND_HIGH\(2)))))) # (!\U4|CNT\(2) & (((\U4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CNT\(2),
	datab => \U1|SECOND_LOW\(2),
	datac => \U1|SECOND_HIGH\(2),
	datad => \U4|Mux1~0_combout\,
	combout => \U4|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y7_N2
\U4|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux1~2_combout\ = (\U4|Mux1~1_combout\ & ((\U4|CNT\(2) & ((!\U4|CNT\(1)))) # (!\U4|CNT\(2) & ((\U1|HOUR_LOW\(2)) # (\U4|CNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CNT\(2),
	datab => \U1|HOUR_LOW\(2),
	datac => \U4|CNT\(1),
	datad => \U4|Mux1~1_combout\,
	combout => \U4|Mux1~2_combout\);

-- Location: FF_X32_Y7_N3
\U4|DATA_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|DATA_OUT\(2));

-- Location: LCCOMB_X31_Y7_N12
\U4|DATA_OUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|DATA_OUT[0]~0_combout\ = (\U4|CURSOR\(0) & (\U1|SECOND_LOW\(0))) # (!\U4|CURSOR\(0) & ((\U1|SECOND_HIGH\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|SECOND_LOW\(0),
	datab => \U1|SECOND_HIGH\(0),
	datad => \U4|CURSOR\(0),
	combout => \U4|DATA_OUT[0]~0_combout\);

-- Location: LCCOMB_X31_Y7_N18
\U4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux3~0_combout\ = (\U4|CNT\(1) & (((!\U4|CURSOR\(0))))) # (!\U4|CNT\(1) & ((\U4|CURSOR\(0) & (\U1|HOUR_LOW\(0))) # (!\U4|CURSOR\(0) & ((\U1|HOUR_HIGH\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|HOUR_LOW\(0),
	datab => \U4|CNT\(1),
	datac => \U1|HOUR_HIGH\(0),
	datad => \U4|CURSOR\(0),
	combout => \U4|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y7_N8
\U4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux3~1_combout\ = (\U4|CNT\(1) & ((\U4|Mux3~0_combout\ & ((\U1|MINUTE_HIGH\(0)))) # (!\U4|Mux3~0_combout\ & (\U1|MINUTE_LOW\(0))))) # (!\U4|CNT\(1) & (((\U4|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CNT\(1),
	datab => \U1|MINUTE_LOW\(0),
	datac => \U1|MINUTE_HIGH\(0),
	datad => \U4|Mux3~0_combout\,
	combout => \U4|Mux3~1_combout\);

-- Location: FF_X31_Y7_N13
\U4|DATA_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|DATA_OUT[0]~0_combout\,
	asdata => \U4|Mux3~1_combout\,
	sload => \U4|ALT_INV_CNT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|DATA_OUT\(0));

-- Location: LCCOMB_X31_Y7_N30
\U6|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux7~0_combout\ = (\U4|DATA_OUT\(1) & (\U4|DATA_OUT\(3))) # (!\U4|DATA_OUT\(1) & (\U4|DATA_OUT\(2) $ (((!\U4|DATA_OUT\(3) & \U4|DATA_OUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|DATA_OUT\(1),
	datab => \U4|DATA_OUT\(3),
	datac => \U4|DATA_OUT\(2),
	datad => \U4|DATA_OUT\(0),
	combout => \U6|Mux7~0_combout\);

-- Location: LCCOMB_X30_Y7_N30
\U6|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux6~0_combout\ = (\U4|DATA_OUT\(3) & ((\U4|DATA_OUT\(1)) # ((\U4|DATA_OUT\(2))))) # (!\U4|DATA_OUT\(3) & (\U4|DATA_OUT\(2) & (\U4|DATA_OUT\(1) $ (\U4|DATA_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|DATA_OUT\(1),
	datab => \U4|DATA_OUT\(3),
	datac => \U4|DATA_OUT\(0),
	datad => \U4|DATA_OUT\(2),
	combout => \U6|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y7_N20
\U6|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux5~0_combout\ = (\U4|DATA_OUT\(2) & (((\U4|DATA_OUT\(3))))) # (!\U4|DATA_OUT\(2) & (\U4|DATA_OUT\(1) & ((\U4|DATA_OUT\(3)) # (!\U4|DATA_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|DATA_OUT\(1),
	datab => \U4|DATA_OUT\(3),
	datac => \U4|DATA_OUT\(0),
	datad => \U4|DATA_OUT\(2),
	combout => \U6|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y7_N26
\U6|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux4~0_combout\ = (\U4|DATA_OUT\(1) & ((\U4|DATA_OUT\(3)) # ((\U4|DATA_OUT\(0) & \U4|DATA_OUT\(2))))) # (!\U4|DATA_OUT\(1) & (\U4|DATA_OUT\(2) $ (((!\U4|DATA_OUT\(3) & \U4|DATA_OUT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|DATA_OUT\(1),
	datab => \U4|DATA_OUT\(3),
	datac => \U4|DATA_OUT\(0),
	datad => \U4|DATA_OUT\(2),
	combout => \U6|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y7_N12
\U6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux3~0_combout\ = (\U4|DATA_OUT\(0)) # ((\U4|DATA_OUT\(1) & (\U4|DATA_OUT\(3))) # (!\U4|DATA_OUT\(1) & ((\U4|DATA_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|DATA_OUT\(1),
	datab => \U4|DATA_OUT\(3),
	datac => \U4|DATA_OUT\(0),
	datad => \U4|DATA_OUT\(2),
	combout => \U6|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y7_N18
\U6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux2~0_combout\ = (\U4|DATA_OUT\(0) & ((\U4|DATA_OUT\(1)) # (\U4|DATA_OUT\(3) $ (!\U4|DATA_OUT\(2))))) # (!\U4|DATA_OUT\(0) & ((\U4|DATA_OUT\(2) & ((\U4|DATA_OUT\(3)))) # (!\U4|DATA_OUT\(2) & (\U4|DATA_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|DATA_OUT\(1),
	datab => \U4|DATA_OUT\(3),
	datac => \U4|DATA_OUT\(0),
	datad => \U4|DATA_OUT\(2),
	combout => \U6|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y7_N24
\U6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux1~0_combout\ = (\U4|DATA_OUT\(1) & (!\U4|DATA_OUT\(3) & ((!\U4|DATA_OUT\(0)) # (!\U4|DATA_OUT\(2))))) # (!\U4|DATA_OUT\(1) & (\U4|DATA_OUT\(3) $ ((\U4|DATA_OUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|DATA_OUT\(1),
	datab => \U4|DATA_OUT\(3),
	datac => \U4|DATA_OUT\(2),
	datad => \U4|DATA_OUT\(0),
	combout => \U6|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y7_N10
\U4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|Mux4~0_combout\ = (\U0|CLK_1HZ~q\ & (!\U4|CNT\(2) & \U4|CURSOR\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|CLK_1HZ~q\,
	datab => \U4|CNT\(2),
	datad => \U4|CURSOR\(0),
	combout => \U4|Mux4~0_combout\);

-- Location: FF_X31_Y7_N11
\U4|DP_OUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|DP_OUT~q\);

-- Location: LCCOMB_X30_Y7_N0
\U6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|Mux0~0_combout\ = ((\U4|DATA_OUT\(3) & ((\U4|DATA_OUT\(1)) # (\U4|DATA_OUT\(2))))) # (!\U4|DP_OUT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|DATA_OUT\(1),
	datab => \U4|DATA_OUT\(3),
	datac => \U4|DP_OUT~q\,
	datad => \U4|DATA_OUT\(2),
	combout => \U6|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y7_N8
\U4|CURSOR[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CURSOR[2]~feeder_combout\ = \U4|CNT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U4|CNT\(2),
	combout => \U4|CURSOR[2]~feeder_combout\);

-- Location: FF_X32_Y7_N9
\U4|CURSOR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CURSOR[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CURSOR\(2));

-- Location: LCCOMB_X32_Y7_N14
\U4|CURSOR[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|CURSOR[1]~feeder_combout\ = \U4|CNT\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U4|CNT\(1),
	combout => \U4|CURSOR[1]~feeder_combout\);

-- Location: FF_X32_Y7_N15
\U4|CURSOR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1KHZ~clkctrl_outclk\,
	d => \U4|CURSOR[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|CURSOR\(1));

-- Location: LCCOMB_X33_Y7_N8
\U5|RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|RotateRight0~0_combout\ = ((\U4|CURSOR\(0)) # (\U4|CURSOR\(1))) # (!\U4|CURSOR\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CURSOR\(2),
	datac => \U4|CURSOR\(0),
	datad => \U4|CURSOR\(1),
	combout => \U5|RotateRight0~0_combout\);

-- Location: LCCOMB_X32_Y7_N26
\U5|RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|RotateRight0~1_combout\ = (\U4|CURSOR\(1)) # ((!\U4|CURSOR\(0)) # (!\U4|CURSOR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CURSOR\(1),
	datac => \U4|CURSOR\(2),
	datad => \U4|CURSOR\(0),
	combout => \U5|RotateRight0~1_combout\);

-- Location: LCCOMB_X32_Y7_N20
\U5|RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|RotateRight0~2_combout\ = ((\U4|CURSOR\(2)) # (\U4|CURSOR\(0))) # (!\U4|CURSOR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CURSOR\(1),
	datac => \U4|CURSOR\(2),
	datad => \U4|CURSOR\(0),
	combout => \U5|RotateRight0~2_combout\);

-- Location: LCCOMB_X32_Y7_N30
\U5|RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|RotateRight0~3_combout\ = ((\U4|CURSOR\(2)) # (!\U4|CURSOR\(0))) # (!\U4|CURSOR\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CURSOR\(1),
	datac => \U4|CURSOR\(2),
	datad => \U4|CURSOR\(0),
	combout => \U5|RotateRight0~3_combout\);

-- Location: LCCOMB_X33_Y7_N14
\U5|RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|RotateRight0~4_combout\ = (\U4|CURSOR\(0)) # (\U4|CURSOR\(2) $ (\U4|CURSOR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CURSOR\(2),
	datac => \U4|CURSOR\(0),
	datad => \U4|CURSOR\(1),
	combout => \U5|RotateRight0~4_combout\);

-- Location: LCCOMB_X32_Y7_N28
\U5|RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|RotateRight0~5_combout\ = (\U4|CURSOR\(1) $ (\U4|CURSOR\(2))) # (!\U4|CURSOR\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|CURSOR\(1),
	datac => \U4|CURSOR\(2),
	datad => \U4|CURSOR\(0),
	combout => \U5|RotateRight0~5_combout\);

-- Location: LCCOMB_X29_Y8_N4
\U1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|process_0~8_combout\ = (!\U1|SECOND_HIGH\(1) & (\U1|SECOND_HIGH\(0) & (\U1|process_0~2_combout\ & \U1|SECOND_HIGH\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|SECOND_HIGH\(1),
	datab => \U1|SECOND_HIGH\(0),
	datac => \U1|process_0~2_combout\,
	datad => \U1|SECOND_HIGH\(2),
	combout => \U1|process_0~8_combout\);

-- Location: FF_X29_Y8_N5
\U1|CO_SECOND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U0|CLK_1HZ~clkctrl_outclk\,
	d => \U1|process_0~8_combout\,
	clrn => \U3|ALT_INV_KEY_OUT~q\,
	ena => \U1|ALT_INV_PAUSE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|CO_SECOND~q\);

ww_DUAN(0) <= \DUAN[0]~output_o\;

ww_DUAN(1) <= \DUAN[1]~output_o\;

ww_DUAN(2) <= \DUAN[2]~output_o\;

ww_DUAN(3) <= \DUAN[3]~output_o\;

ww_DUAN(4) <= \DUAN[4]~output_o\;

ww_DUAN(5) <= \DUAN[5]~output_o\;

ww_DUAN(6) <= \DUAN[6]~output_o\;

ww_DUAN(7) <= \DUAN[7]~output_o\;

ww_WEI(0) <= \WEI[0]~output_o\;

ww_WEI(1) <= \WEI[1]~output_o\;

ww_WEI(2) <= \WEI[2]~output_o\;

ww_WEI(3) <= \WEI[3]~output_o\;

ww_WEI(4) <= \WEI[4]~output_o\;

ww_WEI(5) <= \WEI[5]~output_o\;

ww_BUZZER <= \BUZZER~output_o\;
END structure;


