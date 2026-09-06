-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "09/06/2026 22:17:10"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pwmbtn IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	btn : IN std_logic;
	pwm : OUT std_logic
	);
END pwmbtn;

-- Design Ports Information
-- pwm	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- clk	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- btn	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF pwmbtn IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_btn : std_logic;
SIGNAL ww_pwm : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \btn~input_o\ : std_logic;
SIGNAL \augmente[5]~15_combout\ : std_logic;
SIGNAL \augmente[5]~16_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \timer_2~12_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \timer_2~11_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \timer_2~10_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \timer_2~9_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \timer_2~8_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \timer_2~7_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \timer_2~6_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \timer_2~5_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \timer_2~4_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \timer_2~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \timer_2~2_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \timer_2~1_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \timer_2~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \augmente[0]~18_combout\ : std_logic;
SIGNAL \augmente[1]~5_combout\ : std_logic;
SIGNAL \augmente[5]~17_combout\ : std_logic;
SIGNAL \augmente[1]~6\ : std_logic;
SIGNAL \augmente[2]~7_combout\ : std_logic;
SIGNAL \augmente[2]~8\ : std_logic;
SIGNAL \augmente[3]~9_combout\ : std_logic;
SIGNAL \augmente[3]~10\ : std_logic;
SIGNAL \augmente[4]~11_combout\ : std_logic;
SIGNAL \augmente[4]~12\ : std_logic;
SIGNAL \augmente[5]~13_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][18]~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[1][14]~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][17]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][16]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][15]~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][14]~3_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|_~1_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][12]~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][11]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][10]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][9]~5_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][8]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][7]~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \timer~7_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \timer~6_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \timer~5_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \timer~4_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \timer~3_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \timer~2_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \timer~1_combout\ : std_logic;
SIGNAL \timer[19]~feeder_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \timer~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][6]~combout\ : std_logic;
SIGNAL \Mult0|mult_core|romout[0][5]~7_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~32_combout\ : std_logic;
SIGNAL \LessThan0~34_combout\ : std_logic;
SIGNAL \cpt~q\ : std_logic;
SIGNAL \ep~q\ : std_logic;
SIGNAL augmente : std_logic_vector(5 DOWNTO 0);
SIGNAL timer : std_logic_vector(19 DOWNTO 0);
SIGNAL timer_2 : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_btn~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_btn <= btn;
pwm <= ww_pwm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_btn~input_o\ <= NOT \btn~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y34_N9
\pwm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ep~q\,
	devoe => ww_devoe,
	o => \pwm~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N8
\btn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_btn,
	o => \btn~input_o\);

-- Location: LCCOMB_X36_Y18_N28
\augmente[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \augmente[5]~15_combout\ = (!augmente(4) & (((augmente(0)) # (!augmente(2))) # (!augmente(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(1),
	datab => augmente(2),
	datac => augmente(4),
	datad => augmente(0),
	combout => \augmente[5]~15_combout\);

-- Location: LCCOMB_X36_Y18_N14
\augmente[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \augmente[5]~16_combout\ = (!\btn~input_o\ & (((!augmente(3) & \augmente[5]~15_combout\)) # (!augmente(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~input_o\,
	datab => augmente(5),
	datac => augmente(3),
	datad => \augmente[5]~15_combout\,
	combout => \augmente[5]~16_combout\);

-- Location: LCCOMB_X36_Y17_N8
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = timer_2(0) $ (VCC)
-- \Add2~1\ = CARRY(timer_2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_2(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X37_Y16_N8
\timer_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~12_combout\ = (!\Equal1~7_combout\ & \Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~7_combout\,
	datad => \Add2~0_combout\,
	combout => \timer_2~12_combout\);

-- Location: IOIBUF_X53_Y14_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X37_Y16_N9
\timer_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~12_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(0));

-- Location: LCCOMB_X36_Y17_N10
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (timer_2(1) & (!\Add2~1\)) # (!timer_2(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!timer_2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X36_Y17_N11
\timer_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(1));

-- Location: LCCOMB_X36_Y17_N12
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (timer_2(2) & (\Add2~3\ $ (GND))) # (!timer_2(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((timer_2(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X36_Y17_N13
\timer_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(2));

-- Location: LCCOMB_X36_Y17_N14
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (timer_2(3) & (!\Add2~5\)) # (!timer_2(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!timer_2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X36_Y17_N15
\timer_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(3));

-- Location: LCCOMB_X36_Y17_N16
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (timer_2(4) & (\Add2~7\ $ (GND))) # (!timer_2(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((timer_2(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X36_Y17_N17
\timer_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(4));

-- Location: LCCOMB_X36_Y17_N6
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!timer_2(2) & (!timer_2(4) & (!timer_2(3) & !timer_2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(2),
	datab => timer_2(4),
	datac => timer_2(3),
	datad => timer_2(1),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X36_Y17_N18
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (timer_2(5) & (!\Add2~9\)) # (!timer_2(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!timer_2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X36_Y17_N19
\timer_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(5));

-- Location: LCCOMB_X36_Y17_N20
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (timer_2(6) & (\Add2~11\ $ (GND))) # (!timer_2(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((timer_2(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X36_Y17_N2
\timer_2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~11_combout\ = (!\Equal1~7_combout\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~7_combout\,
	datad => \Add2~12_combout\,
	combout => \timer_2~11_combout\);

-- Location: FF_X36_Y17_N3
\timer_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~11_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(6));

-- Location: LCCOMB_X36_Y17_N22
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (timer_2(7) & (!\Add2~13\)) # (!timer_2(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!timer_2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X36_Y17_N23
\timer_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(7));

-- Location: LCCOMB_X36_Y17_N24
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (timer_2(8) & (\Add2~15\ $ (GND))) # (!timer_2(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((timer_2(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X36_Y17_N25
\timer_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(8));

