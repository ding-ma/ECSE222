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

-- DATE "04/11/2019 11:15:12"

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
-- HEX0[0]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direction	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \direction~input_o\ : std_logic;
SIGNAL \FSM|count_tmp~26_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \enable_clock~combout\ : std_logic;
SIGNAL \clock_divider|elapse[13]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~1_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[0]~0_combout\ : std_logic;
SIGNAL \clock_divider|Add0~2\ : std_logic;
SIGNAL \clock_divider|Add0~5_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[1]~1_combout\ : std_logic;
SIGNAL \clock_divider|Add0~6\ : std_logic;
SIGNAL \clock_divider|Add0~9_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[2]~2_combout\ : std_logic;
SIGNAL \clock_divider|Add0~10\ : std_logic;
SIGNAL \clock_divider|Add0~13_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[3]~3_combout\ : std_logic;
SIGNAL \clock_divider|Add0~14\ : std_logic;
SIGNAL \clock_divider|Add0~17_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[4]~4_combout\ : std_logic;
SIGNAL \clock_divider|Add0~18\ : std_logic;
SIGNAL \clock_divider|Add0~21_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[5]~5_combout\ : std_logic;
SIGNAL \clock_divider|Add0~22\ : std_logic;
SIGNAL \clock_divider|Add0~25_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[6]~6_combout\ : std_logic;
SIGNAL \clock_divider|elapse[6]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~26\ : std_logic;
SIGNAL \clock_divider|Add0~97_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~98\ : std_logic;
SIGNAL \clock_divider|Add0~89_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~90\ : std_logic;
SIGNAL \clock_divider|Add0~85_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~86\ : std_logic;
SIGNAL \clock_divider|Add0~81_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~82\ : std_logic;
SIGNAL \clock_divider|Add0~77_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~78\ : std_logic;
SIGNAL \clock_divider|Add0~29_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[12]~7_combout\ : std_logic;
SIGNAL \clock_divider|elapse[12]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~30\ : std_logic;
SIGNAL \clock_divider|Add0~33_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[13]~8_combout\ : std_logic;
SIGNAL \clock_divider|Add0~34\ : std_logic;
SIGNAL \clock_divider|Add0~37_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[14]~9_combout\ : std_logic;
SIGNAL \clock_divider|elapse[14]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~38\ : std_logic;
SIGNAL \clock_divider|Add0~41_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[15]~10_combout\ : std_logic;
SIGNAL \clock_divider|elapse[17]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~42\ : std_logic;
SIGNAL \clock_divider|Add0~73_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[16]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~74\ : std_logic;
SIGNAL \clock_divider|Add0~45_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[17]~11_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider|Add0~46\ : std_logic;
SIGNAL \clock_divider|Add0~125_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[18]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~126\ : std_logic;
SIGNAL \clock_divider|Add0~49_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[19]~12_combout\ : std_logic;
SIGNAL \clock_divider|elapse[19]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~50\ : std_logic;
SIGNAL \clock_divider|Add0~53_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[20]~13_combout\ : std_logic;
SIGNAL \clock_divider|Add0~54\ : std_logic;
SIGNAL \clock_divider|Add0~57_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[21]~14_combout\ : std_logic;
SIGNAL \clock_divider|Add0~58\ : std_logic;
SIGNAL \clock_divider|Add0~61_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[22]~15_combout\ : std_logic;
SIGNAL \clock_divider|Add0~62\ : std_logic;
SIGNAL \clock_divider|Add0~65_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[23]~16_combout\ : std_logic;
SIGNAL \clock_divider|Add0~66\ : std_logic;
SIGNAL \clock_divider|Add0~117_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~118\ : std_logic;
SIGNAL \clock_divider|Add0~69_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[25]~17_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider|Add0~70\ : std_logic;
SIGNAL \clock_divider|Add0~113_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~114\ : std_logic;
SIGNAL \clock_divider|Add0~121_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~122\ : std_logic;
SIGNAL \clock_divider|Add0~109_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~110\ : std_logic;
SIGNAL \clock_divider|Add0~105_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~106\ : std_logic;
SIGNAL \clock_divider|Add0~101_sumout\ : std_logic;
SIGNAL \clock_divider|elapse[26]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider|elapse[27]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider|Add0~102\ : std_logic;
SIGNAL \clock_divider|Add0~93_sumout\ : std_logic;
SIGNAL \clock_divider|Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider|Equal0~6_combout\ : std_logic;
SIGNAL \FSM|count_tmp.D~q\ : std_logic;
SIGNAL \FSM|count_tmp~22_combout\ : std_logic;
SIGNAL \FSM|count_tmp.C~q\ : std_logic;
SIGNAL \FSM|count_tmp~20_combout\ : std_logic;
SIGNAL \FSM|count_tmp.B~q\ : std_logic;
SIGNAL \FSM|count_tmp~19_combout\ : std_logic;
SIGNAL \FSM|count_tmp.A~q\ : std_logic;
SIGNAL \FSM|count_tmp~29_combout\ : std_logic;
SIGNAL \FSM|count_tmp.O~q\ : std_logic;
SIGNAL \FSM|count_tmp~31_combout\ : std_logic;
SIGNAL \FSM|count_tmp.N~q\ : std_logic;
SIGNAL \FSM|count_tmp~33_combout\ : std_logic;
SIGNAL \FSM|count_tmp.M~q\ : std_logic;
SIGNAL \FSM|count_tmp~32_combout\ : std_logic;
SIGNAL \FSM|count_tmp.L~q\ : std_logic;
SIGNAL \FSM|count_tmp~25_combout\ : std_logic;
SIGNAL \FSM|count_tmp.K~q\ : std_logic;
SIGNAL \FSM|count_tmp~28_combout\ : std_logic;
SIGNAL \FSM|count_tmp.J~q\ : std_logic;
SIGNAL \FSM|count_tmp~24_combout\ : std_logic;
SIGNAL \FSM|count_tmp.I~q\ : std_logic;
SIGNAL \FSM|count_tmp~27_combout\ : std_logic;
SIGNAL \FSM|count_tmp.H~q\ : std_logic;
SIGNAL \FSM|count_tmp~30_combout\ : std_logic;
SIGNAL \FSM|count_tmp.G~q\ : std_logic;
SIGNAL \FSM|count_tmp~23_combout\ : std_logic;
SIGNAL \FSM|count_tmp.F~q\ : std_logic;
SIGNAL \FSM|count_tmp~21_combout\ : std_logic;
SIGNAL \FSM|count_tmp.E~q\ : std_logic;
SIGNAL \FSM|WideOr15~0_combout\ : std_logic;
SIGNAL \FSM|WideOr15~1_combout\ : std_logic;
SIGNAL \FSM|WideOr15~combout\ : std_logic;
SIGNAL \FSM|WideOr16~0_combout\ : std_logic;
SIGNAL \FSM|WideOr16~combout\ : std_logic;
SIGNAL \FSM|WideOr17~0_combout\ : std_logic;
SIGNAL \FSM|WideOr17~1_combout\ : std_logic;
SIGNAL \FSM|WideOr17~combout\ : std_logic;
SIGNAL \FSM|WideOr18~0_combout\ : std_logic;
SIGNAL \FSM|WideOr18~1_combout\ : std_logic;
SIGNAL \decoder0|Mux6~0_combout\ : std_logic;
SIGNAL \decoder0|Mux5~0_combout\ : std_logic;
SIGNAL \decoder0|Mux4~0_combout\ : std_logic;
SIGNAL \decoder0|Mux3~0_combout\ : std_logic;
SIGNAL \decoder0|Mux2~0_combout\ : std_logic;
SIGNAL \decoder0|Mux1~0_combout\ : std_logic;
SIGNAL \decoder0|Mux0~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \clock_divider|elapse\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_elapse[19]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[17]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[14]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[13]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[12]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[6]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[18]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[27]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[26]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse[16]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_stop~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_direction~input_o\ : std_logic;
SIGNAL \ALT_INV_enable_clock~combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \FSM|ALT_INV_count_tmp.M~q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_elapse\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Equal0~0_combout\ : std_logic;
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
SIGNAL \clock_divider|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~1_sumout\ : std_logic;

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
\clock_divider|ALT_INV_elapse[19]~DUPLICATE_q\ <= NOT \clock_divider|elapse[19]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[17]~DUPLICATE_q\ <= NOT \clock_divider|elapse[17]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[14]~DUPLICATE_q\ <= NOT \clock_divider|elapse[14]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[13]~DUPLICATE_q\ <= NOT \clock_divider|elapse[13]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[12]~DUPLICATE_q\ <= NOT \clock_divider|elapse[12]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[6]~DUPLICATE_q\ <= NOT \clock_divider|elapse[6]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[18]~DUPLICATE_q\ <= NOT \clock_divider|elapse[18]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[27]~DUPLICATE_q\ <= NOT \clock_divider|elapse[27]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[26]~DUPLICATE_q\ <= NOT \clock_divider|elapse[26]~DUPLICATE_q\;
\clock_divider|ALT_INV_elapse[16]~DUPLICATE_q\ <= NOT \clock_divider|elapse[16]~DUPLICATE_q\;
\ALT_INV_stop~input_o\ <= NOT \stop~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_direction~input_o\ <= NOT \direction~input_o\;
\ALT_INV_enable_clock~combout\ <= NOT \enable_clock~combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\FSM|ALT_INV_count_tmp.M~q\ <= NOT \FSM|count_tmp.M~q\;
\clock_divider|ALT_INV_Equal0~5_combout\ <= NOT \clock_divider|Equal0~5_combout\;
\clock_divider|ALT_INV_Equal0~4_combout\ <= NOT \clock_divider|Equal0~4_combout\;
\clock_divider|ALT_INV_Equal0~3_combout\ <= NOT \clock_divider|Equal0~3_combout\;
\clock_divider|ALT_INV_Equal0~2_combout\ <= NOT \clock_divider|Equal0~2_combout\;
\clock_divider|ALT_INV_elapse\(25) <= NOT \clock_divider|elapse\(25);
\clock_divider|ALT_INV_elapse\(23) <= NOT \clock_divider|elapse\(23);
\clock_divider|ALT_INV_elapse\(22) <= NOT \clock_divider|elapse\(22);
\clock_divider|ALT_INV_elapse\(21) <= NOT \clock_divider|elapse\(21);
\clock_divider|ALT_INV_elapse\(20) <= NOT \clock_divider|elapse\(20);
\clock_divider|ALT_INV_elapse\(19) <= NOT \clock_divider|elapse\(19);
\clock_divider|ALT_INV_Equal0~1_combout\ <= NOT \clock_divider|Equal0~1_combout\;
\clock_divider|ALT_INV_elapse\(17) <= NOT \clock_divider|elapse\(17);
\clock_divider|ALT_INV_elapse\(15) <= NOT \clock_divider|elapse\(15);
\clock_divider|ALT_INV_elapse\(14) <= NOT \clock_divider|elapse\(14);
\clock_divider|ALT_INV_elapse\(13) <= NOT \clock_divider|elapse\(13);
\clock_divider|ALT_INV_elapse\(12) <= NOT \clock_divider|elapse\(12);
\clock_divider|ALT_INV_elapse\(6) <= NOT \clock_divider|elapse\(6);
\clock_divider|ALT_INV_Equal0~0_combout\ <= NOT \clock_divider|Equal0~0_combout\;
\clock_divider|ALT_INV_elapse\(5) <= NOT \clock_divider|elapse\(5);
\clock_divider|ALT_INV_elapse\(4) <= NOT \clock_divider|elapse\(4);
\clock_divider|ALT_INV_elapse\(3) <= NOT \clock_divider|elapse\(3);
\clock_divider|ALT_INV_elapse\(2) <= NOT \clock_divider|elapse\(2);
\clock_divider|ALT_INV_elapse\(1) <= NOT \clock_divider|elapse\(1);
\clock_divider|ALT_INV_elapse\(0) <= NOT \clock_divider|elapse\(0);
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
\clock_divider|ALT_INV_Add0~29_sumout\ <= NOT \clock_divider|Add0~29_sumout\;
\clock_divider|ALT_INV_Add0~25_sumout\ <= NOT \clock_divider|Add0~25_sumout\;
\clock_divider|ALT_INV_Add0~21_sumout\ <= NOT \clock_divider|Add0~21_sumout\;
\clock_divider|ALT_INV_Add0~17_sumout\ <= NOT \clock_divider|Add0~17_sumout\;
\clock_divider|ALT_INV_Add0~13_sumout\ <= NOT \clock_divider|Add0~13_sumout\;
\clock_divider|ALT_INV_Add0~9_sumout\ <= NOT \clock_divider|Add0~9_sumout\;
\clock_divider|ALT_INV_Add0~5_sumout\ <= NOT \clock_divider|Add0~5_sumout\;
\clock_divider|ALT_INV_Add0~1_sumout\ <= NOT \clock_divider|Add0~1_sumout\;
\clock_divider|ALT_INV_elapse\(18) <= NOT \clock_divider|elapse\(18);
\clock_divider|ALT_INV_elapse\(27) <= NOT \clock_divider|elapse\(27);
\clock_divider|ALT_INV_elapse\(24) <= NOT \clock_divider|elapse\(24);
\clock_divider|ALT_INV_elapse\(26) <= NOT \clock_divider|elapse\(26);
\clock_divider|ALT_INV_elapse\(28) <= NOT \clock_divider|elapse\(28);
\clock_divider|ALT_INV_elapse\(29) <= NOT \clock_divider|elapse\(29);
\clock_divider|ALT_INV_elapse\(30) <= NOT \clock_divider|elapse\(30);
\clock_divider|ALT_INV_elapse\(7) <= NOT \clock_divider|elapse\(7);
\clock_divider|ALT_INV_elapse\(31) <= NOT \clock_divider|elapse\(31);
\clock_divider|ALT_INV_elapse\(8) <= NOT \clock_divider|elapse\(8);
\clock_divider|ALT_INV_elapse\(9) <= NOT \clock_divider|elapse\(9);
\clock_divider|ALT_INV_elapse\(10) <= NOT \clock_divider|elapse\(10);
\clock_divider|ALT_INV_elapse\(11) <= NOT \clock_divider|elapse\(11);
\clock_divider|ALT_INV_elapse\(16) <= NOT \clock_divider|elapse\(16);

