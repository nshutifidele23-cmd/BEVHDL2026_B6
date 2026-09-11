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
-- Generated on "09/11/2026 15:47:22"
                                                            
-- Vhdl Test Bench template for design  :  compass_choix
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY tb_compass_choix IS
END tb_compass_choix;
ARCHITECTURE compass_choix_arch OF tb_compass_choix IS
-- constants                                                 
-- signals                                                   
SIGNAL btn : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL continu : STD_LOGIC;
SIGNAL echant : STD_LOGIC;
SIGNAL pwm : STD_LOGIC;
SIGNAL registre : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
SIGNAL start_stop : STD_LOGIC;
SIGNAL switch : STD_LOGIC;

constant clk_period : TIME := 20ns;

COMPONENT compass_choix
	PORT (
	btn : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	continu : BUFFER STD_LOGIC;
	echant : BUFFER STD_LOGIC;
	pwm : BUFFER STD_LOGIC;
	registre : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	rst : IN STD_LOGIC;
	start_stop : BUFFER STD_LOGIC;
	switch : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : compass_choix
	PORT MAP (
-- list connections between master ports and signals
	btn => btn,
	clk => clk,
	continu => continu,
	echant => echant,
	pwm => pwm,
	registre => registre,
	rst => rst,
	start_stop => start_stop,
	switch => switch
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

		switch <= '1';
		btn <= '1';
    	WAIT FOR 50000000*clk_period;
		switch <= '0';
		WAIT FOR 50000000*clk_period;
		switch <= '0';
		btn <= '1';	
	WAIT FOR clk_period;
		btn <= '0';
	WAIT FOR 100*clk_period;
		btn <= '1';
	WAIT FOR 50000000*clk_period;
	
END PROCESS ProcessB;  


                                       
END compass_choix_arch;
