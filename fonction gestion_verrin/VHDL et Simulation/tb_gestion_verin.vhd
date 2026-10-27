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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "10/27/2026 12:15:12"
                                                            
-- Vhdl Test Bench template for design  :  gestion_verin
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb_gestion_verin IS
END tb_gestion_verin;

ARCHITECTURE gestion_verin_arch OF tb_gestion_verin IS
-- signals
SIGNAL angle_barre_sortie : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk     : STD_LOGIC := '0';
SIGNAL clk_adc : STD_LOGIC;
SIGNAL cs      : STD_LOGIC;
SIGNAL dout    : STD_LOGIC := '0';
SIGNAL pwm     : STD_LOGIC;
SIGNAL rst     : STD_LOGIC := '0';
SIGNAL sens    : STD_LOGIC := '1';
SIGNAL word    : STD_LOGIC_VECTOR(11 DOWNTO 0) := x"800";  -- valeur renvoyée par le CAN
SIGNAL done    : BOOLEAN := FALSE;

COMPONENT gestion_verin
	PORT (
	angle_barre_sortie : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	clk_adc : OUT STD_LOGIC;
	cs : OUT STD_LOGIC;
	dout : IN STD_LOGIC;
	pwm : OUT STD_LOGIC;
	rst : IN STD_LOGIC;
	sens : IN STD_LOGIC
	);
END COMPONENT;

BEGIN
	i1 : gestion_verin
	PORT MAP (
	angle_barre_sortie => angle_barre_sortie,
	clk => clk,
	clk_adc => clk_adc,
	cs => cs,
	dout => dout,
	pwm => pwm,
	rst => rst,
	sens => sens
	);

-- horloge 50 MHz
horloge : PROCESS
BEGIN
	WHILE NOT done LOOP
		clk <= '0'; WAIT FOR 10 ns;
		clk <= '1'; WAIT FOR 10 ns;
	END LOOP;
	WAIT;
END PROCESS horloge;

-- modèle simplifié du MCP3201
-- bit nul au 2e front descendant, puis B11..B0 aux 3e..14e
mcp3201 : PROCESS
VARIABLE n : INTEGER;
BEGIN
	WAIT UNTIL cs = '0';
	n := 0;
	WHILE cs = '0' LOOP
		WAIT UNTIL falling_edge(clk_adc) OR cs = '1';
		IF cs = '0' THEN
			n := n + 1;
			IF n >= 3 AND n <= 14 THEN
				dout <= word(14 - n);
			ELSE
				dout <= '0';
			END IF;
		END IF;
	END LOOP;
	dout <= '0';
END PROCESS mcp3201;

-- scénario de test
init : PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 100 ns;
	rst <= '1';

	-- test 1 : mot 0x800, dans les butées
	WAIT FOR 101 ms;
	ASSERT angle_barre_sortie = x"00000800"
	

	-- test 2 : mot 0x005 (< butee_g), sens = 1 : pwm doit rester actif
	word <= x"005";
	sens <= '1';
	WAIT FOR 100 ms;
	ASSERT angle_barre_sortie = x"00000005"
	
	WAIT UNTIL pwm = '1' FOR 2 ms;
	ASSERT pwm = '1'
		

	-- test 3 : même mot, sens = 0 : pwm doit être coupé
	sens <= '0';
	WAIT FOR 2 ms;
	ASSERT pwm = '0'
	
	
	WAIT;
END PROCESS init;

END gestion_verin_arch;