-- Location: IOOBUF_X89_Y4_N96
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

-- Location: IOOBUF_X89_Y13_N39
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

-- Location: IOOBUF_X89_Y13_N56
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

-- Location: IOOBUF_X89_Y11_N96
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

-- Location: IOOBUF_X89_Y11_N79
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

-- Location: IOOBUF_X89_Y8_N39
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

-- Location: IOOBUF_X89_Y8_N56
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

-- Location: IOOBUF_X89_Y15_N56
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

-- Location: IOOBUF_X89_Y15_N39
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

-- Location: IOOBUF_X89_Y16_N39
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

-- Location: IOOBUF_X89_Y6_N56
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

-- Location: IOOBUF_X89_Y6_N39
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

-- Location: IOIBUF_X12_Y0_N18
\direction~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction,
	o => \direction~input_o\);

-- Location: LABCELL_X45_Y3_N33
\FSM|count_tmp~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~26_combout\ = ( \FSM|count_tmp.E~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.C~q\) ) ) # ( !\FSM|count_tmp.E~q\ & ( (\direction~input_o\ & \FSM|count_tmp.C~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_direction~input_o\,
	datad => \FSM|ALT_INV_count_tmp.C~q\,
	dataf => \FSM|ALT_INV_count_tmp.E~q\,
	combout => \FSM|count_tmp~26_combout\);