-- Location: LCCOMB_X36_Y17_N0
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (timer_2(6) & (!timer_2(5) & (!timer_2(7) & !timer_2(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(6),
	datab => timer_2(5),
	datac => timer_2(7),
	datad => timer_2(8),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X36_Y17_N26
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (timer_2(9) & (!\Add2~17\)) # (!timer_2(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!timer_2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X36_Y17_N27
\timer_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(9));

-- Location: LCCOMB_X36_Y17_N28
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (timer_2(10) & (\Add2~19\ $ (GND))) # (!timer_2(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((timer_2(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X36_Y17_N29
\timer_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(10));

-- Location: LCCOMB_X36_Y17_N30
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (timer_2(11) & (!\Add2~21\)) # (!timer_2(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!timer_2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X37_Y16_N20
\timer_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~10_combout\ = (\Add2~22_combout\ & !\Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~22_combout\,
	datad => \Equal1~7_combout\,
	combout => \timer_2~10_combout\);

-- Location: FF_X37_Y16_N21
\timer_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~10_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(11));

-- Location: LCCOMB_X36_Y16_N0
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (timer_2(12) & (\Add2~23\ $ (GND))) # (!timer_2(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((timer_2(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X37_Y16_N2
\timer_2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~9_combout\ = (!\Equal1~7_combout\ & \Add2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~7_combout\,
	datad => \Add2~24_combout\,
	combout => \timer_2~9_combout\);

-- Location: FF_X37_Y16_N3
\timer_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~9_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(12));

-- Location: LCCOMB_X36_Y16_N2
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (timer_2(13) & (!\Add2~25\)) # (!timer_2(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!timer_2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X37_Y16_N6
\timer_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~8_combout\ = (!\Equal1~7_combout\ & \Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~7_combout\,
	datad => \Add2~26_combout\,
	combout => \timer_2~8_combout\);

-- Location: FF_X37_Y16_N7
\timer_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~8_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(13));

-- Location: LCCOMB_X36_Y16_N4
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (timer_2(14) & (\Add2~27\ $ (GND))) # (!timer_2(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((timer_2(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X37_Y16_N28
\timer_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~7_combout\ = (\Add2~28_combout\ & !\Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~28_combout\,
	datad => \Equal1~7_combout\,
	combout => \timer_2~7_combout\);

-- Location: FF_X37_Y16_N29
\timer_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~7_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(14));

-- Location: LCCOMB_X36_Y16_N6
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (timer_2(15) & (!\Add2~29\)) # (!timer_2(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!timer_2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X36_Y16_N7
\timer_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(15));

-- Location: LCCOMB_X36_Y16_N8
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (timer_2(16) & (\Add2~31\ $ (GND))) # (!timer_2(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((timer_2(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X37_Y16_N30
\timer_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~6_combout\ = (!\Equal1~7_combout\ & \Add2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~7_combout\,
	datad => \Add2~32_combout\,
	combout => \timer_2~6_combout\);

-- Location: FF_X37_Y16_N31
\timer_2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~6_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(16));

-- Location: LCCOMB_X36_Y16_N10
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (timer_2(17) & (!\Add2~33\)) # (!timer_2(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!timer_2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X36_Y16_N11
\timer_2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(17));

-- Location: LCCOMB_X36_Y16_N12
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (timer_2(18) & (\Add2~35\ $ (GND))) # (!timer_2(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((timer_2(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X37_Y16_N26
\timer_2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~5_combout\ = (!\Equal1~7_combout\ & \Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~7_combout\,
	datad => \Add2~36_combout\,
	combout => \timer_2~5_combout\);

-- Location: FF_X37_Y16_N27
\timer_2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~5_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(18));

-- Location: LCCOMB_X36_Y16_N14
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (timer_2(19) & (!\Add2~37\)) # (!timer_2(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!timer_2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X36_Y16_N30
\timer_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~4_combout\ = (\Add2~38_combout\ & !\Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~38_combout\,
	datad => \Equal1~7_combout\,
	combout => \timer_2~4_combout\);

-- Location: FF_X36_Y16_N31
\timer_2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~4_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(19));

-- Location: LCCOMB_X36_Y16_N16
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (timer_2(20) & (\Add2~39\ $ (GND))) # (!timer_2(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((timer_2(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X37_Y16_N4
\timer_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~3_combout\ = (\Add2~40_combout\ & !\Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~40_combout\,
	datad => \Equal1~7_combout\,
	combout => \timer_2~3_combout\);

