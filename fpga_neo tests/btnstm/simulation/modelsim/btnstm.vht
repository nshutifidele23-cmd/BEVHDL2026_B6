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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/06/2026 22:25:27"
                                                            
-- Vhdl Test Bench template for design  :  btnstm
-- 
-- Simulation tool : Questa Altera FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tb_btnstm IS
END tb_btnstm;
ARCHITECTURE btnstm_arch OF tb_btnstm IS
-- constants                                                 
-- signals                                                   
SIGNAL btn : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL led : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst : STD_LOGIC;

constant clk_period : TIME := 20ns;
COMPONENT btnstm
	PORT (
	btn : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	led : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : btnstm
	PORT MAP (
-- list connections between master ports and signals
	btn => btn,
	clk => clk,
	led => led,
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
		WAIT FOR 50*clk_period;
		btn <= '0';	
		WAIT FOR 50*clk_period;
END PROCESS ProcessB;
                                       
END btnstm_arch;
