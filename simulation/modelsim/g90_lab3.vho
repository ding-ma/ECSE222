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

-- DATE "04/09/2019 17:42:35"

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
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
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
-- direction	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \enable_tmp~combout\ : std_logic;
SIGNAL \clock_divider|elapse[0]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~73_sumout\ : std_logic;
SIGNAL \clock_divider|elapse~10_combout\ : std_logic;
SIGNAL \clock_divider|elapse[2]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~74\ : std_logic;
SIGNAL \clock_divider|Add0~69_sumout\ : std_logic;
SIGNAL \clock_divider|elapse~9_combout\ : std_logic;
SIGNAL \clock_divider|elapse[1]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~70\ : std_logic;
SIGNAL \clock_divider|Add0~65_sumout\ : std_logic;
SIGNAL \clock_divider|elapse~8_combout\ : std_logic;
SIGNAL \clock_divider|elapse[3]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~66\ : std_logic;
SIGNAL \clock_divider|Add0~61_sumout\ : std_logic;
SIGNAL \clock_divider|elapse~7_combout\ : std_logic;
SIGNAL \clock_divider|LessThan0~2_combout\ : std_logic;
SIGNAL \clock_divider|Add0~62\ : std_logic;
SIGNAL \clock_divider|Add0~57_sumout\ : std_logic;
SIGNAL \clock_divider|elapse~6_combout\ : std_logic;
SIGNAL \clock_divider|Add0~58\ : std_logic;
SIGNAL \clock_divider|Add0~13_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~14\ : std_logic;
SIGNAL \clock_divider|Add0~17_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~18\ : std_logic;
SIGNAL \clock_divider|Add0~21_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[13]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~2\ : std_logic;
SIGNAL \clock_divider|Add0~50\ : std_logic;
SIGNAL \clock_divider|Add0~9_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[6]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|LessThan0~0_combout\ : std_logic;
SIGNAL \clock_divider|Add0~49_sumout\ : std_logic;
SIGNAL \clock_divider|elapse~4_combout\ : std_logic;
SIGNAL \clock_divider|elapse[17]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~10\ : std_logic;
SIGNAL \clock_divider|Add0~45_sumout\ : std_logic;
SIGNAL \clock_divider|elapse~3_combout\ : std_logic;
SIGNAL \clock_divider|Add0~46\ : std_logic;
SIGNAL \clock_divider|Add0~41_sumout\ : std_logic;
SIGNAL \clock_divider|elapse~2_combout\ : std_logic;
SIGNAL \clock_divider|elapse[16]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~42\ : std_logic;
SIGNAL \clock_divider|Add0~37_sumout\ : std_logic;
SIGNAL \clock_divider|elapse~1_combout\ : std_logic;
SIGNAL \clock_divider|Add0~38\ : std_logic;
SIGNAL \clock_divider|Add0~33_sumout\ : std_logic;
SIGNAL \clock_divider|elapse~0_combout\ : std_logic;
SIGNAL \clock_divider|LessThan0~1_combout\ : std_logic;
SIGNAL \clock_divider|Add0~22\ : std_logic;
SIGNAL \clock_divider|Add0~53_sumout\ : std_logic;
SIGNAL \clock_divider|elapse~5_combout\ : std_logic;
SIGNAL \clock_divider|elapse[8]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~54\ : std_logic;
SIGNAL \clock_divider|Add0~25_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~26\ : std_logic;
SIGNAL \clock_divider|Add0~29_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~30\ : std_logic;
SIGNAL \clock_divider|Add0~5_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[11]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~6\ : std_logic;
SIGNAL \clock_divider|Add0~1_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[12]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|LessThan0~3_combout\ : std_logic;
SIGNAL \clock_divider|en_out~q\ : std_logic;
SIGNAL \direction~input_o\ : std_logic;
SIGNAL \FSM|count_tmp~20_combout\ : std_logic;
SIGNAL \FSM|count_tmp.B~q\ : std_logic;
SIGNAL \FSM|count_tmp~22_combout\ : std_logic;
SIGNAL \FSM|count_tmp.C~q\ : std_logic;
SIGNAL \FSM|count_tmp~26_combout\ : std_logic;
SIGNAL \FSM|count_tmp.D~q\ : std_logic;
SIGNAL \FSM|count_tmp~21_combout\ : std_logic;
SIGNAL \FSM|count_tmp.E~q\ : std_logic;
SIGNAL \FSM|count_tmp~23_combout\ : std_logic;
SIGNAL \FSM|count_tmp.F~q\ : std_logic;
SIGNAL \FSM|count_tmp~30_combout\ : std_logic;
SIGNAL \FSM|count_tmp.G~q\ : std_logic;
SIGNAL \FSM|count_tmp~27_combout\ : std_logic;
SIGNAL \FSM|count_tmp.H~q\ : std_logic;
SIGNAL \FSM|count_tmp~24_combout\ : std_logic;
SIGNAL \FSM|count_tmp.I~q\ : std_logic;
SIGNAL \FSM|count_tmp~28_combout\ : std_logic;
SIGNAL \FSM|count_tmp.J~q\ : std_logic;
SIGNAL \FSM|count_tmp~25_combout\ : std_logic;
SIGNAL \FSM|count_tmp.K~q\ : std_logic;
SIGNAL \FSM|count_tmp~32_combout\ : std_logic;
SIGNAL \FSM|count_tmp.L~q\ : std_logic;
SIGNAL \FSM|count_tmp~33_combout\ : std_logic;
SIGNAL \FSM|count_tmp.M~q\ : std_logic;
SIGNAL \FSM|count_tmp~31_combout\ : std_logic;
SIGNAL \FSM|count_tmp.N~q\ : std_logic;
SIGNAL \FSM|count_tmp~29_combout\ : std_logic;
SIGNAL \FSM|count_tmp.O~q\ : std_logic;
SIGNAL \FSM|count_tmp~19_combout\ : std_logic;
SIGNAL \FSM|count_tmp.A~q\ : std_logic;
SIGNAL \FSM|WideOr15~0_combout\ : std_logic;
SIGNAL \FSM|WideOr15~1_combout\ : std_logic;
SIGNAL \FSM|WideOr15~combout\ : std_logic;
SIGNAL \FSM|WideOr18~0_combout\ : std_logic;
SIGNAL \FSM|WideOr17~0_combout\ : std_logic;
SIGNAL \FSM|WideOr18~1_combout\ : std_logic;
SIGNAL \FSM|WideOr16~0_combout\ : std_logic;
SIGNAL \FSM|WideOr16~combout\ : std_logic;
SIGNAL \FSM|WideOr17~1_combout\ : std_logic;
SIGNAL \FSM|WideOr17~combout\ : std_logic;
SIGNAL \decoder0|Mux6~0_combout\ : std_logic;
SIGNAL \decoder0|Mux5~0_combout\ : std_logic;
SIGNAL \decoder0|Mux4~0_combout\ : std_logic;
SIGNAL \decoder0|Mux3~0_combout\ : std_logic;
SIGNAL \decoder0|Mux2~0_combout\ : std_logic;
SIGNAL \decoder0|Mux1~0_combout\ : std_logic;
SIGNAL \decoder0|Mux0~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \clock_divider|elapse\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_elapse[0]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[1]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[2]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[3]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[8]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[13]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[16]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[17]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[6]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[11]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_stop~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_direction~input_o\ : std_logic;
SIGNAL \ALT_INV_enable_tmp~combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.M~q\ : std_logic;
SIGNAL \decoder0|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr18~1_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr18~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.L~q\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr17~combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr17~1_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.N~q\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr17~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.G~q\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr16~combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr16~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.O~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.J~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.H~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.D~q\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr15~combout\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr15~1_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.K~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.I~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.F~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.C~q\ : std_logic;
SIGNAL \FSM|ALT_INV_WideOr15~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.E~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.B~q\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.A~q\ : std_logic;
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
\clock_divider|ALT_INV_elapse[0]~DUPLICATE_q\ <= NOT \clock_divider|elapse[0]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[1]~DUPLICATE_q\ <= NOT \clock_divider|elapse[1]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[2]~DUPLICATE_q\ <= NOT \clock_divider|elapse[2]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[3]~DUPLICATE_q\ <= NOT \clock_divider|elapse[3]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[8]~DUPLICATE_q\ <= NOT \clock_divider|elapse[8]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[13]~DUPLICATE_q\ <= NOT \clock_divider|elapse[13]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[16]~DUPLICATE_q\ <= NOT \clock_divider|elapse[16]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[17]~DUPLICATE_q\ <= NOT \clock_divider|elapse[17]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[6]~DUPLICATE_q\ <= NOT \clock_divider|elapse[6]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[11]~DUPLICATE_q\ <= NOT \clock_divider|elapse[11]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[12]~DUPLICATE_q\ <= NOT \clock_divider|elapse[12]~DUPLICATE_q\;
\ALT_INV_stop~input_o\ <= NOT \stop~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_direction~input_o\ <= NOT \direction~input_o\;
\ALT_INV_enable_tmp~combout\ <= NOT \enable_tmp~combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\clock_divider|ALT_INV_LessThan0~3_combout\ <= NOT \clock_divider|LessThan0~3_combout\;
\clock_divider|ALT_INV_LessThan0~2_combout\ <= NOT \clock_divider|LessThan0~2_combout\;
\clock_divider|ALT_INV_elapse\(0) <= NOT \clock_divider|elapse\(0);
\clock_divider|ALT_INV_elapse\(1) <= NOT \clock_divider|elapse\(1);
\clock_divider|ALT_INV_elapse\(2) <= NOT \clock_divider|elapse\(2);
\clock_divider|ALT_INV_elapse\(3) <= NOT \clock_divider|elapse\(3);
\clock_divider|ALT_INV_elapse\(4) <= NOT \clock_divider|elapse\(4);
\clock_divider|ALT_INV_LessThan0~1_combout\ <= NOT \clock_divider|LessThan0~1_combout\;
\clock_divider|ALT_INV_elapse\(8) <= NOT \clock_divider|elapse\(8);
\clock_divider|ALT_INV_elapse\(13) <= NOT \clock_divider|elapse\(13);
\clock_divider|ALT_INV_elapse\(15) <= NOT \clock_divider|elapse\(15);
\clock_divider|ALT_INV_elapse\(16) <= NOT \clock_divider|elapse\(16);
\clock_divider|ALT_INV_elapse\(17) <= NOT \clock_divider|elapse\(17);
\clock_divider|ALT_INV_elapse\(18) <= NOT \clock_divider|elapse\(18);
\clock_divider|ALT_INV_LessThan0~0_combout\ <= NOT \clock_divider|LessThan0~0_combout\;
\FSM|ALT_INV_count_tmp.M~q\ <= NOT \FSM|count_tmp.M~q\;
\decoder0|ALT_INV_Mux5~0_combout\ <= NOT \decoder0|Mux5~0_combout\;
\FSM|ALT_INV_WideOr18~1_combout\ <= NOT \FSM|WideOr18~1_combout\;
\FSM|ALT_INV_WideOr18~0_combout\ <= NOT \FSM|WideOr18~0_combout\;
\FSM|ALT_INV_count_tmp.L~q\ <= NOT \FSM|count_tmp.L~q\;
\FSM|ALT_INV_WideOr17~combout\ <= NOT \FSM|WideOr17~combout\;
\FSM|ALT_INV_WideOr17~1_combout\ <= NOT \FSM|WideOr17~1_combout\;
\FSM|ALT_INV_count_tmp.N~q\ <= NOT \FSM|count_tmp.N~q\;
\FSM|ALT_INV_WideOr17~0_combout\ <= NOT \FSM|WideOr17~0_combout\;
\FSM|ALT_INV_count_tmp.G~q\ <= NOT \FSM|count_tmp.G~q\;
\FSM|ALT_INV_WideOr16~combout\ <= NOT \FSM|WideOr16~combout\;
\FSM|ALT_INV_WideOr16~0_combout\ <= NOT \FSM|WideOr16~0_combout\;
\FSM|ALT_INV_count_tmp.O~q\ <= NOT \FSM|count_tmp.O~q\;
\FSM|ALT_INV_count_tmp.J~q\ <= NOT \FSM|count_tmp.J~q\;
\FSM|ALT_INV_count_tmp.H~q\ <= NOT \FSM|count_tmp.H~q\;
\FSM|ALT_INV_count_tmp.D~q\ <= NOT \FSM|count_tmp.D~q\;
\FSM|ALT_INV_WideOr15~combout\ <= NOT \FSM|WideOr15~combout\;
\FSM|ALT_INV_WideOr15~1_combout\ <= NOT \FSM|WideOr15~1_combout\;
\FSM|ALT_INV_count_tmp.K~q\ <= NOT \FSM|count_tmp.K~q\;
\FSM|ALT_INV_count_tmp.I~q\ <= NOT \FSM|count_tmp.I~q\;
\FSM|ALT_INV_count_tmp.F~q\ <= NOT \FSM|count_tmp.F~q\;
\FSM|ALT_INV_count_tmp.C~q\ <= NOT \FSM|count_tmp.C~q\;
\FSM|ALT_INV_WideOr15~0_combout\ <= NOT \FSM|WideOr15~0_combout\;
\FSM|ALT_INV_count_tmp.E~q\ <= NOT \FSM|count_tmp.E~q\;
\FSM|ALT_INV_count_tmp.B~q\ <= NOT \FSM|count_tmp.B~q\;
\FSM|ALT_INV_count_tmp.A~q\ <= NOT \FSM|count_tmp.A~q\;
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
\clock_divider|ALT_INV_elapse\(10) <= NOT \clock_divider|elapse\(10);
\clock_divider|ALT_INV_elapse\(9) <= NOT \clock_divider|elapse\(9);
\clock_divider|ALT_INV_elapse\(7) <= NOT \clock_divider|elapse\(7);
\clock_divider|ALT_INV_elapse\(6) <= NOT \clock_divider|elapse\(6);
\clock_divider|ALT_INV_elapse\(5) <= NOT \clock_divider|elapse\(5);
\clock_divider|ALT_INV_elapse\(14) <= NOT \clock_divider|elapse\(14);
\clock_divider|ALT_INV_elapse\(11) <= NOT \clock_divider|elapse\(11);
\clock_divider|ALT_INV_elapse\(12) <= NOT \clock_divider|elapse\(12);

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|Mux6~0_combout\,
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
	i => \decoder0|ALT_INV_Mux5~0_combout\,
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

