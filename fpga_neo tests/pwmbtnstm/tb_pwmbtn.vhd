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
-- Generated on "09/08/2026 07:11:29"
                                                            
-- Vhdl Test Bench template for design  :  pwmbtn
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tb_pwmbtn IS
END tb_pwmbtn;
ARCHITECTURE pwmbtn_arch OF tb_pwmbtn IS
-- constants                                                 
-- signals                                                   
SIGNAL btn : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL pwm : STD_LOGIC;
SIGNAL rst : STD_LOGIC;

constant clk_period : TIME := 20ns;

COMPONENT pwmbtn
	PORT (
	btn : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	pwm : OUT STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pwmbtn
	PORT MAP (
-- list connections between master ports and signals
	btn => btn,
	clk => clk,
	pwm => pwm,
	rst => rst
	);
ProcessC : PROCESS
BEGIN
		clk <= '1';
		WAIT FOR clk_period/2;
		clk <= '0';
		WAIT FOR clk_period/2;
END PROCESS ProcessC;

ProcessR : PROCESS
BEGIN
		rst <= '0';
		WAIT FOR 2*clk_period;
		rst <= '1';	
		WAIT;
END PROCESS ProcessR;

ProcessB : PROCESS
BEGIN
		btn <= '1';
    	WAIT FOR 1000000*clk_period;
		btn <= '0';	
		WAIT FOR 25000000*clk_period;
END PROCESS ProcessB;                                        
END pwmbtn_arch;
