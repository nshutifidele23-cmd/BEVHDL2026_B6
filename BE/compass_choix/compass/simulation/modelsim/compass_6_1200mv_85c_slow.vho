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

-- DATE "09/15/2026 11:50:01"

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
	pwm : BUFFER std_logic;
	echant : BUFFER std_logic;
	switch : IN std_logic;
	registre : BUFFER std_logic_vector(8 DOWNTO 0);
	start_stop : BUFFER std_logic;
	continu : BUFFER std_logic
	);
END compass_choix;

-- Design Ports Information
-- pwm	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- echant	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- registre[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[2]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[4]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- registre[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_stop	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- continu	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switch	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \Selector12~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \timer~8_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \timer~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \timer~7_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \timer~6_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \timer~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \timer~4_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \timer~3_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \timer~2_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \timer~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \timer~10_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \timer~9_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
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
SIGNAL \Equal2~2_combout\ : std_logic;
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
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \timer_3~0_combout\ : std_logic;
SIGNAL \timer_3[9]~feeder_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
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
SIGNAL \signal_registre[0]~9_combout\ : std_logic;
SIGNAL \compte[0]~9_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \timer_5~12_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \timer_5~11_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \timer_5~10_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \timer_5~9_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \timer_5~8_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \timer_5~7_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \timer_5~6_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \timer_5~5_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \timer_5~4_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \timer_5~3_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \timer_5~2_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \timer_5~1_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \timer_5~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \temp_1s~q\ : std_logic;
SIGNAL \switch~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \es.attente_mono_898~combout\ : std_logic;
SIGNAL \ep.attente_mono~q\ : std_logic;
SIGNAL \btn~input_o\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~0clkctrl_outclk\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \es.attente_cont_909~combout\ : std_logic;
SIGNAL \ep.attente_cont~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \es.idle_942~combout\ : std_logic;
SIGNAL \ep.idle~0_combout\ : std_logic;
SIGNAL \ep.idle~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \es.continue_931~combout\ : std_logic;
SIGNAL \ep.continue~feeder_combout\ : std_logic;
SIGNAL \ep.continue~q\ : std_logic;
SIGNAL \echant_prev~0_combout\ : std_logic;
SIGNAL \echant_prev~q\ : std_logic;
SIGNAL \echantillon~0_combout\ : std_logic;
SIGNAL \echantillon~1_combout\ : std_logic;
SIGNAL \echantillon~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \es.mono_920~combout\ : std_logic;
SIGNAL \ep.mono~feeder_combout\ : std_logic;
SIGNAL \ep.mono~q\ : std_logic;
SIGNAL \compte[4]~17_combout\ : std_logic;
SIGNAL \compte[4]~18_combout\ : std_logic;
SIGNAL \compte[0]~10\ : std_logic;
SIGNAL \compte[1]~11_combout\ : std_logic;
SIGNAL \compte[1]~12\ : std_logic;
SIGNAL \compte[2]~13_combout\ : std_logic;
SIGNAL \compte[2]~14\ : std_logic;
SIGNAL \compte[3]~15_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \compte[3]~16\ : std_logic;
SIGNAL \compte[4]~19_combout\ : std_logic;
SIGNAL \compte[4]~20\ : std_logic;
SIGNAL \compte[5]~21_combout\ : std_logic;
SIGNAL \compte[5]~22\ : std_logic;
SIGNAL \compte[6]~23_combout\ : std_logic;
SIGNAL \compte[6]~24\ : std_logic;
SIGNAL \compte[7]~25_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \compte[7]~26\ : std_logic;
SIGNAL \compte[8]~27_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \registre[0]~0_combout\ : std_logic;
SIGNAL \registre[0]~reg0feeder_combout\ : std_logic;
SIGNAL \registre[0]~reg0_q\ : std_logic;
SIGNAL \signal_registre[0]~10\ : std_logic;
SIGNAL \signal_registre[1]~11_combout\ : std_logic;
SIGNAL \registre[1]~reg0_q\ : std_logic;
SIGNAL \signal_registre[1]~12\ : std_logic;
SIGNAL \signal_registre[2]~13_combout\ : std_logic;
SIGNAL \registre[2]~reg0feeder_combout\ : std_logic;
SIGNAL \registre[2]~reg0_q\ : std_logic;
SIGNAL \signal_registre[2]~14\ : std_logic;
SIGNAL \signal_registre[3]~15_combout\ : std_logic;
SIGNAL \registre[3]~reg0feeder_combout\ : std_logic;
SIGNAL \registre[3]~reg0_q\ : std_logic;
SIGNAL \signal_registre[3]~16\ : std_logic;
SIGNAL \signal_registre[4]~17_combout\ : std_logic;
SIGNAL \registre[4]~reg0feeder_combout\ : std_logic;
SIGNAL \registre[4]~reg0_q\ : std_logic;
SIGNAL \signal_registre[4]~18\ : std_logic;
SIGNAL \signal_registre[5]~19_combout\ : std_logic;
SIGNAL \registre[5]~reg0_q\ : std_logic;
SIGNAL \signal_registre[5]~20\ : std_logic;
SIGNAL \signal_registre[6]~21_combout\ : std_logic;
SIGNAL \registre[6]~reg0feeder_combout\ : std_logic;
SIGNAL \registre[6]~reg0_q\ : std_logic;
SIGNAL \signal_registre[6]~22\ : std_logic;
SIGNAL \signal_registre[7]~23_combout\ : std_logic;
SIGNAL \registre[7]~reg0feeder_combout\ : std_logic;
SIGNAL \registre[7]~reg0_q\ : std_logic;
SIGNAL \signal_registre[7]~24\ : std_logic;
SIGNAL \signal_registre[8]~25_combout\ : std_logic;
SIGNAL \registre[8]~reg0feeder_combout\ : std_logic;
SIGNAL \registre[8]~reg0_q\ : std_logic;
SIGNAL \start_stop~0_combout\ : std_logic;
SIGNAL \start_stop~1_combout\ : std_logic;
SIGNAL \start_stop$latch~combout\ : std_logic;
SIGNAL \continu~1_combout\ : std_logic;
SIGNAL \continu~2_combout\ : std_logic;
SIGNAL \continu$latch~combout\ : std_logic;
SIGNAL signal_registre : std_logic_vector(8 DOWNTO 0);
SIGNAL compte : std_logic_vector(8 DOWNTO 0);
SIGNAL timer : std_logic_vector(21 DOWNTO 0);
SIGNAL timer_3 : std_logic_vector(12 DOWNTO 0);
SIGNAL timer_5 : std_logic_vector(25 DOWNTO 0);

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

\Selector12~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector12~0_combout\);

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

-- Location: IOOBUF_X18_Y0_N9
\registre[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre[0]~reg0_q\,
	devoe => ww_devoe,
	o => \registre[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\registre[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre[1]~reg0_q\,
	devoe => ww_devoe,
	o => \registre[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\registre[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre[2]~reg0_q\,
	devoe => ww_devoe,
	o => \registre[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\registre[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre[3]~reg0_q\,
	devoe => ww_devoe,
	o => \registre[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\registre[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre[4]~reg0_q\,
	devoe => ww_devoe,
	o => \registre[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\registre[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre[5]~reg0_q\,
	devoe => ww_devoe,
	o => \registre[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\registre[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre[6]~reg0_q\,
	devoe => ww_devoe,
	o => \registre[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\registre[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre[7]~reg0_q\,
	devoe => ww_devoe,
	o => \registre[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\registre[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \registre[8]~reg0_q\,
	devoe => ww_devoe,
	o => \registre[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: LCCOMB_X34_Y14_N10
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

-- Location: LCCOMB_X35_Y14_N20
\timer~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~8_combout\ = (\Add0~0_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \Equal0~6_combout\,
	combout => \timer~8_combout\);

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

-- Location: FF_X34_Y14_N19
\timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \timer~8_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(0));

-- Location: LCCOMB_X34_Y14_N12
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (timer(1) & (!\Add0~1\)) # (!timer(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X34_Y14_N13
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

-- Location: LCCOMB_X34_Y14_N14
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

-- Location: FF_X34_Y14_N15
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

-- Location: LCCOMB_X34_Y14_N16
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (timer(3) & (!\Add0~5\)) # (!timer(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X34_Y14_N17
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

-- Location: LCCOMB_X34_Y14_N18
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (timer(4) & (\Add0~7\ $ (GND))) # (!timer(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((timer(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X35_Y14_N14
\timer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~1_combout\ = (!\Equal0~6_combout\ & \Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~6_combout\,
	datad => \Add0~8_combout\,
	combout => \timer~1_combout\);

-- Location: FF_X34_Y14_N31
\timer[4]\ : dffeas
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
	q => timer(4));

-- Location: LCCOMB_X34_Y14_N20
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

-- Location: FF_X34_Y14_N21
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

-- Location: LCCOMB_X35_Y14_N22
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!timer(2) & (timer(4) & (!timer(3) & !timer(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(2),
	datab => timer(4),
	datac => timer(3),
	datad => timer(5),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X34_Y14_N22
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

-- Location: LCCOMB_X34_Y14_N2
\timer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~7_combout\ = (!\Equal0~6_combout\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~6_combout\,
	datad => \Add0~12_combout\,
	combout => \timer~7_combout\);

-- Location: FF_X34_Y14_N3
\timer[6]\ : dffeas
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
	q => timer(6));

-- Location: LCCOMB_X34_Y14_N24
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

-- Location: FF_X34_Y14_N1
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

-- Location: LCCOMB_X34_Y14_N26
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

-- Location: LCCOMB_X34_Y14_N6
\timer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~6_combout\ = (!\Equal0~6_combout\ & \Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~6_combout\,
	datad => \Add0~16_combout\,
	combout => \timer~6_combout\);

-- Location: FF_X34_Y14_N7
\timer[8]\ : dffeas
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
	q => timer(8));

-- Location: LCCOMB_X34_Y14_N28
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (timer(9) & (!\Add0~17\)) # (!timer(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!timer(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X34_Y14_N4
\timer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~5_combout\ = (!\Equal0~6_combout\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~6_combout\,
	datad => \Add0~18_combout\,
	combout => \timer~5_combout\);

-- Location: FF_X34_Y14_N5
\timer[9]\ : dffeas
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
	q => timer(9));

-- Location: LCCOMB_X34_Y14_N0
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (timer(8) & (timer(9) & (!timer(7) & timer(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(8),
	datab => timer(9),
	datac => timer(7),
	datad => timer(6),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X34_Y14_N30
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (timer(10) & (\Add0~19\ $ (GND))) # (!timer(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((timer(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X35_Y14_N30
\timer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~4_combout\ = (!\Equal0~6_combout\ & \Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~6_combout\,
	datad => \Add0~20_combout\,
	combout => \timer~4_combout\);

-- Location: FF_X34_Y13_N25
\timer[10]\ : dffeas
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
	q => timer(10));

-- Location: LCCOMB_X34_Y13_N0
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (timer(11) & (!\Add0~21\)) # (!timer(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!timer(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X34_Y13_N1
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

-- Location: LCCOMB_X34_Y13_N2
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (timer(12) & (\Add0~23\ $ (GND))) # (!timer(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((timer(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X34_Y13_N30
\timer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~3_combout\ = (\Add0~24_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~24_combout\,
	datad => \Equal0~6_combout\,
	combout => \timer~3_combout\);

-- Location: FF_X34_Y13_N31
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

-- Location: LCCOMB_X34_Y13_N4
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

-- Location: FF_X34_Y13_N5
\timer[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(13));

-- Location: LCCOMB_X34_Y13_N6
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

-- Location: FF_X34_Y13_N7
\timer[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(14));

-- Location: LCCOMB_X34_Y13_N8
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (timer(15) & (!\Add0~29\)) # (!timer(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!timer(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X35_Y14_N4
\timer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~2_combout\ = (!\Equal0~6_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~6_combout\,
	datad => \Add0~30_combout\,
	combout => \timer~2_combout\);

-- Location: FF_X35_Y14_N5
\timer[15]\ : dffeas
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
	q => timer(15));

-- Location: LCCOMB_X34_Y13_N10
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

-- Location: LCCOMB_X35_Y14_N26
\timer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~0_combout\ = (\Add0~32_combout\ & !\Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~32_combout\,
	datac => \Equal0~6_combout\,
	combout => \timer~0_combout\);

-- Location: FF_X35_Y14_N27
\timer[16]\ : dffeas
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
	q => timer(16));

-- Location: LCCOMB_X34_Y13_N12
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

-- Location: FF_X34_Y13_N13
\timer[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(17));

-- Location: LCCOMB_X34_Y13_N14
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (timer(18) & (\Add0~35\ $ (GND))) # (!timer(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((timer(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X34_Y13_N23
\timer[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~36_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(18));

-- Location: LCCOMB_X34_Y13_N16
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

-- Location: FF_X34_Y13_N17
\timer[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~38_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer(19));

-- Location: LCCOMB_X34_Y13_N18
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (timer(20) & (\Add0~39\ $ (GND))) # (!timer(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((timer(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X34_Y13_N28
\timer~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~10_combout\ = (!\Equal0~6_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~6_combout\,
	datad => \Add0~40_combout\,
	combout => \timer~10_combout\);

-- Location: FF_X34_Y13_N29
\timer[20]\ : dffeas
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
	q => timer(20));

-- Location: LCCOMB_X34_Y13_N22
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (timer(21) & (timer(20) & (!timer(18) & !timer(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(21),
	datab => timer(20),
	datac => timer(18),
	datad => timer(19),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X34_Y13_N24
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (timer(12) & (!timer(13) & (timer(10) & !timer(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(12),
	datab => timer(13),
	datac => timer(10),
	datad => timer(11),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X35_Y14_N18
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!timer(17) & (timer(15) & (timer(16) & !timer(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(17),
	datab => timer(15),
	datac => timer(16),
	datad => timer(14),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X35_Y14_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X35_Y14_N8
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!timer(0) & (!timer(1) & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer(0),
	datab => timer(1),
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X34_Y13_N26
\timer~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~9_combout\ = (!\Equal0~6_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~6_combout\,
	datac => \Add0~42_combout\,
	combout => \timer~9_combout\);

-- Location: FF_X34_Y13_N27
\timer[21]\ : dffeas
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
	q => timer(21));

-- Location: LCCOMB_X34_Y13_N20
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = timer(21) $ (\Add0~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer(21),
	cin => \Add0~41\,
	combout => \Add0~42_combout\);

-- Location: LCCOMB_X34_Y14_N8
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!\Add0~12_combout\ & !\Add0~14_combout\)) # (!\Add0~18_combout\)) # (!\Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~16_combout\,
	datad => \Add0~18_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X35_Y14_N0
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~2_combout\) # ((!\Add0~10_combout\ & (!\Add0~14_combout\ & !\timer~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~14_combout\,
	datac => \timer~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X35_Y14_N6
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\Add0~24_combout\) # ((\Add0~22_combout\) # ((\Add0~26_combout\) # (!\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Add0~22_combout\,
	datac => \Add0~26_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X35_Y14_N24
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\Add0~30_combout\ & (\Add0~28_combout\ & ((\Add0~20_combout\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~20_combout\,
	datac => \Add0~28_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X35_Y14_N10
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\Add0~34_combout\) # ((\Add0~36_combout\) # (\LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datac => \Add0~36_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X35_Y14_N16
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\Add0~38_combout\) # ((\Add0~40_combout\) # (\LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Add0~40_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X35_Y14_N12
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\Equal0~6_combout\) # ((!\Add0~42_combout\ & (!\Add0~32_combout\ & !\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~42_combout\,
	datab => \Add0~32_combout\,
	datac => \Equal0~6_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: FF_X35_Y14_N13
pwm_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan0~8_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_signal~q\);

-- Location: LCCOMB_X37_Y14_N6
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

-- Location: LCCOMB_X37_Y14_N4
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

-- Location: FF_X37_Y14_N5
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

-- Location: LCCOMB_X37_Y14_N8
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

-- Location: FF_X37_Y14_N9
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

-- Location: LCCOMB_X37_Y14_N10
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

-- Location: FF_X37_Y14_N11
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

-- Location: LCCOMB_X37_Y14_N12
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

-- Location: LCCOMB_X37_Y14_N2
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

-- Location: FF_X37_Y14_N3
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

-- Location: LCCOMB_X37_Y14_N14
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

-- Location: FF_X37_Y14_N15
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

-- Location: LCCOMB_X36_Y14_N2
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (timer_3(3) & (!timer_3(2) & (!timer_3(1) & !timer_3(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(3),
	datab => timer_3(2),
	datac => timer_3(1),
	datad => timer_3(4),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X37_Y14_N16
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

-- Location: FF_X37_Y14_N1
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

-- Location: LCCOMB_X37_Y14_N18
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

-- Location: FF_X37_Y14_N19
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

-- Location: LCCOMB_X37_Y14_N20
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

-- Location: LCCOMB_X36_Y14_N0
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

-- Location: FF_X36_Y14_N1
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

-- Location: LCCOMB_X37_Y14_N22
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

-- Location: LCCOMB_X36_Y14_N18
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

-- Location: FF_X36_Y14_N19
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

-- Location: LCCOMB_X37_Y14_N24
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (timer_3(9) & (!\Add2~17\)) # (!timer_3(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!timer_3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_3(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X36_Y14_N26
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

-- Location: LCCOMB_X36_Y14_N28
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

-- Location: FF_X36_Y14_N29
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

-- Location: LCCOMB_X37_Y14_N26
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

-- Location: FF_X37_Y14_N27
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

-- Location: LCCOMB_X37_Y14_N28
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

-- Location: FF_X37_Y14_N29
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

-- Location: LCCOMB_X36_Y14_N30
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (timer_3(12) & (timer_3(9) & (!timer_3(10) & !timer_3(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(12),
	datab => timer_3(9),
	datac => timer_3(10),
	datad => timer_3(11),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X36_Y14_N20
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!timer_3(6) & (timer_3(7) & (!timer_3(5) & timer_3(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(6),
	datab => timer_3(7),
	datac => timer_3(5),
	datad => timer_3(8),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X36_Y14_N24
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!timer_3(0) & (\Equal2~2_combout\ & (\Equal2~0_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_3(0),
	datab => \Equal2~2_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X36_Y14_N14
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

-- Location: FF_X36_Y14_N15
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

-- Location: LCCOMB_X37_Y14_N30
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

-- Location: LCCOMB_X36_Y14_N10
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

-- Location: LCCOMB_X36_Y14_N12
\process_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_5~1_combout\ = (\process_5~0_combout\) # ((\Add2~6_combout\) # ((\Add2~8_combout\) # (\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_5~0_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~10_combout\,
	combout => \process_5~1_combout\);

-- Location: LCCOMB_X37_Y14_N0
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

-- Location: LCCOMB_X36_Y14_N8
\process_5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_5~3_combout\ = (\Add2~16_combout\ & (\process_5~2_combout\ & ((\timer_3~0_combout\) # (\Add2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_3~0_combout\,
	datab => \Add2~16_combout\,
	datac => \process_5~2_combout\,
	datad => \Add2~22_combout\,
	combout => \process_5~3_combout\);

-- Location: LCCOMB_X36_Y14_N22
\process_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_5~4_combout\ = (\Add2~22_combout\ & ((\Add2~18_combout\) # ((\process_5~1_combout\ & \process_5~3_combout\)))) # (!\Add2~22_combout\ & (((\process_5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_5~1_combout\,
	datab => \Add2~18_combout\,
	datac => \process_5~3_combout\,
	datad => \Add2~22_combout\,
	combout => \process_5~4_combout\);

-- Location: LCCOMB_X36_Y14_N4
\process_5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_5~5_combout\ = (!\Add2~24_combout\ & (\Add2~22_combout\ $ (((\Add2~20_combout\) # (\process_5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~24_combout\,
	datab => \Add2~20_combout\,
	datac => \process_5~4_combout\,
	datad => \Add2~22_combout\,
	combout => \process_5~5_combout\);

-- Location: FF_X36_Y14_N5
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

-- Location: LCCOMB_X26_Y10_N10
\signal_registre[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[0]~9_combout\ = (signal_registre(0) & (\pwm_signal~q\ $ (VCC))) # (!signal_registre(0) & (\pwm_signal~q\ & VCC))
-- \signal_registre[0]~10\ = CARRY((signal_registre(0) & \pwm_signal~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => signal_registre(0),
	datab => \pwm_signal~q\,
	datad => VCC,
	combout => \signal_registre[0]~9_combout\,
	cout => \signal_registre[0]~10\);

-- Location: LCCOMB_X25_Y11_N4
\compte[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[0]~9_combout\ = compte(0) $ (VCC)
-- \compte[0]~10\ = CARRY(compte(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => compte(0),
	datad => VCC,
	combout => \compte[0]~9_combout\,
	cout => \compte[0]~10\);

-- Location: LCCOMB_X24_Y11_N6
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = timer_5(0) $ (VCC)
-- \Add1~1\ = CARRY(timer_5(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_5(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X24_Y11_N0
\timer_5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~12_combout\ = (\Add1~0_combout\ & !\Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => \Equal1~8_combout\,
	combout => \timer_5~12_combout\);

-- Location: FF_X24_Y11_N1
\timer_5[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(0));

-- Location: LCCOMB_X24_Y11_N8
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (timer_5(1) & (!\Add1~1\)) # (!timer_5(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!timer_5(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X24_Y11_N9
\timer_5[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(1));

-- Location: LCCOMB_X24_Y11_N10
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (timer_5(2) & (\Add1~3\ $ (GND))) # (!timer_5(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((timer_5(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X24_Y11_N11
\timer_5[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(2));

-- Location: LCCOMB_X24_Y11_N12
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (timer_5(3) & (!\Add1~5\)) # (!timer_5(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!timer_5(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X24_Y11_N13
\timer_5[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(3));

-- Location: LCCOMB_X24_Y11_N14
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (timer_5(4) & (\Add1~7\ $ (GND))) # (!timer_5(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((timer_5(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X24_Y11_N15
\timer_5[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(4));

-- Location: LCCOMB_X24_Y11_N16
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (timer_5(5) & (!\Add1~9\)) # (!timer_5(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!timer_5(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X24_Y11_N17
\timer_5[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(5));

-- Location: LCCOMB_X24_Y11_N18
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (timer_5(6) & (\Add1~11\ $ (GND))) # (!timer_5(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((timer_5(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X24_Y11_N19
\timer_5[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(6));

-- Location: LCCOMB_X24_Y11_N20
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (timer_5(7) & (!\Add1~13\)) # (!timer_5(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!timer_5(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X24_Y11_N4
\timer_5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~11_combout\ = (\Add1~14_combout\ & !\Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datad => \Equal1~8_combout\,
	combout => \timer_5~11_combout\);

-- Location: FF_X24_Y11_N5
\timer_5[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(7));

-- Location: LCCOMB_X24_Y11_N22
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (timer_5(8) & (\Add1~15\ $ (GND))) # (!timer_5(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((timer_5(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X24_Y11_N23
\timer_5[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(8));

-- Location: LCCOMB_X24_Y11_N24
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (timer_5(9) & (!\Add1~17\)) # (!timer_5(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!timer_5(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X24_Y11_N25
\timer_5[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(9));

-- Location: LCCOMB_X23_Y11_N30
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (timer_5(7) & (!timer_5(6) & (!timer_5(8) & !timer_5(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(7),
	datab => timer_5(6),
	datac => timer_5(8),
	datad => timer_5(9),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X23_Y11_N20
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!timer_5(0) & !timer_5(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timer_5(0),
	datac => timer_5(1),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X24_Y11_N2
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!timer_5(3) & (!timer_5(5) & (!timer_5(4) & !timer_5(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(3),
	datab => timer_5(5),
	datac => timer_5(4),
	datad => timer_5(2),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X24_Y11_N26
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (timer_5(10) & (\Add1~19\ $ (GND))) # (!timer_5(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((timer_5(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X24_Y11_N27
\timer_5[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(10));

-- Location: LCCOMB_X24_Y11_N28
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (timer_5(11) & (!\Add1~21\)) # (!timer_5(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!timer_5(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X24_Y11_N29
\timer_5[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(11));

-- Location: LCCOMB_X24_Y11_N30
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (timer_5(12) & (\Add1~23\ $ (GND))) # (!timer_5(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((timer_5(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X25_Y10_N6
\timer_5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~10_combout\ = (!\Equal1~8_combout\ & \Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~8_combout\,
	datad => \Add1~24_combout\,
	combout => \timer_5~10_combout\);

-- Location: FF_X25_Y10_N7
\timer_5[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(12));

-- Location: LCCOMB_X24_Y10_N0
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (timer_5(13) & (!\Add1~25\)) # (!timer_5(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!timer_5(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X25_Y10_N12
\timer_5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~9_combout\ = (\Add1~26_combout\ & !\Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datac => \Equal1~8_combout\,
	combout => \timer_5~9_combout\);

-- Location: FF_X25_Y10_N13
\timer_5[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(13));

-- Location: LCCOMB_X24_Y10_N2
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (timer_5(14) & (\Add1~27\ $ (GND))) # (!timer_5(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((timer_5(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X25_Y10_N8
\timer_5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~8_combout\ = (!\Equal1~8_combout\ & \Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~8_combout\,
	datad => \Add1~28_combout\,
	combout => \timer_5~8_combout\);

-- Location: FF_X25_Y10_N9
\timer_5[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(14));

-- Location: LCCOMB_X24_Y10_N4
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (timer_5(15) & (!\Add1~29\)) # (!timer_5(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!timer_5(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X25_Y10_N18
\timer_5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~7_combout\ = (!\Equal1~8_combout\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~8_combout\,
	datad => \Add1~30_combout\,
	combout => \timer_5~7_combout\);

-- Location: FF_X25_Y10_N19
\timer_5[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(15));

-- Location: LCCOMB_X24_Y10_N6
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (timer_5(16) & (\Add1~31\ $ (GND))) # (!timer_5(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((timer_5(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X24_Y10_N7
\timer_5[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(16));

-- Location: LCCOMB_X24_Y10_N8
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (timer_5(17) & (!\Add1~33\)) # (!timer_5(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!timer_5(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X24_Y10_N30
\timer_5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~6_combout\ = (\Add1~34_combout\ & !\Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~34_combout\,
	datad => \Equal1~8_combout\,
	combout => \timer_5~6_combout\);

-- Location: FF_X24_Y10_N31
\timer_5[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(17));

-- Location: LCCOMB_X24_Y10_N10
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (timer_5(18) & (\Add1~35\ $ (GND))) # (!timer_5(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((timer_5(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X24_Y10_N11
\timer_5[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(18));

-- Location: LCCOMB_X24_Y10_N12
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (timer_5(19) & (!\Add1~37\)) # (!timer_5(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!timer_5(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X25_Y10_N26
\timer_5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~5_combout\ = (!\Equal1~8_combout\ & \Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~8_combout\,
	datad => \Add1~38_combout\,
	combout => \timer_5~5_combout\);

-- Location: FF_X25_Y10_N27
\timer_5[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(19));

-- Location: LCCOMB_X24_Y10_N14
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (timer_5(20) & (\Add1~39\ $ (GND))) # (!timer_5(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((timer_5(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X24_Y10_N28
\timer_5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~4_combout\ = (\Add1~40_combout\ & !\Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~40_combout\,
	datad => \Equal1~8_combout\,
	combout => \timer_5~4_combout\);

-- Location: FF_X24_Y10_N29
\timer_5[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(20));

-- Location: LCCOMB_X24_Y10_N16
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (timer_5(21) & (!\Add1~41\)) # (!timer_5(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!timer_5(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X25_Y10_N0
\timer_5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~3_combout\ = (!\Equal1~8_combout\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~8_combout\,
	datac => \Add1~42_combout\,
	combout => \timer_5~3_combout\);

-- Location: FF_X25_Y10_N1
\timer_5[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(21));

-- Location: LCCOMB_X24_Y10_N18
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (timer_5(22) & (\Add1~43\ $ (GND))) # (!timer_5(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((timer_5(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X24_Y10_N26
\timer_5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~2_combout\ = (!\Equal1~8_combout\ & \Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~8_combout\,
	datad => \Add1~44_combout\,
	combout => \timer_5~2_combout\);

-- Location: FF_X24_Y10_N27
\timer_5[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(22));

-- Location: LCCOMB_X24_Y10_N20
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (timer_5(23) & (!\Add1~45\)) # (!timer_5(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!timer_5(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X25_Y10_N20
\timer_5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~1_combout\ = (!\Equal1~8_combout\ & \Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~8_combout\,
	datad => \Add1~46_combout\,
	combout => \timer_5~1_combout\);

-- Location: FF_X25_Y10_N21
\timer_5[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(23));

-- Location: LCCOMB_X24_Y10_N22
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (timer_5(24) & (\Add1~47\ $ (GND))) # (!timer_5(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((timer_5(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X24_Y10_N23
\timer_5[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(24));

-- Location: LCCOMB_X24_Y10_N24
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = timer_5(25) $ (\Add1~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timer_5(25),
	cin => \Add1~49\,
	combout => \Add1~50_combout\);

-- Location: LCCOMB_X25_Y10_N14
\timer_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer_5~0_combout\ = (!\Equal1~8_combout\ & \Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~8_combout\,
	datad => \Add1~50_combout\,
	combout => \timer_5~0_combout\);

-- Location: FF_X25_Y10_N15
\timer_5[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer_5~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timer_5(25));

-- Location: LCCOMB_X25_Y10_N10
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (timer_5(23) & (timer_5(25) & (timer_5(22) & !timer_5(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(23),
	datab => timer_5(25),
	datac => timer_5(22),
	datad => timer_5(24),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X25_Y10_N16
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!timer_5(18) & (timer_5(21) & (timer_5(19) & timer_5(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(18),
	datab => timer_5(21),
	datac => timer_5(19),
	datad => timer_5(20),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X25_Y10_N30
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (timer_5(14) & (timer_5(15) & (!timer_5(16) & timer_5(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(14),
	datab => timer_5(15),
	datac => timer_5(16),
	datad => timer_5(17),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X25_Y10_N28
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!timer_5(11) & (timer_5(13) & (!timer_5(10) & timer_5(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timer_5(11),
	datab => timer_5(13),
	datac => timer_5(10),
	datad => timer_5(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X25_Y10_N22
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~0_combout\ & (\Equal1~1_combout\ & (\Equal1~2_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X23_Y10_N0
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (\Equal1~5_combout\ & (\Equal1~7_combout\ & (\Equal1~6_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~7_combout\,
	datac => \Equal1~6_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~8_combout\);

-- Location: FF_X21_Y11_N5
temp_1s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Equal1~8_combout\,
	sload => VCC,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp_1s~q\);

-- Location: IOIBUF_X16_Y0_N22
\switch~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch,
	o => \switch~input_o\);

-- Location: LCCOMB_X21_Y11_N24
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\ep.idle~q\) # (\switch~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ep.idle~q\,
	datab => \switch~input_o\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X21_Y11_N30
\es.attente_mono_898\ : cycloneive_lcell_comb
-- Equation(s):
-- \es.attente_mono_898~combout\ = (GLOBAL(\Selector12~0clkctrl_outclk\) & ((!\Selector4~0_combout\))) # (!GLOBAL(\Selector12~0clkctrl_outclk\) & (\es.attente_mono_898~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \es.attente_mono_898~combout\,
	datac => \Selector4~0_combout\,
	datad => \Selector12~0clkctrl_outclk\,
	combout => \es.attente_mono_898~combout\);

-- Location: FF_X21_Y11_N31
\ep.attente_mono\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \es.attente_mono_898~combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ep.attente_mono~q\);

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

-- Location: LCCOMB_X21_Y11_N6
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\switch~input_o\) # ((!\btn~input_o\) # (!\ep.attente_mono~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch~input_o\,
	datac => \ep.attente_mono~q\,
	datad => \btn~input_o\,
	combout => \Selector12~0_combout\);

-- Location: CLKCTRL_G17
\Selector12~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector12~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector12~0clkctrl_outclk\);

-- Location: LCCOMB_X21_Y11_N4
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\ep.continue~q\ & ((\switch~input_o\) # ((\ep.attente_cont~q\ & !\temp_1s~q\)))) # (!\ep.continue~q\ & (\ep.attente_cont~q\ & (!\temp_1s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ep.continue~q\,
	datab => \ep.attente_cont~q\,
	datac => \temp_1s~q\,
	datad => \switch~input_o\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X21_Y11_N8
\es.attente_cont_909\ : cycloneive_lcell_comb
-- Equation(s):
-- \es.attente_cont_909~combout\ = (GLOBAL(\Selector12~0clkctrl_outclk\) & ((\Selector6~0_combout\))) # (!GLOBAL(\Selector12~0clkctrl_outclk\) & (\es.attente_cont_909~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \es.attente_cont_909~combout\,
	datac => \Selector12~0clkctrl_outclk\,
	datad => \Selector6~0_combout\,
	combout => \es.attente_cont_909~combout\);

-- Location: FF_X21_Y11_N25
\ep.attente_cont\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \es.attente_cont_909~combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ep.attente_cont~q\);

-- Location: LCCOMB_X21_Y11_N26
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\echantillon~q\ & ((\ep.mono~q\) # ((\temp_1s~q\ & \ep.attente_cont~q\)))) # (!\echantillon~q\ & (\temp_1s~q\ & (\ep.attente_cont~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \echantillon~q\,
	datab => \temp_1s~q\,
	datac => \ep.attente_cont~q\,
	datad => \ep.mono~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X21_Y11_N28
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\ep.continue~q\ & (((\ep.attente_mono~q\ & \btn~input_o\)) # (!\switch~input_o\))) # (!\ep.continue~q\ & (((\ep.attente_mono~q\ & \btn~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ep.continue~q\,
	datab => \switch~input_o\,
	datac => \ep.attente_mono~q\,
	datad => \btn~input_o\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X21_Y11_N10
\Selector11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\Selector11~0_combout\) # (\Selector11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector11~0_combout\,
	datad => \Selector11~1_combout\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X21_Y11_N0
\es.idle_942\ : cycloneive_lcell_comb
-- Equation(s):
-- \es.idle_942~combout\ = (GLOBAL(\Selector12~0clkctrl_outclk\) & ((\Selector11~2_combout\))) # (!GLOBAL(\Selector12~0clkctrl_outclk\) & (\es.idle_942~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \es.idle_942~combout\,
	datac => \Selector11~2_combout\,
	datad => \Selector12~0clkctrl_outclk\,
	combout => \es.idle_942~combout\);

-- Location: LCCOMB_X21_Y11_N2
\ep.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ep.idle~0_combout\ = !\es.idle_942~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \es.idle_942~combout\,
	combout => \ep.idle~0_combout\);

-- Location: FF_X21_Y11_N3
\ep.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ep.idle~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ep.idle~q\);

-- Location: LCCOMB_X20_Y11_N24
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\ep.idle~q\ & \switch~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ep.idle~q\,
	datad => \switch~input_o\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X20_Y11_N18
\es.continue_931\ : cycloneive_lcell_comb
-- Equation(s):
-- \es.continue_931~combout\ = (GLOBAL(\Selector12~0clkctrl_outclk\) & ((\Selector10~0_combout\))) # (!GLOBAL(\Selector12~0clkctrl_outclk\) & (\es.continue_931~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \es.continue_931~combout\,
	datac => \Selector10~0_combout\,
	datad => \Selector12~0clkctrl_outclk\,
	combout => \es.continue_931~combout\);

-- Location: LCCOMB_X20_Y11_N16
\ep.continue~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ep.continue~feeder_combout\ = \es.continue_931~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \es.continue_931~combout\,
	combout => \ep.continue~feeder_combout\);

-- Location: FF_X20_Y11_N17
\ep.continue\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ep.continue~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ep.continue~q\);

-- Location: LCCOMB_X23_Y11_N16
\echant_prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \echant_prev~0_combout\ = (\echant_signal~q\ & ((\ep.continue~q\) # (\ep.mono~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ep.continue~q\,
	datac => \ep.mono~q\,
	datad => \echant_signal~q\,
	combout => \echant_prev~0_combout\);

-- Location: FF_X24_Y11_N21
echant_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \echant_prev~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \echant_prev~q\);

-- Location: LCCOMB_X25_Y11_N26
\echantillon~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \echantillon~0_combout\ = (\echant_prev~q\ & (((\echantillon~q\)))) # (!\echant_prev~q\ & ((\echant_signal~q\ & (\Equal3~2_combout\)) # (!\echant_signal~q\ & ((\echantillon~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \echant_prev~q\,
	datab => \Equal3~2_combout\,
	datac => \echantillon~q\,
	datad => \echant_signal~q\,
	combout => \echantillon~0_combout\);

-- Location: LCCOMB_X21_Y11_N12
\echantillon~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \echantillon~1_combout\ = (\echantillon~0_combout\ & ((\ep.mono~q\) # (\ep.continue~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ep.mono~q\,
	datac => \ep.continue~q\,
	datad => \echantillon~0_combout\,
	combout => \echantillon~1_combout\);

-- Location: FF_X21_Y11_N13
echantillon : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \echantillon~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \echantillon~q\);

-- Location: LCCOMB_X20_Y11_N2
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\echantillon~q\ & (!\btn~input_o\ & ((\ep.attente_mono~q\)))) # (!\echantillon~q\ & ((\ep.mono~q\) # ((!\btn~input_o\ & \ep.attente_mono~q\))))

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
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X20_Y11_N20
\es.mono_920\ : cycloneive_lcell_comb
-- Equation(s):
-- \es.mono_920~combout\ = (GLOBAL(\Selector12~0clkctrl_outclk\) & ((\Selector8~0_combout\))) # (!GLOBAL(\Selector12~0clkctrl_outclk\) & (\es.mono_920~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \es.mono_920~combout\,
	datac => \Selector8~0_combout\,
	datad => \Selector12~0clkctrl_outclk\,
	combout => \es.mono_920~combout\);

-- Location: LCCOMB_X20_Y11_N30
\ep.mono~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ep.mono~feeder_combout\ = \es.mono_920~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \es.mono_920~combout\,
	combout => \ep.mono~feeder_combout\);

-- Location: FF_X20_Y11_N31
\ep.mono\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ep.mono~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ep.mono~q\);

-- Location: LCCOMB_X25_Y11_N30
\compte[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[4]~17_combout\ = (\Equal3~2_combout\) # ((!\ep.mono~q\ & !\ep.continue~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ep.mono~q\,
	datac => \ep.continue~q\,
	datad => \Equal3~2_combout\,
	combout => \compte[4]~17_combout\);

-- Location: LCCOMB_X25_Y11_N0
\compte[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[4]~18_combout\ = (\ep.mono~q\ & (!\echant_prev~q\ & ((\echant_signal~q\)))) # (!\ep.mono~q\ & (((!\echant_prev~q\ & \echant_signal~q\)) # (!\ep.continue~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ep.mono~q\,
	datab => \echant_prev~q\,
	datac => \ep.continue~q\,
	datad => \echant_signal~q\,
	combout => \compte[4]~18_combout\);

-- Location: FF_X25_Y11_N5
\compte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[0]~9_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[4]~17_combout\,
	ena => \compte[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(0));

-- Location: LCCOMB_X25_Y11_N6
\compte[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[1]~11_combout\ = (compte(1) & (!\compte[0]~10\)) # (!compte(1) & ((\compte[0]~10\) # (GND)))
-- \compte[1]~12\ = CARRY((!\compte[0]~10\) # (!compte(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compte(1),
	datad => VCC,
	cin => \compte[0]~10\,
	combout => \compte[1]~11_combout\,
	cout => \compte[1]~12\);

-- Location: FF_X25_Y11_N7
\compte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[1]~11_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[4]~17_combout\,
	ena => \compte[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(1));

-- Location: LCCOMB_X25_Y11_N8
\compte[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[2]~13_combout\ = (compte(2) & (\compte[1]~12\ $ (GND))) # (!compte(2) & (!\compte[1]~12\ & VCC))
-- \compte[2]~14\ = CARRY((compte(2) & !\compte[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compte(2),
	datad => VCC,
	cin => \compte[1]~12\,
	combout => \compte[2]~13_combout\,
	cout => \compte[2]~14\);

-- Location: FF_X25_Y11_N9
\compte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[2]~13_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[4]~17_combout\,
	ena => \compte[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(2));

-- Location: LCCOMB_X25_Y11_N10
\compte[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[3]~15_combout\ = (compte(3) & (!\compte[2]~14\)) # (!compte(3) & ((\compte[2]~14\) # (GND)))
-- \compte[3]~16\ = CARRY((!\compte[2]~14\) # (!compte(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compte(3),
	datad => VCC,
	cin => \compte[2]~14\,
	combout => \compte[3]~15_combout\,
	cout => \compte[3]~16\);

-- Location: FF_X25_Y11_N11
\compte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[3]~15_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[4]~17_combout\,
	ena => \compte[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(3));

-- Location: LCCOMB_X25_Y11_N2
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (((compte(3)) # (!compte(0))) # (!compte(2))) # (!compte(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compte(1),
	datab => compte(2),
	datac => compte(0),
	datad => compte(3),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X25_Y11_N12
\compte[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[4]~19_combout\ = (compte(4) & (\compte[3]~16\ $ (GND))) # (!compte(4) & (!\compte[3]~16\ & VCC))
-- \compte[4]~20\ = CARRY((compte(4) & !\compte[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compte(4),
	datad => VCC,
	cin => \compte[3]~16\,
	combout => \compte[4]~19_combout\,
	cout => \compte[4]~20\);

-- Location: FF_X25_Y11_N13
\compte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[4]~19_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[4]~17_combout\,
	ena => \compte[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(4));

-- Location: LCCOMB_X25_Y11_N14
\compte[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[5]~21_combout\ = (compte(5) & (!\compte[4]~20\)) # (!compte(5) & ((\compte[4]~20\) # (GND)))
-- \compte[5]~22\ = CARRY((!\compte[4]~20\) # (!compte(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compte(5),
	datad => VCC,
	cin => \compte[4]~20\,
	combout => \compte[5]~21_combout\,
	cout => \compte[5]~22\);

-- Location: FF_X25_Y11_N15
\compte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[5]~21_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[4]~17_combout\,
	ena => \compte[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(5));

-- Location: LCCOMB_X25_Y11_N16
\compte[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[6]~23_combout\ = (compte(6) & (\compte[5]~22\ $ (GND))) # (!compte(6) & (!\compte[5]~22\ & VCC))
-- \compte[6]~24\ = CARRY((compte(6) & !\compte[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compte(6),
	datad => VCC,
	cin => \compte[5]~22\,
	combout => \compte[6]~23_combout\,
	cout => \compte[6]~24\);

-- Location: FF_X25_Y11_N17
\compte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[6]~23_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[4]~17_combout\,
	ena => \compte[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(6));

-- Location: LCCOMB_X25_Y11_N18
\compte[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[7]~25_combout\ = (compte(7) & (!\compte[6]~24\)) # (!compte(7) & ((\compte[6]~24\) # (GND)))
-- \compte[7]~26\ = CARRY((!\compte[6]~24\) # (!compte(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compte(7),
	datad => VCC,
	cin => \compte[6]~24\,
	combout => \compte[7]~25_combout\,
	cout => \compte[7]~26\);

-- Location: FF_X25_Y11_N19
\compte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[7]~25_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[4]~17_combout\,
	ena => \compte[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(7));

-- Location: LCCOMB_X25_Y11_N22
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (compte(4)) # ((compte(7)) # ((!compte(6)) # (!compte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compte(4),
	datab => compte(7),
	datac => compte(5),
	datad => compte(6),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X25_Y11_N20
\compte[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \compte[8]~27_combout\ = \compte[7]~26\ $ (!compte(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => compte(8),
	cin => \compte[7]~26\,
	combout => \compte[8]~27_combout\);

-- Location: FF_X25_Y11_N21
\compte[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \compte[8]~27_combout\,
	clrn => \rst~input_o\,
	sclr => \compte[4]~17_combout\,
	ena => \compte[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => compte(8));

-- Location: LCCOMB_X25_Y11_N28
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (!\Equal3~0_combout\ & (!\Equal3~1_combout\ & compte(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datac => \Equal3~1_combout\,
	datad => compte(8),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X25_Y11_N24
\registre[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre[0]~0_combout\ = (!\echant_prev~q\ & (\echant_signal~q\ & ((\ep.mono~q\) # (\ep.continue~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ep.mono~q\,
	datab => \echant_prev~q\,
	datac => \ep.continue~q\,
	datad => \echant_signal~q\,
	combout => \registre[0]~0_combout\);

-- Location: FF_X26_Y10_N11
\signal_registre[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[0]~9_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(0));

-- Location: LCCOMB_X26_Y10_N4
\registre[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre[0]~reg0feeder_combout\ = signal_registre(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => signal_registre(0),
	combout => \registre[0]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N5
\registre[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \registre[0]~reg0feeder_combout\,
	clrn => \rst~input_o\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre[0]~reg0_q\);

-- Location: LCCOMB_X26_Y10_N12
\signal_registre[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[1]~11_combout\ = (signal_registre(1) & (!\signal_registre[0]~10\)) # (!signal_registre(1) & ((\signal_registre[0]~10\) # (GND)))
-- \signal_registre[1]~12\ = CARRY((!\signal_registre[0]~10\) # (!signal_registre(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => signal_registre(1),
	datad => VCC,
	cin => \signal_registre[0]~10\,
	combout => \signal_registre[1]~11_combout\,
	cout => \signal_registre[1]~12\);

-- Location: FF_X26_Y10_N13
\signal_registre[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[1]~11_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(1));

-- Location: FF_X25_Y10_N25
\registre[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => signal_registre(1),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre[1]~reg0_q\);

-- Location: LCCOMB_X26_Y10_N14
\signal_registre[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[2]~13_combout\ = (signal_registre(2) & (\signal_registre[1]~12\ $ (GND))) # (!signal_registre(2) & (!\signal_registre[1]~12\ & VCC))
-- \signal_registre[2]~14\ = CARRY((signal_registre(2) & !\signal_registre[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => signal_registre(2),
	datad => VCC,
	cin => \signal_registre[1]~12\,
	combout => \signal_registre[2]~13_combout\,
	cout => \signal_registre[2]~14\);

-- Location: FF_X26_Y10_N15
\signal_registre[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[2]~13_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(2));

-- Location: LCCOMB_X26_Y10_N2
\registre[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre[2]~reg0feeder_combout\ = signal_registre(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => signal_registre(2),
	combout => \registre[2]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N3
\registre[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \registre[2]~reg0feeder_combout\,
	clrn => \rst~input_o\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre[2]~reg0_q\);

-- Location: LCCOMB_X26_Y10_N16
\signal_registre[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[3]~15_combout\ = (signal_registre(3) & (!\signal_registre[2]~14\)) # (!signal_registre(3) & ((\signal_registre[2]~14\) # (GND)))
-- \signal_registre[3]~16\ = CARRY((!\signal_registre[2]~14\) # (!signal_registre(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => signal_registre(3),
	datad => VCC,
	cin => \signal_registre[2]~14\,
	combout => \signal_registre[3]~15_combout\,
	cout => \signal_registre[3]~16\);

-- Location: FF_X26_Y10_N17
\signal_registre[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[3]~15_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(3));

-- Location: LCCOMB_X26_Y10_N8
\registre[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre[3]~reg0feeder_combout\ = signal_registre(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => signal_registre(3),
	combout => \registre[3]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N9
\registre[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \registre[3]~reg0feeder_combout\,
	clrn => \rst~input_o\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre[3]~reg0_q\);

-- Location: LCCOMB_X26_Y10_N18
\signal_registre[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[4]~17_combout\ = (signal_registre(4) & (\signal_registre[3]~16\ $ (GND))) # (!signal_registre(4) & (!\signal_registre[3]~16\ & VCC))
-- \signal_registre[4]~18\ = CARRY((signal_registre(4) & !\signal_registre[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => signal_registre(4),
	datad => VCC,
	cin => \signal_registre[3]~16\,
	combout => \signal_registre[4]~17_combout\,
	cout => \signal_registre[4]~18\);

-- Location: FF_X26_Y10_N19
\signal_registre[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[4]~17_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(4));

-- Location: LCCOMB_X26_Y10_N6
\registre[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre[4]~reg0feeder_combout\ = signal_registre(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => signal_registre(4),
	combout => \registre[4]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N7
\registre[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \registre[4]~reg0feeder_combout\,
	clrn => \rst~input_o\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre[4]~reg0_q\);

-- Location: LCCOMB_X26_Y10_N20
\signal_registre[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[5]~19_combout\ = (signal_registre(5) & (!\signal_registre[4]~18\)) # (!signal_registre(5) & ((\signal_registre[4]~18\) # (GND)))
-- \signal_registre[5]~20\ = CARRY((!\signal_registre[4]~18\) # (!signal_registre(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => signal_registre(5),
	datad => VCC,
	cin => \signal_registre[4]~18\,
	combout => \signal_registre[5]~19_combout\,
	cout => \signal_registre[5]~20\);

-- Location: FF_X26_Y10_N21
\signal_registre[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[5]~19_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(5));

-- Location: FF_X25_Y10_N3
\registre[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => signal_registre(5),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre[5]~reg0_q\);

-- Location: LCCOMB_X26_Y10_N22
\signal_registre[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[6]~21_combout\ = (signal_registre(6) & (\signal_registre[5]~20\ $ (GND))) # (!signal_registre(6) & (!\signal_registre[5]~20\ & VCC))
-- \signal_registre[6]~22\ = CARRY((signal_registre(6) & !\signal_registre[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => signal_registre(6),
	datad => VCC,
	cin => \signal_registre[5]~20\,
	combout => \signal_registre[6]~21_combout\,
	cout => \signal_registre[6]~22\);

-- Location: FF_X26_Y10_N23
\signal_registre[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[6]~21_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(6));

-- Location: LCCOMB_X26_Y10_N28
\registre[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre[6]~reg0feeder_combout\ = signal_registre(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => signal_registre(6),
	combout => \registre[6]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N29
\registre[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \registre[6]~reg0feeder_combout\,
	clrn => \rst~input_o\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre[6]~reg0_q\);

-- Location: LCCOMB_X26_Y10_N24
\signal_registre[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[7]~23_combout\ = (signal_registre(7) & (!\signal_registre[6]~22\)) # (!signal_registre(7) & ((\signal_registre[6]~22\) # (GND)))
-- \signal_registre[7]~24\ = CARRY((!\signal_registre[6]~22\) # (!signal_registre(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => signal_registre(7),
	datad => VCC,
	cin => \signal_registre[6]~22\,
	combout => \signal_registre[7]~23_combout\,
	cout => \signal_registre[7]~24\);

-- Location: FF_X26_Y10_N25
\signal_registre[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[7]~23_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(7));

-- Location: LCCOMB_X26_Y10_N0
\registre[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre[7]~reg0feeder_combout\ = signal_registre(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => signal_registre(7),
	combout => \registre[7]~reg0feeder_combout\);

-- Location: FF_X26_Y10_N1
\registre[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \registre[7]~reg0feeder_combout\,
	clrn => \rst~input_o\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre[7]~reg0_q\);

-- Location: LCCOMB_X26_Y10_N26
\signal_registre[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \signal_registre[8]~25_combout\ = signal_registre(8) $ (!\signal_registre[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => signal_registre(8),
	cin => \signal_registre[7]~24\,
	combout => \signal_registre[8]~25_combout\);

-- Location: FF_X26_Y10_N27
\signal_registre[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \signal_registre[8]~25_combout\,
	clrn => \rst~input_o\,
	sclr => \Equal3~2_combout\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => signal_registre(8));

-- Location: LCCOMB_X25_Y10_N4
\registre[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \registre[8]~reg0feeder_combout\ = signal_registre(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => signal_registre(8),
	combout => \registre[8]~reg0feeder_combout\);

-- Location: FF_X25_Y10_N5
\registre[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \registre[8]~reg0feeder_combout\,
	clrn => \rst~input_o\,
	ena => \registre[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \registre[8]~reg0_q\);

-- Location: LCCOMB_X21_Y11_N14
\start_stop~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_stop~0_combout\ = (\ep.attente_cont~q\) # (!\ep.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ep.attente_cont~q\,
	datad => \ep.idle~q\,
	combout => \start_stop~0_combout\);

-- Location: LCCOMB_X20_Y11_N6
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

-- Location: LCCOMB_X21_Y11_N18
\start_stop$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_stop$latch~combout\ = (\start_stop~1_combout\ & ((\start_stop$latch~combout\))) # (!\start_stop~1_combout\ & (!\start_stop~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start_stop~0_combout\,
	datac => \start_stop~1_combout\,
	datad => \start_stop$latch~combout\,
	combout => \start_stop$latch~combout\);

-- Location: LCCOMB_X21_Y11_N16
\continu~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \continu~1_combout\ = (\ep.attente_mono~q\) # (!\ep.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ep.attente_mono~q\,
	datad => \ep.idle~q\,
	combout => \continu~1_combout\);

-- Location: LCCOMB_X21_Y11_N20
\continu~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \continu~2_combout\ = (\ep.attente_cont~q\) # (\ep.mono~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ep.attente_cont~q\,
	datad => \ep.mono~q\,
	combout => \continu~2_combout\);

-- Location: LCCOMB_X21_Y11_N22
\continu$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \continu$latch~combout\ = (\continu~2_combout\ & (\continu$latch~combout\)) # (!\continu~2_combout\ & ((!\continu~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \continu$latch~combout\,
	datac => \continu~1_combout\,
	datad => \continu~2_combout\,
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