-- Location: FF_X37_Y16_N5
\timer_2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~3_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(20));

-- Location: LCCOMB_X37_Y16_N12
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!timer_2(17) & (timer_2(19) & (timer_2(20) & timer_2(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(17),
	datab => timer_2(19),
	datac => timer_2(20),
	datad => timer_2(18),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X37_Y16_N16
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (timer_2(16) & (timer_2(14) & (!timer_2(15) & timer_2(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(16),
	datab => timer_2(14),
	datac => timer_2(15),
	datad => timer_2(13),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X36_Y17_N4
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!timer_2(9) & (!timer_2(10) & (timer_2(11) & timer_2(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(9),
	datab => timer_2(10),
	datac => timer_2(11),
	datad => timer_2(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X36_Y16_N18
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (timer_2(21) & (!\Add2~41\)) # (!timer_2(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!timer_2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X36_Y16_N28
\timer_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~2_combout\ = (!\Equal1~7_combout\ & \Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~7_combout\,
	datad => \Add2~42_combout\,
	combout => \timer_2~2_combout\);

-- Location: FF_X36_Y16_N29
\timer_2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~2_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(21));

-- Location: LCCOMB_X36_Y16_N20
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (timer_2(22) & (\Add2~43\ $ (GND))) # (!timer_2(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((timer_2(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_2(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X37_Y16_N0
\timer_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~1_combout\ = (!\Equal1~7_combout\ & \Add2~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~7_combout\,
	datad => \Add2~44_combout\,
	combout => \timer_2~1_combout\);

-- Location: FF_X37_Y16_N1
\timer_2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~1_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(22));

-- Location: LCCOMB_X36_Y16_N22
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (timer_2(23) & (!\Add2~45\)) # (!timer_2(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!timer_2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X36_Y16_N23
\timer_2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~46_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(23));

-- Location: LCCOMB_X36_Y16_N24
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = timer_2(24) $ (!\Add2~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(24),
	cin => \Add2~47\,
	combout => \Add2~48_combout\);

-- Location: LCCOMB_X36_Y16_N26
\timer_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_2~0_combout\ = (!\Equal1~7_combout\ & \Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~7_combout\,
	datad => \Add2~48_combout\,
	combout => \timer_2~0_combout\);

-- Location: FF_X36_Y16_N27
\timer_2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_2~0_combout\,
	clrn => \rst~input_o\,
	ena => \ALT_INV_btn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_2(24));

-- Location: LCCOMB_X37_Y16_N18
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (timer_2(24) & (timer_2(22) & (!timer_2(23) & timer_2(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_2(24),
	datab => timer_2(22),
	datac => timer_2(23),
	datad => timer_2(21),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X37_Y16_N10
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~2_combout\ & (\Equal1~3_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~2_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X37_Y16_N22
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (\Equal1~6_combout\ & (!timer_2(0) & (\Equal1~5_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => timer_2(0),
	datac => \Equal1~5_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X36_Y18_N16
\augmente[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \augmente[0]~18_combout\ = augmente(0) $ (((\augmente[5]~16_combout\ & \Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(0),
	datab => \augmente[5]~16_combout\,
	datac => \Equal1~7_combout\,
	combout => \augmente[0]~18_combout\);

-- Location: FF_X37_Y18_N5
\augmente[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \augmente[0]~18_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => augmente(0));

-- Location: LCCOMB_X37_Y18_N8
\augmente[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \augmente[1]~5_combout\ = (augmente(1) & (augmente(0) $ (GND))) # (!augmente(1) & (!augmente(0) & VCC))
-- \augmente[1]~6\ = CARRY((augmente(1) & !augmente(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(1),
	datab => augmente(0),
	datad => VCC,
	combout => \augmente[1]~5_combout\,
	cout => \augmente[1]~6\);

-- Location: LCCOMB_X37_Y18_N4
\augmente[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \augmente[5]~17_combout\ = (\augmente[5]~16_combout\ & \Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \augmente[5]~16_combout\,
	datad => \Equal1~7_combout\,
	combout => \augmente[5]~17_combout\);

-- Location: FF_X37_Y18_N9
\augmente[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \augmente[1]~5_combout\,
	clrn => \rst~input_o\,
	ena => \augmente[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => augmente(1));

-- Location: LCCOMB_X37_Y18_N10
\augmente[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \augmente[2]~7_combout\ = (augmente(2) & (!\augmente[1]~6\)) # (!augmente(2) & ((\augmente[1]~6\) # (GND)))
-- \augmente[2]~8\ = CARRY((!\augmente[1]~6\) # (!augmente(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => augmente(2),
	datad => VCC,
	cin => \augmente[1]~6\,
	combout => \augmente[2]~7_combout\,
	cout => \augmente[2]~8\);

-- Location: FF_X37_Y18_N11
\augmente[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \augmente[2]~7_combout\,
	clrn => \rst~input_o\,
	ena => \augmente[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => augmente(2));

-- Location: LCCOMB_X37_Y18_N12
\augmente[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \augmente[3]~9_combout\ = (augmente(3) & (\augmente[2]~8\ $ (GND))) # (!augmente(3) & (!\augmente[2]~8\ & VCC))
-- \augmente[3]~10\ = CARRY((augmente(3) & !\augmente[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => augmente(3),
	datad => VCC,
	cin => \augmente[2]~8\,
	combout => \augmente[3]~9_combout\,
	cout => \augmente[3]~10\);

-- Location: FF_X37_Y18_N13
\augmente[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \augmente[3]~9_combout\,
	clrn => \rst~input_o\,
	ena => \augmente[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => augmente(3));

-- Location: LCCOMB_X37_Y18_N14
\augmente[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \augmente[4]~11_combout\ = (augmente(4) & (!\augmente[3]~10\)) # (!augmente(4) & ((\augmente[3]~10\) # (GND)))
-- \augmente[4]~12\ = CARRY((!\augmente[3]~10\) # (!augmente(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => augmente(4),
	datad => VCC,
	cin => \augmente[3]~10\,
	combout => \augmente[4]~11_combout\,
	cout => \augmente[4]~12\);

-- Location: FF_X37_Y18_N15
\augmente[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \augmente[4]~11_combout\,
	clrn => \rst~input_o\,
	ena => \augmente[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => augmente(4));

-- Location: LCCOMB_X37_Y18_N16
\augmente[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \augmente[5]~13_combout\ = \augmente[4]~12\ $ (!augmente(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => augmente(5),
	cin => \augmente[4]~12\,
	combout => \augmente[5]~13_combout\);

-- Location: FF_X37_Y18_N17
\augmente[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \augmente[5]~13_combout\,
	clrn => \rst~input_o\,
	ena => \augmente[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => augmente(5));

-- Location: LCCOMB_X36_Y18_N4
\Mult0|mult_core|romout[0][18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][18]~1_combout\ = (augmente(3) & ((augmente(2)) # ((!augmente(0) & augmente(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(0),
	datab => augmente(2),
	datac => augmente(3),
	datad => augmente(1),
	combout => \Mult0|mult_core|romout[0][18]~1_combout\);

-- Location: LCCOMB_X38_Y18_N0
\Mult0|mult_core|romout[1][14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[1][14]~0_combout\ = augmente(5) $ (augmente(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => augmente(5),
	datad => augmente(4),
	combout => \Mult0|mult_core|romout[1][14]~0_combout\);

-- Location: LCCOMB_X37_Y18_N22
\Mult0|mult_core|romout[0][17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][17]~combout\ = (augmente(2) & (((!augmente(3) & augmente(1))))) # (!augmente(2) & (augmente(3) & ((augmente(0)) # (!augmente(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(0),
	datab => augmente(2),
	datac => augmente(3),
	datad => augmente(1),
	combout => \Mult0|mult_core|romout[0][17]~combout\);

-- Location: LCCOMB_X37_Y18_N20
\Mult0|mult_core|romout[0][16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][16]~combout\ = augmente(3) $ (((augmente(2) & ((!augmente(1)))) # (!augmente(2) & (!augmente(0) & augmente(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(3),
	datab => augmente(0),
	datac => augmente(2),
	datad => augmente(1),
	combout => \Mult0|mult_core|romout[0][16]~combout\);

-- Location: LCCOMB_X39_Y18_N4
\Mult0|mult_core|romout[0][15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][15]~2_combout\ = augmente(2) $ (((augmente(0) & augmente(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(2),
	datac => augmente(0),
	datad => augmente(1),
	combout => \Mult0|mult_core|romout[0][15]~2_combout\);

-- Location: LCCOMB_X37_Y18_N2
\Mult0|mult_core|romout[0][14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][14]~3_combout\ = augmente(1) $ (!augmente(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => augmente(1),
	datad => augmente(0),
	combout => \Mult0|mult_core|romout[0][14]~3_combout\);

-- Location: LCCOMB_X38_Y18_N2
\Mult0|mult_core|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~0_combout\ = (augmente(5) & augmente(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => augmente(5),
	datad => augmente(4),
	combout => \Mult0|mult_core|_~0_combout\);

-- Location: LCCOMB_X37_Y18_N26
\Mult0|mult_core|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|_~1_combout\ = (!augmente(4) & augmente(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => augmente(4),
	datad => augmente(5),
	combout => \Mult0|mult_core|_~1_combout\);

-- Location: LCCOMB_X37_Y18_N0
\Mult0|mult_core|romout[0][12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][12]~4_combout\ = (augmente(3) & ((augmente(2)) # (augmente(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(2),
	datac => augmente(1),
	datad => augmente(3),
	combout => \Mult0|mult_core|romout[0][12]~4_combout\);

-- Location: LCCOMB_X37_Y18_N30
\Mult0|mult_core|romout[0][11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][11]~combout\ = (augmente(2) & ((augmente(0) & (augmente(1) & !augmente(3))) # (!augmente(0) & ((augmente(1)) # (!augmente(3)))))) # (!augmente(2) & (((!augmente(1) & augmente(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(2),
	datab => augmente(0),
	datac => augmente(1),
	datad => augmente(3),
	combout => \Mult0|mult_core|romout[0][11]~combout\);

-- Location: LCCOMB_X37_Y18_N28
\Mult0|mult_core|romout[0][10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][10]~combout\ = (augmente(1) & ((augmente(2) & (augmente(0) & augmente(3))) # (!augmente(2) & (!augmente(0) & !augmente(3))))) # (!augmente(1) & (augmente(3) $ (((augmente(2) & augmente(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(2),
	datab => augmente(0),
	datac => augmente(1),
	datad => augmente(3),
	combout => \Mult0|mult_core|romout[0][10]~combout\);

-- Location: LCCOMB_X37_Y18_N18
\Mult0|mult_core|romout[0][9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][9]~5_combout\ = (augmente(2) & (augmente(0) $ (((augmente(1) & !augmente(3)))))) # (!augmente(2) & ((augmente(0) & (augmente(1) & !augmente(3))) # (!augmente(0) & ((augmente(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(2),
	datab => augmente(0),
	datac => augmente(1),
	datad => augmente(3),
	combout => \Mult0|mult_core|romout[0][9]~5_combout\);

-- Location: LCCOMB_X37_Y18_N24
\Mult0|mult_core|romout[0][8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][8]~combout\ = (augmente(1) & ((augmente(2) & ((augmente(0)) # (!augmente(3)))) # (!augmente(2) & (augmente(0) & !augmente(3))))) # (!augmente(1) & (augmente(3) $ (((!augmente(2) & !augmente(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(2),
	datab => augmente(0),
	datac => augmente(1),
	datad => augmente(3),
	combout => \Mult0|mult_core|romout[0][8]~combout\);

-- Location: LCCOMB_X37_Y18_N6
\Mult0|mult_core|romout[0][7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][7]~6_combout\ = (augmente(0) & (augmente(2) $ (((augmente(3) & augmente(1)))))) # (!augmente(0) & ((augmente(3) & ((augmente(2)) # (!augmente(1)))) # (!augmente(3) & ((augmente(1)) # (!augmente(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(3),
	datab => augmente(0),
	datac => augmente(1),
	datad => augmente(2),
	combout => \Mult0|mult_core|romout[0][7]~6_combout\);

-- Location: LCCOMB_X38_Y18_N4
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (augmente(4) & (\Mult0|mult_core|romout[0][7]~6_combout\ $ (VCC))) # (!augmente(4) & (\Mult0|mult_core|romout[0][7]~6_combout\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((augmente(4) & \Mult0|mult_core|romout[0][7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(4),
	datab => \Mult0|mult_core|romout[0][7]~6_combout\,
	datad => VCC,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X38_Y18_N6
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (augmente(5) & ((\Mult0|mult_core|romout[0][8]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\Mult0|mult_core|romout[0][8]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!augmente(5) & ((\Mult0|mult_core|romout[0][8]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\Mult0|mult_core|romout[0][8]~combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((augmente(5) & (!\Mult0|mult_core|romout[0][8]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!augmente(5) & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\Mult0|mult_core|romout[0][8]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => augmente(5),
	datab => \Mult0|mult_core|romout[0][8]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X38_Y18_N8
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = ((augmente(4) $ (\Mult0|mult_core|romout[0][9]~5_combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((augmente(4) & ((\Mult0|mult_core|romout[0][9]~5_combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))) # (!augmente(4) & (\Mult0|mult_core|romout[0][9]~5_combout\ & 
-- !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => augmente(4),
	datab => \Mult0|mult_core|romout[0][9]~5_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X38_Y18_N10
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = (augmente(5) & ((\Mult0|mult_core|romout[0][10]~combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ & VCC)) # (!\Mult0|mult_core|romout[0][10]~combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)))) # (!augmente(5) & ((\Mult0|mult_core|romout[0][10]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!\Mult0|mult_core|romout[0][10]~combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\ = CARRY((augmente(5) & (!\Mult0|mult_core|romout[0][10]~combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\)) # (!augmente(5) & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\) # (!\Mult0|mult_core|romout[0][10]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => augmente(5),
	datab => \Mult0|mult_core|romout[0][10]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\);

-- Location: LCCOMB_X38_Y18_N12
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ = ((augmente(4) $ (\Mult0|mult_core|romout[0][11]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ = CARRY((augmente(4) & ((\Mult0|mult_core|romout[0][11]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\))) # (!augmente(4) & (\Mult0|mult_core|romout[0][11]~combout\ & 
-- !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => augmente(4),
	datab => \Mult0|mult_core|romout[0][11]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~7\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\);

-- Location: LCCOMB_X38_Y18_N14
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ = (\Mult0|mult_core|romout[0][12]~4_combout\ & ((\Mult0|mult_core|romout[1][14]~0_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][14]~0_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)))) # (!\Mult0|mult_core|romout[0][12]~4_combout\ & ((\Mult0|mult_core|romout[1][14]~0_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # (!\Mult0|mult_core|romout[1][14]~0_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\ = CARRY((\Mult0|mult_core|romout[0][12]~4_combout\ & (!\Mult0|mult_core|romout[1][14]~0_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\)) # 
-- (!\Mult0|mult_core|romout[0][12]~4_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\) # (!\Mult0|mult_core|romout[1][14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][12]~4_combout\,
	datab => \Mult0|mult_core|romout[1][14]~0_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~9\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\);

-- Location: LCCOMB_X38_Y18_N16
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ = ((\Mult0|mult_core|_~1_combout\ $ (augmente(0) $ (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ = CARRY((\Mult0|mult_core|_~1_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\) # (!augmente(0)))) # (!\Mult0|mult_core|_~1_combout\ & (!augmente(0) & 
-- !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|_~1_combout\,
	datab => augmente(0),
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~11\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\);

-- Location: LCCOMB_X38_Y18_N18
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ = (\Mult0|mult_core|romout[0][14]~3_combout\ & ((\Mult0|mult_core|_~0_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\ & VCC)) # (!\Mult0|mult_core|_~0_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)))) # (!\Mult0|mult_core|romout[0][14]~3_combout\ & ((\Mult0|mult_core|_~0_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|_~0_combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ = CARRY((\Mult0|mult_core|romout[0][14]~3_combout\ & (!\Mult0|mult_core|_~0_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\)) # (!\Mult0|mult_core|romout[0][14]~3_combout\ & 
-- ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\) # (!\Mult0|mult_core|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][14]~3_combout\,
	datab => \Mult0|mult_core|_~0_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~13\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\);

-- Location: LCCOMB_X38_Y18_N20
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ = (\Mult0|mult_core|romout[0][15]~2_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ $ (GND))) # (!\Mult0|mult_core|romout[0][15]~2_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\ & VCC))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\ = CARRY((\Mult0|mult_core|romout[0][15]~2_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][15]~2_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~15\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\);

-- Location: LCCOMB_X38_Y18_N22
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ = (\Mult0|mult_core|romout[0][16]~combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\)) # (!\Mult0|mult_core|romout[0][16]~combout\ & 
-- ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (GND)))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\ = CARRY((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\) # (!\Mult0|mult_core|romout[0][16]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|mult_core|romout[0][16]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~17\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\);

-- Location: LCCOMB_X38_Y18_N24
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ = ((augmente(4) $ (\Mult0|mult_core|romout[0][17]~combout\ $ (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\)))) # (GND)
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ = CARRY((augmente(4) & ((\Mult0|mult_core|romout[0][17]~combout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\))) # (!augmente(4) & (\Mult0|mult_core|romout[0][17]~combout\ & 
-- !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => augmente(4),
	datab => \Mult0|mult_core|romout[0][17]~combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~19\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\);

-- Location: LCCOMB_X38_Y18_N26
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ = (\Mult0|mult_core|romout[0][18]~1_combout\ & ((\Mult0|mult_core|romout[1][14]~0_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\ & VCC)) # 
-- (!\Mult0|mult_core|romout[1][14]~0_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)))) # (!\Mult0|mult_core|romout[0][18]~1_combout\ & ((\Mult0|mult_core|romout[1][14]~0_combout\ & 
-- (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # (!\Mult0|mult_core|romout[1][14]~0_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (GND)))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ = CARRY((\Mult0|mult_core|romout[0][18]~1_combout\ & (!\Mult0|mult_core|romout[1][14]~0_combout\ & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\)) # 
-- (!\Mult0|mult_core|romout[0][18]~1_combout\ & ((!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\) # (!\Mult0|mult_core|romout[1][14]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][18]~1_combout\,
	datab => \Mult0|mult_core|romout[1][14]~0_combout\,
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~21\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\);

-- Location: LCCOMB_X38_Y18_N28
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ & (!augmente(4) & (augmente(5) & VCC))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\ & ((((!augmente(4) & 
-- augmente(5))))))
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\ = CARRY((!augmente(4) & (augmente(5) & !\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => augmente(4),
	datab => augmente(5),
	datad => VCC,
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~23\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	cout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\);

-- Location: LCCOMB_X38_Y18_N30
\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\ = \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\ $ (((augmente(5) & augmente(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => augmente(5),
	datad => augmente(4),
	cin => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~25\,
	combout => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\);

-- Location: LCCOMB_X40_Y18_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = timer(0) $ (VCC)
-- \Add0~1\ = CARRY(timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X40_Y18_N0
\timer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~7_combout\ = (\Add0~0_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \Equal0~6_combout\,
	combout => \timer~7_combout\);

-- Location: FF_X40_Y18_N1
\timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(0));

-- Location: LCCOMB_X40_Y18_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (timer(1) & (!\Add0~1\)) # (!timer(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X40_Y18_N15
\timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(1));

-- Location: LCCOMB_X40_Y18_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (timer(2) & (\Add0~3\ $ (GND))) # (!timer(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((timer(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X40_Y18_N17
\timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(2));

-- Location: LCCOMB_X40_Y18_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (timer(3) & (!\Add0~5\)) # (!timer(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X40_Y18_N11
\timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~6_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(3));

-- Location: LCCOMB_X40_Y18_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (timer(4) & (\Add0~7\ $ (GND))) # (!timer(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((timer(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X40_Y18_N21
\timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(4));

-- Location: LCCOMB_X40_Y18_N22
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (timer(5) & (!\Add0~9\)) # (!timer(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!timer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X40_Y18_N9
\timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~10_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(5));

-- Location: LCCOMB_X40_Y18_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (timer(6) & (\Add0~11\ $ (GND))) # (!timer(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((timer(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X40_Y18_N4
\timer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~6_combout\ = (\Add0~12_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => \Equal0~6_combout\,
	combout => \timer~6_combout\);

-- Location: FF_X40_Y18_N23
\timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer~6_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(6));

-- Location: LCCOMB_X40_Y18_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (timer(7) & (!\Add0~13\)) # (!timer(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X40_Y18_N29
\timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~14_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(7));

-- Location: LCCOMB_X40_Y18_N8
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (timer(6) & (!timer(4) & (!timer(5) & !timer(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(6),
	datab => timer(4),
	datac => timer(5),
	datad => timer(7),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X40_Y18_N10
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!timer(0) & (!timer(1) & (!timer(3) & !timer(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(0),
	datab => timer(1),
	datac => timer(3),
	datad => timer(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X40_Y18_N28
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (timer(8) & (\Add0~15\ $ (GND))) # (!timer(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((timer(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X40_Y18_N3
\timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~16_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(8));

-- Location: LCCOMB_X40_Y18_N30
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (timer(9) & (!\Add0~17\)) # (!timer(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!timer(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X40_Y18_N2
\timer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~5_combout\ = (\Add0~18_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datad => \Equal0~6_combout\,
	combout => \timer~5_combout\);

-- Location: FF_X40_Y18_N5
\timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer~5_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(9));

-- Location: LCCOMB_X40_Y17_N0
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (timer(10) & (\Add0~19\ $ (GND))) # (!timer(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((timer(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X40_Y17_N1
\timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(10));

-- Location: LCCOMB_X40_Y17_N2
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (timer(11) & (!\Add0~21\)) # (!timer(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!timer(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X40_Y17_N31
\timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~22_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(11));

-- Location: LCCOMB_X40_Y17_N4
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (timer(12) & (\Add0~23\ $ (GND))) # (!timer(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((timer(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X40_Y17_N21
\timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~24_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(12));

-- Location: LCCOMB_X40_Y17_N6
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (timer(13) & (!\Add0~25\)) # (!timer(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!timer(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X40_Y17_N27
\timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~26_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(13));

-- Location: LCCOMB_X40_Y17_N8
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (timer(14) & (\Add0~27\ $ (GND))) # (!timer(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((timer(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X40_Y17_N26
\timer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~4_combout\ = (\Add0~28_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~28_combout\,
	datad => \Equal0~6_combout\,
	combout => \timer~4_combout\);

-- Location: FF_X40_Y17_N7
\timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer~4_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(14));

-- Location: LCCOMB_X40_Y17_N10
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (timer(15) & (!\Add0~29\)) # (!timer(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!timer(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X40_Y17_N25
\timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~30_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(15));

-- Location: LCCOMB_X40_Y17_N12
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (timer(16) & (\Add0~31\ $ (GND))) # (!timer(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((timer(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X39_Y17_N18
\timer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~3_combout\ = (\Add0~32_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \Equal0~6_combout\,
	combout => \timer~3_combout\);

-- Location: FF_X40_Y17_N23
\timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer~3_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(16));

-- Location: LCCOMB_X40_Y17_N14
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (timer(17) & (!\Add0~33\)) # (!timer(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!timer(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X39_Y17_N20
\timer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~2_combout\ = (\Add0~34_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~34_combout\,
	datad => \Equal0~6_combout\,
	combout => \timer~2_combout\);

-- Location: FF_X40_Y17_N29
\timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer~2_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(17));

-- Location: LCCOMB_X40_Y17_N16
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (timer(18) & (\Add0~35\ $ (GND))) # (!timer(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((timer(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X40_Y17_N20
\timer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~1_combout\ = (\Add0~36_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~36_combout\,
	datad => \Equal0~6_combout\,
	combout => \timer~1_combout\);

-- Location: FF_X40_Y17_N5
\timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer~1_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(18));

-- Location: LCCOMB_X39_Y17_N30
\timer[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer[19]~feeder_combout\ = \timer~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer~0_combout\,
	combout => \timer[19]~feeder_combout\);

-- Location: FF_X39_Y17_N31
\timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer[19]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(19));

-- Location: LCCOMB_X40_Y17_N28
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (timer(16) & (timer(18) & (timer(17) & timer(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(16),
	datab => timer(18),
	datac => timer(17),
	datad => timer(19),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X40_Y17_N22
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!timer(12) & !timer(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer(12),
	datad => timer(13),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X40_Y17_N24
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (timer(14) & (\Equal0~1_combout\ & (!timer(15) & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(14),
	datab => \Equal0~1_combout\,
	datac => timer(15),
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X40_Y17_N30
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!timer(10) & (!timer(8) & (!timer(11) & timer(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(10),
	datab => timer(8),
	datac => timer(11),
	datad => timer(9),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X40_Y18_N6
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~5_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X40_Y17_N18
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \Add0~37\ $ (timer(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => timer(19),
	cin => \Add0~37\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X39_Y17_N22
\timer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~0_combout\ = (!\Equal0~6_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~6_combout\,
	datad => \Add0~38_combout\,
	combout => \timer~0_combout\);

-- Location: LCCOMB_X36_Y18_N26
\Mult0|mult_core|romout[0][6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][6]~combout\ = augmente(3) $ (augmente(1) $ (((!augmente(0) & augmente(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => augmente(0),
	datab => augmente(2),
	datac => augmente(3),
	datad => augmente(1),
	combout => \Mult0|mult_core|romout[0][6]~combout\);

-- Location: LCCOMB_X39_Y18_N10
\Mult0|mult_core|romout[0][5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|mult_core|romout[0][5]~7_combout\ = augmente(0) $ (!augmente(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => augmente(0),
	datac => augmente(2),
	combout => \Mult0|mult_core|romout[0][5]~7_combout\);

-- Location: LCCOMB_X39_Y18_N16
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!augmente(0) & !\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => augmente(0),
	datab => \Add0~6_combout\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X39_Y18_N18
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\Add0~8_combout\ & ((!\LessThan0~1_cout\) # (!augmente(1)))) # (!\Add0~8_combout\ & (!augmente(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => augmente(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X39_Y18_N20
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\Mult0|mult_core|romout[0][5]~7_combout\ & ((!\LessThan0~3_cout\) # (!\Add0~10_combout\))) # (!\Mult0|mult_core|romout[0][5]~7_combout\ & (!\Add0~10_combout\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|romout[0][5]~7_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X39_Y18_N22
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\timer~6_combout\ & ((!\LessThan0~5_cout\) # (!\Mult0|mult_core|romout[0][6]~combout\))) # (!\timer~6_combout\ & (!\Mult0|mult_core|romout[0][6]~combout\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer~6_combout\,
	datab => \Mult0|mult_core|romout[0][6]~combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X39_Y18_N24
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\Add0~14_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & !\LessThan0~7_cout\)) # (!\Add0~14_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X39_Y18_N26
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\Add0~16_combout\ & !\LessThan0~9_cout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & ((\Add0~16_combout\) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X39_Y18_N28
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((!\LessThan0~11_cout\) # (!\timer~5_combout\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\timer~5_combout\ & 
-- !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \timer~5_combout\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X39_Y18_N30
\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\Add0~20_combout\ & !\LessThan0~13_cout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & ((\Add0~20_combout\) # 
-- (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X39_Y17_N0
\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\Add0~22_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\ & !\LessThan0~15_cout\)) # (!\Add0~22_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\) # 
-- (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X39_Y17_N2
\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & (\Add0~24_combout\ & !\LessThan0~17_cout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\ & ((\Add0~24_combout\) # 
-- (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~10_combout\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X39_Y17_N4
\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\Add0~26_combout\ & (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\ & !\LessThan0~19_cout\)) # (!\Add0~26_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\) # 
-- (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~12_combout\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X39_Y17_N6
\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & (\timer~4_combout\ & !\LessThan0~21_cout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\ & ((\timer~4_combout\) # 
-- (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~14_combout\,
	datab => \timer~4_combout\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X39_Y17_N8
\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & ((!\LessThan0~23_cout\) # (!\Add0~30_combout\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\ & (!\Add0~30_combout\ & 
-- !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~16_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X39_Y17_N10
\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & (\timer~3_combout\ & !\LessThan0~25_cout\)) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\ & ((\timer~3_combout\) # 
-- (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~18_combout\,
	datab => \timer~3_combout\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X39_Y17_N12
\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & ((!\LessThan0~27_cout\) # (!\timer~2_combout\))) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\ & (!\timer~2_combout\ & 
-- !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~20_combout\,
	datab => \timer~2_combout\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X39_Y17_N14
\LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\timer~1_combout\ & ((!\LessThan0~29_cout\) # (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\))) # (!\timer~1_combout\ & (!\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\ & 
-- !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer~1_combout\,
	datab => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~22_combout\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X39_Y17_N16
\LessThan0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~32_combout\ = (\timer~0_combout\ & (!\LessThan0~31_cout\ & \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\)) # (!\timer~0_combout\ & ((\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\) # (!\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer~0_combout\,
	datad => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~24_combout\,
	cin => \LessThan0~31_cout\,
	combout => \LessThan0~32_combout\);

-- Location: LCCOMB_X39_Y17_N28
\LessThan0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~34_combout\ = (\Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\) # (\LessThan0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|mult_core|padder|adder[0]|auto_generated|op_1~26_combout\,
	datad => \LessThan0~32_combout\,
	combout => \LessThan0~34_combout\);

-- Location: FF_X39_Y17_N29
cpt : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~34_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpt~q\);

-- Location: FF_X39_Y17_N23
ep : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \cpt~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ep~q\);

ww_pwm <= \pwm~output_o\;
END structure;


