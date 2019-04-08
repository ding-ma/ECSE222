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

-- DATE "04/08/2019 02:47:32"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g90_multi_mode_counter IS
    PORT (
	start : IN std_logic;
	stop : IN std_logic;
	direction : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END g90_multi_mode_counter;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direction	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g90_multi_mode_counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_stop : std_logic;
SIGNAL ww_direction : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \direction~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \FSM|count_temp.O~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \enable_tmp~combout\ : std_logic;
SIGNAL \clock_divider|countlocal[8]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~6\ : std_logic;
SIGNAL \clock_divider|Add0~29_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~30\ : std_logic;
SIGNAL \clock_divider|Add0~25_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~26\ : std_logic;
SIGNAL \clock_divider|Add0~54\ : std_logic;
SIGNAL \clock_divider|Add0~21_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~22\ : std_logic;
SIGNAL \clock_divider|Add0~17_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~18\ : std_logic;
SIGNAL \clock_divider|Add0~1_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~2\ : std_logic;
SIGNAL \clock_divider|Add0~9_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal[14]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~73_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal~10_combout\ : std_logic;
SIGNAL \clock_divider|Add0~74\ : std_logic;
SIGNAL \clock_divider|Add0~69_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal~9_combout\ : std_logic;
SIGNAL \clock_divider|countlocal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~70\ : std_logic;
SIGNAL \clock_divider|Add0~65_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal~8_combout\ : std_logic;
SIGNAL \clock_divider|Add0~66\ : std_logic;
SIGNAL \clock_divider|Add0~61_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal~7_combout\ : std_logic;
SIGNAL \clock_divider|LessThan0~2_combout\ : std_logic;
SIGNAL \clock_divider|Add0~10\ : std_logic;
SIGNAL \clock_divider|Add0~49_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal~4_combout\ : std_logic;
SIGNAL \clock_divider|countlocal[13]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~50\ : std_logic;
SIGNAL \clock_divider|Add0~13_sumout\ : std_logic;
SIGNAL \clock_divider|LessThan0~0_combout\ : std_logic;
SIGNAL \clock_divider|Add0~53_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal~5_combout\ : std_logic;
SIGNAL \clock_divider|countlocal[16]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~14\ : std_logic;
SIGNAL \clock_divider|Add0~45_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal~3_combout\ : std_logic;
SIGNAL \clock_divider|Add0~46\ : std_logic;
SIGNAL \clock_divider|Add0~41_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal~2_combout\ : std_logic;
SIGNAL \clock_divider|countlocal[17]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~42\ : std_logic;
SIGNAL \clock_divider|Add0~37_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal~1_combout\ : std_logic;
SIGNAL \clock_divider|Add0~38\ : std_logic;
SIGNAL \clock_divider|Add0~33_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal~0_combout\ : std_logic;
SIGNAL \clock_divider|LessThan0~1_combout\ : std_logic;
SIGNAL \clock_divider|Add0~62\ : std_logic;
SIGNAL \clock_divider|Add0~57_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal~6_combout\ : std_logic;
SIGNAL \clock_divider|Add0~58\ : std_logic;
SIGNAL \clock_divider|Add0~5_sumout\ : std_logic;
SIGNAL \clock_divider|countlocal[5]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|LessThan0~3_combout\ : std_logic;
SIGNAL \clock_divider|en_out~q\ : std_logic;
SIGNAL \FSM|count_temp.A~1_combout\ : std_logic;
SIGNAL \FSM|count_temp.A~3_combout\ : std_logic;
SIGNAL \FSM|count_temp.A~_emulated_q\ : std_logic;
SIGNAL \FSM|count_temp.A~2_combout\ : std_logic;
SIGNAL \FSM|count_temp.B~q\ : std_logic;
SIGNAL \FSM|count_temp.C~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.C~q\ : std_logic;
SIGNAL \FSM|count_temp.D~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.D~q\ : std_logic;
SIGNAL \FSM|count_temp.E~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.E~q\ : std_logic;
SIGNAL \FSM|count_temp.F~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.F~q\ : std_logic;
SIGNAL \FSM|count_temp.G~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.G~q\ : std_logic;
SIGNAL \FSM|count_temp.H~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.H~q\ : std_logic;
SIGNAL \FSM|count_temp.I~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.I~q\ : std_logic;
SIGNAL \FSM|count_temp.J~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.J~q\ : std_logic;
SIGNAL \FSM|count_temp.K~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.K~q\ : std_logic;
SIGNAL \FSM|count_temp.L~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.L~q\ : std_logic;
SIGNAL \FSM|count_temp.M~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.M~q\ : std_logic;
SIGNAL \FSM|count_temp.N~feeder_combout\ : std_logic;
SIGNAL \FSM|count_temp.N~q\ : std_logic;
SIGNAL \FSM|count_temp.O~3_combout\ : std_logic;
SIGNAL \FSM|count_temp.O~_emulated_q\ : std_logic;
SIGNAL \FSM|count_temp.O~2_combout\ : std_logic;
SIGNAL \FSM|WideNor0~0_combout\ : std_logic;
SIGNAL \FSM|WideOr15~0_combout\ : std_logic;
SIGNAL \FSM|WideNor0~1_combout\ : std_logic;
SIGNAL \FSM|WideOr15~combout\ : std_logic;
SIGNAL \FSM|WideOr17~combout\ : std_logic;
SIGNAL \FSM|WideOr16~0_combout\ : std_logic;
SIGNAL \FSM|WideNor0~2_combout\ : std_logic;
SIGNAL \FSM|WideOr16~combout\ : std_logic;
SIGNAL \FSM|WideOr18~0_combout\ : std_logic;
SIGNAL \FSM|WideOr18~combout\ : std_logic;
SIGNAL \decoder0|Mux6~0_combout\ : std_logic;
SIGNAL \decoder0|Mux5~0_combout\ : std_logic;
SIGNAL \decoder0|Mux4~0_combout\ : std_logic;
SIGNAL \decoder0|Mux3~0_combout\ : std_logic;
SIGNAL \decoder0|Mux2~0_combout\ : std_logic;
SIGNAL \decoder0|Mux1~0_combout\ : std_logic;
SIGNAL \decoder0|Mux0~0_combout\ : std_logic;
SIGNAL \FSM|WideOr16~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \clock_divider|countlocal\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \ALT_INV_stop~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_direction~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_enable_tmp~combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.A~1_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.O~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_countlocal\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.A~2_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.A~_emulated_q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.O~2_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.O~_emulated_q\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr16~1_combout\ : std_logic;
SIGNAL \decoder0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr18~combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr18~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr17~combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr16~combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr16~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideNor0~2_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr15~combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideNor0~1_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr15~0_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.N~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.H~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.G~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.D~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.M~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.L~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.J~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.K~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.F~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.E~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.B~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.I~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_temp.C~q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_countlocal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_countlocal[8]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_countlocal[13]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_countlocal[16]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_countlocal[17]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_countlocal[14]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_countlocal[5]~DUPLICATE_q\ : std_logic;

BEGIN

ww_start <= start;
ww_stop <= stop;
ww_direction <= direction;
ww_reset <= reset;
ww_clk <= clk;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_stop~input_o\ <= NOT \stop~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_direction~input_o\ <= NOT \direction~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_enable_tmp~combout\ <= NOT \enable_tmp~combout\;
\FSM|ALT_INV_count_temp.A~1_combout\ <= NOT \FSM|count_temp.A~1_combout\;
\FSM|ALT_INV_count_temp.O~1_combout\ <= NOT \FSM|count_temp.O~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\clock_divider|ALT_INV_LessThan0~3_combout\ <= NOT \clock_divider|LessThan0~3_combout\;
\clock_divider|ALT_INV_LessThan0~2_combout\ <= NOT \clock_divider|LessThan0~2_combout\;
\clock_divider|ALT_INV_countlocal\(0) <= NOT \clock_divider|countlocal\(0);
\clock_divider|ALT_INV_countlocal\(1) <= NOT \clock_divider|countlocal\(1);
\clock_divider|ALT_INV_countlocal\(2) <= NOT \clock_divider|countlocal\(2);
\clock_divider|ALT_INV_countlocal\(3) <= NOT \clock_divider|countlocal\(3);
\clock_divider|ALT_INV_countlocal\(4) <= NOT \clock_divider|countlocal\(4);
\clock_divider|ALT_INV_LessThan0~1_combout\ <= NOT \clock_divider|LessThan0~1_combout\;
\clock_divider|ALT_INV_countlocal\(8) <= NOT \clock_divider|countlocal\(8);
\clock_divider|ALT_INV_countlocal\(13) <= NOT \clock_divider|countlocal\(13);
\clock_divider|ALT_INV_countlocal\(15) <= NOT \clock_divider|countlocal\(15);
\clock_divider|ALT_INV_countlocal\(16) <= NOT \clock_divider|countlocal\(16);
\clock_divider|ALT_INV_countlocal\(17) <= NOT \clock_divider|countlocal\(17);
\clock_divider|ALT_INV_countlocal\(18) <= NOT \clock_divider|countlocal\(18);
\clock_divider|ALT_INV_LessThan0~0_combout\ <= NOT \clock_divider|LessThan0~0_combout\;
\FSM|ALT_INV_count_temp.A~2_combout\ <= NOT \FSM|count_temp.A~2_combout\;
\FSM|ALT_INV_count_temp.A~_emulated_q\ <= NOT \FSM|count_temp.A~_emulated_q\;
\FSM|ALT_INV_count_temp.O~2_combout\ <= NOT \FSM|count_temp.O~2_combout\;
\FSM|ALT_INV_count_temp.O~_emulated_q\ <= NOT \FSM|count_temp.O~_emulated_q\;
\FSM|ALT_INV_WideOr16~1_combout\ <= NOT \FSM|WideOr16~1_combout\;
\decoder0|ALT_INV_Mux6~0_combout\ <= NOT \decoder0|Mux6~0_combout\;
\FSM|ALT_INV_WideOr18~combout\ <= NOT \FSM|WideOr18~combout\;
\FSM|ALT_INV_WideOr18~0_combout\ <= NOT \FSM|WideOr18~0_combout\;
\FSM|ALT_INV_WideOr17~combout\ <= NOT \FSM|WideOr17~combout\;
\FSM|ALT_INV_WideOr16~combout\ <= NOT \FSM|WideOr16~combout\;
\FSM|ALT_INV_WideOr16~0_combout\ <= NOT \FSM|WideOr16~0_combout\;
\FSM|ALT_INV_WideNor0~2_combout\ <= NOT \FSM|WideNor0~2_combout\;
\FSM|ALT_INV_WideOr15~combout\ <= NOT \FSM|WideOr15~combout\;
\FSM|ALT_INV_WideNor0~1_combout\ <= NOT \FSM|WideNor0~1_combout\;
\FSM|ALT_INV_WideNor0~0_combout\ <= NOT \FSM|WideNor0~0_combout\;
\FSM|ALT_INV_WideOr15~0_combout\ <= NOT \FSM|WideOr15~0_combout\;
\clock_divider|ALT_INV_Add0~73_sumout\ <= NOT \clock_divider|Add0~73_sumout\;
\clock_divider|ALT_INV_Add0~69_sumout\ <= NOT \clock_divider|Add0~69_sumout\;
\clock_divider|ALT_INV_Add0~65_sumout\ <= NOT \clock_divider|Add0~65_sumout\;
\clock_divider|ALT_INV_Add0~61_sumout\ <= NOT \clock_divider|Add0~61_sumout\;
\clock_divider|ALT_INV_Add0~57_sumout\ <= NOT \clock_divider|Add0~57_sumout\;
\clock_divider|ALT_INV_Add0~53_sumout\ <= NOT \clock_divider|Add0~53_sumout\;
\clock_divider|ALT_INV_Add0~49_sumout\ <= NOT \clock_divider|Add0~49_sumout\;
\clock_divider|ALT_INV_Add0~45_sumout\ <= NOT \clock_divider|Add0~45_sumout\;
\clock_divider|ALT_INV_Add0~41_sumout\ <= NOT \clock_divider|Add0~41_sumout\;
\clock_divider|ALT_INV_Add0~37_sumout\ <= NOT \clock_divider|Add0~37_sumout\;
\clock_divider|ALT_INV_Add0~33_sumout\ <= NOT \clock_divider|Add0~33_sumout\;
\clock_divider|ALT_INV_countlocal\(6) <= NOT \clock_divider|countlocal\(6);
\clock_divider|ALT_INV_countlocal\(7) <= NOT \clock_divider|countlocal\(7);
\clock_divider|ALT_INV_countlocal\(9) <= NOT \clock_divider|countlocal\(9);
\clock_divider|ALT_INV_countlocal\(10) <= NOT \clock_divider|countlocal\(10);
\clock_divider|ALT_INV_countlocal\(14) <= NOT \clock_divider|countlocal\(14);
\clock_divider|ALT_INV_countlocal\(12) <= NOT \clock_divider|countlocal\(12);
\clock_divider|ALT_INV_countlocal\(5) <= NOT \clock_divider|countlocal\(5);
\clock_divider|ALT_INV_countlocal\(11) <= NOT \clock_divider|countlocal\(11);
\FSM|ALT_INV_count_temp.N~q\ <= NOT \FSM|count_temp.N~q\;
\FSM|ALT_INV_count_temp.H~q\ <= NOT \FSM|count_temp.H~q\;
\FSM|ALT_INV_count_temp.G~q\ <= NOT \FSM|count_temp.G~q\;
\FSM|ALT_INV_count_temp.D~q\ <= NOT \FSM|count_temp.D~q\;
\FSM|ALT_INV_count_temp.M~q\ <= NOT \FSM|count_temp.M~q\;
\FSM|ALT_INV_count_temp.L~q\ <= NOT \FSM|count_temp.L~q\;
\FSM|ALT_INV_count_temp.J~q\ <= NOT \FSM|count_temp.J~q\;
\FSM|ALT_INV_count_temp.K~q\ <= NOT \FSM|count_temp.K~q\;
\FSM|ALT_INV_count_temp.F~q\ <= NOT \FSM|count_temp.F~q\;
\FSM|ALT_INV_count_temp.E~q\ <= NOT \FSM|count_temp.E~q\;
\FSM|ALT_INV_count_temp.B~q\ <= NOT \FSM|count_temp.B~q\;
\FSM|ALT_INV_count_temp.I~q\ <= NOT \FSM|count_temp.I~q\;
\FSM|ALT_INV_count_temp.C~q\ <= NOT \FSM|count_temp.C~q\;
\clock_divider|ALT_INV_countlocal[1]~DUPLICATE_q\ <= NOT \clock_divider|countlocal[1]~DUPLICATE_q\;
\clock_divider|ALT_INV_countlocal[8]~DUPLICATE_q\ <= NOT \clock_divider|countlocal[8]~DUPLICATE_q\;
\clock_divider|ALT_INV_countlocal[13]~DUPLICATE_q\ <= NOT \clock_divider|countlocal[13]~DUPLICATE_q\;
\clock_divider|ALT_INV_countlocal[16]~DUPLICATE_q\ <= NOT \clock_divider|countlocal[16]~DUPLICATE_q\;
\clock_divider|ALT_INV_countlocal[17]~DUPLICATE_q\ <= NOT \clock_divider|countlocal[17]~DUPLICATE_q\;
\clock_divider|ALT_INV_countlocal[14]~DUPLICATE_q\ <= NOT \clock_divider|countlocal[14]~DUPLICATE_q\;
\clock_divider|ALT_INV_countlocal[5]~DUPLICATE_q\ <= NOT \clock_divider|countlocal[5]~DUPLICATE_q\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOIBUF_X2_Y0_N58
\direction~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction,
	o => \direction~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LABCELL_X36_Y1_N48
\FSM|count_temp.O~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.O~1_combout\ = ( \FSM|count_temp.O~1_combout\ & ( (!\direction~input_o\) # (\reset~input_o\) ) ) # ( !\FSM|count_temp.O~1_combout\ & ( (!\direction~input_o\ & !\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_direction~input_o\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \FSM|ALT_INV_count_temp.O~1_combout\,
	combout => \FSM|count_temp.O~1_combout\);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X40_Y0_N1
\stop~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LABCELL_X42_Y1_N24
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \start~input_o\ & ( !\stop~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_stop~input_o\,
	datae => \ALT_INV_start~input_o\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X42_Y1_N33
enable_tmp : cyclonev_lcell_comb
-- Equation(s):
-- \enable_tmp~combout\ = ( \start~input_o\ & ( \enable_tmp~combout\ & ( !\comb~0_combout\ ) ) ) # ( !\start~input_o\ & ( \enable_tmp~combout\ & ( !\comb~0_combout\ ) ) ) # ( !\start~input_o\ & ( !\enable_tmp~combout\ & ( !\comb~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datae => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_enable_tmp~combout\,
	combout => \enable_tmp~combout\);

-- Location: FF_X40_Y1_N17
\clock_divider|countlocal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \clock_divider|LessThan0~3_combout\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(5));

-- Location: FF_X39_Y1_N55
\clock_divider|countlocal[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal[8]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N15
\clock_divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~5_sumout\ = SUM(( \clock_divider|countlocal\(5) ) + ( VCC ) + ( \clock_divider|Add0~58\ ))
-- \clock_divider|Add0~6\ = CARRY(( \clock_divider|countlocal\(5) ) + ( VCC ) + ( \clock_divider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_countlocal\(5),
	cin => \clock_divider|Add0~58\,
	sumout => \clock_divider|Add0~5_sumout\,
	cout => \clock_divider|Add0~6\);

-- Location: LABCELL_X40_Y1_N18
\clock_divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~29_sumout\ = SUM(( \clock_divider|countlocal\(6) ) + ( VCC ) + ( \clock_divider|Add0~6\ ))
-- \clock_divider|Add0~30\ = CARRY(( \clock_divider|countlocal\(6) ) + ( VCC ) + ( \clock_divider|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_countlocal\(6),
	cin => \clock_divider|Add0~6\,
	sumout => \clock_divider|Add0~29_sumout\,
	cout => \clock_divider|Add0~30\);

-- Location: FF_X40_Y1_N20
\clock_divider|countlocal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~29_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \clock_divider|LessThan0~3_combout\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(6));

-- Location: LABCELL_X40_Y1_N21
\clock_divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~25_sumout\ = SUM(( \clock_divider|countlocal\(7) ) + ( VCC ) + ( \clock_divider|Add0~30\ ))
-- \clock_divider|Add0~26\ = CARRY(( \clock_divider|countlocal\(7) ) + ( VCC ) + ( \clock_divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_countlocal\(7),
	cin => \clock_divider|Add0~30\,
	sumout => \clock_divider|Add0~25_sumout\,
	cout => \clock_divider|Add0~26\);

-- Location: FF_X40_Y1_N23
\clock_divider|countlocal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \clock_divider|LessThan0~3_combout\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(7));

-- Location: LABCELL_X40_Y1_N24
\clock_divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~53_sumout\ = SUM(( !\clock_divider|countlocal[8]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~26\ ))
-- \clock_divider|Add0~54\ = CARRY(( !\clock_divider|countlocal[8]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_countlocal[8]~DUPLICATE_q\,
	cin => \clock_divider|Add0~26\,
	sumout => \clock_divider|Add0~53_sumout\,
	cout => \clock_divider|Add0~54\);

-- Location: LABCELL_X40_Y1_N27
\clock_divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~21_sumout\ = SUM(( \clock_divider|countlocal\(9) ) + ( VCC ) + ( \clock_divider|Add0~54\ ))
-- \clock_divider|Add0~22\ = CARRY(( \clock_divider|countlocal\(9) ) + ( VCC ) + ( \clock_divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_countlocal\(9),
	cin => \clock_divider|Add0~54\,
	sumout => \clock_divider|Add0~21_sumout\,
	cout => \clock_divider|Add0~22\);

-- Location: FF_X40_Y1_N29
\clock_divider|countlocal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \clock_divider|LessThan0~3_combout\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(9));

-- Location: LABCELL_X40_Y1_N30
\clock_divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~17_sumout\ = SUM(( \clock_divider|countlocal\(10) ) + ( VCC ) + ( \clock_divider|Add0~22\ ))
-- \clock_divider|Add0~18\ = CARRY(( \clock_divider|countlocal\(10) ) + ( VCC ) + ( \clock_divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_countlocal\(10),
	cin => \clock_divider|Add0~22\,
	sumout => \clock_divider|Add0~17_sumout\,
	cout => \clock_divider|Add0~18\);

-- Location: FF_X40_Y1_N31
\clock_divider|countlocal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \clock_divider|LessThan0~3_combout\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(10));

-- Location: LABCELL_X40_Y1_N33
\clock_divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~1_sumout\ = SUM(( \clock_divider|countlocal\(11) ) + ( VCC ) + ( \clock_divider|Add0~18\ ))
-- \clock_divider|Add0~2\ = CARRY(( \clock_divider|countlocal\(11) ) + ( VCC ) + ( \clock_divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal\(11),
	cin => \clock_divider|Add0~18\,
	sumout => \clock_divider|Add0~1_sumout\,
	cout => \clock_divider|Add0~2\);

-- Location: FF_X40_Y1_N35
\clock_divider|countlocal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \clock_divider|LessThan0~3_combout\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(11));

-- Location: LABCELL_X40_Y1_N36
\clock_divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~9_sumout\ = SUM(( \clock_divider|countlocal\(12) ) + ( VCC ) + ( \clock_divider|Add0~2\ ))
-- \clock_divider|Add0~10\ = CARRY(( \clock_divider|countlocal\(12) ) + ( VCC ) + ( \clock_divider|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_countlocal\(12),
	cin => \clock_divider|Add0~2\,
	sumout => \clock_divider|Add0~9_sumout\,
	cout => \clock_divider|Add0~10\);

-- Location: FF_X40_Y1_N38
\clock_divider|countlocal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \clock_divider|LessThan0~3_combout\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(12));

-- Location: FF_X40_Y1_N43
\clock_divider|countlocal[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \clock_divider|LessThan0~3_combout\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal[14]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N0
\clock_divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~73_sumout\ = SUM(( !\clock_divider|countlocal\(0) ) + ( VCC ) + ( !VCC ))
-- \clock_divider|Add0~74\ = CARRY(( !\clock_divider|countlocal\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_countlocal\(0),
	cin => GND,
	sumout => \clock_divider|Add0~73_sumout\,
	cout => \clock_divider|Add0~74\);

-- Location: MLABCELL_X39_Y1_N6
\clock_divider|countlocal~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|countlocal~10_combout\ = ( \clock_divider|countlocal\(11) & ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~73_sumout\ ) ) ) # ( !\clock_divider|countlocal\(11) & ( \clock_divider|LessThan0~2_combout\ & ( 
-- (!\clock_divider|Add0~73_sumout\ & (((!\clock_divider|LessThan0~1_combout\) # (!\clock_divider|LessThan0~0_combout\)) # (\clock_divider|countlocal[5]~DUPLICATE_q\))) ) ) ) # ( \clock_divider|countlocal\(11) & ( !\clock_divider|LessThan0~2_combout\ & ( 
-- !\clock_divider|Add0~73_sumout\ ) ) ) # ( !\clock_divider|countlocal\(11) & ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~73_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111101000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal[5]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datac => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datad => \clock_divider|ALT_INV_Add0~73_sumout\,
	datae => \clock_divider|ALT_INV_countlocal\(11),
	dataf => \clock_divider|ALT_INV_LessThan0~2_combout\,
	combout => \clock_divider|countlocal~10_combout\);

-- Location: FF_X39_Y1_N7
\clock_divider|countlocal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(0));

-- Location: FF_X39_Y1_N13
\clock_divider|countlocal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(1));

-- Location: LABCELL_X40_Y1_N3
\clock_divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~69_sumout\ = SUM(( !\clock_divider|countlocal\(1) ) + ( VCC ) + ( \clock_divider|Add0~74\ ))
-- \clock_divider|Add0~70\ = CARRY(( !\clock_divider|countlocal\(1) ) + ( VCC ) + ( \clock_divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_countlocal\(1),
	cin => \clock_divider|Add0~74\,
	sumout => \clock_divider|Add0~69_sumout\,
	cout => \clock_divider|Add0~70\);

-- Location: MLABCELL_X39_Y1_N12
\clock_divider|countlocal~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|countlocal~9_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~69_sumout\ & ( ((!\clock_divider|LessThan0~1_combout\) # ((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|countlocal\(11)))) # 
-- (\clock_divider|countlocal[5]~DUPLICATE_q\) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal[5]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datac => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datad => \clock_divider|ALT_INV_countlocal\(11),
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~69_sumout\,
	combout => \clock_divider|countlocal~9_combout\);

-- Location: FF_X39_Y1_N14
\clock_divider|countlocal[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal[1]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N6
\clock_divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~65_sumout\ = SUM(( !\clock_divider|countlocal\(2) ) + ( VCC ) + ( \clock_divider|Add0~70\ ))
-- \clock_divider|Add0~66\ = CARRY(( !\clock_divider|countlocal\(2) ) + ( VCC ) + ( \clock_divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_countlocal\(2),
	cin => \clock_divider|Add0~70\,
	sumout => \clock_divider|Add0~65_sumout\,
	cout => \clock_divider|Add0~66\);

-- Location: MLABCELL_X39_Y1_N15
\clock_divider|countlocal~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|countlocal~8_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~65_sumout\ & ( ((!\clock_divider|LessThan0~1_combout\) # ((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|countlocal\(11)))) # 
-- (\clock_divider|countlocal[5]~DUPLICATE_q\) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal[5]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datac => \clock_divider|ALT_INV_countlocal\(11),
	datad => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~65_sumout\,
	combout => \clock_divider|countlocal~8_combout\);

-- Location: FF_X39_Y1_N16
\clock_divider|countlocal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(2));

-- Location: LABCELL_X40_Y1_N9
\clock_divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~61_sumout\ = SUM(( !\clock_divider|countlocal\(3) ) + ( VCC ) + ( \clock_divider|Add0~66\ ))
-- \clock_divider|Add0~62\ = CARRY(( !\clock_divider|countlocal\(3) ) + ( VCC ) + ( \clock_divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_countlocal\(3),
	cin => \clock_divider|Add0~66\,
	sumout => \clock_divider|Add0~61_sumout\,
	cout => \clock_divider|Add0~62\);

-- Location: MLABCELL_X39_Y1_N42
\clock_divider|countlocal~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|countlocal~7_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~61_sumout\ & ( ((!\clock_divider|LessThan0~1_combout\) # ((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|countlocal\(11)))) # 
-- (\clock_divider|countlocal[5]~DUPLICATE_q\) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal[5]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datac => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datad => \clock_divider|ALT_INV_countlocal\(11),
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~61_sumout\,
	combout => \clock_divider|countlocal~7_combout\);

-- Location: FF_X39_Y1_N43
\clock_divider|countlocal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(3));

-- Location: MLABCELL_X39_Y1_N24
\clock_divider|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~2_combout\ = ( \clock_divider|countlocal\(2) & ( (\clock_divider|countlocal\(0) & (\clock_divider|countlocal[1]~DUPLICATE_q\ & (\clock_divider|countlocal\(4) & \clock_divider|countlocal\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal\(0),
	datab => \clock_divider|ALT_INV_countlocal[1]~DUPLICATE_q\,
	datac => \clock_divider|ALT_INV_countlocal\(4),
	datad => \clock_divider|ALT_INV_countlocal\(3),
	dataf => \clock_divider|ALT_INV_countlocal\(2),
	combout => \clock_divider|LessThan0~2_combout\);

-- Location: LABCELL_X40_Y1_N39
\clock_divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~49_sumout\ = SUM(( !\clock_divider|countlocal[13]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~10\ ))
-- \clock_divider|Add0~50\ = CARRY(( !\clock_divider|countlocal[13]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal[13]~DUPLICATE_q\,
	cin => \clock_divider|Add0~10\,
	sumout => \clock_divider|Add0~49_sumout\,
	cout => \clock_divider|Add0~50\);

-- Location: MLABCELL_X39_Y1_N45
\clock_divider|countlocal~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|countlocal~4_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~49_sumout\ & ( ((!\clock_divider|LessThan0~1_combout\) # ((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|countlocal\(11)))) # 
-- (\clock_divider|countlocal[5]~DUPLICATE_q\) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal[5]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datac => \clock_divider|ALT_INV_countlocal\(11),
	datad => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~49_sumout\,
	combout => \clock_divider|countlocal~4_combout\);

-- Location: FF_X39_Y1_N46
\clock_divider|countlocal[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal[13]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N42
\clock_divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~13_sumout\ = SUM(( \clock_divider|countlocal[14]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~50\ ))
-- \clock_divider|Add0~14\ = CARRY(( \clock_divider|countlocal[14]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_countlocal[14]~DUPLICATE_q\,
	cin => \clock_divider|Add0~50\,
	sumout => \clock_divider|Add0~13_sumout\,
	cout => \clock_divider|Add0~14\);

-- Location: FF_X40_Y1_N44
\clock_divider|countlocal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \clock_divider|LessThan0~3_combout\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(14));

-- Location: MLABCELL_X39_Y1_N0
\clock_divider|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~0_combout\ = ( !\clock_divider|countlocal\(14) & ( !\clock_divider|countlocal\(10) & ( (!\clock_divider|countlocal\(9) & (!\clock_divider|countlocal\(6) & (!\clock_divider|countlocal\(7) & !\clock_divider|countlocal\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal\(9),
	datab => \clock_divider|ALT_INV_countlocal\(6),
	datac => \clock_divider|ALT_INV_countlocal\(7),
	datad => \clock_divider|ALT_INV_countlocal\(12),
	datae => \clock_divider|ALT_INV_countlocal\(14),
	dataf => \clock_divider|ALT_INV_countlocal\(10),
	combout => \clock_divider|LessThan0~0_combout\);

-- Location: MLABCELL_X39_Y1_N54
\clock_divider|countlocal~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|countlocal~5_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~53_sumout\ & ( ((!\clock_divider|LessThan0~1_combout\) # ((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|countlocal\(11)))) # 
-- (\clock_divider|countlocal[5]~DUPLICATE_q\) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal[5]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datac => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datad => \clock_divider|ALT_INV_countlocal\(11),
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~53_sumout\,
	combout => \clock_divider|countlocal~5_combout\);

-- Location: FF_X39_Y1_N56
\clock_divider|countlocal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(8));

-- Location: FF_X39_Y1_N47
\clock_divider|countlocal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(13));

-- Location: FF_X39_Y1_N37
\clock_divider|countlocal[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal[16]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N45
\clock_divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~45_sumout\ = SUM(( !\clock_divider|countlocal\(15) ) + ( VCC ) + ( \clock_divider|Add0~14\ ))
-- \clock_divider|Add0~46\ = CARRY(( !\clock_divider|countlocal\(15) ) + ( VCC ) + ( \clock_divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_countlocal\(15),
	cin => \clock_divider|Add0~14\,
	sumout => \clock_divider|Add0~45_sumout\,
	cout => \clock_divider|Add0~46\);

-- Location: MLABCELL_X39_Y1_N27
\clock_divider|countlocal~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|countlocal~3_combout\ = ( !\clock_divider|Add0~45_sumout\ & ( !\clock_divider|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_LessThan0~3_combout\,
	dataf => \clock_divider|ALT_INV_Add0~45_sumout\,
	combout => \clock_divider|countlocal~3_combout\);

-- Location: FF_X39_Y1_N28
\clock_divider|countlocal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(15));

-- Location: LABCELL_X40_Y1_N48
\clock_divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~41_sumout\ = SUM(( !\clock_divider|countlocal[16]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~46\ ))
-- \clock_divider|Add0~42\ = CARRY(( !\clock_divider|countlocal[16]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_countlocal[16]~DUPLICATE_q\,
	cin => \clock_divider|Add0~46\,
	sumout => \clock_divider|Add0~41_sumout\,
	cout => \clock_divider|Add0~42\);

-- Location: MLABCELL_X39_Y1_N36
\clock_divider|countlocal~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|countlocal~2_combout\ = ( !\clock_divider|Add0~41_sumout\ & ( !\clock_divider|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_LessThan0~3_combout\,
	dataf => \clock_divider|ALT_INV_Add0~41_sumout\,
	combout => \clock_divider|countlocal~2_combout\);

-- Location: FF_X39_Y1_N38
\clock_divider|countlocal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(16));

-- Location: FF_X39_Y1_N40
\clock_divider|countlocal[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal[17]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N51
\clock_divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~37_sumout\ = SUM(( !\clock_divider|countlocal[17]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~42\ ))
-- \clock_divider|Add0~38\ = CARRY(( !\clock_divider|countlocal[17]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal[17]~DUPLICATE_q\,
	cin => \clock_divider|Add0~42\,
	sumout => \clock_divider|Add0~37_sumout\,
	cout => \clock_divider|Add0~38\);

-- Location: MLABCELL_X39_Y1_N39
\clock_divider|countlocal~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|countlocal~1_combout\ = ( !\clock_divider|Add0~37_sumout\ & ( !\clock_divider|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_LessThan0~3_combout\,
	dataf => \clock_divider|ALT_INV_Add0~37_sumout\,
	combout => \clock_divider|countlocal~1_combout\);

-- Location: FF_X39_Y1_N41
\clock_divider|countlocal[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(17));

-- Location: LABCELL_X40_Y1_N54
\clock_divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~33_sumout\ = SUM(( !\clock_divider|countlocal\(18) ) + ( VCC ) + ( \clock_divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_countlocal\(18),
	cin => \clock_divider|Add0~38\,
	sumout => \clock_divider|Add0~33_sumout\);

-- Location: MLABCELL_X39_Y1_N48
\clock_divider|countlocal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|countlocal~0_combout\ = ( !\clock_divider|Add0~33_sumout\ & ( !\clock_divider|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_LessThan0~3_combout\,
	datae => \clock_divider|ALT_INV_Add0~33_sumout\,
	combout => \clock_divider|countlocal~0_combout\);

-- Location: FF_X39_Y1_N49
\clock_divider|countlocal[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(18));

-- Location: MLABCELL_X39_Y1_N30
\clock_divider|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~1_combout\ = ( \clock_divider|countlocal\(18) & ( \clock_divider|countlocal\(15) & ( (\clock_divider|countlocal\(8) & (\clock_divider|countlocal\(13) & (\clock_divider|countlocal\(16) & \clock_divider|countlocal\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal\(8),
	datab => \clock_divider|ALT_INV_countlocal\(13),
	datac => \clock_divider|ALT_INV_countlocal\(16),
	datad => \clock_divider|ALT_INV_countlocal\(17),
	datae => \clock_divider|ALT_INV_countlocal\(18),
	dataf => \clock_divider|ALT_INV_countlocal\(15),
	combout => \clock_divider|LessThan0~1_combout\);

-- Location: LABCELL_X40_Y1_N12
\clock_divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~57_sumout\ = SUM(( !\clock_divider|countlocal\(4) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))
-- \clock_divider|Add0~58\ = CARRY(( !\clock_divider|countlocal\(4) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_countlocal\(4),
	cin => \clock_divider|Add0~62\,
	sumout => \clock_divider|Add0~57_sumout\,
	cout => \clock_divider|Add0~58\);

-- Location: MLABCELL_X39_Y1_N57
\clock_divider|countlocal~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|countlocal~6_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~57_sumout\ & ( ((!\clock_divider|LessThan0~1_combout\) # ((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|countlocal\(11)))) # 
-- (\clock_divider|countlocal[5]~DUPLICATE_q\) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal[5]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datac => \clock_divider|ALT_INV_countlocal\(11),
	datad => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~57_sumout\,
	combout => \clock_divider|countlocal~6_combout\);

-- Location: FF_X39_Y1_N58
\clock_divider|countlocal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|countlocal~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal\(4));

-- Location: FF_X40_Y1_N16
\clock_divider|countlocal[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \clock_divider|LessThan0~3_combout\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|countlocal[5]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y1_N21
\clock_divider|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~3_combout\ = ( \clock_divider|LessThan0~0_combout\ & ( \clock_divider|LessThan0~2_combout\ & ( (!\clock_divider|countlocal[5]~DUPLICATE_q\ & (!\clock_divider|countlocal\(11) & \clock_divider|LessThan0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_countlocal[5]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_countlocal\(11),
	datac => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datae => \clock_divider|ALT_INV_LessThan0~0_combout\,
	dataf => \clock_divider|ALT_INV_LessThan0~2_combout\,
	combout => \clock_divider|LessThan0~3_combout\);

-- Location: FF_X39_Y1_N19
\clock_divider|en_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \clock_divider|LessThan0~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|en_out~q\);

-- Location: LABCELL_X36_Y1_N9
\FSM|count_temp.A~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.A~1_combout\ = ( \FSM|count_temp.A~1_combout\ & ( (\reset~input_o\) # (\direction~input_o\) ) ) # ( !\FSM|count_temp.A~1_combout\ & ( (\direction~input_o\ & !\reset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_direction~input_o\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \FSM|ALT_INV_count_temp.A~1_combout\,
	combout => \FSM|count_temp.A~1_combout\);

-- Location: LABCELL_X36_Y1_N6
\FSM|count_temp.A~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.A~3_combout\ = ( \FSM|count_temp.B~q\ & ( !\FSM|count_temp.A~1_combout\ $ (((!\FSM|count_temp.O~2_combout\ & \direction~input_o\))) ) ) # ( !\FSM|count_temp.B~q\ & ( !\FSM|count_temp.A~1_combout\ $ (((!\FSM|count_temp.O~2_combout\) # 
-- (!\direction~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111100000011110011110011110000001111001111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_temp.O~2_combout\,
	datac => \FSM|ALT_INV_count_temp.A~1_combout\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_temp.B~q\,
	combout => \FSM|count_temp.A~3_combout\);

-- Location: FF_X36_Y1_N7
\FSM|count_temp.A~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.A~3_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.A~_emulated_q\);

-- Location: LABCELL_X36_Y1_N57
\FSM|count_temp.A~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.A~2_combout\ = ( \FSM|count_temp.A~1_combout\ & ( (!\reset~input_o\ & ((\direction~input_o\))) # (\reset~input_o\ & (!\FSM|count_temp.A~_emulated_q\)) ) ) # ( !\FSM|count_temp.A~1_combout\ & ( (!\reset~input_o\ & ((\direction~input_o\))) # 
-- (\reset~input_o\ & (\FSM|count_temp.A~_emulated_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111101010100000111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.A~_emulated_q\,
	datac => \ALT_INV_direction~input_o\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \FSM|ALT_INV_count_temp.A~1_combout\,
	combout => \FSM|count_temp.A~2_combout\);

-- Location: FF_X36_Y1_N59
\FSM|count_temp.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.A~2_combout\,
	asdata => \FSM|count_temp.C~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.B~q\);

-- Location: LABCELL_X36_Y1_N15
\FSM|count_temp.C~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.C~feeder_combout\ = ( \FSM|count_temp.B~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FSM|ALT_INV_count_temp.B~q\,
	combout => \FSM|count_temp.C~feeder_combout\);

-- Location: FF_X36_Y1_N17
\FSM|count_temp.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.C~feeder_combout\,
	asdata => \FSM|count_temp.D~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.C~q\);

-- Location: LABCELL_X36_Y1_N54
\FSM|count_temp.D~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.D~feeder_combout\ = \FSM|count_temp.C~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_temp.C~q\,
	combout => \FSM|count_temp.D~feeder_combout\);

-- Location: FF_X36_Y1_N56
\FSM|count_temp.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.D~feeder_combout\,
	asdata => \FSM|count_temp.E~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.D~q\);

-- Location: LABCELL_X36_Y1_N42
\FSM|count_temp.E~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.E~feeder_combout\ = \FSM|count_temp.D~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_temp.D~q\,
	combout => \FSM|count_temp.E~feeder_combout\);

-- Location: FF_X36_Y1_N44
\FSM|count_temp.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.E~feeder_combout\,
	asdata => \FSM|count_temp.F~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.E~q\);

-- Location: LABCELL_X36_Y1_N33
\FSM|count_temp.F~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.F~feeder_combout\ = \FSM|count_temp.E~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_count_temp.E~q\,
	combout => \FSM|count_temp.F~feeder_combout\);

-- Location: FF_X36_Y1_N35
\FSM|count_temp.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.F~feeder_combout\,
	asdata => \FSM|count_temp.G~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.F~q\);

-- Location: LABCELL_X36_Y1_N30
\FSM|count_temp.G~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.G~feeder_combout\ = \FSM|count_temp.F~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_temp.F~q\,
	combout => \FSM|count_temp.G~feeder_combout\);

-- Location: FF_X36_Y1_N32
\FSM|count_temp.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.G~feeder_combout\,
	asdata => \FSM|count_temp.H~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.G~q\);

-- Location: LABCELL_X36_Y1_N21
\FSM|count_temp.H~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.H~feeder_combout\ = \FSM|count_temp.G~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_temp.G~q\,
	combout => \FSM|count_temp.H~feeder_combout\);

-- Location: FF_X36_Y1_N23
\FSM|count_temp.H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.H~feeder_combout\,
	asdata => \FSM|count_temp.I~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.H~q\);

-- Location: LABCELL_X36_Y1_N18
\FSM|count_temp.I~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.I~feeder_combout\ = \FSM|count_temp.H~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.H~q\,
	combout => \FSM|count_temp.I~feeder_combout\);

-- Location: FF_X36_Y1_N20
\FSM|count_temp.I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.I~feeder_combout\,
	asdata => \FSM|count_temp.J~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.I~q\);

-- Location: LABCELL_X36_Y1_N36
\FSM|count_temp.J~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.J~feeder_combout\ = ( \FSM|count_temp.I~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \FSM|ALT_INV_count_temp.I~q\,
	combout => \FSM|count_temp.J~feeder_combout\);

-- Location: FF_X36_Y1_N38
\FSM|count_temp.J\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.J~feeder_combout\,
	asdata => \FSM|count_temp.K~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.J~q\);

-- Location: LABCELL_X36_Y1_N39
\FSM|count_temp.K~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.K~feeder_combout\ = \FSM|count_temp.J~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_count_temp.J~q\,
	combout => \FSM|count_temp.K~feeder_combout\);

-- Location: FF_X36_Y1_N41
\FSM|count_temp.K\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.K~feeder_combout\,
	asdata => \FSM|count_temp.L~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.K~q\);

-- Location: LABCELL_X36_Y1_N27
\FSM|count_temp.L~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.L~feeder_combout\ = \FSM|count_temp.K~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.K~q\,
	combout => \FSM|count_temp.L~feeder_combout\);

-- Location: FF_X36_Y1_N29
\FSM|count_temp.L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.L~feeder_combout\,
	asdata => \FSM|count_temp.M~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.L~q\);

-- Location: LABCELL_X36_Y1_N24
\FSM|count_temp.M~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.M~feeder_combout\ = \FSM|count_temp.L~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_count_temp.L~q\,
	combout => \FSM|count_temp.M~feeder_combout\);

-- Location: FF_X36_Y1_N26
\FSM|count_temp.M\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.M~feeder_combout\,
	asdata => \FSM|count_temp.N~q\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.M~q\);

-- Location: LABCELL_X36_Y1_N51
\FSM|count_temp.N~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.N~feeder_combout\ = \FSM|count_temp.M~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.M~q\,
	combout => \FSM|count_temp.N~feeder_combout\);

-- Location: FF_X36_Y1_N53
\FSM|count_temp.N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.N~feeder_combout\,
	asdata => \FSM|count_temp.O~2_combout\,
	clrn => \reset~input_o\,
	sload => \ALT_INV_direction~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.N~q\);

-- Location: LABCELL_X36_Y1_N12
\FSM|count_temp.O~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.O~3_combout\ = ( \FSM|count_temp.A~2_combout\ & ( !\FSM|count_temp.O~1_combout\ $ (((!\FSM|count_temp.N~q\ & \direction~input_o\))) ) ) # ( !\FSM|count_temp.A~2_combout\ & ( !\FSM|count_temp.O~1_combout\ $ (((!\FSM|count_temp.N~q\) # 
-- (!\direction~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011010100110101001101010011010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.O~1_combout\,
	datab => \FSM|ALT_INV_count_temp.N~q\,
	datac => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_temp.A~2_combout\,
	combout => \FSM|count_temp.O~3_combout\);

-- Location: FF_X36_Y1_N14
\FSM|count_temp.O~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_temp.O~3_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_temp.O~_emulated_q\);

-- Location: LABCELL_X36_Y1_N45
\FSM|count_temp.O~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_temp.O~2_combout\ = ( \reset~input_o\ & ( !\FSM|count_temp.O~1_combout\ $ (!\FSM|count_temp.O~_emulated_q\) ) ) # ( !\reset~input_o\ & ( !\direction~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.O~1_combout\,
	datac => \FSM|ALT_INV_count_temp.O~_emulated_q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \FSM|count_temp.O~2_combout\);

-- Location: LABCELL_X37_Y1_N27
\FSM|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideNor0~0_combout\ = ( !\FSM|count_temp.L~q\ & ( (!\FSM|count_temp.J~q\ & !\FSM|count_temp.M~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_temp.J~q\,
	datad => \FSM|ALT_INV_count_temp.M~q\,
	dataf => \FSM|ALT_INV_count_temp.L~q\,
	combout => \FSM|WideNor0~0_combout\);

-- Location: LABCELL_X36_Y1_N0
\FSM|WideOr15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr15~0_combout\ = ( !\FSM|count_temp.E~q\ & ( !\FSM|count_temp.C~q\ & ( (!\FSM|count_temp.K~q\ & (!\FSM|count_temp.F~q\ & (!\FSM|count_temp.I~q\ & !\FSM|count_temp.B~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.K~q\,
	datab => \FSM|ALT_INV_count_temp.F~q\,
	datac => \FSM|ALT_INV_count_temp.I~q\,
	datad => \FSM|ALT_INV_count_temp.B~q\,
	datae => \FSM|ALT_INV_count_temp.E~q\,
	dataf => \FSM|ALT_INV_count_temp.C~q\,
	combout => \FSM|WideOr15~0_combout\);

-- Location: LABCELL_X37_Y1_N6
\FSM|WideNor0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideNor0~1_combout\ = ( !\FSM|count_temp.G~q\ & ( (!\FSM|count_temp.N~q\ & (!\FSM|count_temp.H~q\ & !\FSM|count_temp.D~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_temp.N~q\,
	datac => \FSM|ALT_INV_count_temp.H~q\,
	datad => \FSM|ALT_INV_count_temp.D~q\,
	dataf => \FSM|ALT_INV_count_temp.G~q\,
	combout => \FSM|WideNor0~1_combout\);

-- Location: LABCELL_X37_Y1_N48
\FSM|WideOr15\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr15~combout\ = ( \FSM|WideNor0~1_combout\ & ( (!\FSM|count_temp.A~2_combout\ & (\FSM|WideOr15~0_combout\ & ((!\FSM|WideNor0~0_combout\) # (\FSM|count_temp.O~2_combout\)))) ) ) # ( !\FSM|WideNor0~1_combout\ & ( (!\FSM|count_temp.A~2_combout\ & 
-- \FSM|WideOr15~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110001000000000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.O~2_combout\,
	datab => \FSM|ALT_INV_count_temp.A~2_combout\,
	datac => \FSM|ALT_INV_WideNor0~0_combout\,
	datad => \FSM|ALT_INV_WideOr15~0_combout\,
	dataf => \FSM|ALT_INV_WideNor0~1_combout\,
	combout => \FSM|WideOr15~combout\);

-- Location: LABCELL_X37_Y1_N18
\FSM|WideOr17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr17~combout\ = ( !\FSM|count_temp.K~q\ & ( (\FSM|WideNor0~0_combout\ & (!\FSM|count_temp.F~q\ & (!\FSM|count_temp.E~q\ & !\FSM|count_temp.B~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideNor0~0_combout\,
	datab => \FSM|ALT_INV_count_temp.F~q\,
	datac => \FSM|ALT_INV_count_temp.E~q\,
	datad => \FSM|ALT_INV_count_temp.B~q\,
	dataf => \FSM|ALT_INV_count_temp.K~q\,
	combout => \FSM|WideOr17~combout\);

-- Location: LABCELL_X37_Y1_N24
\FSM|WideOr16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr16~0_combout\ = ( !\FSM|count_temp.B~q\ & ( (!\FSM|count_temp.J~q\ & !\FSM|count_temp.D~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_temp.J~q\,
	datad => \FSM|ALT_INV_count_temp.D~q\,
	dataf => \FSM|ALT_INV_count_temp.B~q\,
	combout => \FSM|WideOr16~0_combout\);

-- Location: LABCELL_X37_Y1_N21
\FSM|WideNor0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideNor0~2_combout\ = ( \FSM|WideNor0~1_combout\ & ( \FSM|WideNor0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideNor0~0_combout\,
	dataf => \FSM|ALT_INV_WideNor0~1_combout\,
	combout => \FSM|WideNor0~2_combout\);

-- Location: LABCELL_X37_Y1_N12
\FSM|WideOr16\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr16~combout\ = ( \FSM|WideNor0~2_combout\ & ( !\FSM|count_temp.O~2_combout\ & ( (!\FSM|count_temp.E~q\ & (!\FSM|WideOr15~0_combout\ & (\FSM|WideOr16~0_combout\ & !\FSM|count_temp.A~2_combout\))) ) ) ) # ( !\FSM|WideNor0~2_combout\ & ( 
-- !\FSM|count_temp.O~2_combout\ & ( (!\FSM|count_temp.E~q\ & (\FSM|WideOr16~0_combout\ & !\FSM|count_temp.A~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.E~q\,
	datab => \FSM|ALT_INV_WideOr15~0_combout\,
	datac => \FSM|ALT_INV_WideOr16~0_combout\,
	datad => \FSM|ALT_INV_count_temp.A~2_combout\,
	datae => \FSM|ALT_INV_WideNor0~2_combout\,
	dataf => \FSM|ALT_INV_count_temp.O~2_combout\,
	combout => \FSM|WideOr16~combout\);

-- Location: LABCELL_X37_Y1_N9
\FSM|WideOr18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr18~0_combout\ = ( !\FSM|count_temp.I~q\ & ( (!\FSM|count_temp.K~q\ & (!\FSM|count_temp.N~q\ & !\FSM|count_temp.M~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.K~q\,
	datab => \FSM|ALT_INV_count_temp.N~q\,
	datad => \FSM|ALT_INV_count_temp.M~q\,
	dataf => \FSM|ALT_INV_count_temp.I~q\,
	combout => \FSM|WideOr18~0_combout\);

-- Location: LABCELL_X37_Y1_N51
\FSM|WideOr18\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr18~combout\ = ( !\FSM|count_temp.E~q\ & ( (!\FSM|count_temp.O~2_combout\ & (!\FSM|count_temp.A~2_combout\ & \FSM|WideOr18~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.O~2_combout\,
	datab => \FSM|ALT_INV_count_temp.A~2_combout\,
	datac => \FSM|ALT_INV_WideOr18~0_combout\,
	dataf => \FSM|ALT_INV_count_temp.E~q\,
	combout => \FSM|WideOr18~combout\);

-- Location: LABCELL_X37_Y1_N33
\decoder0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux6~0_combout\ = ( \FSM|WideOr18~combout\ & ( (!\FSM|WideOr15~combout\ $ (\FSM|WideOr17~combout\)) # (\FSM|WideOr16~combout\) ) ) # ( !\FSM|WideOr18~combout\ & ( (!\FSM|WideOr17~combout\ $ (\FSM|WideOr16~combout\)) # (\FSM|WideOr15~combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101011111010111110101111101011110011111100111111001111110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr15~combout\,
	datab => \FSM|ALT_INV_WideOr17~combout\,
	datac => \FSM|ALT_INV_WideOr16~combout\,
	dataf => \FSM|ALT_INV_WideOr18~combout\,
	combout => \decoder0|Mux6~0_combout\);

-- Location: LABCELL_X37_Y1_N0
\decoder0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux5~0_combout\ = ( \FSM|WideOr17~combout\ & ( (!\FSM|WideOr18~combout\ & (!\FSM|WideOr16~combout\ & !\FSM|WideOr15~combout\)) # (\FSM|WideOr18~combout\ & (\FSM|WideOr16~combout\ & \FSM|WideOr15~combout\)) ) ) # ( !\FSM|WideOr17~combout\ & ( 
-- (!\FSM|WideOr16~combout\) # ((!\FSM|WideOr18~combout\ & !\FSM|WideOr15~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101100111011001110110010000001100000011000000110000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr18~combout\,
	datab => \FSM|ALT_INV_WideOr16~combout\,
	datac => \FSM|ALT_INV_WideOr15~combout\,
	dataf => \FSM|ALT_INV_WideOr17~combout\,
	combout => \decoder0|Mux5~0_combout\);

-- Location: LABCELL_X37_Y1_N3
\decoder0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux4~0_combout\ = ( \FSM|WideOr15~combout\ & ( (!\FSM|WideOr18~combout\ & ((\FSM|WideOr17~combout\))) # (\FSM|WideOr18~combout\ & ((!\FSM|WideOr17~combout\) # (\FSM|WideOr16~combout\))) ) ) # ( !\FSM|WideOr15~combout\ & ( 
-- (!\FSM|WideOr18~combout\) # ((\FSM|WideOr16~combout\ & \FSM|WideOr17~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101101011011010110110101101101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr18~combout\,
	datab => \FSM|ALT_INV_WideOr16~combout\,
	datac => \FSM|ALT_INV_WideOr17~combout\,
	dataf => \FSM|ALT_INV_WideOr15~combout\,
	combout => \decoder0|Mux4~0_combout\);

-- Location: LABCELL_X37_Y1_N42
\decoder0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux3~0_combout\ = ( \FSM|WideOr17~combout\ & ( (!\FSM|WideOr18~combout\ & (!\FSM|WideOr16~combout\ $ (\FSM|WideOr15~combout\))) # (\FSM|WideOr18~combout\ & (\FSM|WideOr16~combout\ & !\FSM|WideOr15~combout\)) ) ) # ( !\FSM|WideOr17~combout\ & ( 
-- (!\FSM|WideOr18~combout\ & (\FSM|WideOr16~combout\ & !\FSM|WideOr15~combout\)) # (\FSM|WideOr18~combout\ & (!\FSM|WideOr16~combout\ & \FSM|WideOr15~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr18~combout\,
	datab => \FSM|ALT_INV_WideOr16~combout\,
	datac => \FSM|ALT_INV_WideOr15~combout\,
	dataf => \FSM|ALT_INV_WideOr17~combout\,
	combout => \decoder0|Mux3~0_combout\);

-- Location: LABCELL_X37_Y1_N45
\decoder0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux2~0_combout\ = ( \FSM|WideOr15~combout\ & ( (!\FSM|WideOr18~combout\ & (!\FSM|WideOr16~combout\ & !\FSM|WideOr17~combout\)) ) ) # ( !\FSM|WideOr15~combout\ & ( (\FSM|WideOr18~combout\ & (!\FSM|WideOr16~combout\ & !\FSM|WideOr17~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr18~combout\,
	datab => \FSM|ALT_INV_WideOr16~combout\,
	datac => \FSM|ALT_INV_WideOr17~combout\,
	dataf => \FSM|ALT_INV_WideOr15~combout\,
	combout => \decoder0|Mux2~0_combout\);

-- Location: LABCELL_X37_Y1_N36
\decoder0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux1~0_combout\ = ( \FSM|WideOr18~combout\ & ( (\FSM|WideOr16~combout\ & !\FSM|WideOr17~combout\) ) ) # ( !\FSM|WideOr18~combout\ & ( (\FSM|WideOr16~combout\ & (!\FSM|WideOr15~combout\ $ (!\FSM|WideOr17~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_WideOr16~combout\,
	datac => \FSM|ALT_INV_WideOr15~combout\,
	datad => \FSM|ALT_INV_WideOr17~combout\,
	dataf => \FSM|ALT_INV_WideOr18~combout\,
	combout => \decoder0|Mux1~0_combout\);

-- Location: LABCELL_X37_Y1_N39
\decoder0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux0~0_combout\ = ( \FSM|WideOr15~combout\ & ( (!\FSM|WideOr18~combout\ & (\FSM|WideOr16~combout\ & \FSM|WideOr17~combout\)) # (\FSM|WideOr18~combout\ & (!\FSM|WideOr16~combout\ & !\FSM|WideOr17~combout\)) ) ) # ( !\FSM|WideOr15~combout\ & ( 
-- (\FSM|WideOr17~combout\ & (!\FSM|WideOr18~combout\ $ (\FSM|WideOr16~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100101000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr18~combout\,
	datab => \FSM|ALT_INV_WideOr16~combout\,
	datac => \FSM|ALT_INV_WideOr17~combout\,
	dataf => \FSM|ALT_INV_WideOr15~combout\,
	combout => \decoder0|Mux0~0_combout\);

-- Location: LABCELL_X37_Y1_N54
\FSM|WideOr16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr16~1_combout\ = ( \FSM|WideNor0~0_combout\ & ( !\FSM|count_temp.A~2_combout\ & ( (!\FSM|count_temp.O~2_combout\ & (!\FSM|count_temp.E~q\ & ((!\FSM|WideOr15~0_combout\) # (!\FSM|WideNor0~1_combout\)))) ) ) ) # ( !\FSM|WideNor0~0_combout\ & ( 
-- !\FSM|count_temp.A~2_combout\ & ( (!\FSM|count_temp.O~2_combout\ & !\FSM|count_temp.E~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_temp.O~2_combout\,
	datab => \FSM|ALT_INV_WideOr15~0_combout\,
	datac => \FSM|ALT_INV_count_temp.E~q\,
	datad => \FSM|ALT_INV_WideNor0~1_combout\,
	datae => \FSM|ALT_INV_WideNor0~0_combout\,
	dataf => \FSM|ALT_INV_count_temp.A~2_combout\,
	combout => \FSM|WideOr16~1_combout\);

-- Location: LABCELL_X37_Y1_N30
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \FSM|WideOr16~0_combout\ & ( (\FSM|WideOr15~combout\ & ((!\FSM|WideOr17~combout\) # (\FSM|WideOr16~1_combout\))) ) ) # ( !\FSM|WideOr16~0_combout\ & ( (\FSM|WideOr15~combout\ & !\FSM|WideOr17~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr15~combout\,
	datab => \FSM|ALT_INV_WideOr17~combout\,
	datac => \FSM|ALT_INV_WideOr16~1_combout\,
	dataf => \FSM|ALT_INV_WideOr16~0_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X27_Y34_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


