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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/11/2026 21:25:33"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	compass_choix IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	btn : IN std_logic;
	pwm : OUT std_logic;
	echant : OUT std_logic;
	switch : IN std_logic;
	registre : OUT std_logic_vector(8 DOWNTO 0);
	start_stop : OUT std_logic;
	continu : OUT std_logic
	);
END compass_choix;

-- Design Ports Information
-- pwm	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- echant	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- registre[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[4]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[7]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[8]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_stop	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- continu	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switch	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- btn	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF compass_choix IS
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
SIGNAL ww_echant : std_logic;
SIGNAL ww_switch : std_logic;
SIGNAL ww_registre : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_continu : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm~output_o\ : std_logic;
SIGNAL \echant~output_o\ : std_logic;
SIGNAL \registre[0]~output_o\ : std_logic;
SIGNAL \registre[1]~output_o\ : std_logic;
SIGNAL \registre[2]~output_o\ : std_logic;
SIGNAL \registre[3]~output_o\ : std_logic;
SIGNAL \registre[4]~output_o\ : std_logic;
SIGNAL \registre[5]~output_o\ : std_logic;
SIGNAL \registre[6]~output_o\ : std_logic;
SIGNAL \registre[7]~output_o\ : std_logic;
SIGNAL \registre[8]~output_o\ : std_logic;
SIGNAL \start_stop~output_o\ : std_logic;
SIGNAL \continu~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \timer~5_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
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
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \timer~4_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \timer~3_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \timer~2_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \timer~1_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \timer~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \timer~6_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \timer~12_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \timer~11_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \timer~10_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \timer~9_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \timer~8_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \timer~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \pwm_signal~q\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \timer_3~5_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \timer_3~4_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \timer_3~3_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \timer_3~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \timer_3~0_combout\ : std_logic;
SIGNAL \timer_3[9]~feeder_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \timer_3~1_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \process_5~0_combout\ : std_logic;
SIGNAL \process_5~1_combout\ : std_logic;
SIGNAL \process_5~2_combout\ : std_logic;
SIGNAL \process_5~3_combout\ : std_logic;
SIGNAL \process_5~4_combout\ : std_logic;
SIGNAL \process_5~5_combout\ : std_logic;
SIGNAL \echant_signal~q\ : std_logic;
SIGNAL \signal_registre[0]~13_combout\ : std_logic;
SIGNAL \compte[0]~13_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \echant_prev~0_combout\ : std_logic;
SIGNAL \echant_prev~q\ : std_logic;
SIGNAL \signal_registre[0]~15_combout\ : std_logic;
SIGNAL \echantillon~0_combout\ : std_logic;
SIGNAL \echantillon~q\ : std_logic;
SIGNAL \switch~input_o\ : std_logic;
SIGNAL \temp_1s~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \ep.attente_cont~q\ : std_logic;
SIGNAL \btn~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \ep.attente_mono~feeder_combout\ : std_logic;
SIGNAL \ep.attente_mono~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \ep.mono~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \ep.idle~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \ep.continue~q\ : std_logic;
SIGNAL \process_6~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \compte[8]~21_combout\ : std_logic;
SIGNAL \compte[8]~32_combout\ : std_logic;
SIGNAL \compte[0]~14\ : std_logic;
SIGNAL \compte[1]~15_combout\ : std_logic;
SIGNAL \compte[1]~16\ : std_logic;
SIGNAL \compte[2]~17_combout\ : std_logic;
SIGNAL \compte[2]~18\ : std_logic;
SIGNAL \compte[3]~19_combout\ : std_logic;
SIGNAL \compte[3]~20\ : std_logic;
SIGNAL \compte[4]~22_combout\ : std_logic;
SIGNAL \compte[4]~23\ : std_logic;
SIGNAL \compte[5]~24_combout\ : std_logic;
SIGNAL \compte[5]~25\ : std_logic;
SIGNAL \compte[6]~26_combout\ : std_logic;
SIGNAL \compte[6]~27\ : std_logic;
SIGNAL \compte[7]~28_combout\ : std_logic;
SIGNAL \compte[7]~29\ : std_logic;
SIGNAL \compte[8]~30_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \signal_registre[0]~32_combout\ : std_logic;
SIGNAL \signal_registre[0]~14\ : std_logic;
SIGNAL \signal_registre[1]~16_combout\ : std_logic;
SIGNAL \signal_registre[1]~17\ : std_logic;
SIGNAL \signal_registre[2]~18_combout\ : std_logic;
SIGNAL \signal_registre[2]~19\ : std_logic;
SIGNAL \signal_registre[3]~20_combout\ : std_logic;
SIGNAL \signal_registre[3]~21\ : std_logic;
SIGNAL \signal_registre[4]~22_combout\ : std_logic;
SIGNAL \signal_registre[4]~23\ : std_logic;
SIGNAL \signal_registre[5]~24_combout\ : std_logic;
SIGNAL \signal_registre[5]~25\ : std_logic;
SIGNAL \signal_registre[6]~26_combout\ : std_logic;
SIGNAL \signal_registre[6]~27\ : std_logic;
SIGNAL \signal_registre[7]~28_combout\ : std_logic;
SIGNAL \signal_registre[7]~29\ : std_logic;
SIGNAL \signal_registre[8]~30_combout\ : std_logic;
SIGNAL \start_stop~0_combout\ : std_logic;
SIGNAL \start_stop~1_combout\ : std_logic;
SIGNAL \start_stop$latch~combout\ : std_logic;
SIGNAL \continu~0_combout\ : std_logic;
SIGNAL \continu~1_combout\ : std_logic;
SIGNAL \continu$latch~combout\ : std_logic;
SIGNAL signal_registre : std_logic_vector(8 DOWNTO 0);
SIGNAL compte : std_logic_vector(8 DOWNTO 0);
SIGNAL timer : std_logic_vector(25 DOWNTO 0);
SIGNAL timer_3 : std_logic_vector(12 DOWNTO 0);

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
echant <= ww_echant;
ww_switch <= switch;
registre <= ww_registre;
start_stop <= ww_start_stop;
continu <= ww_continu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y34_N16
\pwm~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_signal~q\,
	devoe => ww_devoe,
	o => \pwm~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\echant~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \echant_signal~q\,
	devoe => ww_devoe,
	o => \echant~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\registre[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => signal_registre(0),
	devoe => ww_devoe,
	o => \registre[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\registre[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => signal_registre(1),
	devoe => ww_devoe,
	o => \registre[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\registre[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => signal_registre(2),
	devoe => ww_devoe,
	o => \registre[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\registre[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => signal_registre(3),
	devoe => ww_devoe,
	o => \registre[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\registre[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => signal_registre(4),
	devoe => ww_devoe,
	o => \registre[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\registre[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => signal_registre(5),
	devoe => ww_devoe,
	o => \registre[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\registre[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => signal_registre(6),
	devoe => ww_devoe,
	o => \registre[6]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\registre[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => signal_registre(7),
	devoe => ww_devoe,
	o => \registre[7]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\registre[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => signal_registre(8),
	devoe => ww_devoe,
	o => \registre[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\start_stop~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \start_stop$latch~combout\,
	devoe => ww_devoe,
	o => \start_stop~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\continu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \continu$latch~combout\,
	devoe => ww_devoe,
	o => \continu~output_o\);

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

-- Location: LCCOMB_X39_Y10_N6
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

-- Location: LCCOMB_X39_Y10_N4
\timer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~5_combout\ = (\Add0~0_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer~5_combout\);

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

-- Location: FF_X39_Y10_N5
\timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(0));

-- Location: LCCOMB_X39_Y10_N8
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

-- Location: FF_X39_Y10_N9
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

-- Location: LCCOMB_X39_Y10_N10
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (timer(2) & (\Add0~3\ $ (GND))) # (!timer(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((timer(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X39_Y10_N11
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

-- Location: LCCOMB_X39_Y10_N12
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

-- Location: FF_X39_Y10_N13
\timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(3));

-- Location: LCCOMB_X39_Y10_N14
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

-- Location: FF_X39_Y10_N15
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

-- Location: LCCOMB_X39_Y10_N16
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

-- Location: FF_X39_Y10_N17
\timer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(5));

-- Location: LCCOMB_X40_Y10_N6
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!timer(3) & (!timer(4) & (!timer(5) & !timer(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(3),
	datab => timer(4),
	datac => timer(5),
	datad => timer(2),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X40_Y10_N12
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!timer(0) & !timer(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => timer(0),
	datad => timer(1),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X39_Y10_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (timer(6) & (\Add0~11\ $ (GND))) # (!timer(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((timer(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X39_Y10_N19
\timer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(6));

-- Location: LCCOMB_X39_Y10_N20
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (timer(7) & (!\Add0~13\)) # (!timer(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!timer(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X40_Y10_N4
\timer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~4_combout\ = (\Add0~14_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer~4_combout\);

-- Location: FF_X40_Y10_N5
\timer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(7));

-- Location: LCCOMB_X39_Y10_N22
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (timer(8) & (\Add0~15\ $ (GND))) # (!timer(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((timer(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X39_Y10_N23
\timer[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(8));

-- Location: LCCOMB_X39_Y10_N24
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

-- Location: FF_X39_Y10_N25
\timer[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(9));

-- Location: LCCOMB_X39_Y10_N26
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

-- Location: FF_X39_Y10_N3
\timer[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~20_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(10));

-- Location: LCCOMB_X39_Y10_N28
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

-- Location: FF_X39_Y10_N29
\timer[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(11));

-- Location: LCCOMB_X39_Y10_N30
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

-- Location: LCCOMB_X39_Y10_N0
\timer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~3_combout\ = (\Add0~24_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer~3_combout\);

-- Location: FF_X39_Y10_N1
\timer[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(12));

-- Location: LCCOMB_X39_Y9_N0
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (timer(13) & (!\Add0~25\)) # (!timer(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!timer(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X39_Y11_N26
\timer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~2_combout\ = (\Add0~26_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~26_combout\,
	datad => \Equal0~8_combout\,
	combout => \timer~2_combout\);

-- Location: FF_X39_Y11_N27
\timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(13));

-- Location: LCCOMB_X39_Y9_N2
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

-- Location: LCCOMB_X40_Y9_N20
\timer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~1_combout\ = (!\Equal0~8_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~28_combout\,
	combout => \timer~1_combout\);

-- Location: FF_X40_Y9_N21
\timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(14));

-- Location: LCCOMB_X39_Y9_N4
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

-- Location: LCCOMB_X40_Y9_N22
\timer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~0_combout\ = (!\Equal0~8_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Add0~30_combout\,
	combout => \timer~0_combout\);

-- Location: FF_X40_Y9_N23
\timer[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(15));

-- Location: LCCOMB_X39_Y9_N6
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (timer(16) & (\Add0~31\ $ (GND))) # (!timer(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((timer(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X39_Y9_N7
\timer[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(16));

-- Location: LCCOMB_X39_Y9_N8
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

-- Location: LCCOMB_X40_Y9_N2
\timer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~6_combout\ = (!\Equal0~8_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~34_combout\,
	combout => \timer~6_combout\);

-- Location: FF_X40_Y9_N3
\timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(17));

-- Location: LCCOMB_X39_Y9_N10
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

-- Location: FF_X39_Y9_N11
\timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(18));

-- Location: LCCOMB_X39_Y9_N12
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (timer(19) & (!\Add0~37\)) # (!timer(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!timer(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X40_Y9_N10
\timer~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~12_combout\ = (!\Equal0~8_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~38_combout\,
	combout => \timer~12_combout\);

-- Location: FF_X40_Y9_N11
\timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(19));

-- Location: LCCOMB_X39_Y9_N14
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (timer(20) & (\Add0~39\ $ (GND))) # (!timer(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((timer(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X40_Y9_N4
\timer~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~11_combout\ = (!\Equal0~8_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~40_combout\,
	combout => \timer~11_combout\);

-- Location: FF_X40_Y9_N5
\timer[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(20));

-- Location: LCCOMB_X39_Y9_N16
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (timer(21) & (!\Add0~41\)) # (!timer(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!timer(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X40_Y9_N26
\timer~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~10_combout\ = (!\Equal0~8_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datac => \Add0~42_combout\,
	combout => \timer~10_combout\);

-- Location: FF_X40_Y9_N27
\timer[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(21));

-- Location: LCCOMB_X40_Y9_N12
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (timer(21) & (timer(20) & (timer(19) & !timer(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(21),
	datab => timer(20),
	datac => timer(19),
	datad => timer(18),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X39_Y9_N18
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (timer(22) & (\Add0~43\ $ (GND))) # (!timer(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((timer(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X40_Y9_N6
\timer~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~9_combout\ = (!\Equal0~8_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~44_combout\,
	combout => \timer~9_combout\);

-- Location: FF_X40_Y9_N7
\timer[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(22));

-- Location: LCCOMB_X39_Y9_N20
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (timer(23) & (!\Add0~45\)) # (!timer(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!timer(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X40_Y9_N24
\timer~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~8_combout\ = (!\Equal0~8_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~46_combout\,
	combout => \timer~8_combout\);

-- Location: FF_X40_Y9_N25
\timer[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(23));

-- Location: LCCOMB_X39_Y9_N22
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (timer(24) & (\Add0~47\ $ (GND))) # (!timer(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((timer(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X39_Y9_N29
\timer[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~48_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(24));

-- Location: LCCOMB_X39_Y9_N24
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = timer(25) $ (\Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X39_Y9_N30
\timer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~7_combout\ = (!\Equal0~8_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~8_combout\,
	datad => \Add0~50_combout\,
	combout => \timer~7_combout\);

-- Location: FF_X39_Y9_N31
\timer[25]\ : dffeas
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
	q => timer(25));

-- Location: LCCOMB_X40_Y9_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (timer(22) & (timer(25) & (!timer(24) & timer(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(22),
	datab => timer(25),
	datac => timer(24),
	datad => timer(23),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X39_Y11_N4
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (timer(13) & (timer(12) & (!timer(11) & !timer(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(13),
	datab => timer(12),
	datac => timer(11),
	datad => timer(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X40_Y9_N18
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (timer(15) & (timer(14) & (!timer(16) & timer(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(15),
	datab => timer(14),
	datac => timer(16),
	datad => timer(17),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X40_Y9_N8
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X40_Y10_N0
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!timer(8) & (timer(7) & (!timer(6) & !timer(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(8),
	datab => timer(7),
	datac => timer(6),
	datad => timer(9),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X40_Y9_N30
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~6_combout\ & (\Equal0~7_combout\ & (\Equal0~4_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X40_Y9_N16
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\Add0~36_combout\ & (\Add0~32_combout\ & (\Add0~30_combout\ & \Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Add0~32_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~34_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y10_N2
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\Add0~24_combout\) # ((\Add0~18_combout\) # ((\Add0~20_combout\) # (\Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~18_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y10_N18
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\Add0~16_combout\ & ((\Add0~10_combout\) # ((\Add0~14_combout\) # (\Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~16_combout\,
	datad => \Add0~12_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y9_N14
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\Add0~28_combout\) # ((\Add0~26_combout\ & ((\LessThan0~2_combout\) # (\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~28_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X39_Y9_N26
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\Add0~42_combout\) # ((\Add0~44_combout\) # ((\Add0~46_combout\) # (\Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add0~44_combout\,
	datac => \Add0~46_combout\,
	datad => \Add0~50_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X39_Y9_N28
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\Add0~38_combout\) # ((\Add0~40_combout\) # ((\Add0~48_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Add0~40_combout\,
	datac => \Add0~48_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X40_Y9_N0
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\Equal0~8_combout\) # ((!\LessThan0~5_combout\ & ((!\LessThan0~3_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: FF_X40_Y9_N1
pwm_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~6_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_signal~q\);

-- Location: LCCOMB_X40_Y11_N6
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = timer_3(0) $ (VCC)
-- \Add2~1\ = CARRY(timer_3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_3(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X40_Y11_N0
\timer_3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_3~5_combout\ = (\Add2~0_combout\ & !\Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datad => \Equal2~3_combout\,
	combout => \timer_3~5_combout\);

-- Location: FF_X40_Y11_N1
\timer_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_3~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(0));

-- Location: LCCOMB_X40_Y11_N8
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (timer_3(1) & (!\Add2~1\)) # (!timer_3(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!timer_3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_3(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X40_Y11_N9
\timer_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(1));

-- Location: LCCOMB_X40_Y11_N10
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (timer_3(2) & (\Add2~3\ $ (GND))) # (!timer_3(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((timer_3(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X40_Y11_N11
\timer_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(2));

-- Location: LCCOMB_X40_Y11_N12
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (timer_3(3) & (!\Add2~5\)) # (!timer_3(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!timer_3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_3(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X40_Y11_N2
\timer_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_3~4_combout\ = (!\Equal2~3_combout\ & \Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~3_combout\,
	datad => \Add2~6_combout\,
	combout => \timer_3~4_combout\);

-- Location: FF_X40_Y11_N3
\timer_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_3~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(3));

-- Location: LCCOMB_X40_Y11_N14
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (timer_3(4) & (\Add2~7\ $ (GND))) # (!timer_3(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((timer_3(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_3(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X40_Y11_N15
\timer_3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(4));

-- Location: LCCOMB_X40_Y11_N16
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (timer_3(5) & (!\Add2~9\)) # (!timer_3(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!timer_3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_3(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X40_Y11_N5
\timer_3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add2~10_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(5));

-- Location: LCCOMB_X40_Y11_N18
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (timer_3(6) & (\Add2~11\ $ (GND))) # (!timer_3(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((timer_3(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X40_Y11_N19
\timer_3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(6));

-- Location: LCCOMB_X40_Y11_N20
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (timer_3(7) & (!\Add2~13\)) # (!timer_3(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!timer_3(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X39_Y11_N16
\timer_3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_3~3_combout\ = (\Add2~14_combout\ & !\Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~14_combout\,
	datad => \Equal2~3_combout\,
	combout => \timer_3~3_combout\);

-- Location: FF_X39_Y11_N17
\timer_3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_3~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(7));

-- Location: LCCOMB_X40_Y11_N22
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (timer_3(8) & (\Add2~15\ $ (GND))) # (!timer_3(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((timer_3(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_3(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X39_Y11_N6
\timer_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_3~2_combout\ = (!\Equal2~3_combout\ & \Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~3_combout\,
	datad => \Add2~16_combout\,
	combout => \timer_3~2_combout\);

-- Location: FF_X39_Y11_N7
\timer_3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_3~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(8));

-- Location: LCCOMB_X39_Y11_N28
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (timer_3(8) & (!timer_3(6) & (!timer_3(5) & timer_3(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(8),
	datab => timer_3(6),
	datac => timer_3(5),
	datad => timer_3(7),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X39_Y11_N30
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!timer_3(2) & (!timer_3(1) & (timer_3(3) & !timer_3(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(2),
	datab => timer_3(1),
	datac => timer_3(3),
	datad => timer_3(4),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X40_Y11_N24
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (timer_3(9) & (!\Add2~17\)) # (!timer_3(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!timer_3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X39_Y11_N22
\timer_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_3~0_combout\ = (!\Equal2~3_combout\ & \Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~3_combout\,
	datad => \Add2~18_combout\,
	combout => \timer_3~0_combout\);

-- Location: LCCOMB_X39_Y11_N12
\timer_3[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_3[9]~feeder_combout\ = \timer_3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_3~0_combout\,
	combout => \timer_3[9]~feeder_combout\);

-- Location: FF_X39_Y11_N13
\timer_3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_3[9]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(9));

-- Location: LCCOMB_X40_Y11_N26
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (timer_3(10) & (\Add2~19\ $ (GND))) # (!timer_3(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((timer_3(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X40_Y11_N27
\timer_3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(10));

-- Location: LCCOMB_X40_Y11_N28
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (timer_3(11) & (!\Add2~21\)) # (!timer_3(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!timer_3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X40_Y11_N29
\timer_3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(11));

-- Location: LCCOMB_X39_Y11_N18
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (timer_3(9) & (timer_3(12) & (!timer_3(10) & !timer_3(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(9),
	datab => timer_3(12),
	datac => timer_3(10),
	datad => timer_3(11),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X39_Y11_N24
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!timer_3(0) & (\Equal2~1_combout\ & (\Equal2~2_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(0),
	datab => \Equal2~1_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X39_Y11_N14
\timer_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_3~1_combout\ = (\Add2~24_combout\ & !\Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~24_combout\,
	datad => \Equal2~3_combout\,
	combout => \timer_3~1_combout\);

-- Location: FF_X39_Y11_N15
\timer_3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_3~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_3(12));

-- Location: LCCOMB_X40_Y11_N30
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = \Add2~23\ $ (!timer_3(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => timer_3(12),
	cin => \Add2~23\,
	combout => \Add2~24_combout\);

-- Location: LCCOMB_X39_Y11_N10
\process_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_5~0_combout\ = (\Add2~4_combout\ & ((\Add2~2_combout\) # ((\Add2~0_combout\ & !\Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~2_combout\,
	datad => \Equal2~3_combout\,
	combout => \process_5~0_combout\);

-- Location: LCCOMB_X39_Y11_N8
\process_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_5~1_combout\ = (\process_5~0_combout\) # ((\Add2~8_combout\) # ((\Add2~6_combout\) # (\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_5~0_combout\,
	datab => \Add2~8_combout\,
	datac => \Add2~6_combout\,
	datad => \Add2~10_combout\,
	combout => \process_5~1_combout\);

-- Location: LCCOMB_X40_Y11_N4
\process_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_5~2_combout\ = (\Add2~14_combout\ & ((\Add2~12_combout\) # ((!\Add2~22_combout\)))) # (!\Add2~14_combout\ & (!\Add2~22_combout\ & ((\Add2~12_combout\) # (\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add2~12_combout\,
	datac => \Add2~10_combout\,
	datad => \Add2~22_combout\,
	combout => \process_5~2_combout\);

-- Location: LCCOMB_X39_Y11_N20
\process_5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_5~3_combout\ = (\Add2~16_combout\ & (\process_5~2_combout\ & ((\Add2~22_combout\) # (\timer_3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \Add2~16_combout\,
	datac => \timer_3~0_combout\,
	datad => \process_5~2_combout\,
	combout => \process_5~3_combout\);

-- Location: LCCOMB_X39_Y11_N2
\process_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_5~4_combout\ = (\Add2~22_combout\ & ((\Add2~18_combout\) # ((\process_5~1_combout\ & \process_5~3_combout\)))) # (!\Add2~22_combout\ & (((\process_5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~22_combout\,
	datab => \Add2~18_combout\,
	datac => \process_5~1_combout\,
	datad => \process_5~3_combout\,
	combout => \process_5~4_combout\);

-- Location: LCCOMB_X39_Y11_N0
\process_5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_5~5_combout\ = (!\Add2~24_combout\ & (\Add2~22_combout\ $ (((\Add2~20_combout\) # (\process_5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \Add2~20_combout\,
	datac => \Add2~22_combout\,
	datad => \process_5~4_combout\,
	combout => \process_5~5_combout\);

-- Location: FF_X39_Y11_N1
echant_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \process_5~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \echant_signal~q\);

-- Location: LCCOMB_X38_Y7_N0
\signal_registre[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[0]~13_combout\ = signal_registre(0) $ (VCC)
-- \signal_registre[0]~14\ = CARRY(signal_registre(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => signal_registre(0),
	datad => VCC,
	combout => \signal_registre[0]~13_combout\,
	cout => \signal_registre[0]~14\);

-- Location: LCCOMB_X38_Y11_N10
\compte[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[0]~13_combout\ = compte(0) $ (VCC)
-- \compte[0]~14\ = CARRY(compte(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compte(0),
	datad => VCC,
	combout => \compte[0]~13_combout\,
	cout => \compte[0]~14\);

-- Location: LCCOMB_X38_Y11_N28
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ((compte(3)) # ((!compte(0)) # (!compte(2)))) # (!compte(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compte(1),
	datab => compte(3),
	datac => compte(2),
	datad => compte(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X38_Y7_N24
\echant_prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \echant_prev~0_combout\ = (\process_6~0_combout\ & ((\pwm_signal~q\ & (\echant_signal~q\)) # (!\pwm_signal~q\ & ((\echant_prev~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \echant_signal~q\,
	datac => \echant_prev~q\,
	datad => \pwm_signal~q\,
	combout => \echant_prev~0_combout\);

-- Location: FF_X38_Y7_N25
echant_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \echant_prev~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \echant_prev~q\);

-- Location: LCCOMB_X38_Y7_N26
\signal_registre[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[0]~15_combout\ = (!\echant_prev~q\ & (\echant_signal~q\ & \pwm_signal~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \echant_prev~q\,
	datac => \echant_signal~q\,
	datad => \pwm_signal~q\,
	combout => \signal_registre[0]~15_combout\);

-- Location: LCCOMB_X38_Y11_N8
\echantillon~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \echantillon~0_combout\ = (\process_6~0_combout\ & ((\signal_registre[0]~15_combout\ & (\Equal3~2_combout\)) # (!\signal_registre[0]~15_combout\ & ((\echantillon~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_6~0_combout\,
	datab => \Equal3~2_combout\,
	datac => \echantillon~q\,
	datad => \signal_registre[0]~15_combout\,
	combout => \echantillon~0_combout\);

-- Location: FF_X38_Y11_N9
echantillon : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \echantillon~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \echantillon~q\);

-- Location: IOIBUF_X40_Y0_N22
\switch~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch,
	o => \switch~input_o\);

-- Location: FF_X40_Y9_N31
temp_1s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Equal0~8_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp_1s~q\);

-- Location: LCCOMB_X39_Y7_N30
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\ep.attente_cont~q\ & !\temp_1s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ep.attente_cont~q\,
	datad => \temp_1s~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X39_Y7_N16
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\switch~input_o\ & (\ep.continue~q\ & \echantillon~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~input_o\,
	datab => \ep.continue~q\,
	datac => \Selector3~0_combout\,
	datad => \echantillon~q\,
	combout => \Selector3~1_combout\);

-- Location: FF_X39_Y7_N17
\ep.attente_cont\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ep.attente_cont~q\);

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

-- Location: LCCOMB_X39_Y7_N14
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\switch~input_o\ & (\ep.attente_mono~q\ & (\btn~input_o\))) # (!\switch~input_o\ & (((\ep.attente_mono~q\ & \btn~input_o\)) # (!\ep.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~input_o\,
	datab => \ep.attente_mono~q\,
	datac => \btn~input_o\,
	datad => \ep.idle~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X39_Y7_N4
\ep.attente_mono~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ep.attente_mono~feeder_combout\ = \Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector4~0_combout\,
	combout => \ep.attente_mono~feeder_combout\);

-- Location: FF_X39_Y7_N5
\ep.attente_mono\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ep.attente_mono~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ep.attente_mono~q\);

-- Location: LCCOMB_X39_Y7_N22
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\echantillon~q\ & (!\btn~input_o\ & ((\ep.attente_mono~q\)))) # (!\echantillon~q\ & ((\ep.mono~q\) # ((!\btn~input_o\ & \ep.attente_mono~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \echantillon~q\,
	datab => \btn~input_o\,
	datac => \ep.mono~q\,
	datad => \ep.attente_mono~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X39_Y7_N23
\ep.mono\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ep.mono~q\);

-- Location: LCCOMB_X39_Y7_N28
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\echantillon~q\ & ((\ep.mono~q\) # ((\ep.attente_cont~q\ & \temp_1s~q\)))) # (!\echantillon~q\ & (\ep.attente_cont~q\ & ((\temp_1s~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \echantillon~q\,
	datab => \ep.attente_cont~q\,
	datac => \ep.mono~q\,
	datad => \temp_1s~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X39_Y7_N24
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & ((\switch~input_o\) # (!\ep.continue~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch~input_o\,
	datab => \ep.continue~q\,
	datac => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X39_Y7_N25
\ep.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ep.idle~q\);

-- Location: LCCOMB_X39_Y7_N2
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\switch~input_o\ & (((!\echantillon~q\ & \ep.continue~q\)) # (!\ep.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \echantillon~q\,
	datab => \ep.idle~q\,
	datac => \ep.continue~q\,
	datad => \switch~input_o\,
	combout => \Selector1~0_combout\);

-- Location: FF_X39_Y7_N3
\ep.continue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \Selector1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ep.continue~q\);

-- Location: LCCOMB_X38_Y7_N22
\process_6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_6~0_combout\ = (\ep.continue~q\) # (\ep.mono~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ep.continue~q\,
	datad => \ep.mono~q\,
	combout => \process_6~0_combout\);

-- Location: LCCOMB_X38_Y11_N6
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (compte(7)) # ((compte(4)) # ((!compte(5)) # (!compte(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compte(7),
	datab => compte(4),
	datac => compte(6),
	datad => compte(5),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X38_Y11_N30
\compte[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[8]~21_combout\ = ((compte(8) & (!\Equal3~0_combout\ & !\Equal3~1_combout\))) # (!\process_6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compte(8),
	datab => \Equal3~0_combout\,
	datac => \process_6~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \compte[8]~21_combout\);

-- Location: LCCOMB_X38_Y11_N0
\compte[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[8]~32_combout\ = (\signal_registre[0]~15_combout\) # ((!\ep.mono~q\ & !\ep.continue~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ep.mono~q\,
	datac => \ep.continue~q\,
	datad => \signal_registre[0]~15_combout\,
	combout => \compte[8]~32_combout\);

-- Location: FF_X38_Y11_N11
\compte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[0]~13_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[8]~21_combout\,
	ena => \compte[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(0));

-- Location: LCCOMB_X38_Y11_N12
\compte[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[1]~15_combout\ = (compte(1) & (!\compte[0]~14\)) # (!compte(1) & ((\compte[0]~14\) # (GND)))
-- \compte[1]~16\ = CARRY((!\compte[0]~14\) # (!compte(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compte(1),
	datad => VCC,
	cin => \compte[0]~14\,
	combout => \compte[1]~15_combout\,
	cout => \compte[1]~16\);

-- Location: FF_X38_Y11_N13
\compte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[1]~15_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[8]~21_combout\,
	ena => \compte[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(1));

-- Location: LCCOMB_X38_Y11_N14
\compte[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[2]~17_combout\ = (compte(2) & (\compte[1]~16\ $ (GND))) # (!compte(2) & (!\compte[1]~16\ & VCC))
-- \compte[2]~18\ = CARRY((compte(2) & !\compte[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compte(2),
	datad => VCC,
	cin => \compte[1]~16\,
	combout => \compte[2]~17_combout\,
	cout => \compte[2]~18\);

-- Location: FF_X38_Y11_N15
\compte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[2]~17_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[8]~21_combout\,
	ena => \compte[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(2));

-- Location: LCCOMB_X38_Y11_N16
\compte[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[3]~19_combout\ = (compte(3) & (!\compte[2]~18\)) # (!compte(3) & ((\compte[2]~18\) # (GND)))
-- \compte[3]~20\ = CARRY((!\compte[2]~18\) # (!compte(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compte(3),
	datad => VCC,
	cin => \compte[2]~18\,
	combout => \compte[3]~19_combout\,
	cout => \compte[3]~20\);

-- Location: FF_X38_Y11_N17
\compte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[3]~19_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[8]~21_combout\,
	ena => \compte[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(3));

-- Location: LCCOMB_X38_Y11_N18
\compte[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[4]~22_combout\ = (compte(4) & (\compte[3]~20\ $ (GND))) # (!compte(4) & (!\compte[3]~20\ & VCC))
-- \compte[4]~23\ = CARRY((compte(4) & !\compte[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compte(4),
	datad => VCC,
	cin => \compte[3]~20\,
	combout => \compte[4]~22_combout\,
	cout => \compte[4]~23\);

-- Location: FF_X38_Y11_N19
\compte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[4]~22_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[8]~21_combout\,
	ena => \compte[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(4));

-- Location: LCCOMB_X38_Y11_N20
\compte[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[5]~24_combout\ = (compte(5) & (!\compte[4]~23\)) # (!compte(5) & ((\compte[4]~23\) # (GND)))
-- \compte[5]~25\ = CARRY((!\compte[4]~23\) # (!compte(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compte(5),
	datad => VCC,
	cin => \compte[4]~23\,
	combout => \compte[5]~24_combout\,
	cout => \compte[5]~25\);

-- Location: FF_X38_Y11_N21
\compte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[5]~24_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[8]~21_combout\,
	ena => \compte[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(5));

-- Location: LCCOMB_X38_Y11_N22
\compte[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[6]~26_combout\ = (compte(6) & (\compte[5]~25\ $ (GND))) # (!compte(6) & (!\compte[5]~25\ & VCC))
-- \compte[6]~27\ = CARRY((compte(6) & !\compte[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compte(6),
	datad => VCC,
	cin => \compte[5]~25\,
	combout => \compte[6]~26_combout\,
	cout => \compte[6]~27\);

-- Location: FF_X38_Y11_N23
\compte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[6]~26_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[8]~21_combout\,
	ena => \compte[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(6));

-- Location: LCCOMB_X38_Y11_N24
\compte[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[7]~28_combout\ = (compte(7) & (!\compte[6]~27\)) # (!compte(7) & ((\compte[6]~27\) # (GND)))
-- \compte[7]~29\ = CARRY((!\compte[6]~27\) # (!compte(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compte(7),
	datad => VCC,
	cin => \compte[6]~27\,
	combout => \compte[7]~28_combout\,
	cout => \compte[7]~29\);

-- Location: FF_X38_Y11_N25
\compte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[7]~28_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[8]~21_combout\,
	ena => \compte[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(7));

-- Location: LCCOMB_X38_Y11_N26
\compte[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[8]~30_combout\ = compte(8) $ (!\compte[7]~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compte(8),
	cin => \compte[7]~29\,
	combout => \compte[8]~30_combout\);

-- Location: FF_X38_Y11_N27
\compte[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[8]~30_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[8]~21_combout\,
	ena => \compte[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(8));

-- Location: LCCOMB_X38_Y11_N4
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (compte(8) & (!\Equal3~0_combout\ & !\Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compte(8),
	datab => \Equal3~0_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X38_Y7_N28
\signal_registre[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[0]~32_combout\ = (\signal_registre[0]~15_combout\ & ((\ep.mono~q\) # (\ep.continue~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_registre[0]~15_combout\,
	datab => \ep.mono~q\,
	datad => \ep.continue~q\,
	combout => \signal_registre[0]~32_combout\);

-- Location: FF_X38_Y7_N1
\signal_registre[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[0]~13_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \signal_registre[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(0));

-- Location: LCCOMB_X38_Y7_N2
\signal_registre[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[1]~16_combout\ = (signal_registre(1) & (!\signal_registre[0]~14\)) # (!signal_registre(1) & ((\signal_registre[0]~14\) # (GND)))
-- \signal_registre[1]~17\ = CARRY((!\signal_registre[0]~14\) # (!signal_registre(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => signal_registre(1),
	datad => VCC,
	cin => \signal_registre[0]~14\,
	combout => \signal_registre[1]~16_combout\,
	cout => \signal_registre[1]~17\);

-- Location: FF_X38_Y7_N3
\signal_registre[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[1]~16_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \signal_registre[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(1));

-- Location: LCCOMB_X38_Y7_N4
\signal_registre[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[2]~18_combout\ = (signal_registre(2) & (\signal_registre[1]~17\ $ (GND))) # (!signal_registre(2) & (!\signal_registre[1]~17\ & VCC))
-- \signal_registre[2]~19\ = CARRY((signal_registre(2) & !\signal_registre[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => signal_registre(2),
	datad => VCC,
	cin => \signal_registre[1]~17\,
	combout => \signal_registre[2]~18_combout\,
	cout => \signal_registre[2]~19\);

-- Location: FF_X38_Y7_N5
\signal_registre[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[2]~18_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \signal_registre[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(2));

-- Location: LCCOMB_X38_Y7_N6
\signal_registre[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[3]~20_combout\ = (signal_registre(3) & (!\signal_registre[2]~19\)) # (!signal_registre(3) & ((\signal_registre[2]~19\) # (GND)))
-- \signal_registre[3]~21\ = CARRY((!\signal_registre[2]~19\) # (!signal_registre(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => signal_registre(3),
	datad => VCC,
	cin => \signal_registre[2]~19\,
	combout => \signal_registre[3]~20_combout\,
	cout => \signal_registre[3]~21\);

-- Location: FF_X38_Y7_N7
\signal_registre[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[3]~20_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \signal_registre[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(3));

-- Location: LCCOMB_X38_Y7_N8
\signal_registre[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[4]~22_combout\ = (signal_registre(4) & (\signal_registre[3]~21\ $ (GND))) # (!signal_registre(4) & (!\signal_registre[3]~21\ & VCC))
-- \signal_registre[4]~23\ = CARRY((signal_registre(4) & !\signal_registre[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => signal_registre(4),
	datad => VCC,
	cin => \signal_registre[3]~21\,
	combout => \signal_registre[4]~22_combout\,
	cout => \signal_registre[4]~23\);

-- Location: FF_X38_Y7_N9
\signal_registre[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[4]~22_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \signal_registre[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(4));

-- Location: LCCOMB_X38_Y7_N10
\signal_registre[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[5]~24_combout\ = (signal_registre(5) & (!\signal_registre[4]~23\)) # (!signal_registre(5) & ((\signal_registre[4]~23\) # (GND)))
-- \signal_registre[5]~25\ = CARRY((!\signal_registre[4]~23\) # (!signal_registre(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => signal_registre(5),
	datad => VCC,
	cin => \signal_registre[4]~23\,
	combout => \signal_registre[5]~24_combout\,
	cout => \signal_registre[5]~25\);

-- Location: FF_X38_Y7_N11
\signal_registre[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[5]~24_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \signal_registre[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(5));

-- Location: LCCOMB_X38_Y7_N12
\signal_registre[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[6]~26_combout\ = (signal_registre(6) & (\signal_registre[5]~25\ $ (GND))) # (!signal_registre(6) & (!\signal_registre[5]~25\ & VCC))
-- \signal_registre[6]~27\ = CARRY((signal_registre(6) & !\signal_registre[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => signal_registre(6),
	datad => VCC,
	cin => \signal_registre[5]~25\,
	combout => \signal_registre[6]~26_combout\,
	cout => \signal_registre[6]~27\);

-- Location: FF_X38_Y7_N13
\signal_registre[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[6]~26_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \signal_registre[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(6));

-- Location: LCCOMB_X38_Y7_N14
\signal_registre[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[7]~28_combout\ = (signal_registre(7) & (!\signal_registre[6]~27\)) # (!signal_registre(7) & ((\signal_registre[6]~27\) # (GND)))
-- \signal_registre[7]~29\ = CARRY((!\signal_registre[6]~27\) # (!signal_registre(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => signal_registre(7),
	datad => VCC,
	cin => \signal_registre[6]~27\,
	combout => \signal_registre[7]~28_combout\,
	cout => \signal_registre[7]~29\);

-- Location: FF_X38_Y7_N15
\signal_registre[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[7]~28_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \signal_registre[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(7));

-- Location: LCCOMB_X38_Y7_N16
\signal_registre[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[8]~30_combout\ = \signal_registre[7]~29\ $ (!signal_registre(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => signal_registre(8),
	cin => \signal_registre[7]~29\,
	combout => \signal_registre[8]~30_combout\);

-- Location: FF_X38_Y7_N17
\signal_registre[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[8]~30_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \signal_registre[0]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(8));

-- Location: LCCOMB_X39_Y7_N0
\start_stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_stop~0_combout\ = (\ep.attente_cont~q\) # (!\ep.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ep.attente_cont~q\,
	datad => \ep.idle~q\,
	combout => \start_stop~0_combout\);

-- Location: LCCOMB_X39_Y7_N18
\start_stop~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_stop~1_combout\ = (\ep.attente_mono~q\) # (\ep.continue~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ep.attente_mono~q\,
	datad => \ep.continue~q\,
	combout => \start_stop~1_combout\);

-- Location: LCCOMB_X39_Y7_N20
\start_stop$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_stop$latch~combout\ = (\start_stop~1_combout\ & (\start_stop$latch~combout\)) # (!\start_stop~1_combout\ & ((!\start_stop~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_stop$latch~combout\,
	datac => \start_stop~0_combout\,
	datad => \start_stop~1_combout\,
	combout => \start_stop$latch~combout\);

-- Location: LCCOMB_X39_Y7_N12
\continu~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \continu~0_combout\ = (\ep.attente_mono~q\) # (!\ep.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ep.attente_mono~q\,
	datad => \ep.idle~q\,
	combout => \continu~0_combout\);

-- Location: LCCOMB_X39_Y7_N10
\continu~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \continu~1_combout\ = (\ep.mono~q\) # (\ep.attente_cont~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ep.mono~q\,
	datad => \ep.attente_cont~q\,
	combout => \continu~1_combout\);

-- Location: LCCOMB_X39_Y7_N26
\continu$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \continu$latch~combout\ = (\continu~1_combout\ & (\continu$latch~combout\)) # (!\continu~1_combout\ & ((!\continu~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu$latch~combout\,
	datac => \continu~0_combout\,
	datad => \continu~1_combout\,
	combout => \continu$latch~combout\);

ww_pwm <= \pwm~output_o\;

ww_echant <= \echant~output_o\;

ww_registre(0) <= \registre[0]~output_o\;

ww_registre(1) <= \registre[1]~output_o\;

ww_registre(2) <= \registre[2]~output_o\;

ww_registre(3) <= \registre[3]~output_o\;

ww_registre(4) <= \registre[4]~output_o\;

ww_registre(5) <= \registre[5]~output_o\;

ww_registre(6) <= \registre[6]~output_o\;

ww_registre(7) <= \registre[7]~output_o\;

ww_registre(8) <= \registre[8]~output_o\;

ww_start_stop <= \start_stop~output_o\;

ww_continu <= \continu~output_o\;
END structure;