-- Location: IOIBUF_X40_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\stop~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LABCELL_X48_Y3_N39
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \start~input_o\ & ( \reset~input_o\ & ( !\stop~input_o\ ) ) ) # ( \start~input_o\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_stop~input_o\,
	datae => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X48_Y3_N33
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( !\start~input_o\ & ( \stop~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_stop~input_o\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X48_Y3_N24
enable_clock : cyclonev_lcell_comb
-- Equation(s):
-- \enable_clock~combout\ = ( \enable_clock~combout\ & ( !\comb~0_combout\ ) ) # ( !\enable_clock~combout\ & ( (!\comb~0_combout\ & \comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_comb~0_combout\,
	datac => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_enable_clock~combout\,
	combout => \enable_clock~combout\);

-- Location: FF_X46_Y3_N4
\clock_divider|elapse[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[13]~8_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[13]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y3_N0
\clock_divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~1_sumout\ = SUM(( !\clock_divider|elapse\(0) ) + ( VCC ) + ( !VCC ))
-- \clock_divider|Add0~2\ = CARRY(( !\clock_divider|elapse\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(0),
	cin => GND,
	sumout => \clock_divider|Add0~1_sumout\,
	cout => \clock_divider|Add0~2\);

-- Location: LABCELL_X48_Y3_N0
\clock_divider|elapse[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[0]~0_combout\ = ( !\clock_divider|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~1_sumout\,
	combout => \clock_divider|elapse[0]~0_combout\);

-- Location: FF_X47_Y3_N5
\clock_divider|elapse[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|elapse[0]~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(0));

-- Location: MLABCELL_X47_Y3_N3
\clock_divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~5_sumout\ = SUM(( !\clock_divider|elapse\(1) ) + ( VCC ) + ( \clock_divider|Add0~2\ ))
-- \clock_divider|Add0~6\ = CARRY(( !\clock_divider|elapse\(1) ) + ( VCC ) + ( \clock_divider|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(1),
	cin => \clock_divider|Add0~2\,
	sumout => \clock_divider|Add0~5_sumout\,
	cout => \clock_divider|Add0~6\);

-- Location: LABCELL_X46_Y3_N45
\clock_divider|elapse[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[1]~1_combout\ = ( !\clock_divider|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~5_sumout\,
	combout => \clock_divider|elapse[1]~1_combout\);

-- Location: FF_X47_Y3_N14
\clock_divider|elapse[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|elapse[1]~1_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(1));

-- Location: MLABCELL_X47_Y3_N6
\clock_divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~9_sumout\ = SUM(( !\clock_divider|elapse\(2) ) + ( VCC ) + ( \clock_divider|Add0~6\ ))
-- \clock_divider|Add0~10\ = CARRY(( !\clock_divider|elapse\(2) ) + ( VCC ) + ( \clock_divider|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(2),
	cin => \clock_divider|Add0~6\,
	sumout => \clock_divider|Add0~9_sumout\,
	cout => \clock_divider|Add0~10\);

-- Location: LABCELL_X48_Y3_N45
\clock_divider|elapse[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[2]~2_combout\ = ( !\clock_divider|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \clock_divider|ALT_INV_Add0~9_sumout\,
	combout => \clock_divider|elapse[2]~2_combout\);

-- Location: FF_X47_Y3_N2
\clock_divider|elapse[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|elapse[2]~2_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(2));

-- Location: MLABCELL_X47_Y3_N9
\clock_divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~13_sumout\ = SUM(( !\clock_divider|elapse\(3) ) + ( VCC ) + ( \clock_divider|Add0~10\ ))
-- \clock_divider|Add0~14\ = CARRY(( !\clock_divider|elapse\(3) ) + ( VCC ) + ( \clock_divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(3),
	cin => \clock_divider|Add0~10\,
	sumout => \clock_divider|Add0~13_sumout\,
	cout => \clock_divider|Add0~14\);

-- Location: LABCELL_X48_Y3_N51
\clock_divider|elapse[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[3]~3_combout\ = ( !\clock_divider|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~13_sumout\,
	combout => \clock_divider|elapse[3]~3_combout\);

-- Location: FF_X47_Y3_N38
\clock_divider|elapse[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|elapse[3]~3_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(3));

-- Location: MLABCELL_X47_Y3_N12
\clock_divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~17_sumout\ = SUM(( !\clock_divider|elapse\(4) ) + ( VCC ) + ( \clock_divider|Add0~14\ ))
-- \clock_divider|Add0~18\ = CARRY(( !\clock_divider|elapse\(4) ) + ( VCC ) + ( \clock_divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(4),
	cin => \clock_divider|Add0~14\,
	sumout => \clock_divider|Add0~17_sumout\,
	cout => \clock_divider|Add0~18\);

-- Location: LABCELL_X46_Y3_N6
\clock_divider|elapse[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[4]~4_combout\ = ( !\clock_divider|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~17_sumout\,
	combout => \clock_divider|elapse[4]~4_combout\);

-- Location: FF_X47_Y3_N47
\clock_divider|elapse[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|elapse[4]~4_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(4));

-- Location: MLABCELL_X47_Y3_N15
\clock_divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~21_sumout\ = SUM(( !\clock_divider|elapse\(5) ) + ( VCC ) + ( \clock_divider|Add0~18\ ))
-- \clock_divider|Add0~22\ = CARRY(( !\clock_divider|elapse\(5) ) + ( VCC ) + ( \clock_divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(5),
	cin => \clock_divider|Add0~18\,
	sumout => \clock_divider|Add0~21_sumout\,
	cout => \clock_divider|Add0~22\);

-- Location: LABCELL_X48_Y3_N6
\clock_divider|elapse[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[5]~5_combout\ = ( !\clock_divider|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~21_sumout\,
	combout => \clock_divider|elapse[5]~5_combout\);

-- Location: FF_X47_Y3_N17
\clock_divider|elapse[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|elapse[5]~5_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(5));

-- Location: MLABCELL_X47_Y3_N18
\clock_divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~25_sumout\ = SUM(( !\clock_divider|elapse[6]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~22\ ))
-- \clock_divider|Add0~26\ = CARRY(( !\clock_divider|elapse[6]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse[6]~DUPLICATE_q\,
	cin => \clock_divider|Add0~22\,
	sumout => \clock_divider|Add0~25_sumout\,
	cout => \clock_divider|Add0~26\);

-- Location: LABCELL_X46_Y3_N33
\clock_divider|elapse[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[6]~6_combout\ = ( !\clock_divider|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~25_sumout\,
	combout => \clock_divider|elapse[6]~6_combout\);

-- Location: FF_X46_Y3_N34
\clock_divider|elapse[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[6]~6_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[6]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y3_N21
\clock_divider|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~97_sumout\ = SUM(( \clock_divider|elapse\(7) ) + ( VCC ) + ( \clock_divider|Add0~26\ ))
-- \clock_divider|Add0~98\ = CARRY(( \clock_divider|elapse\(7) ) + ( VCC ) + ( \clock_divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(7),
	cin => \clock_divider|Add0~26\,
	sumout => \clock_divider|Add0~97_sumout\,
	cout => \clock_divider|Add0~98\);

-- Location: FF_X47_Y3_N23
\clock_divider|elapse[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~97_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(7));

-- Location: MLABCELL_X47_Y3_N24
\clock_divider|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~89_sumout\ = SUM(( \clock_divider|elapse\(8) ) + ( VCC ) + ( \clock_divider|Add0~98\ ))
-- \clock_divider|Add0~90\ = CARRY(( \clock_divider|elapse\(8) ) + ( VCC ) + ( \clock_divider|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(8),
	cin => \clock_divider|Add0~98\,
	sumout => \clock_divider|Add0~89_sumout\,
	cout => \clock_divider|Add0~90\);

-- Location: FF_X47_Y3_N26
\clock_divider|elapse[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~89_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(8));

-- Location: MLABCELL_X47_Y3_N27
\clock_divider|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~85_sumout\ = SUM(( \clock_divider|elapse\(9) ) + ( VCC ) + ( \clock_divider|Add0~90\ ))
-- \clock_divider|Add0~86\ = CARRY(( \clock_divider|elapse\(9) ) + ( VCC ) + ( \clock_divider|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(9),
	cin => \clock_divider|Add0~90\,
	sumout => \clock_divider|Add0~85_sumout\,
	cout => \clock_divider|Add0~86\);

-- Location: FF_X47_Y3_N29
\clock_divider|elapse[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~85_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(9));

-- Location: MLABCELL_X47_Y3_N30
\clock_divider|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~81_sumout\ = SUM(( \clock_divider|elapse\(10) ) + ( VCC ) + ( \clock_divider|Add0~86\ ))
-- \clock_divider|Add0~82\ = CARRY(( \clock_divider|elapse\(10) ) + ( VCC ) + ( \clock_divider|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(10),
	cin => \clock_divider|Add0~86\,
	sumout => \clock_divider|Add0~81_sumout\,
	cout => \clock_divider|Add0~82\);

-- Location: FF_X47_Y3_N31
\clock_divider|elapse[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~81_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(10));

-- Location: MLABCELL_X47_Y3_N33
\clock_divider|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~77_sumout\ = SUM(( \clock_divider|elapse\(11) ) + ( VCC ) + ( \clock_divider|Add0~82\ ))
-- \clock_divider|Add0~78\ = CARRY(( \clock_divider|elapse\(11) ) + ( VCC ) + ( \clock_divider|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse\(11),
	cin => \clock_divider|Add0~82\,
	sumout => \clock_divider|Add0~77_sumout\,
	cout => \clock_divider|Add0~78\);

-- Location: FF_X47_Y3_N35
\clock_divider|elapse[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~77_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(11));

-- Location: MLABCELL_X47_Y3_N36
\clock_divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~29_sumout\ = SUM(( !\clock_divider|elapse[12]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~78\ ))
-- \clock_divider|Add0~30\ = CARRY(( !\clock_divider|elapse[12]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse[12]~DUPLICATE_q\,
	cin => \clock_divider|Add0~78\,
	sumout => \clock_divider|Add0~29_sumout\,
	cout => \clock_divider|Add0~30\);

-- Location: LABCELL_X46_Y3_N30
\clock_divider|elapse[12]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[12]~7_combout\ = ( !\clock_divider|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~29_sumout\,
	combout => \clock_divider|elapse[12]~7_combout\);

-- Location: FF_X46_Y3_N31
\clock_divider|elapse[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[12]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[12]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y3_N39
\clock_divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~33_sumout\ = SUM(( !\clock_divider|elapse[13]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~30\ ))
-- \clock_divider|Add0~34\ = CARRY(( !\clock_divider|elapse[13]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse[13]~DUPLICATE_q\,
	cin => \clock_divider|Add0~30\,
	sumout => \clock_divider|Add0~33_sumout\,
	cout => \clock_divider|Add0~34\);

-- Location: LABCELL_X46_Y3_N3
\clock_divider|elapse[13]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[13]~8_combout\ = ( !\clock_divider|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~33_sumout\,
	combout => \clock_divider|elapse[13]~8_combout\);

-- Location: FF_X46_Y3_N5
\clock_divider|elapse[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[13]~8_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(13));

-- Location: FF_X46_Y3_N32
\clock_divider|elapse[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[12]~7_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(12));

-- Location: FF_X46_Y3_N35
\clock_divider|elapse[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[6]~6_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(6));

-- Location: MLABCELL_X47_Y3_N42
\clock_divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~37_sumout\ = SUM(( !\clock_divider|elapse[14]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~34\ ))
-- \clock_divider|Add0~38\ = CARRY(( !\clock_divider|elapse[14]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_elapse[14]~DUPLICATE_q\,
	cin => \clock_divider|Add0~34\,
	sumout => \clock_divider|Add0~37_sumout\,
	cout => \clock_divider|Add0~38\);

-- Location: LABCELL_X46_Y3_N15
\clock_divider|elapse[14]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[14]~9_combout\ = ( !\clock_divider|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~37_sumout\,
	combout => \clock_divider|elapse[14]~9_combout\);

-- Location: FF_X46_Y3_N16
\clock_divider|elapse[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[14]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[14]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y3_N45
\clock_divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~41_sumout\ = SUM(( !\clock_divider|elapse\(15) ) + ( VCC ) + ( \clock_divider|Add0~38\ ))
-- \clock_divider|Add0~42\ = CARRY(( !\clock_divider|elapse\(15) ) + ( VCC ) + ( \clock_divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(15),
	cin => \clock_divider|Add0~38\,
	sumout => \clock_divider|Add0~41_sumout\,
	cout => \clock_divider|Add0~42\);

-- Location: LABCELL_X46_Y3_N42
\clock_divider|elapse[15]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[15]~10_combout\ = ( !\clock_divider|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~41_sumout\,
	combout => \clock_divider|elapse[15]~10_combout\);

-- Location: FF_X46_Y3_N43
\clock_divider|elapse[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[15]~10_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(15));

-- Location: FF_X46_Y3_N1
\clock_divider|elapse[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[17]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[17]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y3_N48
\clock_divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~73_sumout\ = SUM(( \clock_divider|elapse[16]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~42\ ))
-- \clock_divider|Add0~74\ = CARRY(( \clock_divider|elapse[16]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse[16]~DUPLICATE_q\,
	cin => \clock_divider|Add0~42\,
	sumout => \clock_divider|Add0~73_sumout\,
	cout => \clock_divider|Add0~74\);

-- Location: FF_X47_Y3_N50
\clock_divider|elapse[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~73_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[16]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y3_N51
\clock_divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~45_sumout\ = SUM(( !\clock_divider|elapse[17]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~74\ ))
-- \clock_divider|Add0~46\ = CARRY(( !\clock_divider|elapse[17]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse[17]~DUPLICATE_q\,
	cin => \clock_divider|Add0~74\,
	sumout => \clock_divider|Add0~45_sumout\,
	cout => \clock_divider|Add0~46\);

-- Location: LABCELL_X46_Y3_N0
\clock_divider|elapse[17]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[17]~11_combout\ = ( !\clock_divider|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~45_sumout\,
	combout => \clock_divider|elapse[17]~11_combout\);

-- Location: FF_X46_Y3_N2
\clock_divider|elapse[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[17]~11_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(17));

-- Location: FF_X46_Y3_N17
\clock_divider|elapse[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[14]~9_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(14));

-- Location: LABCELL_X46_Y3_N24
\clock_divider|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~1_combout\ = ( \clock_divider|elapse\(17) & ( \clock_divider|elapse\(14) & ( (\clock_divider|elapse\(13) & (\clock_divider|elapse\(12) & (\clock_divider|elapse\(6) & \clock_divider|elapse\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse\(13),
	datab => \clock_divider|ALT_INV_elapse\(12),
	datac => \clock_divider|ALT_INV_elapse\(6),
	datad => \clock_divider|ALT_INV_elapse\(15),
	datae => \clock_divider|ALT_INV_elapse\(17),
	dataf => \clock_divider|ALT_INV_elapse\(14),
	combout => \clock_divider|Equal0~1_combout\);

-- Location: MLABCELL_X47_Y3_N54
\clock_divider|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~125_sumout\ = SUM(( \clock_divider|elapse[18]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~46\ ))
-- \clock_divider|Add0~126\ = CARRY(( \clock_divider|elapse[18]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse[18]~DUPLICATE_q\,
	cin => \clock_divider|Add0~46\,
	sumout => \clock_divider|Add0~125_sumout\,
	cout => \clock_divider|Add0~126\);

-- Location: FF_X46_Y3_N13
\clock_divider|elapse[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|Add0~125_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	sload => VCC,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[18]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y3_N57
\clock_divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~49_sumout\ = SUM(( !\clock_divider|elapse[19]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~126\ ))
-- \clock_divider|Add0~50\ = CARRY(( !\clock_divider|elapse[19]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse[19]~DUPLICATE_q\,
	cin => \clock_divider|Add0~126\,
	sumout => \clock_divider|Add0~49_sumout\,
	cout => \clock_divider|Add0~50\);

-- Location: MLABCELL_X47_Y2_N39
\clock_divider|elapse[19]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[19]~12_combout\ = ( !\clock_divider|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~49_sumout\,
	combout => \clock_divider|elapse[19]~12_combout\);

-- Location: FF_X47_Y2_N40
\clock_divider|elapse[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[19]~12_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[19]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y2_N0
\clock_divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~53_sumout\ = SUM(( !\clock_divider|elapse\(20) ) + ( VCC ) + ( \clock_divider|Add0~50\ ))
-- \clock_divider|Add0~54\ = CARRY(( !\clock_divider|elapse\(20) ) + ( VCC ) + ( \clock_divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_elapse\(20),
	cin => \clock_divider|Add0~50\,
	sumout => \clock_divider|Add0~53_sumout\,
	cout => \clock_divider|Add0~54\);

-- Location: MLABCELL_X47_Y2_N42
\clock_divider|elapse[20]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[20]~13_combout\ = ( !\clock_divider|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~53_sumout\,
	combout => \clock_divider|elapse[20]~13_combout\);

-- Location: FF_X47_Y2_N44
\clock_divider|elapse[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[20]~13_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(20));

-- Location: MLABCELL_X47_Y2_N3
\clock_divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~57_sumout\ = SUM(( !\clock_divider|elapse\(21) ) + ( VCC ) + ( \clock_divider|Add0~54\ ))
-- \clock_divider|Add0~58\ = CARRY(( !\clock_divider|elapse\(21) ) + ( VCC ) + ( \clock_divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse\(21),
	cin => \clock_divider|Add0~54\,
	sumout => \clock_divider|Add0~57_sumout\,
	cout => \clock_divider|Add0~58\);

-- Location: MLABCELL_X47_Y2_N51
\clock_divider|elapse[21]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[21]~14_combout\ = !\clock_divider|Add0~57_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_Add0~57_sumout\,
	combout => \clock_divider|elapse[21]~14_combout\);

-- Location: FF_X47_Y2_N53
\clock_divider|elapse[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[21]~14_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(21));

-- Location: MLABCELL_X47_Y2_N6
\clock_divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~61_sumout\ = SUM(( !\clock_divider|elapse\(22) ) + ( VCC ) + ( \clock_divider|Add0~58\ ))
-- \clock_divider|Add0~62\ = CARRY(( !\clock_divider|elapse\(22) ) + ( VCC ) + ( \clock_divider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(22),
	cin => \clock_divider|Add0~58\,
	sumout => \clock_divider|Add0~61_sumout\,
	cout => \clock_divider|Add0~62\);

-- Location: MLABCELL_X47_Y2_N48
\clock_divider|elapse[22]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[22]~15_combout\ = ( !\clock_divider|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~61_sumout\,
	combout => \clock_divider|elapse[22]~15_combout\);

-- Location: FF_X47_Y2_N50
\clock_divider|elapse[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[22]~15_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(22));

-- Location: MLABCELL_X47_Y2_N9
\clock_divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~65_sumout\ = SUM(( !\clock_divider|elapse\(23) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))
-- \clock_divider|Add0~66\ = CARRY(( !\clock_divider|elapse\(23) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(23),
	cin => \clock_divider|Add0~62\,
	sumout => \clock_divider|Add0~65_sumout\,
	cout => \clock_divider|Add0~66\);

-- Location: MLABCELL_X47_Y2_N45
\clock_divider|elapse[23]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[23]~16_combout\ = ( !\clock_divider|Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~65_sumout\,
	combout => \clock_divider|elapse[23]~16_combout\);

-- Location: FF_X47_Y2_N47
\clock_divider|elapse[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[23]~16_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(23));

-- Location: MLABCELL_X47_Y2_N12
\clock_divider|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~117_sumout\ = SUM(( \clock_divider|elapse\(24) ) + ( VCC ) + ( \clock_divider|Add0~66\ ))
-- \clock_divider|Add0~118\ = CARRY(( \clock_divider|elapse\(24) ) + ( VCC ) + ( \clock_divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_elapse\(24),
	cin => \clock_divider|Add0~66\,
	sumout => \clock_divider|Add0~117_sumout\,
	cout => \clock_divider|Add0~118\);

-- Location: FF_X47_Y2_N13
\clock_divider|elapse[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~117_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(24));

-- Location: MLABCELL_X47_Y2_N15
\clock_divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~69_sumout\ = SUM(( !\clock_divider|elapse\(25) ) + ( VCC ) + ( \clock_divider|Add0~118\ ))
-- \clock_divider|Add0~70\ = CARRY(( !\clock_divider|elapse\(25) ) + ( VCC ) + ( \clock_divider|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(25),
	cin => \clock_divider|Add0~118\,
	sumout => \clock_divider|Add0~69_sumout\,
	cout => \clock_divider|Add0~70\);

-- Location: MLABCELL_X47_Y2_N36
\clock_divider|elapse[25]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|elapse[25]~17_combout\ = ( !\clock_divider|Add0~69_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \clock_divider|ALT_INV_Add0~69_sumout\,
	combout => \clock_divider|elapse[25]~17_combout\);

-- Location: FF_X47_Y2_N38
\clock_divider|elapse[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[25]~17_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(25));

-- Location: FF_X47_Y2_N41
\clock_divider|elapse[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|elapse[19]~12_combout\,
	clrn => \reset~input_o\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(19));

-- Location: MLABCELL_X47_Y2_N54
\clock_divider|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~2_combout\ = ( \clock_divider|elapse\(25) & ( \clock_divider|elapse\(19) & ( (\clock_divider|elapse\(22) & (\clock_divider|elapse\(20) & (\clock_divider|elapse\(21) & \clock_divider|elapse\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse\(22),
	datab => \clock_divider|ALT_INV_elapse\(20),
	datac => \clock_divider|ALT_INV_elapse\(21),
	datad => \clock_divider|ALT_INV_elapse\(23),
	datae => \clock_divider|ALT_INV_elapse\(25),
	dataf => \clock_divider|ALT_INV_elapse\(19),
	combout => \clock_divider|Equal0~2_combout\);

-- Location: MLABCELL_X47_Y2_N18
\clock_divider|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~113_sumout\ = SUM(( \clock_divider|elapse\(26) ) + ( VCC ) + ( \clock_divider|Add0~70\ ))
-- \clock_divider|Add0~114\ = CARRY(( \clock_divider|elapse\(26) ) + ( VCC ) + ( \clock_divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(26),
	cin => \clock_divider|Add0~70\,
	sumout => \clock_divider|Add0~113_sumout\,
	cout => \clock_divider|Add0~114\);

-- Location: FF_X47_Y2_N20
\clock_divider|elapse[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~113_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(26));

-- Location: MLABCELL_X47_Y2_N21
\clock_divider|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~121_sumout\ = SUM(( \clock_divider|elapse\(27) ) + ( VCC ) + ( \clock_divider|Add0~114\ ))
-- \clock_divider|Add0~122\ = CARRY(( \clock_divider|elapse\(27) ) + ( VCC ) + ( \clock_divider|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_elapse\(27),
	cin => \clock_divider|Add0~114\,
	sumout => \clock_divider|Add0~121_sumout\,
	cout => \clock_divider|Add0~122\);

-- Location: FF_X47_Y2_N23
\clock_divider|elapse[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~121_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(27));

-- Location: MLABCELL_X47_Y2_N24
\clock_divider|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~109_sumout\ = SUM(( \clock_divider|elapse\(28) ) + ( VCC ) + ( \clock_divider|Add0~122\ ))
-- \clock_divider|Add0~110\ = CARRY(( \clock_divider|elapse\(28) ) + ( VCC ) + ( \clock_divider|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(28),
	cin => \clock_divider|Add0~122\,
	sumout => \clock_divider|Add0~109_sumout\,
	cout => \clock_divider|Add0~110\);

-- Location: FF_X47_Y2_N26
\clock_divider|elapse[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~109_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(28));

-- Location: MLABCELL_X47_Y2_N27
\clock_divider|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~105_sumout\ = SUM(( \clock_divider|elapse\(29) ) + ( VCC ) + ( \clock_divider|Add0~110\ ))
-- \clock_divider|Add0~106\ = CARRY(( \clock_divider|elapse\(29) ) + ( VCC ) + ( \clock_divider|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(29),
	cin => \clock_divider|Add0~110\,
	sumout => \clock_divider|Add0~105_sumout\,
	cout => \clock_divider|Add0~106\);

-- Location: FF_X47_Y2_N28
\clock_divider|elapse[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~105_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(29));

-- Location: MLABCELL_X47_Y2_N30
\clock_divider|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~101_sumout\ = SUM(( \clock_divider|elapse\(30) ) + ( VCC ) + ( \clock_divider|Add0~106\ ))
-- \clock_divider|Add0~102\ = CARRY(( \clock_divider|elapse\(30) ) + ( VCC ) + ( \clock_divider|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(30),
	cin => \clock_divider|Add0~106\,
	sumout => \clock_divider|Add0~101_sumout\,
	cout => \clock_divider|Add0~102\);

-- Location: FF_X47_Y2_N31
\clock_divider|elapse[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~101_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(30));

-- Location: FF_X47_Y2_N19
\clock_divider|elapse[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~113_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[26]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y3_N48
\clock_divider|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~4_combout\ = ( !\clock_divider|elapse\(29) & ( !\clock_divider|elapse\(24) & ( (!\clock_divider|elapse\(7) & (!\clock_divider|elapse\(28) & (!\clock_divider|elapse\(30) & !\clock_divider|elapse[26]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse\(7),
	datab => \clock_divider|ALT_INV_elapse\(28),
	datac => \clock_divider|ALT_INV_elapse\(30),
	datad => \clock_divider|ALT_INV_elapse[26]~DUPLICATE_q\,
	datae => \clock_divider|ALT_INV_elapse\(29),
	dataf => \clock_divider|ALT_INV_elapse\(24),
	combout => \clock_divider|Equal0~4_combout\);

-- Location: FF_X46_Y3_N14
\clock_divider|elapse[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \clock_divider|Add0~125_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	sload => VCC,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(18));

-- Location: FF_X47_Y2_N22
\clock_divider|elapse[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~121_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse[27]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y3_N9
\clock_divider|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~5_combout\ = ( !\clock_divider|elapse[27]~DUPLICATE_q\ & ( !\clock_divider|elapse\(18) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_elapse\(18),
	dataf => \clock_divider|ALT_INV_elapse[27]~DUPLICATE_q\,
	combout => \clock_divider|Equal0~5_combout\);

-- Location: LABCELL_X46_Y3_N36
\clock_divider|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~0_combout\ = ( \clock_divider|elapse\(5) & ( \clock_divider|elapse\(4) & ( (\clock_divider|elapse\(2) & (\clock_divider|elapse\(3) & (\clock_divider|elapse\(0) & \clock_divider|elapse\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse\(2),
	datab => \clock_divider|ALT_INV_elapse\(3),
	datac => \clock_divider|ALT_INV_elapse\(0),
	datad => \clock_divider|ALT_INV_elapse\(1),
	datae => \clock_divider|ALT_INV_elapse\(5),
	dataf => \clock_divider|ALT_INV_elapse\(4),
	combout => \clock_divider|Equal0~0_combout\);

-- Location: MLABCELL_X47_Y2_N33
\clock_divider|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~93_sumout\ = SUM(( \clock_divider|elapse\(31) ) + ( VCC ) + ( \clock_divider|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse\(31),
	cin => \clock_divider|Add0~102\,
	sumout => \clock_divider|Add0~93_sumout\);

-- Location: FF_X47_Y2_N35
\clock_divider|elapse[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~93_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(31));

-- Location: FF_X47_Y3_N49
\clock_divider|elapse[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~73_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|Equal0~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|elapse\(16));

-- Location: LABCELL_X46_Y3_N18
\clock_divider|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~3_combout\ = ( !\clock_divider|elapse\(16) & ( !\clock_divider|elapse\(8) & ( (!\clock_divider|elapse\(9) & (!\clock_divider|elapse\(11) & (!\clock_divider|elapse\(31) & !\clock_divider|elapse\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_elapse\(9),
	datab => \clock_divider|ALT_INV_elapse\(11),
	datac => \clock_divider|ALT_INV_elapse\(31),
	datad => \clock_divider|ALT_INV_elapse\(10),
	datae => \clock_divider|ALT_INV_elapse\(16),
	dataf => \clock_divider|ALT_INV_elapse\(8),
	combout => \clock_divider|Equal0~3_combout\);

-- Location: LABCELL_X46_Y3_N54
\clock_divider|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Equal0~6_combout\ = ( \clock_divider|Equal0~0_combout\ & ( \clock_divider|Equal0~3_combout\ & ( (\clock_divider|Equal0~1_combout\ & (\clock_divider|Equal0~2_combout\ & (\clock_divider|Equal0~4_combout\ & \clock_divider|Equal0~5_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_Equal0~1_combout\,
	datab => \clock_divider|ALT_INV_Equal0~2_combout\,
	datac => \clock_divider|ALT_INV_Equal0~4_combout\,
	datad => \clock_divider|ALT_INV_Equal0~5_combout\,
	datae => \clock_divider|ALT_INV_Equal0~0_combout\,
	dataf => \clock_divider|ALT_INV_Equal0~3_combout\,
	combout => \clock_divider|Equal0~6_combout\);

-- Location: FF_X45_Y3_N35
\FSM|count_tmp.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM|count_tmp~26_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.D~q\);

-- Location: LABCELL_X45_Y3_N45
\FSM|count_tmp~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~22_combout\ = ( \FSM|count_tmp.D~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.B~q\) ) ) # ( !\FSM|count_tmp.D~q\ & ( (\direction~input_o\ & \FSM|count_tmp.B~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_direction~input_o\,
	datad => \FSM|ALT_INV_count_tmp.B~q\,
	dataf => \FSM|ALT_INV_count_tmp.D~q\,
	combout => \FSM|count_tmp~22_combout\);

-- Location: FF_X45_Y3_N47
\FSM|count_tmp.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM|count_tmp~22_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.C~q\);

-- Location: LABCELL_X45_Y3_N27
\FSM|count_tmp~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~20_combout\ = ( \FSM|count_tmp.A~q\ & ( (!\direction~input_o\ & \FSM|count_tmp.C~q\) ) ) # ( !\FSM|count_tmp.A~q\ & ( (\FSM|count_tmp.C~q\) # (\direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~input_o\,
	datac => \FSM|ALT_INV_count_tmp.C~q\,
	dataf => \FSM|ALT_INV_count_tmp.A~q\,
	combout => \FSM|count_tmp~20_combout\);

-- Location: FF_X46_Y3_N29
\FSM|count_tmp.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM|count_tmp~20_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.B~q\);

-- Location: LABCELL_X45_Y3_N57
\FSM|count_tmp~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~19_combout\ = (!\direction~input_o\ & (!\FSM|count_tmp.B~q\)) # (\direction~input_o\ & ((!\FSM|count_tmp.O~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110001000101110111000100010111011100010001011101110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_tmp.B~q\,
	datab => \ALT_INV_direction~input_o\,
	datad => \FSM|ALT_INV_count_tmp.O~q\,
	combout => \FSM|count_tmp~19_combout\);

-- Location: FF_X46_Y3_N20
\FSM|count_tmp.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM|count_tmp~19_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.A~q\);

-- Location: LABCELL_X45_Y3_N21
\FSM|count_tmp~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~29_combout\ = ( \FSM|count_tmp.N~q\ & ( (!\FSM|count_tmp.A~q\) # (\direction~input_o\) ) ) # ( !\FSM|count_tmp.N~q\ & ( (!\direction~input_o\ & !\FSM|count_tmp.A~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~input_o\,
	datad => \FSM|ALT_INV_count_tmp.A~q\,
	dataf => \FSM|ALT_INV_count_tmp.N~q\,
	combout => \FSM|count_tmp~29_combout\);

-- Location: FF_X45_Y3_N23
\FSM|count_tmp.O\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM|count_tmp~29_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.O~q\);

-- Location: LABCELL_X45_Y3_N18
\FSM|count_tmp~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~31_combout\ = (!\direction~input_o\ & (\FSM|count_tmp.O~q\)) # (\direction~input_o\ & ((\FSM|count_tmp.M~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~input_o\,
	datac => \FSM|ALT_INV_count_tmp.O~q\,
	datad => \FSM|ALT_INV_count_tmp.M~q\,
	combout => \FSM|count_tmp~31_combout\);

-- Location: FF_X46_Y3_N23
\FSM|count_tmp.N\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM|count_tmp~31_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.N~q\);

-- Location: LABCELL_X45_Y3_N39
\FSM|count_tmp~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~33_combout\ = ( \FSM|count_tmp.N~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.L~q\) ) ) # ( !\FSM|count_tmp.N~q\ & ( (\FSM|count_tmp.L~q\ & \direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_tmp.L~q\,
	datab => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.N~q\,
	combout => \FSM|count_tmp~33_combout\);

-- Location: FF_X46_Y3_N26
\FSM|count_tmp.M\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM|count_tmp~33_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.M~q\);

-- Location: LABCELL_X45_Y3_N51
\FSM|count_tmp~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~32_combout\ = ( \FSM|count_tmp.K~q\ & ( (\direction~input_o\) # (\FSM|count_tmp.M~q\) ) ) # ( !\FSM|count_tmp.K~q\ & ( (\FSM|count_tmp.M~q\ & !\direction~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_count_tmp.M~q\,
	datad => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.K~q\,
	combout => \FSM|count_tmp~32_combout\);

-- Location: FF_X45_Y3_N53
\FSM|count_tmp.L\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM|count_tmp~32_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.L~q\);

-- Location: LABCELL_X45_Y3_N6
\FSM|count_tmp~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~25_combout\ = ( \direction~input_o\ & ( \FSM|count_tmp.J~q\ ) ) # ( !\direction~input_o\ & ( \FSM|count_tmp.J~q\ & ( \FSM|count_tmp.L~q\ ) ) ) # ( !\direction~input_o\ & ( !\FSM|count_tmp.J~q\ & ( \FSM|count_tmp.L~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_count_tmp.L~q\,
	datae => \ALT_INV_direction~input_o\,
	dataf => \FSM|ALT_INV_count_tmp.J~q\,
	combout => \FSM|count_tmp~25_combout\);

-- Location: FF_X46_Y3_N59
\FSM|count_tmp.K\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM|count_tmp~25_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.K~q\);

-- Location: LABCELL_X45_Y3_N12
\FSM|count_tmp~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~28_combout\ = ( \FSM|count_tmp.K~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.I~q\) ) ) # ( !\FSM|count_tmp.K~q\ & ( (\direction~input_o\ & \FSM|count_tmp.I~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~input_o\,
	datac => \FSM|ALT_INV_count_tmp.I~q\,
	dataf => \FSM|ALT_INV_count_tmp.K~q\,
	combout => \FSM|count_tmp~28_combout\);

-- Location: FF_X45_Y3_N14
\FSM|count_tmp.J\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM|count_tmp~28_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.J~q\);

-- Location: LABCELL_X45_Y3_N48
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

-- Location: FF_X46_Y3_N41
\FSM|count_tmp.I\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM|count_tmp~24_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.I~q\);

-- Location: LABCELL_X45_Y3_N15
\FSM|count_tmp~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~27_combout\ = ( \FSM|count_tmp.I~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.G~q\) ) ) # ( !\FSM|count_tmp.I~q\ & ( (\direction~input_o\ & \FSM|count_tmp.G~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~input_o\,
	datad => \FSM|ALT_INV_count_tmp.G~q\,
	dataf => \FSM|ALT_INV_count_tmp.I~q\,
	combout => \FSM|count_tmp~27_combout\);

-- Location: FF_X45_Y3_N17
\FSM|count_tmp.H\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM|count_tmp~27_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.H~q\);

-- Location: LABCELL_X45_Y3_N54
\FSM|count_tmp~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~30_combout\ = ( \FSM|count_tmp.H~q\ & ( (!\direction~input_o\) # (\FSM|count_tmp.F~q\) ) ) # ( !\FSM|count_tmp.H~q\ & ( (\direction~input_o\ & \FSM|count_tmp.F~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~input_o\,
	datac => \FSM|ALT_INV_count_tmp.F~q\,
	dataf => \FSM|ALT_INV_count_tmp.H~q\,
	combout => \FSM|count_tmp~30_combout\);

-- Location: FF_X46_Y3_N38
\FSM|count_tmp.G\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM|count_tmp~30_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.G~q\);

-- Location: LABCELL_X45_Y3_N36
\FSM|count_tmp~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~23_combout\ = ( \FSM|count_tmp.E~q\ & ( (\FSM|count_tmp.G~q\) # (\direction~input_o\) ) ) # ( !\FSM|count_tmp.E~q\ & ( (!\direction~input_o\ & \FSM|count_tmp.G~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~input_o\,
	datad => \FSM|ALT_INV_count_tmp.G~q\,
	dataf => \FSM|ALT_INV_count_tmp.E~q\,
	combout => \FSM|count_tmp~23_combout\);

-- Location: FF_X45_Y3_N38
\FSM|count_tmp.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \FSM|count_tmp~23_combout\,
	clrn => \reset~input_o\,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.F~q\);

-- Location: LABCELL_X45_Y3_N24
\FSM|count_tmp~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|count_tmp~21_combout\ = ( \FSM|count_tmp.D~q\ & ( (\FSM|count_tmp.F~q\) # (\direction~input_o\) ) ) # ( !\FSM|count_tmp.D~q\ & ( (!\direction~input_o\ & \FSM|count_tmp.F~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_direction~input_o\,
	datac => \FSM|ALT_INV_count_tmp.F~q\,
	dataf => \FSM|ALT_INV_count_tmp.D~q\,
	combout => \FSM|count_tmp~21_combout\);

-- Location: FF_X46_Y3_N56
\FSM|count_tmp.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \FSM|count_tmp~21_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \clock_divider|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM|count_tmp.E~q\);

-- Location: LABCELL_X45_Y3_N0
\FSM|WideOr15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr15~0_combout\ = (!\FSM|count_tmp.E~q\ & (\FSM|count_tmp.A~q\ & !\FSM|count_tmp.B~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.E~q\,
	datac => \FSM|ALT_INV_count_tmp.A~q\,
	datad => \FSM|ALT_INV_count_tmp.B~q\,
	combout => \FSM|WideOr15~0_combout\);

-- Location: LABCELL_X45_Y3_N3
\FSM|WideOr15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr15~1_combout\ = ( !\FSM|count_tmp.K~q\ & ( (!\FSM|count_tmp.I~q\ & (!\FSM|count_tmp.C~q\ & !\FSM|count_tmp.F~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_tmp.I~q\,
	datac => \FSM|ALT_INV_count_tmp.C~q\,
	datad => \FSM|ALT_INV_count_tmp.F~q\,
	dataf => \FSM|ALT_INV_count_tmp.K~q\,
	combout => \FSM|WideOr15~1_combout\);

-- Location: MLABCELL_X47_Y5_N51
\FSM|WideOr15\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr15~combout\ = ( \FSM|WideOr15~1_combout\ & ( \FSM|WideOr15~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr15~0_combout\,
	datae => \FSM|ALT_INV_WideOr15~1_combout\,
	combout => \FSM|WideOr15~combout\);

-- Location: MLABCELL_X47_Y5_N9
\FSM|WideOr16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr16~0_combout\ = ( !\FSM|count_tmp.D~q\ & ( (!\FSM|count_tmp.H~q\ & (!\FSM|count_tmp.O~q\ & !\FSM|count_tmp.J~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_tmp.H~q\,
	datab => \FSM|ALT_INV_count_tmp.O~q\,
	datac => \FSM|ALT_INV_count_tmp.J~q\,
	dataf => \FSM|ALT_INV_count_tmp.D~q\,
	combout => \FSM|WideOr16~0_combout\);

-- Location: MLABCELL_X47_Y5_N6
\FSM|WideOr16\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr16~combout\ = ( \FSM|WideOr16~0_combout\ & ( \FSM|WideOr15~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_WideOr15~0_combout\,
	dataf => \FSM|ALT_INV_WideOr16~0_combout\,
	combout => \FSM|WideOr16~combout\);

-- Location: MLABCELL_X47_Y5_N0
\FSM|WideOr17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr17~0_combout\ = ( !\FSM|count_tmp.C~q\ & ( !\FSM|count_tmp.G~q\ & ( !\FSM|count_tmp.D~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \FSM|ALT_INV_count_tmp.D~q\,
	datae => \FSM|ALT_INV_count_tmp.C~q\,
	dataf => \FSM|ALT_INV_count_tmp.G~q\,
	combout => \FSM|WideOr17~0_combout\);

-- Location: LABCELL_X45_Y3_N30
\FSM|WideOr17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr17~1_combout\ = ( !\FSM|count_tmp.I~q\ & ( (\FSM|count_tmp.A~q\ & (!\FSM|count_tmp.N~q\ & !\FSM|count_tmp.O~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_count_tmp.A~q\,
	datac => \FSM|ALT_INV_count_tmp.N~q\,
	datad => \FSM|ALT_INV_count_tmp.O~q\,
	dataf => \FSM|ALT_INV_count_tmp.I~q\,
	combout => \FSM|WideOr17~1_combout\);

-- Location: MLABCELL_X47_Y5_N57
\FSM|WideOr17\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr17~combout\ = (\FSM|WideOr17~0_combout\ & \FSM|WideOr17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr17~0_combout\,
	datab => \FSM|ALT_INV_WideOr17~1_combout\,
	combout => \FSM|WideOr17~combout\);

-- Location: LABCELL_X45_Y3_N42
\FSM|WideOr18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr18~0_combout\ = ( !\FSM|count_tmp.J~q\ & ( (!\FSM|count_tmp.B~q\ & (!\FSM|count_tmp.L~q\ & !\FSM|count_tmp.F~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_count_tmp.B~q\,
	datac => \FSM|ALT_INV_count_tmp.L~q\,
	datad => \FSM|ALT_INV_count_tmp.F~q\,
	dataf => \FSM|ALT_INV_count_tmp.J~q\,
	combout => \FSM|WideOr18~0_combout\);

-- Location: MLABCELL_X47_Y5_N24
\FSM|WideOr18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FSM|WideOr18~1_combout\ = ( \FSM|WideOr17~0_combout\ & ( \FSM|WideOr18~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \FSM|ALT_INV_WideOr18~0_combout\,
	datae => \FSM|ALT_INV_WideOr17~0_combout\,
	combout => \FSM|WideOr18~1_combout\);

-- Location: MLABCELL_X47_Y5_N21
\decoder0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux6~0_combout\ = ( \FSM|WideOr18~1_combout\ & ( (!\FSM|WideOr15~combout\ & (!\FSM|WideOr16~combout\ $ (\FSM|WideOr17~combout\))) # (\FSM|WideOr15~combout\ & (!\FSM|WideOr16~combout\ & \FSM|WideOr17~combout\)) ) ) # ( !\FSM|WideOr18~1_combout\ & 
-- ( (!\FSM|WideOr16~combout\ & (!\FSM|WideOr15~combout\ $ (\FSM|WideOr17~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010000110100001101000011010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr15~combout\,
	datab => \FSM|ALT_INV_WideOr16~combout\,
	datac => \FSM|ALT_INV_WideOr17~combout\,
	dataf => \FSM|ALT_INV_WideOr18~1_combout\,
	combout => \decoder0|Mux6~0_combout\);

-- Location: MLABCELL_X47_Y5_N39
\decoder0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux5~0_combout\ = ( \FSM|WideOr18~1_combout\ & ( (!\FSM|WideOr15~combout\ & (\FSM|WideOr16~combout\ & !\FSM|WideOr17~combout\)) # (\FSM|WideOr15~combout\ & (!\FSM|WideOr16~combout\ $ (\FSM|WideOr17~combout\))) ) ) # ( !\FSM|WideOr18~1_combout\ & 
-- ( (!\FSM|WideOr15~combout\ & ((!\FSM|WideOr17~combout\) # (\FSM|WideOr16~combout\))) # (\FSM|WideOr15~combout\ & ((!\FSM|WideOr16~combout\) # (\FSM|WideOr17~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110011111100111111001111110011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr15~combout\,
	datab => \FSM|ALT_INV_WideOr16~combout\,
	datac => \FSM|ALT_INV_WideOr17~combout\,
	dataf => \FSM|ALT_INV_WideOr18~1_combout\,
	combout => \decoder0|Mux5~0_combout\);

-- Location: MLABCELL_X47_Y5_N30
\decoder0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux4~0_combout\ = ( \FSM|WideOr17~0_combout\ & ( \FSM|WideOr16~0_combout\ & ( ((\FSM|WideOr15~0_combout\ & (!\FSM|WideOr17~1_combout\ $ (\FSM|WideOr15~1_combout\)))) # (\FSM|WideOr18~0_combout\) ) ) ) # ( !\FSM|WideOr17~0_combout\ & ( 
-- \FSM|WideOr16~0_combout\ & ( (\FSM|WideOr15~0_combout\ & !\FSM|WideOr15~1_combout\) ) ) ) # ( \FSM|WideOr17~0_combout\ & ( !\FSM|WideOr16~0_combout\ & ( \FSM|WideOr18~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000000000011101100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr17~1_combout\,
	datab => \FSM|ALT_INV_WideOr18~0_combout\,
	datac => \FSM|ALT_INV_WideOr15~0_combout\,
	datad => \FSM|ALT_INV_WideOr15~1_combout\,
	datae => \FSM|ALT_INV_WideOr17~0_combout\,
	dataf => \FSM|ALT_INV_WideOr16~0_combout\,
	combout => \decoder0|Mux4~0_combout\);

-- Location: MLABCELL_X47_Y5_N36
\decoder0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux3~0_combout\ = ( \FSM|WideOr18~1_combout\ & ( (!\FSM|WideOr15~combout\ & (!\FSM|WideOr16~combout\ $ (\FSM|WideOr17~combout\))) # (\FSM|WideOr15~combout\ & (!\FSM|WideOr16~combout\ & \FSM|WideOr17~combout\)) ) ) # ( !\FSM|WideOr18~1_combout\ & 
-- ( (\FSM|WideOr16~combout\ & (!\FSM|WideOr15~combout\ $ (\FSM|WideOr17~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000110001000011001101000100001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr15~combout\,
	datab => \FSM|ALT_INV_WideOr16~combout\,
	datad => \FSM|ALT_INV_WideOr17~combout\,
	dataf => \FSM|ALT_INV_WideOr18~1_combout\,
	combout => \decoder0|Mux3~0_combout\);

-- Location: MLABCELL_X47_Y5_N12
\decoder0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux2~0_combout\ = ( \FSM|WideOr17~0_combout\ & ( \FSM|WideOr16~0_combout\ & ( (!\FSM|WideOr18~0_combout\ & ((!\FSM|WideOr17~1_combout\ & (\FSM|WideOr15~0_combout\ & \FSM|WideOr15~1_combout\)) # (\FSM|WideOr17~1_combout\ & 
-- (!\FSM|WideOr15~0_combout\)))) ) ) ) # ( !\FSM|WideOr17~0_combout\ & ( \FSM|WideOr16~0_combout\ & ( (\FSM|WideOr15~0_combout\ & \FSM|WideOr15~1_combout\) ) ) ) # ( \FSM|WideOr17~0_combout\ & ( !\FSM|WideOr16~0_combout\ & ( (\FSM|WideOr17~1_combout\ & 
-- (!\FSM|WideOr18~0_combout\ & ((!\FSM|WideOr15~0_combout\) # (!\FSM|WideOr15~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100000000000000000011110100000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr17~1_combout\,
	datab => \FSM|ALT_INV_WideOr18~0_combout\,
	datac => \FSM|ALT_INV_WideOr15~0_combout\,
	datad => \FSM|ALT_INV_WideOr15~1_combout\,
	datae => \FSM|ALT_INV_WideOr17~0_combout\,
	dataf => \FSM|ALT_INV_WideOr16~0_combout\,
	combout => \decoder0|Mux2~0_combout\);

-- Location: MLABCELL_X47_Y5_N42
\decoder0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux1~0_combout\ = ( \FSM|WideOr17~0_combout\ & ( \FSM|WideOr16~0_combout\ & ( (\FSM|WideOr15~0_combout\ & ((!\FSM|WideOr17~1_combout\ & (\FSM|WideOr18~0_combout\ & !\FSM|WideOr15~1_combout\)) # (\FSM|WideOr17~1_combout\ & 
-- (!\FSM|WideOr18~0_combout\ $ (\FSM|WideOr15~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000011000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr17~1_combout\,
	datab => \FSM|ALT_INV_WideOr18~0_combout\,
	datac => \FSM|ALT_INV_WideOr15~0_combout\,
	datad => \FSM|ALT_INV_WideOr15~1_combout\,
	datae => \FSM|ALT_INV_WideOr17~0_combout\,
	dataf => \FSM|ALT_INV_WideOr16~0_combout\,
	combout => \decoder0|Mux1~0_combout\);

-- Location: MLABCELL_X47_Y5_N18
\decoder0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Mux0~0_combout\ = ( \FSM|WideOr18~1_combout\ & ( (!\FSM|WideOr16~combout\ & (!\FSM|WideOr15~combout\ $ (\FSM|WideOr17~combout\))) ) ) # ( !\FSM|WideOr18~1_combout\ & ( (\FSM|WideOr16~combout\ & (!\FSM|WideOr15~combout\ $ 
-- (\FSM|WideOr17~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000110001000010001001000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr15~combout\,
	datab => \FSM|ALT_INV_WideOr16~combout\,
	datad => \FSM|ALT_INV_WideOr17~combout\,
	dataf => \FSM|ALT_INV_WideOr18~1_combout\,
	combout => \decoder0|Mux0~0_combout\);

-- Location: MLABCELL_X47_Y5_N54
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \FSM|WideOr16~0_combout\ & ( (\FSM|WideOr15~0_combout\ & \FSM|WideOr15~1_combout\) ) ) # ( !\FSM|WideOr16~0_combout\ & ( (\FSM|WideOr17~0_combout\ & (\FSM|WideOr17~1_combout\ & (\FSM|WideOr15~0_combout\ & 
-- \FSM|WideOr15~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FSM|ALT_INV_WideOr17~0_combout\,
	datab => \FSM|ALT_INV_WideOr17~1_combout\,
	datac => \FSM|ALT_INV_WideOr15~0_combout\,
	datad => \FSM|ALT_INV_WideOr15~1_combout\,
	dataf => \FSM|ALT_INV_WideOr16~0_combout\,
	combout => \LessThan0~0_combout\);

-- Location: MLABCELL_X39_Y27_N3
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


