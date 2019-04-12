-- Copyright (C) 2016  Intel Corporation. All rights reserved.
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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/10/2019 23:17:04"
                                                            
-- Vhdl Test Bench template for design  :  g90_multi_mode_counter
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g90_multi_mode_counter_vhd_tst IS
END g90_multi_mode_counter_vhd_tst;
ARCHITECTURE g90_multi_mode_counter_arch OF g90_multi_mode_counter_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL direction : STD_LOGIC;
--SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
--SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL stop : STD_LOGIC;
COMPONENT g90_multi_mode_counter
	PORT (
	clk : IN STD_LOGIC;
	direction : IN STD_LOGIC;
	--HEX0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	--HEX1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC;
	stop : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g90_multi_mode_counter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	direction => direction,
	--HEX0 => HEX0,
	--HEX1 => HEX1,
	reset => reset,
	start => start,
	stop => stop
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN

		-- The Altera board's clock has a frequency of 50 MHz
		-- One period every 20 ns (clk changes every 10 ns)
		clk <= '1';
		WAIT FOR 10 ns;
		clk <= '0';
		WAIT FOR 10 ns;

END PROCESS init;
                                          
always : PROCESS                                  
BEGIN    
                                                     
		-- Set initial values
		-- Reset, start, and stop are off
		-- The current direction is "up"
		reset <= '1';	
      start <= '1';
		stop <= '1';
		direction <= '1';
		
		-- Test reset by turning it on
		-- Wait for 100 ns before turning it off again
		WAIT FOR 200 ns;
		reset <= '0';
		WAIT FOR 100 ns;
		reset <= '1';
		
		-- Test start by turning it on
		-- Wait for 50 ns before turning it off again
		WAIT FOR 200 ns;
		start <= '0';
		WAIT FOR 50 ns;
		start <= '1';
		
		-- Test stop by turning it on
		-- Wait for 100 ns before turning it off again
		WAIT FOR 200 ns;
		stop <= '0';
		WAIT FOR 100 ns;
		stop <= '1';
		
		-- Turn start on again, then off again
--		start <= '0';
--		WAIT FOR 200 ns;
--		start <= '1';
		
		-- Test direction's functionality 
		-- Change direction, wait 100 ns, then change back
		WAIT FOR 200 ns;
		direction <= '0';
		WAIT FOR 100 ns;
		reset<= '0';
		WAIT FOR 100 ns;
		reset <= '1';
	
WAIT;                                                        
END PROCESS always;                                          
END g90_multi_mode_counter_arch;