-- Location: MLABCELL_X39_Y1_N3
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\start~input_o\ & !\stop~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datac => \ALT_INV_stop~input_o\,
	combout => \comb~0_combout\);

-- Location: MLABCELL_X39_Y1_N42
enable_tmp : cyclonev_lcell_comb
-- Equation(s):
-- \enable_tmp~combout\ = ( \enable_tmp~combout\ & ( !\comb~0_combout\ ) ) # ( !\enable_tmp~combout\ & ( (!\start~input_o\ & !\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datac => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_enable_tmp~combout\,
	combout => \enable_tmp~combout\);

-- Location: FF_X39_Y1_N56
\clock_divider|elapse[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(8));

-- Location: FF_X40_Y1_N37
\clock_divider|elapse[12]\ : dffeas
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
	q => \clock_divider|elapse\(12));

-- Location: FF_X40_Y1_N34
\clock_divider|elapse[11]\ : dffeas
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
	q => \clock_divider|elapse\(11));

-- Location: FF_X39_Y1_N49
\clock_divider|elapse[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[0]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N0
\clock_divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~73_sumout\ = SUM(( !\clock_divider|elapse[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \clock_divider|Add0~74\ = CARRY(( !\clock_divider|elapse[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \clock_divider|Add0~73_sumout\,
	cout => \clock_divider|Add0~74\);

-- Location: MLABCELL_X39_Y1_N48
\clock_divider|elapse~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse~10_combout\ = ( \clock_divider|elapse\(11) & ( \clock_divider|LessThan0~0_combout\ & ( !\clock_divider|Add0~73_sumout\ ) ) ) # ( !\clock_divider|elapse\(11) & ( \clock_divider|LessThan0~0_combout\ & ( (!\clock_divider|Add0~73_sumout\ 
-- & ((!\clock_divider|LessThan0~2_combout\) # ((!\clock_divider|LessThan0~1_combout\) # (\clock_divider|elapse\(12))))) ) ) ) # ( \clock_divider|elapse\(11) & ( !\clock_divider|LessThan0~0_combout\ & ( !\clock_divider|Add0~73_sumout\ ) ) ) # ( 
-- !\clock_divider|elapse\(11) & ( !\clock_divider|LessThan0~0_combout\ & ( !\clock_divider|Add0~73_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_LessThan0~2_combout\,
	datab => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datac => \clock_divider|ALT_INV_Add0~73_sumout\,
	datad => \clock_divider|ALT_INV_elapse\(12),
	datae => \clock_divider|ALT_INV_elapse\(11),
	dataf => \clock_divider|ALT_INV_LessThan0~0_combout\,
	combout => \clock_divider|elapse~10_combout\);

-- Location: FF_X39_Y1_N50
\clock_divider|elapse[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(0));

-- Location: FF_X39_Y1_N7
\clock_divider|elapse[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[2]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N3
\clock_divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~69_sumout\ = SUM(( !\clock_divider|elapse[1]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~74\ ))
-- \clock_divider|Add0~70\ = CARRY(( !\clock_divider|elapse[1]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse[1]~DUPLICATE_q\,
	cin => \clock_divider|Add0~74\,
	sumout => \clock_divider|Add0~69_sumout\,
	cout => \clock_divider|Add0~70\);

-- Location: MLABCELL_X39_Y1_N57
\clock_divider|elapse~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse~9_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~69_sumout\ & ( (!\clock_divider|LessThan0~1_combout\) # (((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|elapse\(11))) # 
-- (\clock_divider|elapse\(12))) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datab => \clock_divider|ALT_INV_elapse\(12),
	datac => \clock_divider|ALT_INV_elapse\(11),
	datad => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~69_sumout\,
	combout => \clock_divider|elapse~9_combout\);

-- Location: FF_X39_Y1_N58
\clock_divider|elapse[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[1]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N6
\clock_divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~65_sumout\ = SUM(( !\clock_divider|elapse[2]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~70\ ))
-- \clock_divider|Add0~66\ = CARRY(( !\clock_divider|elapse[2]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse[2]~DUPLICATE_q\,
	cin => \clock_divider|Add0~70\,
	sumout => \clock_divider|Add0~65_sumout\,
	cout => \clock_divider|Add0~66\);

-- Location: MLABCELL_X39_Y1_N6
\clock_divider|elapse~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse~8_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~65_sumout\ & ( (!\clock_divider|LessThan0~1_combout\) # (((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|elapse\(11))) # 
-- (\clock_divider|elapse\(12))) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datab => \clock_divider|ALT_INV_elapse\(12),
	datac => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datad => \clock_divider|ALT_INV_elapse\(11),
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~65_sumout\,
	combout => \clock_divider|elapse~8_combout\);

-- Location: FF_X39_Y1_N8
\clock_divider|elapse[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(2));

-- Location: FF_X39_Y1_N19
\clock_divider|elapse[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[3]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N9
\clock_divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~61_sumout\ = SUM(( !\clock_divider|elapse[3]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~66\ ))
-- \clock_divider|Add0~62\ = CARRY(( !\clock_divider|elapse[3]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse[3]~DUPLICATE_q\,
	cin => \clock_divider|Add0~66\,
	sumout => \clock_divider|Add0~61_sumout\,
	cout => \clock_divider|Add0~62\);

-- Location: MLABCELL_X39_Y1_N18
\clock_divider|elapse~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse~7_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~61_sumout\ & ( (!\clock_divider|LessThan0~1_combout\) # (((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|elapse\(11))) # 
-- (\clock_divider|elapse\(12))) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datab => \clock_divider|ALT_INV_elapse\(12),
	datac => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datad => \clock_divider|ALT_INV_elapse\(11),
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~61_sumout\,
	combout => \clock_divider|elapse~7_combout\);

-- Location: FF_X39_Y1_N20
\clock_divider|elapse[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(3));

-- Location: FF_X39_Y1_N59
\clock_divider|elapse[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(1));

-- Location: MLABCELL_X39_Y1_N36
\clock_divider|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~2_combout\ = ( \clock_divider|elapse\(4) & ( (\clock_divider|elapse\(0) & (\clock_divider|elapse\(2) & (\clock_divider|elapse\(3) & \clock_divider|elapse\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse\(0),
	datab => \clock_divider|ALT_INV_elapse\(2),
	datac => \clock_divider|ALT_INV_elapse\(3),
	datad => \clock_divider|ALT_INV_elapse\(1),
	dataf => \clock_divider|ALT_INV_elapse\(4),
	combout => \clock_divider|LessThan0~2_combout\);

-- Location: LABCELL_X40_Y1_N12
\clock_divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~57_sumout\ = SUM(( !\clock_divider|elapse\(4) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))
-- \clock_divider|Add0~58\ = CARRY(( !\clock_divider|elapse\(4) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(4),
	cin => \clock_divider|Add0~62\,
	sumout => \clock_divider|Add0~57_sumout\,
	cout => \clock_divider|Add0~58\);

-- Location: MLABCELL_X39_Y1_N21
\clock_divider|elapse~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse~6_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~57_sumout\ & ( (!\clock_divider|LessThan0~1_combout\) # (((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|elapse\(11))) # 
-- (\clock_divider|elapse\(12))) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datab => \clock_divider|ALT_INV_elapse\(12),
	datac => \clock_divider|ALT_INV_elapse\(11),
	datad => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~57_sumout\,
	combout => \clock_divider|elapse~6_combout\);

-- Location: FF_X39_Y1_N22
\clock_divider|elapse[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(4));

-- Location: LABCELL_X40_Y1_N15
\clock_divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~13_sumout\ = SUM(( \clock_divider|elapse\(5) ) + ( VCC ) + ( \clock_divider|Add0~58\ ))
-- \clock_divider|Add0~14\ = CARRY(( \clock_divider|elapse\(5) ) + ( VCC ) + ( \clock_divider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(5),
	cin => \clock_divider|Add0~58\,
	sumout => \clock_divider|Add0~13_sumout\,
	cout => \clock_divider|Add0~14\);

-- Location: FF_X40_Y1_N17
\clock_divider|elapse[5]\ : dffeas
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
	q => \clock_divider|elapse\(5));

-- Location: LABCELL_X40_Y1_N18
\clock_divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~17_sumout\ = SUM(( \clock_divider|elapse\(6) ) + ( VCC ) + ( \clock_divider|Add0~14\ ))
-- \clock_divider|Add0~18\ = CARRY(( \clock_divider|elapse\(6) ) + ( VCC ) + ( \clock_divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(6),
	cin => \clock_divider|Add0~14\,
	sumout => \clock_divider|Add0~17_sumout\,
	cout => \clock_divider|Add0~18\);

-- Location: FF_X40_Y1_N20
\clock_divider|elapse[6]\ : dffeas
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
	q => \clock_divider|elapse\(6));

-- Location: LABCELL_X40_Y1_N21
\clock_divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~21_sumout\ = SUM(( \clock_divider|elapse\(7) ) + ( VCC ) + ( \clock_divider|Add0~18\ ))
-- \clock_divider|Add0~22\ = CARRY(( \clock_divider|elapse\(7) ) + ( VCC ) + ( \clock_divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(7),
	cin => \clock_divider|Add0~18\,
	sumout => \clock_divider|Add0~21_sumout\,
	cout => \clock_divider|Add0~22\);

-- Location: FF_X40_Y1_N23
\clock_divider|elapse[7]\ : dffeas
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
	q => \clock_divider|elapse\(7));

-- Location: FF_X39_Y1_N10
\clock_divider|elapse[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[13]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N36
\clock_divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~1_sumout\ = SUM(( \clock_divider|elapse[12]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~6\ ))
-- \clock_divider|Add0~2\ = CARRY(( \clock_divider|elapse[12]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse[12]~DUPLICATE_q\,
	cin => \clock_divider|Add0~6\,
	sumout => \clock_divider|Add0~1_sumout\,
	cout => \clock_divider|Add0~2\);

-- Location: LABCELL_X40_Y1_N39
\clock_divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~49_sumout\ = SUM(( !\clock_divider|elapse[13]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~2\ ))
-- \clock_divider|Add0~50\ = CARRY(( !\clock_divider|elapse[13]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse[13]~DUPLICATE_q\,
	cin => \clock_divider|Add0~2\,
	sumout => \clock_divider|Add0~49_sumout\,
	cout => \clock_divider|Add0~50\);

-- Location: LABCELL_X40_Y1_N42
\clock_divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~9_sumout\ = SUM(( \clock_divider|elapse\(14) ) + ( VCC ) + ( \clock_divider|Add0~50\ ))
-- \clock_divider|Add0~10\ = CARRY(( \clock_divider|elapse\(14) ) + ( VCC ) + ( \clock_divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(14),
	cin => \clock_divider|Add0~50\,
	sumout => \clock_divider|Add0~9_sumout\,
	cout => \clock_divider|Add0~10\);

-- Location: FF_X40_Y1_N43
\clock_divider|elapse[14]\ : dffeas
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
	q => \clock_divider|elapse\(14));

-- Location: FF_X40_Y1_N19
\clock_divider|elapse[6]~DUPLICATE\ : dffeas
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
	q => \clock_divider|elapse[6]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y1_N30
\clock_divider|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~0_combout\ = ( !\clock_divider|elapse\(9) & ( !\clock_divider|elapse[6]~DUPLICATE_q\ & ( (!\clock_divider|elapse\(5) & (!\clock_divider|elapse\(10) & (!\clock_divider|elapse\(7) & !\clock_divider|elapse\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse\(5),
	datab => \clock_divider|ALT_INV_elapse\(10),
	datac => \clock_divider|ALT_INV_elapse\(7),
	datad => \clock_divider|ALT_INV_elapse\(14),
	datae => \clock_divider|ALT_INV_elapse\(9),
	dataf => \clock_divider|ALT_INV_elapse[6]~DUPLICATE_q\,
	combout => \clock_divider|LessThan0~0_combout\);

-- Location: MLABCELL_X39_Y1_N9
\clock_divider|elapse~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse~4_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~49_sumout\ & ( (!\clock_divider|LessThan0~1_combout\) # (((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|elapse\(11))) # 
-- (\clock_divider|elapse\(12))) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datab => \clock_divider|ALT_INV_elapse\(12),
	datac => \clock_divider|ALT_INV_elapse\(11),
	datad => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~49_sumout\,
	combout => \clock_divider|elapse~4_combout\);

-- Location: FF_X39_Y1_N11
\clock_divider|elapse[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(13));

-- Location: FF_X39_Y1_N1
\clock_divider|elapse[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[17]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N45
\clock_divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~45_sumout\ = SUM(( !\clock_divider|elapse\(15) ) + ( VCC ) + ( \clock_divider|Add0~10\ ))
-- \clock_divider|Add0~46\ = CARRY(( !\clock_divider|elapse\(15) ) + ( VCC ) + ( \clock_divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(15),
	cin => \clock_divider|Add0~10\,
	sumout => \clock_divider|Add0~45_sumout\,
	cout => \clock_divider|Add0~46\);

-- Location: MLABCELL_X39_Y1_N15
\clock_divider|elapse~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse~3_combout\ = ( !\clock_divider|Add0~45_sumout\ & ( !\clock_divider|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_LessThan0~3_combout\,
	dataf => \clock_divider|ALT_INV_Add0~45_sumout\,
	combout => \clock_divider|elapse~3_combout\);

-- Location: FF_X39_Y1_N16
\clock_divider|elapse[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(15));

-- Location: LABCELL_X40_Y1_N48
\clock_divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~41_sumout\ = SUM(( !\clock_divider|elapse[16]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~46\ ))
-- \clock_divider|Add0~42\ = CARRY(( !\clock_divider|elapse[16]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse[16]~DUPLICATE_q\,
	cin => \clock_divider|Add0~46\,
	sumout => \clock_divider|Add0~41_sumout\,
	cout => \clock_divider|Add0~42\);

-- Location: MLABCELL_X39_Y1_N39
\clock_divider|elapse~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse~2_combout\ = ( !\clock_divider|Add0~41_sumout\ & ( !\clock_divider|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_LessThan0~3_combout\,
	dataf => \clock_divider|ALT_INV_Add0~41_sumout\,
	combout => \clock_divider|elapse~2_combout\);

-- Location: FF_X39_Y1_N40
\clock_divider|elapse[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[16]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N51
\clock_divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~37_sumout\ = SUM(( !\clock_divider|elapse[17]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~42\ ))
-- \clock_divider|Add0~38\ = CARRY(( !\clock_divider|elapse[17]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse[17]~DUPLICATE_q\,
	cin => \clock_divider|Add0~42\,
	sumout => \clock_divider|Add0~37_sumout\,
	cout => \clock_divider|Add0~38\);

-- Location: MLABCELL_X39_Y1_N0
\clock_divider|elapse~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse~1_combout\ = ( !\clock_divider|Add0~37_sumout\ & ( !\clock_divider|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_LessThan0~3_combout\,
	dataf => \clock_divider|ALT_INV_Add0~37_sumout\,
	combout => \clock_divider|elapse~1_combout\);

-- Location: FF_X39_Y1_N2
\clock_divider|elapse[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(17));

-- Location: FF_X39_Y1_N41
\clock_divider|elapse[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(16));

-- Location: LABCELL_X40_Y1_N54
\clock_divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~33_sumout\ = SUM(( !\clock_divider|elapse\(18) ) + ( VCC ) + ( \clock_divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(18),
	cin => \clock_divider|Add0~38\,
	sumout => \clock_divider|Add0~33_sumout\);

-- Location: MLABCELL_X39_Y1_N45
\clock_divider|elapse~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse~0_combout\ = ( !\clock_divider|Add0~33_sumout\ & ( !\clock_divider|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_LessThan0~3_combout\,
	dataf => \clock_divider|ALT_INV_Add0~33_sumout\,
	combout => \clock_divider|elapse~0_combout\);

-- Location: FF_X39_Y1_N46
\clock_divider|elapse[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(18));

-- Location: MLABCELL_X39_Y1_N24
\clock_divider|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~1_combout\ = ( \clock_divider|elapse\(18) & ( \clock_divider|elapse\(15) & ( (\clock_divider|elapse\(8) & (\clock_divider|elapse\(13) & (\clock_divider|elapse\(17) & \clock_divider|elapse\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse\(8),
	datab => \clock_divider|ALT_INV_elapse\(13),
	datac => \clock_divider|ALT_INV_elapse\(17),
	datad => \clock_divider|ALT_INV_elapse\(16),
	datae => \clock_divider|ALT_INV_elapse\(18),
	dataf => \clock_divider|ALT_INV_elapse\(15),
	combout => \clock_divider|LessThan0~1_combout\);

-- Location: LABCELL_X40_Y1_N24
\clock_divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~53_sumout\ = SUM(( !\clock_divider|elapse[8]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~22\ ))
-- \clock_divider|Add0~54\ = CARRY(( !\clock_divider|elapse[8]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse[8]~DUPLICATE_q\,
	cin => \clock_divider|Add0~22\,
	sumout => \clock_divider|Add0~53_sumout\,
	cout => \clock_divider|Add0~54\);

-- Location: MLABCELL_X39_Y1_N54
\clock_divider|elapse~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse~5_combout\ = ( \clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~53_sumout\ & ( (!\clock_divider|LessThan0~1_combout\) # (((!\clock_divider|LessThan0~0_combout\) # (\clock_divider|elapse\(11))) # 
-- (\clock_divider|elapse\(12))) ) ) ) # ( !\clock_divider|LessThan0~2_combout\ & ( !\clock_divider|Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datab => \clock_divider|ALT_INV_elapse\(12),
	datac => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datad => \clock_divider|ALT_INV_elapse\(11),
	datae => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_Add0~53_sumout\,
	combout => \clock_divider|elapse~5_combout\);

-- Location: FF_X39_Y1_N55
\clock_divider|elapse[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[8]~DUPLICATE_q\);

-- Location: LABCELL_X40_Y1_N27
\clock_divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~25_sumout\ = SUM(( \clock_divider|elapse\(9) ) + ( VCC ) + ( \clock_divider|Add0~54\ ))
-- \clock_divider|Add0~26\ = CARRY(( \clock_divider|elapse\(9) ) + ( VCC ) + ( \clock_divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(9),
	cin => \clock_divider|Add0~54\,
	sumout => \clock_divider|Add0~25_sumout\,
	cout => \clock_divider|Add0~26\);

-- Location: FF_X40_Y1_N29
\clock_divider|elapse[9]\ : dffeas
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
	q => \clock_divider|elapse\(9));

-- Location: LABCELL_X40_Y1_N30
\clock_divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~29_sumout\ = SUM(( \clock_divider|elapse\(10) ) + ( VCC ) + ( \clock_divider|Add0~26\ ))
-- \clock_divider|Add0~30\ = CARRY(( \clock_divider|elapse\(10) ) + ( VCC ) + ( \clock_divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(10),
	cin => \clock_divider|Add0~26\,
	sumout => \clock_divider|Add0~29_sumout\,
	cout => \clock_divider|Add0~30\);

-- Location: FF_X40_Y1_N31
\clock_divider|elapse[10]\ : dffeas
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
	q => \clock_divider|elapse\(10));

-- Location: LABCELL_X40_Y1_N33
\clock_divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~5_sumout\ = SUM(( \clock_divider|elapse[11]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~30\ ))
-- \clock_divider|Add0~6\ = CARRY(( \clock_divider|elapse[11]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse[11]~DUPLICATE_q\,
	cin => \clock_divider|Add0~30\,
	sumout => \clock_divider|Add0~5_sumout\,
	cout => \clock_divider|Add0~6\);

-- Location: FF_X40_Y1_N35
\clock_divider|elapse[11]~DUPLICATE\ : dffeas
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
	q => \clock_divider|elapse[11]~DUPLICATE_q\);

-- Location: FF_X40_Y1_N38
\clock_divider|elapse[12]~DUPLICATE\ : dffeas
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
	q => \clock_divider|elapse[12]~DUPLICATE_q\);

-- Location: MLABCELL_X39_Y1_N12
\clock_divider|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~3_combout\ = ( \clock_divider|LessThan0~0_combout\ & ( (!\clock_divider|elapse[12]~DUPLICATE_q\ & (!\clock_divider|elapse\(11) & (\clock_divider|LessThan0~1_combout\ & \clock_divider|LessThan0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse[12]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_elapse\(11),
	datac => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datad => \clock_divider|ALT_INV_LessThan0~2_combout\,
	dataf => \clock_divider|ALT_INV_LessThan0~0_combout\,
	combout => \clock_divider|LessThan0~3_combout\);

-- Location: FF_X39_Y1_N34
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

-- Location: LABCELL_X37_Y1_N0
\FSM|count_tmp~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~20_combout\ = ( \FSM|count_tmp.C~q\ & ( (!\FSM|count_tmp.A~q\) # (!\direction~input_o\) ) ) # ( !\FSM|count_tmp.C~q\ & ( (!\FSM|count_tmp.A~q\ & \direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_count_tmp.A~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.C~q\,
	combout => \FSM|count_tmp~20_combout\);

-- Location: FF_X37_Y1_N2
\FSM|count_tmp.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~20_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.B~q\);

-- Location: LABCELL_X37_Y1_N39
\FSM|count_tmp~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~22_combout\ = ( \FSM|count_tmp.B~q\ & ( (\direction~input_o\) # (\FSM|count_tmp.D~q\) ) ) # ( !\FSM|count_tmp.B~q\ & ( (\FSM|count_tmp.D~q\ & !\direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.D~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.B~q\,
	combout => \FSM|count_tmp~22_combout\);

-- Location: FF_X37_Y1_N41
\FSM|count_tmp.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~22_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.C~q\);

-- Location: LABCELL_X37_Y1_N42
\FSM|count_tmp~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~26_combout\ = ( \FSM|count_tmp.E~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.C~q\) ) ) # ( !\FSM|count_tmp.E~q\ & ( (\FSM|count_tmp.C~q\ & \direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_tmp.C~q\,
	datac => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.E~q\,
	combout => \FSM|count_tmp~26_combout\);

-- Location: FF_X37_Y1_N44
\FSM|count_tmp.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~26_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.D~q\);

-- Location: LABCELL_X37_Y1_N45
\FSM|count_tmp~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~21_combout\ = ( \FSM|count_tmp.F~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.D~q\) ) ) # ( !\FSM|count_tmp.F~q\ & ( (\FSM|count_tmp.D~q\ & \direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.D~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.F~q\,
	combout => \FSM|count_tmp~21_combout\);

-- Location: FF_X37_Y1_N47
\FSM|count_tmp.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~21_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.E~q\);

-- Location: LABCELL_X37_Y1_N18
\FSM|count_tmp~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~23_combout\ = ( \FSM|count_tmp.E~q\ & ( (\direction~input_o\) # (\FSM|count_tmp.G~q\) ) ) # ( !\FSM|count_tmp.E~q\ & ( (\FSM|count_tmp.G~q\ & !\direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.G~q\,
	datac => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.E~q\,
	combout => \FSM|count_tmp~23_combout\);

-- Location: FF_X37_Y1_N20
\FSM|count_tmp.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~23_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.F~q\);

-- Location: LABCELL_X37_Y1_N21
\FSM|count_tmp~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~30_combout\ = ( \FSM|count_tmp.H~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.F~q\) ) ) # ( !\FSM|count_tmp.H~q\ & ( (\FSM|count_tmp.F~q\ & \direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_tmp.F~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.H~q\,
	combout => \FSM|count_tmp~30_combout\);

-- Location: FF_X37_Y1_N23
\FSM|count_tmp.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~30_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.G~q\);

-- Location: LABCELL_X37_Y1_N24
\FSM|count_tmp~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~27_combout\ = ( \FSM|count_tmp.I~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.G~q\) ) ) # ( !\FSM|count_tmp.I~q\ & ( (\FSM|count_tmp.G~q\ & \direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.G~q\,
	datac => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.I~q\,
	combout => \FSM|count_tmp~27_combout\);

-- Location: FF_X37_Y1_N26
\FSM|count_tmp.H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~27_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.H~q\);

-- Location: LABCELL_X37_Y1_N33
\FSM|count_tmp~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~24_combout\ = ( \FSM|count_tmp.H~q\ & ( (\direction~input_o\) # (\FSM|count_tmp.J~q\) ) ) # ( !\FSM|count_tmp.H~q\ & ( (\FSM|count_tmp.J~q\ & !\direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.J~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.H~q\,
	combout => \FSM|count_tmp~24_combout\);

-- Location: FF_X37_Y1_N35
\FSM|count_tmp.I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~24_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.I~q\);

-- Location: LABCELL_X37_Y1_N48
\FSM|count_tmp~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~28_combout\ = ( \FSM|count_tmp.K~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.I~q\) ) ) # ( !\FSM|count_tmp.K~q\ & ( (\FSM|count_tmp.I~q\ & \direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.I~q\,
	datac => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.K~q\,
	combout => \FSM|count_tmp~28_combout\);

-- Location: FF_X37_Y1_N50
\FSM|count_tmp.J\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~28_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.J~q\);

-- Location: LABCELL_X37_Y1_N51
\FSM|count_tmp~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~25_combout\ = ( \FSM|count_tmp.L~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.J~q\) ) ) # ( !\FSM|count_tmp.L~q\ & ( (\FSM|count_tmp.J~q\ & \direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_count_tmp.J~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.L~q\,
	combout => \FSM|count_tmp~25_combout\);

-- Location: FF_X37_Y1_N53
\FSM|count_tmp.K\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~25_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.K~q\);

-- Location: LABCELL_X37_Y1_N12
\FSM|count_tmp~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~32_combout\ = ( \FSM|count_tmp.K~q\ & ( (\direction~input_o\) # (\FSM|count_tmp.M~q\) ) ) # ( !\FSM|count_tmp.K~q\ & ( (\FSM|count_tmp.M~q\ & !\direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.M~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.K~q\,
	combout => \FSM|count_tmp~32_combout\);

-- Location: FF_X37_Y1_N14
\FSM|count_tmp.L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~32_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.L~q\);

-- Location: LABCELL_X37_Y1_N15
\FSM|count_tmp~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~33_combout\ = ( \FSM|count_tmp.N~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.L~q\) ) ) # ( !\FSM|count_tmp.N~q\ & ( (\FSM|count_tmp.L~q\ & \direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_tmp.L~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.N~q\,
	combout => \FSM|count_tmp~33_combout\);

-- Location: FF_X37_Y1_N17
\FSM|count_tmp.M\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~33_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.M~q\);

-- Location: LABCELL_X37_Y1_N54
\FSM|count_tmp~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~31_combout\ = ( \FSM|count_tmp.O~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.M~q\) ) ) # ( !\FSM|count_tmp.O~q\ & ( (\FSM|count_tmp.M~q\ & \direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.M~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.O~q\,
	combout => \FSM|count_tmp~31_combout\);

-- Location: FF_X37_Y1_N56
\FSM|count_tmp.N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~31_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.N~q\);

-- Location: LABCELL_X37_Y1_N57
\FSM|count_tmp~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~29_combout\ = ( \FSM|count_tmp.N~q\ & ( (!\FSM|count_tmp.A~q\) # (\direction~input_o\) ) ) # ( !\FSM|count_tmp.N~q\ & ( (!\FSM|count_tmp.A~q\ & !\direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_count_tmp.A~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.N~q\,
	combout => \FSM|count_tmp~29_combout\);

-- Location: FF_X37_Y1_N59
\FSM|count_tmp.O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~29_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.O~q\);

-- Location: LABCELL_X37_Y1_N6
\FSM|count_tmp~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~19_combout\ = ( \FSM|count_tmp.B~q\ & ( (!\FSM|count_tmp.O~q\ & \direction~input_o\) ) ) # ( !\FSM|count_tmp.B~q\ & ( (!\FSM|count_tmp.O~q\) # (!\direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_count_tmp.O~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.B~q\,
	combout => \FSM|count_tmp~19_combout\);

-- Location: FF_X37_Y1_N8
\FSM|count_tmp.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out~q\,
	d => \FSM|count_tmp~19_combout\,
	clrn => \reset~input_o\,
	ena => \enable_tmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.A~q\);

-- Location: LABCELL_X37_Y1_N3
\FSM|WideOr15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr15~0_combout\ = (\FSM|count_tmp.A~q\ & (!\FSM|count_tmp.E~q\ & !\FSM|count_tmp.B~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.A~q\,
	datac => \FSM|ALT_INV_count_tmp.E~q\,
	datad => \FSM|ALT_INV_count_tmp.B~q\,
	combout => \FSM|WideOr15~0_combout\);

-- Location: LABCELL_X37_Y1_N30
\FSM|WideOr15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr15~1_combout\ = ( !\FSM|count_tmp.C~q\ & ( (!\FSM|count_tmp.K~q\ & (!\FSM|count_tmp.I~q\ & !\FSM|count_tmp.F~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_tmp.K~q\,
	datac => \FSM|ALT_INV_count_tmp.I~q\,
	datad => \FSM|ALT_INV_count_tmp.F~q\,
	dataf => \FSM|ALT_INV_count_tmp.C~q\,
	combout => \FSM|WideOr15~1_combout\);

-- Location: LABCELL_X83_Y5_N48
\FSM|WideOr15\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr15~combout\ = ( \FSM|WideOr15~1_combout\ & ( \FSM|WideOr15~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_WideOr15~0_combout\,
	dataf => \FSM|ALT_INV_WideOr15~1_combout\,
	combout => \FSM|WideOr15~combout\);

-- Location: LABCELL_X37_Y1_N27
\FSM|WideOr18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr18~0_combout\ = ( !\FSM|count_tmp.F~q\ & ( (!\FSM|count_tmp.L~q\ & (!\FSM|count_tmp.J~q\ & !\FSM|count_tmp.B~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_tmp.L~q\,
	datac => \FSM|ALT_INV_count_tmp.J~q\,
	datad => \FSM|ALT_INV_count_tmp.B~q\,
	dataf => \FSM|ALT_INV_count_tmp.F~q\,
	combout => \FSM|WideOr18~0_combout\);

-- Location: LABCELL_X42_Y1_N48
\FSM|WideOr17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr17~0_combout\ = ( !\FSM|count_tmp.D~q\ & ( !\FSM|count_tmp.C~q\ & ( !\FSM|count_tmp.G~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.G~q\,
	datae => \FSM|ALT_INV_count_tmp.D~q\,
	dataf => \FSM|ALT_INV_count_tmp.C~q\,
	combout => \FSM|WideOr17~0_combout\);

-- Location: LABCELL_X83_Y5_N30
\FSM|WideOr18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr18~1_combout\ = ( \FSM|WideOr18~0_combout\ & ( \FSM|WideOr17~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \FSM|ALT_INV_WideOr18~0_combout\,
	dataf => \FSM|ALT_INV_WideOr17~0_combout\,
	combout => \FSM|WideOr18~1_combout\);

-- Location: LABCELL_X37_Y1_N36
\FSM|WideOr16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr16~0_combout\ = ( !\FSM|count_tmp.J~q\ & ( (!\FSM|count_tmp.D~q\ & (!\FSM|count_tmp.H~q\ & !\FSM|count_tmp.O~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.D~q\,
	datac => \FSM|ALT_INV_count_tmp.H~q\,
	datad => \FSM|ALT_INV_count_tmp.O~q\,
	dataf => \FSM|ALT_INV_count_tmp.J~q\,
	combout => \FSM|WideOr16~0_combout\);

-- Location: LABCELL_X83_Y5_N57
\FSM|WideOr16\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr16~combout\ = ( \FSM|WideOr16~0_combout\ & ( \FSM|WideOr15~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr15~0_combout\,
	dataf => \FSM|ALT_INV_WideOr16~0_combout\,
	combout => \FSM|WideOr16~combout\);

-- Location: LABCELL_X37_Y1_N9
\FSM|WideOr17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr17~1_combout\ = ( !\FSM|count_tmp.I~q\ & ( (!\FSM|count_tmp.O~q\ & (\FSM|count_tmp.A~q\ & !\FSM|count_tmp.N~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.O~q\,
	datac => \FSM|ALT_INV_count_tmp.A~q\,
	datad => \FSM|ALT_INV_count_tmp.N~q\,
	dataf => \FSM|ALT_INV_count_tmp.I~q\,
	combout => \FSM|WideOr17~1_combout\);

-- Location: LABCELL_X83_Y5_N15
\FSM|WideOr17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr17~combout\ = ( \FSM|WideOr17~0_combout\ & ( \FSM|WideOr17~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr17~1_combout\,
	dataf => \FSM|ALT_INV_WideOr17~0_combout\,
	combout => \FSM|WideOr17~combout\);

-- Location: LABCELL_X83_Y5_N24
\decoder0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux6~0_combout\ = ( \FSM|WideOr17~combout\ & ( (!\FSM|WideOr15~combout\ & (\FSM|WideOr18~1_combout\ & \FSM|WideOr16~combout\)) # (\FSM|WideOr15~combout\ & ((!\FSM|WideOr16~combout\))) ) ) # ( !\FSM|WideOr17~combout\ & ( (!\FSM|WideOr15~combout\ 
-- & !\FSM|WideOr16~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000001010101001000100101010100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr15~combout\,
	datab => \FSM|ALT_INV_WideOr18~1_combout\,
	datad => \FSM|ALT_INV_WideOr16~combout\,
	dataf => \FSM|ALT_INV_WideOr17~combout\,
	combout => \decoder0|Mux6~0_combout\);

-- Location: LABCELL_X83_Y5_N27
\decoder0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux5~0_combout\ = ( \FSM|WideOr17~combout\ & ( (!\FSM|WideOr15~combout\ & (!\FSM|WideOr18~1_combout\ & \FSM|WideOr16~combout\)) # (\FSM|WideOr15~combout\ & ((!\FSM|WideOr18~1_combout\) # (\FSM|WideOr16~combout\))) ) ) # ( !\FSM|WideOr17~combout\ 
-- & ( (!\FSM|WideOr15~combout\ & ((!\FSM|WideOr18~1_combout\) # (\FSM|WideOr16~combout\))) # (\FSM|WideOr15~combout\ & ((!\FSM|WideOr16~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101011011010110110101101101001001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr15~combout\,
	datab => \FSM|ALT_INV_WideOr18~1_combout\,
	datac => \FSM|ALT_INV_WideOr16~combout\,
	dataf => \FSM|ALT_INV_WideOr17~combout\,
	combout => \decoder0|Mux5~0_combout\);

-- Location: LABCELL_X83_Y5_N18
\decoder0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux4~0_combout\ = ( \FSM|WideOr18~0_combout\ & ( \FSM|WideOr17~0_combout\ ) ) # ( !\FSM|WideOr18~0_combout\ & ( \FSM|WideOr17~0_combout\ & ( (\FSM|WideOr16~0_combout\ & (\FSM|WideOr15~0_combout\ & (!\FSM|WideOr17~1_combout\ $ 
-- (\FSM|WideOr15~1_combout\)))) ) ) ) # ( \FSM|WideOr18~0_combout\ & ( !\FSM|WideOr17~0_combout\ & ( (\FSM|WideOr16~0_combout\ & (\FSM|WideOr15~0_combout\ & !\FSM|WideOr15~1_combout\)) ) ) ) # ( !\FSM|WideOr18~0_combout\ & ( !\FSM|WideOr17~0_combout\ & ( 
-- (\FSM|WideOr16~0_combout\ & (\FSM|WideOr15~0_combout\ & !\FSM|WideOr15~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000100000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr16~0_combout\,
	datab => \FSM|ALT_INV_WideOr17~1_combout\,
	datac => \FSM|ALT_INV_WideOr15~0_combout\,
	datad => \FSM|ALT_INV_WideOr15~1_combout\,
	datae => \FSM|ALT_INV_WideOr18~0_combout\,
	dataf => \FSM|ALT_INV_WideOr17~0_combout\,
	combout => \decoder0|Mux4~0_combout\);

-- Location: LABCELL_X83_Y5_N3
\decoder0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux3~0_combout\ = ( \FSM|WideOr16~combout\ & ( \FSM|WideOr15~combout\ & ( (\FSM|WideOr17~combout\ & !\FSM|WideOr18~1_combout\) ) ) ) # ( !\FSM|WideOr16~combout\ & ( \FSM|WideOr15~combout\ & ( (\FSM|WideOr17~combout\ & \FSM|WideOr18~1_combout\) ) 
-- ) ) # ( \FSM|WideOr16~combout\ & ( !\FSM|WideOr15~combout\ & ( !\FSM|WideOr17~combout\ $ (\FSM|WideOr18~1_combout\) ) ) ) # ( !\FSM|WideOr16~combout\ & ( !\FSM|WideOr15~combout\ & ( (!\FSM|WideOr17~combout\ & \FSM|WideOr18~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000111100001100000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_WideOr17~combout\,
	datac => \FSM|ALT_INV_WideOr18~1_combout\,
	datae => \FSM|ALT_INV_WideOr16~combout\,
	dataf => \FSM|ALT_INV_WideOr15~combout\,
	combout => \decoder0|Mux3~0_combout\);

-- Location: LABCELL_X83_Y5_N42
\decoder0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux2~0_combout\ = ( !\FSM|WideOr18~0_combout\ & ( \FSM|WideOr17~0_combout\ & ( (!\FSM|WideOr17~1_combout\ & (\FSM|WideOr16~0_combout\ & (\FSM|WideOr15~0_combout\ & \FSM|WideOr15~1_combout\))) # (\FSM|WideOr17~1_combout\ & 
-- ((!\FSM|WideOr15~0_combout\) # ((!\FSM|WideOr16~0_combout\ & !\FSM|WideOr15~1_combout\)))) ) ) ) # ( \FSM|WideOr18~0_combout\ & ( !\FSM|WideOr17~0_combout\ & ( (\FSM|WideOr16~0_combout\ & (\FSM|WideOr15~0_combout\ & \FSM|WideOr15~1_combout\)) ) ) ) # ( 
-- !\FSM|WideOr18~0_combout\ & ( !\FSM|WideOr17~0_combout\ & ( (\FSM|WideOr16~0_combout\ & (\FSM|WideOr15~0_combout\ & \FSM|WideOr15~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100110010001101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr16~0_combout\,
	datab => \FSM|ALT_INV_WideOr17~1_combout\,
	datac => \FSM|ALT_INV_WideOr15~0_combout\,
	datad => \FSM|ALT_INV_WideOr15~1_combout\,
	datae => \FSM|ALT_INV_WideOr18~0_combout\,
	dataf => \FSM|ALT_INV_WideOr17~0_combout\,
	combout => \decoder0|Mux2~0_combout\);

-- Location: LABCELL_X83_Y5_N36
\decoder0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux1~0_combout\ = ( \FSM|WideOr18~0_combout\ & ( \FSM|WideOr17~0_combout\ & ( (\FSM|WideOr16~0_combout\ & (\FSM|WideOr15~0_combout\ & (!\FSM|WideOr17~1_combout\ $ (\FSM|WideOr15~1_combout\)))) ) ) ) # ( !\FSM|WideOr18~0_combout\ & ( 
-- \FSM|WideOr17~0_combout\ & ( (\FSM|WideOr16~0_combout\ & (\FSM|WideOr17~1_combout\ & (\FSM|WideOr15~0_combout\ & !\FSM|WideOr15~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr16~0_combout\,
	datab => \FSM|ALT_INV_WideOr17~1_combout\,
	datac => \FSM|ALT_INV_WideOr15~0_combout\,
	datad => \FSM|ALT_INV_WideOr15~1_combout\,
	datae => \FSM|ALT_INV_WideOr18~0_combout\,
	dataf => \FSM|ALT_INV_WideOr17~0_combout\,
	combout => \decoder0|Mux1~0_combout\);

-- Location: LABCELL_X83_Y5_N6
\decoder0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux0~0_combout\ = ( !\FSM|WideOr16~combout\ & ( \FSM|WideOr18~1_combout\ & ( !\FSM|WideOr15~combout\ $ (\FSM|WideOr17~combout\) ) ) ) # ( \FSM|WideOr16~combout\ & ( !\FSM|WideOr18~1_combout\ & ( !\FSM|WideOr15~combout\ $ (\FSM|WideOr17~combout\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110011001100110011001100110010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr15~combout\,
	datab => \FSM|ALT_INV_WideOr17~combout\,
	datae => \FSM|ALT_INV_WideOr16~combout\,
	dataf => \FSM|ALT_INV_WideOr18~1_combout\,
	combout => \decoder0|Mux0~0_combout\);

-- Location: LABCELL_X83_Y5_N12
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \FSM|WideOr15~1_combout\ & ( (\FSM|WideOr15~0_combout\ & (((\FSM|WideOr17~1_combout\ & \FSM|WideOr17~0_combout\)) # (\FSM|WideOr16~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000011110000000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr17~1_combout\,
	datab => \FSM|ALT_INV_WideOr17~0_combout\,
	datac => \FSM|ALT_INV_WideOr15~0_combout\,
	datad => \FSM|ALT_INV_WideOr16~0_combout\,
	dataf => \FSM|ALT_INV_WideOr15~1_combout\,
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X28_Y33_N3
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


