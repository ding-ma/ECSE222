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
-- Generated on "03/07/2019 16:00:21"
                                                            
-- Vhdl Test Bench template for design  :  g90_segment_decoder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                              
USE ieee.std_logic_1164.all;     
use IEEE.STD_LOGIC_UNSIGNED.ALL;   
use ieee.numeric_std.all;                        
 
ENTITY g90_segment_decoder_vhd_tst IS
END g90_segment_decoder_vhd_tst;
ARCHITECTURE g90_segment_decoder_arch OF g90_segment_decoder_vhd_tst IS
-- constants                                                
-- signals                                                  
SIGNAL bcd : STD_LOGIC_VECTOR(3 DOWNTO 0);
--SIGNAL clk : STD_LOGIC;
SIGNAL segment7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT g90_segment_decoder
    PORT (
    bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    --clk : IN STD_LOGIC;
    segment7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END COMPONENT;
BEGIN
    i1 : g90_segment_decoder
    PORT MAP (
-- list connections between master ports and signals
    bcd => bcd,
    --clk => clk,
    segment7 => segment7
    );                                          
generate_test : PROCESS                                              
                                     
BEGIN    
		 FOR i IN 0 to 15 LOOP
			  bcd <= std_logic_vector(to_unsigned(i,4));
			  WAIT FOR 10 ns;
		 END LOOP;      
    WAIT;                                                        
END PROCESS generate_test;                                          
END g90_segment_decoder_arch;