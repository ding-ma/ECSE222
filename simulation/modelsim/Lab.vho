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

-- DATE "04/08/2019 05:50:26"

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

ENTITY 	g56_stopwatch IS
    PORT (
	start : IN std_logic;
	stop : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END g56_stopwatch;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g56_stopwatch IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \enable_stopwatch~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock_divider|T_temp[4]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~125_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[0]~11_combout\ : std_logic;
SIGNAL \clock_divider|T_temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~126\ : std_logic;
SIGNAL \clock_divider|Add0~121_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[1]~10_combout\ : std_logic;
SIGNAL \clock_divider|T_temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~122\ : std_logic;
SIGNAL \clock_divider|Add0~117_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[2]~9_combout\ : std_logic;
SIGNAL \clock_divider|T_temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~118\ : std_logic;
SIGNAL \clock_divider|Add0~113_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[3]~8_combout\ : std_logic;
SIGNAL \clock_divider|T_temp[3]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~114\ : std_logic;
SIGNAL \clock_divider|Add0~110\ : std_logic;
SIGNAL \clock_divider|Add0~21_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[0]~0_combout\ : std_logic;
SIGNAL \clock_divider|T_temp[5]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~22\ : std_logic;
SIGNAL \clock_divider|Add0~25_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[6]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~26\ : std_logic;
SIGNAL \clock_divider|Add0~29_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~30\ : std_logic;
SIGNAL \clock_divider|Add0~105_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[8]~6_combout\ : std_logic;
SIGNAL \clock_divider|T_temp[8]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~106\ : std_logic;
SIGNAL \clock_divider|Add0~1_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~109_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[4]~7_combout\ : std_logic;
SIGNAL \clock_divider|LessThan0~4_combout\ : std_logic;
SIGNAL \clock_divider|LessThan0~2_combout\ : std_logic;
SIGNAL \clock_divider|Add0~2\ : std_logic;
SIGNAL \clock_divider|Add0~45_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~46\ : std_logic;
SIGNAL \clock_divider|Add0~49_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~50\ : std_logic;
SIGNAL \clock_divider|Add0~53_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~54\ : std_logic;
SIGNAL \clock_divider|Add0~101_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[13]~5_combout\ : std_logic;
SIGNAL \clock_divider|T_temp[15]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~102\ : std_logic;
SIGNAL \clock_divider|Add0~9_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~10\ : std_logic;
SIGNAL \clock_divider|Add0~97_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[15]~4_combout\ : std_logic;
SIGNAL \clock_divider|Add0~98\ : std_logic;
SIGNAL \clock_divider|Add0~93_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[16]~3_combout\ : std_logic;
SIGNAL \clock_divider|T_temp[16]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~94\ : std_logic;
SIGNAL \clock_divider|Add0~89_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[17]~2_combout\ : std_logic;
SIGNAL \clock_divider|LessThan0~3_combout\ : std_logic;
SIGNAL \clock_divider|LessThan0~1_combout\ : std_logic;
SIGNAL \clock_divider|LessThan0~0_combout\ : std_logic;
SIGNAL \clock_divider|LessThan0~7_combout\ : std_logic;
SIGNAL \clock_divider|Add0~90\ : std_logic;
SIGNAL \clock_divider|Add0~85_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[18]~1_combout\ : std_logic;
SIGNAL \clock_divider|T_temp[18]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~86\ : std_logic;
SIGNAL \clock_divider|Add0~13_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[19]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~14\ : std_logic;
SIGNAL \clock_divider|Add0~41_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~42\ : std_logic;
SIGNAL \clock_divider|Add0~17_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~18\ : std_logic;
SIGNAL \clock_divider|Add0~57_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[22]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~58\ : std_logic;
SIGNAL \clock_divider|Add0~61_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~62\ : std_logic;
SIGNAL \clock_divider|Add0~65_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~66\ : std_logic;
SIGNAL \clock_divider|Add0~69_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~70\ : std_logic;
SIGNAL \clock_divider|Add0~73_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~74\ : std_logic;
SIGNAL \clock_divider|Add0~77_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~78\ : std_logic;
SIGNAL \clock_divider|Add0~33_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[28]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~34\ : std_logic;
SIGNAL \clock_divider|Add0~37_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[29]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|Add0~38\ : std_logic;
SIGNAL \clock_divider|Add0~81_sumout\ : std_logic;
SIGNAL \clock_divider|Add0~82\ : std_logic;
SIGNAL \clock_divider|Add0~5_sumout\ : std_logic;
SIGNAL \clock_divider|T_temp[31]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|LessThan0~5_combout\ : std_logic;
SIGNAL \clock_divider|LessThan0~6_combout\ : std_logic;
SIGNAL \clock_divider|en_out_temp~q\ : std_logic;
SIGNAL \counter0|count_temp[0]~2_combout\ : std_logic;
SIGNAL \counter0|Add0~0_combout\ : std_logic;
SIGNAL \counter0|count_temp[2]~1_combout\ : std_logic;
SIGNAL \counter0|count_temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \counter0|count_temp[3]~0_combout\ : std_logic;
SIGNAL \reset0~0_combout\ : std_logic;
SIGNAL \decoder0|Equal15~0_combout\ : std_logic;
SIGNAL \reset0~1_combout\ : std_logic;
SIGNAL \reset0~2_combout\ : std_logic;
SIGNAL \reset0~q\ : std_logic;
SIGNAL \counter0|count_temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder0|segments[0]~0_combout\ : std_logic;
SIGNAL \decoder0|segments[1]~1_combout\ : std_logic;
SIGNAL \decoder0|segments[2]~2_combout\ : std_logic;
SIGNAL \decoder0|segments[3]~3_combout\ : std_logic;
SIGNAL \decoder0|segments[4]~4_combout\ : std_logic;
SIGNAL \decoder0|segments[5]~5_combout\ : std_logic;
SIGNAL \decoder0|segments[6]~6_combout\ : std_logic;
SIGNAL \counter1|count_temp[0]~2_combout\ : std_logic;
SIGNAL \counter1|Add0~0_combout\ : std_logic;
SIGNAL \enable1~feeder_combout\ : std_logic;
SIGNAL \enable1~0_combout\ : std_logic;
SIGNAL \enable1~q\ : std_logic;
SIGNAL \reset1~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \reset1~1_combout\ : std_logic;
SIGNAL \reset1~q\ : std_logic;
SIGNAL \counter1|count_temp[2]~1_combout\ : std_logic;
SIGNAL \counter1|count_temp[3]~0_combout\ : std_logic;
SIGNAL \decoder1|segments[0]~0_combout\ : std_logic;
SIGNAL \decoder1|segments[1]~1_combout\ : std_logic;
SIGNAL \decoder1|segments[2]~2_combout\ : std_logic;
SIGNAL \decoder1|segments[3]~3_combout\ : std_logic;
SIGNAL \decoder1|segments[4]~4_combout\ : std_logic;
SIGNAL \decoder1|segments[5]~5_combout\ : std_logic;
SIGNAL \decoder1|segments[6]~6_combout\ : std_logic;
SIGNAL \counter2|count_temp[0]~2_combout\ : std_logic;
SIGNAL \counter2|Add0~0_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \enable2~q\ : std_logic;
SIGNAL \counter2|count_temp[2]~1_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \reset2~0_combout\ : std_logic;
SIGNAL \reset2~1_combout\ : std_logic;
SIGNAL \reset2~q\ : std_logic;
SIGNAL \counter2|count_temp[3]~0_combout\ : std_logic;
SIGNAL \decoder2|segments[0]~0_combout\ : std_logic;
SIGNAL \decoder2|segments[1]~1_combout\ : std_logic;
SIGNAL \decoder2|segments[2]~2_combout\ : std_logic;
SIGNAL \decoder2|segments[3]~3_combout\ : std_logic;
SIGNAL \decoder2|segments[4]~4_combout\ : std_logic;
SIGNAL \decoder2|segments[5]~5_combout\ : std_logic;
SIGNAL \decoder2|segments[6]~6_combout\ : std_logic;
SIGNAL \counter3|count_temp[0]~2_combout\ : std_logic;
SIGNAL \enable3~q\ : std_logic;
SIGNAL \counter3|count_temp[2]~1_combout\ : std_logic;
SIGNAL \counter3|count_temp[3]~0_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \reset3~0_combout\ : std_logic;
SIGNAL \reset3~1_combout\ : std_logic;
SIGNAL \reset3~q\ : std_logic;
SIGNAL \counter3|Add0~0_combout\ : std_logic;
SIGNAL \decoder3|segments[0]~0_combout\ : std_logic;
SIGNAL \decoder3|segments[1]~1_combout\ : std_logic;
SIGNAL \decoder3|segments[2]~2_combout\ : std_logic;
SIGNAL \decoder3|segments[3]~3_combout\ : std_logic;
SIGNAL \decoder3|segments[4]~4_combout\ : std_logic;
SIGNAL \decoder3|segments[5]~5_combout\ : std_logic;
SIGNAL \decoder3|segments[6]~6_combout\ : std_logic;
SIGNAL \counter4|count_temp[0]~2_combout\ : std_logic;
SIGNAL \enable4~q\ : std_logic;
SIGNAL \counter4|count_temp[2]~1_combout\ : std_logic;
SIGNAL \counter4|count_temp[3]~0_combout\ : std_logic;
SIGNAL \reset4~0_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \reset4~1_combout\ : std_logic;
SIGNAL \reset4~q\ : std_logic;
SIGNAL \counter4|Add0~0_combout\ : std_logic;
SIGNAL \decoder4|segments[0]~0_combout\ : std_logic;
SIGNAL \decoder4|segments[1]~1_combout\ : std_logic;
SIGNAL \decoder4|segments[2]~2_combout\ : std_logic;
SIGNAL \decoder4|segments[3]~3_combout\ : std_logic;
SIGNAL \decoder4|segments[4]~4_combout\ : std_logic;
SIGNAL \decoder4|segments[5]~5_combout\ : std_logic;
SIGNAL \decoder4|segments[6]~6_combout\ : std_logic;
SIGNAL \enable5~q\ : std_logic;
SIGNAL \counter5|count_temp[0]~2_combout\ : std_logic;
SIGNAL \counter5|Add0~0_combout\ : std_logic;
SIGNAL \counter5|count_temp[1]~feeder_combout\ : std_logic;
SIGNAL \counter5|count_temp[2]~1_combout\ : std_logic;
SIGNAL \counter5|count_temp[2]~feeder_combout\ : std_logic;
SIGNAL \reset5~0_combout\ : std_logic;
SIGNAL \reset5~1_combout\ : std_logic;
SIGNAL \reset5~q\ : std_logic;
SIGNAL \counter5|count_temp[3]~0_combout\ : std_logic;
SIGNAL \decoder5|segments[0]~0_combout\ : std_logic;
SIGNAL \decoder5|segments[1]~1_combout\ : std_logic;
SIGNAL \decoder5|segments[2]~2_combout\ : std_logic;
SIGNAL \decoder5|segments[3]~3_combout\ : std_logic;
SIGNAL \decoder5|segments[4]~4_combout\ : std_logic;
SIGNAL \decoder5|segments[5]~5_combout\ : std_logic;
SIGNAL \decoder5|segments[6]~6_combout\ : std_logic;
SIGNAL \clock_divider|T_temp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \counter0|count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter5|count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter1|count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter2|count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter3|count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter4|count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_T_temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[1]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[3]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[4]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[8]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[15]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[16]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[18]~DUPLICATE_q\ : std_logic;
SIGNAL \counter0|ALT_INV_count_temp[2]~DUPLICATE_q\ : std_logic;
SIGNAL \counter0|ALT_INV_count_temp[0]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[22]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[29]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[28]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[6]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[5]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[19]~DUPLICATE_q\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_stop~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_enable_stopwatch~combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_reset5~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~7_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \ALT_INV_reset4~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset3~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \ALT_INV_reset2~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset1~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset0~2_combout\ : std_logic;
SIGNAL \ALT_INV_reset0~0_combout\ : std_logic;
SIGNAL \decoder0|ALT_INV_Equal15~0_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_T_temp\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \counter5|ALT_INV_count_temp[2]~1_combout\ : std_logic;
SIGNAL \counter5|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable5~q\ : std_logic;
SIGNAL \ALT_INV_reset5~q\ : std_logic;
SIGNAL \ALT_INV_enable4~q\ : std_logic;
SIGNAL \ALT_INV_reset4~q\ : std_logic;
SIGNAL \ALT_INV_enable3~q\ : std_logic;
SIGNAL \ALT_INV_reset3~q\ : std_logic;
SIGNAL \ALT_INV_enable2~q\ : std_logic;
SIGNAL \ALT_INV_reset2~q\ : std_logic;
SIGNAL \ALT_INV_enable1~q\ : std_logic;
SIGNAL \ALT_INV_reset1~q\ : std_logic;
SIGNAL \ALT_INV_reset0~q\ : std_logic;
SIGNAL \decoder5|ALT_INV_segments[6]~6_combout\ : std_logic;
SIGNAL \decoder5|ALT_INV_segments[2]~2_combout\ : std_logic;
SIGNAL \counter5|ALT_INV_count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder4|ALT_INV_segments[6]~6_combout\ : std_logic;
SIGNAL \decoder4|ALT_INV_segments[2]~2_combout\ : std_logic;
SIGNAL \counter4|ALT_INV_count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder3|ALT_INV_segments[6]~6_combout\ : std_logic;
SIGNAL \decoder3|ALT_INV_segments[2]~2_combout\ : std_logic;
SIGNAL \counter3|ALT_INV_count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder2|ALT_INV_segments[6]~6_combout\ : std_logic;
SIGNAL \decoder2|ALT_INV_segments[2]~2_combout\ : std_logic;
SIGNAL \counter2|ALT_INV_count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder1|ALT_INV_segments[6]~6_combout\ : std_logic;
SIGNAL \decoder1|ALT_INV_segments[2]~2_combout\ : std_logic;
SIGNAL \counter1|ALT_INV_count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder0|ALT_INV_segments[6]~6_combout\ : std_logic;
SIGNAL \decoder0|ALT_INV_segments[2]~2_combout\ : std_logic;
SIGNAL \counter0|ALT_INV_count_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_divider|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \clock_divider|ALT_INV_Add0~85_sumout\ : std_logic;

BEGIN

ww_start <= start;
ww_stop <= stop;
ww_reset <= reset;
ww_clk <= clk;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\clock_divider|ALT_INV_T_temp[0]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[0]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[1]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[1]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[2]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[2]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[3]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[3]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[4]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[4]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[8]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[8]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[15]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[15]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[16]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[16]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[18]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[18]~DUPLICATE_q\;
\counter0|ALT_INV_count_temp[2]~DUPLICATE_q\ <= NOT \counter0|count_temp[2]~DUPLICATE_q\;
\counter0|ALT_INV_count_temp[0]~DUPLICATE_q\ <= NOT \counter0|count_temp[0]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[22]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[22]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[29]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[29]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[28]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[28]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[6]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[6]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[5]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[5]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[19]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[19]~DUPLICATE_q\;
\clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\ <= NOT \clock_divider|T_temp[31]~DUPLICATE_q\;
\ALT_INV_stop~input_o\ <= NOT \stop~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_enable_stopwatch~combout\ <= NOT \enable_stopwatch~combout\;
\clock_divider|ALT_INV_LessThan0~7_combout\ <= NOT \clock_divider|LessThan0~7_combout\;
\ALT_INV_reset5~0_combout\ <= NOT \reset5~0_combout\;
\ALT_INV_process_0~7_combout\ <= NOT \process_0~7_combout\;
\ALT_INV_process_0~6_combout\ <= NOT \process_0~6_combout\;
\ALT_INV_reset4~0_combout\ <= NOT \reset4~0_combout\;
\ALT_INV_reset3~0_combout\ <= NOT \reset3~0_combout\;
\ALT_INV_process_0~5_combout\ <= NOT \process_0~5_combout\;
\ALT_INV_process_0~4_combout\ <= NOT \process_0~4_combout\;
\ALT_INV_process_0~2_combout\ <= NOT \process_0~2_combout\;
\ALT_INV_process_0~1_combout\ <= NOT \process_0~1_combout\;
\ALT_INV_reset2~0_combout\ <= NOT \reset2~0_combout\;
\ALT_INV_process_0~0_combout\ <= NOT \process_0~0_combout\;
\ALT_INV_reset1~0_combout\ <= NOT \reset1~0_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_reset0~2_combout\ <= NOT \reset0~2_combout\;
\ALT_INV_reset0~0_combout\ <= NOT \reset0~0_combout\;
\decoder0|ALT_INV_Equal15~0_combout\ <= NOT \decoder0|Equal15~0_combout\;
\clock_divider|ALT_INV_LessThan0~5_combout\ <= NOT \clock_divider|LessThan0~5_combout\;
\clock_divider|ALT_INV_LessThan0~4_combout\ <= NOT \clock_divider|LessThan0~4_combout\;
\clock_divider|ALT_INV_T_temp\(0) <= NOT \clock_divider|T_temp\(0);
\clock_divider|ALT_INV_T_temp\(1) <= NOT \clock_divider|T_temp\(1);
\clock_divider|ALT_INV_T_temp\(2) <= NOT \clock_divider|T_temp\(2);
\clock_divider|ALT_INV_T_temp\(3) <= NOT \clock_divider|T_temp\(3);
\clock_divider|ALT_INV_T_temp\(4) <= NOT \clock_divider|T_temp\(4);
\clock_divider|ALT_INV_LessThan0~3_combout\ <= NOT \clock_divider|LessThan0~3_combout\;
\clock_divider|ALT_INV_T_temp\(8) <= NOT \clock_divider|T_temp\(8);
\clock_divider|ALT_INV_T_temp\(13) <= NOT \clock_divider|T_temp\(13);
\clock_divider|ALT_INV_T_temp\(15) <= NOT \clock_divider|T_temp\(15);
\clock_divider|ALT_INV_T_temp\(16) <= NOT \clock_divider|T_temp\(16);
\clock_divider|ALT_INV_T_temp\(17) <= NOT \clock_divider|T_temp\(17);
\clock_divider|ALT_INV_T_temp\(18) <= NOT \clock_divider|T_temp\(18);
\clock_divider|ALT_INV_LessThan0~2_combout\ <= NOT \clock_divider|LessThan0~2_combout\;
\clock_divider|ALT_INV_LessThan0~1_combout\ <= NOT \clock_divider|LessThan0~1_combout\;
\clock_divider|ALT_INV_LessThan0~0_combout\ <= NOT \clock_divider|LessThan0~0_combout\;
\counter5|ALT_INV_count_temp[2]~1_combout\ <= NOT \counter5|count_temp[2]~1_combout\;
\counter5|ALT_INV_Add0~0_combout\ <= NOT \counter5|Add0~0_combout\;
\ALT_INV_enable5~q\ <= NOT \enable5~q\;
\ALT_INV_reset5~q\ <= NOT \reset5~q\;
\ALT_INV_enable4~q\ <= NOT \enable4~q\;
\ALT_INV_reset4~q\ <= NOT \reset4~q\;
\ALT_INV_enable3~q\ <= NOT \enable3~q\;
\ALT_INV_reset3~q\ <= NOT \reset3~q\;
\ALT_INV_enable2~q\ <= NOT \enable2~q\;
\ALT_INV_reset2~q\ <= NOT \reset2~q\;
\ALT_INV_enable1~q\ <= NOT \enable1~q\;
\ALT_INV_reset1~q\ <= NOT \reset1~q\;
\ALT_INV_reset0~q\ <= NOT \reset0~q\;
\decoder5|ALT_INV_segments[6]~6_combout\ <= NOT \decoder5|segments[6]~6_combout\;
\decoder5|ALT_INV_segments[2]~2_combout\ <= NOT \decoder5|segments[2]~2_combout\;
\counter5|ALT_INV_count_temp\(2) <= NOT \counter5|count_temp\(2);
\counter5|ALT_INV_count_temp\(3) <= NOT \counter5|count_temp\(3);
\counter5|ALT_INV_count_temp\(1) <= NOT \counter5|count_temp\(1);
\counter5|ALT_INV_count_temp\(0) <= NOT \counter5|count_temp\(0);
\decoder4|ALT_INV_segments[6]~6_combout\ <= NOT \decoder4|segments[6]~6_combout\;
\decoder4|ALT_INV_segments[2]~2_combout\ <= NOT \decoder4|segments[2]~2_combout\;
\counter4|ALT_INV_count_temp\(2) <= NOT \counter4|count_temp\(2);
\counter4|ALT_INV_count_temp\(3) <= NOT \counter4|count_temp\(3);
\counter4|ALT_INV_count_temp\(1) <= NOT \counter4|count_temp\(1);
\counter4|ALT_INV_count_temp\(0) <= NOT \counter4|count_temp\(0);
\decoder3|ALT_INV_segments[6]~6_combout\ <= NOT \decoder3|segments[6]~6_combout\;
\decoder3|ALT_INV_segments[2]~2_combout\ <= NOT \decoder3|segments[2]~2_combout\;
\counter3|ALT_INV_count_temp\(2) <= NOT \counter3|count_temp\(2);
\counter3|ALT_INV_count_temp\(3) <= NOT \counter3|count_temp\(3);
\counter3|ALT_INV_count_temp\(1) <= NOT \counter3|count_temp\(1);
\counter3|ALT_INV_count_temp\(0) <= NOT \counter3|count_temp\(0);
\decoder2|ALT_INV_segments[6]~6_combout\ <= NOT \decoder2|segments[6]~6_combout\;
\decoder2|ALT_INV_segments[2]~2_combout\ <= NOT \decoder2|segments[2]~2_combout\;
\counter2|ALT_INV_count_temp\(2) <= NOT \counter2|count_temp\(2);
\counter2|ALT_INV_count_temp\(3) <= NOT \counter2|count_temp\(3);
\counter2|ALT_INV_count_temp\(1) <= NOT \counter2|count_temp\(1);
\counter2|ALT_INV_count_temp\(0) <= NOT \counter2|count_temp\(0);
\decoder1|ALT_INV_segments[6]~6_combout\ <= NOT \decoder1|segments[6]~6_combout\;
\decoder1|ALT_INV_segments[2]~2_combout\ <= NOT \decoder1|segments[2]~2_combout\;
\counter1|ALT_INV_count_temp\(2) <= NOT \counter1|count_temp\(2);
\counter1|ALT_INV_count_temp\(3) <= NOT \counter1|count_temp\(3);
\counter1|ALT_INV_count_temp\(1) <= NOT \counter1|count_temp\(1);
\counter1|ALT_INV_count_temp\(0) <= NOT \counter1|count_temp\(0);
\decoder0|ALT_INV_segments[6]~6_combout\ <= NOT \decoder0|segments[6]~6_combout\;
\decoder0|ALT_INV_segments[2]~2_combout\ <= NOT \decoder0|segments[2]~2_combout\;
\counter0|ALT_INV_count_temp\(2) <= NOT \counter0|count_temp\(2);
\counter0|ALT_INV_count_temp\(3) <= NOT \counter0|count_temp\(3);
\counter0|ALT_INV_count_temp\(1) <= NOT \counter0|count_temp\(1);
\counter0|ALT_INV_count_temp\(0) <= NOT \counter0|count_temp\(0);
\clock_divider|ALT_INV_Add0~125_sumout\ <= NOT \clock_divider|Add0~125_sumout\;
\clock_divider|ALT_INV_Add0~121_sumout\ <= NOT \clock_divider|Add0~121_sumout\;
\clock_divider|ALT_INV_Add0~117_sumout\ <= NOT \clock_divider|Add0~117_sumout\;
\clock_divider|ALT_INV_Add0~113_sumout\ <= NOT \clock_divider|Add0~113_sumout\;
\clock_divider|ALT_INV_Add0~109_sumout\ <= NOT \clock_divider|Add0~109_sumout\;
\clock_divider|ALT_INV_Add0~105_sumout\ <= NOT \clock_divider|Add0~105_sumout\;
\clock_divider|ALT_INV_Add0~101_sumout\ <= NOT \clock_divider|Add0~101_sumout\;
\clock_divider|ALT_INV_Add0~97_sumout\ <= NOT \clock_divider|Add0~97_sumout\;
\clock_divider|ALT_INV_Add0~93_sumout\ <= NOT \clock_divider|Add0~93_sumout\;
\clock_divider|ALT_INV_Add0~89_sumout\ <= NOT \clock_divider|Add0~89_sumout\;
\clock_divider|ALT_INV_Add0~85_sumout\ <= NOT \clock_divider|Add0~85_sumout\;
\clock_divider|ALT_INV_T_temp\(30) <= NOT \clock_divider|T_temp\(30);
\clock_divider|ALT_INV_T_temp\(27) <= NOT \clock_divider|T_temp\(27);
\clock_divider|ALT_INV_T_temp\(26) <= NOT \clock_divider|T_temp\(26);
\clock_divider|ALT_INV_T_temp\(25) <= NOT \clock_divider|T_temp\(25);
\clock_divider|ALT_INV_T_temp\(24) <= NOT \clock_divider|T_temp\(24);
\clock_divider|ALT_INV_T_temp\(23) <= NOT \clock_divider|T_temp\(23);
\clock_divider|ALT_INV_T_temp\(22) <= NOT \clock_divider|T_temp\(22);
\clock_divider|ALT_INV_T_temp\(12) <= NOT \clock_divider|T_temp\(12);
\clock_divider|ALT_INV_T_temp\(11) <= NOT \clock_divider|T_temp\(11);
\clock_divider|ALT_INV_T_temp\(10) <= NOT \clock_divider|T_temp\(10);
\clock_divider|ALT_INV_T_temp\(20) <= NOT \clock_divider|T_temp\(20);
\clock_divider|ALT_INV_T_temp\(29) <= NOT \clock_divider|T_temp\(29);
\clock_divider|ALT_INV_T_temp\(28) <= NOT \clock_divider|T_temp\(28);
\clock_divider|ALT_INV_T_temp\(7) <= NOT \clock_divider|T_temp\(7);
\clock_divider|ALT_INV_T_temp\(6) <= NOT \clock_divider|T_temp\(6);
\clock_divider|ALT_INV_T_temp\(5) <= NOT \clock_divider|T_temp\(5);
\clock_divider|ALT_INV_T_temp\(21) <= NOT \clock_divider|T_temp\(21);
\clock_divider|ALT_INV_T_temp\(19) <= NOT \clock_divider|T_temp\(19);
\clock_divider|ALT_INV_T_temp\(14) <= NOT \clock_divider|T_temp\(14);
\clock_divider|ALT_INV_T_temp\(31) <= NOT \clock_divider|T_temp\(31);
\clock_divider|ALT_INV_T_temp\(9) <= NOT \clock_divider|T_temp\(9);

-- Location: IOOBUF_X89_Y23_N22
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y15_N39
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y23_N39
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|ALT_INV_segments[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y13_N5
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|segments[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y11_N45
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|segments[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y15_N22
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|segments[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y23_N5
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder0|ALT_INV_segments[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y9_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y21_N5
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y15_N5
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_segments[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y6_N5
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|segments[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y9_N5
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|segments[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y8_N39
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|segments[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y9_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder1|ALT_INV_segments[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y8_N56
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y20_N45
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|ALT_INV_segments[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y16_N39
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|segments[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|segments[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y4_N79
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|segments[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y16_N5
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder2|ALT_INV_segments[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N56
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y6_N22
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|ALT_INV_segments[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|segments[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y6_N56
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|segments[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|segments[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y8_N22
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder3|ALT_INV_segments[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y15_N56
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder4|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y11_N62
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder4|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder4|ALT_INV_segments[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y9_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder4|segments[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y11_N79
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder4|segments[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder4|segments[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y8_N5
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder4|ALT_INV_segments[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y21_N39
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder5|segments[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y25_N5
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder5|segments[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder5|ALT_INV_segments[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y13_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder5|segments[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder5|segments[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X82_Y0_N76
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder5|segments[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y21_N22
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder5|ALT_INV_segments[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
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

-- Location: IOIBUF_X89_Y23_N55
\start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X89_Y25_N38
\stop~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop,
	o => \stop~input_o\);

-- Location: LABCELL_X85_Y29_N51
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\stop~input_o\ & ( \start~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_stop~input_o\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X85_Y29_N18
enable_stopwatch : cyclonev_lcell_comb
-- Equation(s):
-- \enable_stopwatch~combout\ = ( \enable_stopwatch~combout\ & ( !\comb~0_combout\ ) ) # ( !\enable_stopwatch~combout\ & ( (!\start~input_o\ & !\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_enable_stopwatch~combout\,
	combout => \enable_stopwatch~combout\);

-- Location: IOIBUF_X89_Y25_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X87_Y30_N2
\clock_divider|T_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[8]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(8));

-- Location: FF_X87_Y30_N31
\clock_divider|T_temp[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[4]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[4]~DUPLICATE_q\);

-- Location: FF_X87_Y30_N41
\clock_divider|T_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[3]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(3));

-- Location: FF_X87_Y30_N38
\clock_divider|T_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(2));

-- Location: FF_X87_Y30_N53
\clock_divider|T_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[1]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(1));

-- Location: LABCELL_X88_Y31_N0
\clock_divider|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~125_sumout\ = SUM(( !\clock_divider|T_temp[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \clock_divider|Add0~126\ = CARRY(( !\clock_divider|T_temp[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_T_temp[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \clock_divider|Add0~125_sumout\,
	cout => \clock_divider|Add0~126\);

-- Location: FF_X87_Y30_N20
\clock_divider|T_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[0]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(0));

-- Location: MLABCELL_X87_Y30_N18
\clock_divider|T_temp[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[0]~11_combout\ = ( \clock_divider|T_temp\(0) & ( !\clock_divider|T_temp[31]~DUPLICATE_q\ & ( (!\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # ((\clock_divider|T_temp\(9))))) # (\enable_stopwatch~combout\ & 
-- (!\clock_divider|Add0~125_sumout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) ) # ( !\clock_divider|T_temp\(0) & ( !\clock_divider|T_temp[31]~DUPLICATE_q\ & ( (\enable_stopwatch~combout\ & 
-- (!\clock_divider|Add0~125_sumout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000000110011111000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_stopwatch~combout\,
	datab => \clock_divider|ALT_INV_LessThan0~7_combout\,
	datac => \clock_divider|ALT_INV_T_temp\(9),
	datad => \clock_divider|ALT_INV_Add0~125_sumout\,
	datae => \clock_divider|ALT_INV_T_temp\(0),
	dataf => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	combout => \clock_divider|T_temp[0]~11_combout\);

-- Location: FF_X87_Y30_N19
\clock_divider|T_temp[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[0]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y31_N3
\clock_divider|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~121_sumout\ = SUM(( !\clock_divider|T_temp[1]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~126\ ))
-- \clock_divider|Add0~122\ = CARRY(( !\clock_divider|T_temp[1]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_T_temp[1]~DUPLICATE_q\,
	cin => \clock_divider|Add0~126\,
	sumout => \clock_divider|Add0~121_sumout\,
	cout => \clock_divider|Add0~122\);

-- Location: MLABCELL_X87_Y30_N51
\clock_divider|T_temp[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[1]~10_combout\ = ( \clock_divider|T_temp\(1) & ( \clock_divider|Add0~121_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (!\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) 
-- ) ) # ( \clock_divider|T_temp\(1) & ( !\clock_divider|Add0~121_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9)))) ) ) ) # ( !\clock_divider|T_temp\(1) & ( 
-- !\clock_divider|Add0~121_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001010100010101000101000000000000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~7_combout\,
	datac => \clock_divider|ALT_INV_T_temp\(9),
	datad => \ALT_INV_enable_stopwatch~combout\,
	datae => \clock_divider|ALT_INV_T_temp\(1),
	dataf => \clock_divider|ALT_INV_Add0~121_sumout\,
	combout => \clock_divider|T_temp[1]~10_combout\);

-- Location: FF_X87_Y30_N52
\clock_divider|T_temp[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[1]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y31_N6
\clock_divider|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~117_sumout\ = SUM(( !\clock_divider|T_temp[2]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~122\ ))
-- \clock_divider|Add0~118\ = CARRY(( !\clock_divider|T_temp[2]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_T_temp[2]~DUPLICATE_q\,
	cin => \clock_divider|Add0~122\,
	sumout => \clock_divider|Add0~117_sumout\,
	cout => \clock_divider|Add0~118\);

-- Location: MLABCELL_X87_Y30_N36
\clock_divider|T_temp[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[2]~9_combout\ = ( \clock_divider|T_temp\(2) & ( \clock_divider|Add0~117_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (!\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) 
-- ) ) # ( \clock_divider|T_temp\(2) & ( !\clock_divider|Add0~117_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9)))) ) ) ) # ( !\clock_divider|T_temp\(2) & ( 
-- !\clock_divider|Add0~117_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010100010001010101000000000000000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~7_combout\,
	datac => \ALT_INV_enable_stopwatch~combout\,
	datad => \clock_divider|ALT_INV_T_temp\(9),
	datae => \clock_divider|ALT_INV_T_temp\(2),
	dataf => \clock_divider|ALT_INV_Add0~117_sumout\,
	combout => \clock_divider|T_temp[2]~9_combout\);

-- Location: FF_X87_Y30_N37
\clock_divider|T_temp[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[2]~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y31_N9
\clock_divider|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~113_sumout\ = SUM(( !\clock_divider|T_temp[3]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~118\ ))
-- \clock_divider|Add0~114\ = CARRY(( !\clock_divider|T_temp[3]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_T_temp[3]~DUPLICATE_q\,
	cin => \clock_divider|Add0~118\,
	sumout => \clock_divider|Add0~113_sumout\,
	cout => \clock_divider|Add0~114\);

-- Location: MLABCELL_X87_Y30_N39
\clock_divider|T_temp[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[3]~8_combout\ = ( \clock_divider|T_temp\(3) & ( \clock_divider|Add0~113_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (!\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) 
-- ) ) # ( \clock_divider|T_temp\(3) & ( !\clock_divider|Add0~113_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9)))) ) ) ) # ( !\clock_divider|T_temp\(3) & ( 
-- !\clock_divider|Add0~113_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001010100010101000101000000000000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~7_combout\,
	datac => \clock_divider|ALT_INV_T_temp\(9),
	datad => \ALT_INV_enable_stopwatch~combout\,
	datae => \clock_divider|ALT_INV_T_temp\(3),
	dataf => \clock_divider|ALT_INV_Add0~113_sumout\,
	combout => \clock_divider|T_temp[3]~8_combout\);

-- Location: FF_X87_Y30_N40
\clock_divider|T_temp[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[3]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y31_N12
\clock_divider|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~109_sumout\ = SUM(( !\clock_divider|T_temp[4]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~114\ ))
-- \clock_divider|Add0~110\ = CARRY(( !\clock_divider|T_temp[4]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp[4]~DUPLICATE_q\,
	cin => \clock_divider|Add0~114\,
	sumout => \clock_divider|Add0~109_sumout\,
	cout => \clock_divider|Add0~110\);

-- Location: LABCELL_X88_Y31_N15
\clock_divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~21_sumout\ = SUM(( \clock_divider|T_temp[5]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~110\ ))
-- \clock_divider|Add0~22\ = CARRY(( \clock_divider|T_temp[5]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp[5]~DUPLICATE_q\,
	cin => \clock_divider|Add0~110\,
	sumout => \clock_divider|Add0~21_sumout\,
	cout => \clock_divider|Add0~22\);

-- Location: FF_X88_Y30_N34
\clock_divider|T_temp[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(31));

-- Location: MLABCELL_X87_Y30_N42
\clock_divider|T_temp[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[0]~0_combout\ = ( \clock_divider|LessThan0~7_combout\ & ( (!\clock_divider|T_temp\(9)) # ((\clock_divider|T_temp\(31)) # (\enable_stopwatch~combout\)) ) ) # ( !\clock_divider|LessThan0~7_combout\ & ( (\clock_divider|T_temp\(31)) # 
-- (\enable_stopwatch~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_T_temp\(9),
	datac => \ALT_INV_enable_stopwatch~combout\,
	datad => \clock_divider|ALT_INV_T_temp\(31),
	dataf => \clock_divider|ALT_INV_LessThan0~7_combout\,
	combout => \clock_divider|T_temp[0]~0_combout\);

-- Location: FF_X88_Y31_N17
\clock_divider|T_temp[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[5]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y31_N18
\clock_divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~25_sumout\ = SUM(( \clock_divider|T_temp[6]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~22\ ))
-- \clock_divider|Add0~26\ = CARRY(( \clock_divider|T_temp[6]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp[6]~DUPLICATE_q\,
	cin => \clock_divider|Add0~22\,
	sumout => \clock_divider|Add0~25_sumout\,
	cout => \clock_divider|Add0~26\);

-- Location: FF_X88_Y31_N20
\clock_divider|T_temp[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[6]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y31_N21
\clock_divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~29_sumout\ = SUM(( \clock_divider|T_temp\(7) ) + ( VCC ) + ( \clock_divider|Add0~26\ ))
-- \clock_divider|Add0~30\ = CARRY(( \clock_divider|T_temp\(7) ) + ( VCC ) + ( \clock_divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_T_temp\(7),
	cin => \clock_divider|Add0~26\,
	sumout => \clock_divider|Add0~29_sumout\,
	cout => \clock_divider|Add0~30\);

-- Location: FF_X88_Y31_N23
\clock_divider|T_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~29_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(7));

-- Location: LABCELL_X88_Y31_N24
\clock_divider|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~105_sumout\ = SUM(( !\clock_divider|T_temp[8]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~30\ ))
-- \clock_divider|Add0~106\ = CARRY(( !\clock_divider|T_temp[8]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_T_temp[8]~DUPLICATE_q\,
	cin => \clock_divider|Add0~30\,
	sumout => \clock_divider|Add0~105_sumout\,
	cout => \clock_divider|Add0~106\);

-- Location: MLABCELL_X87_Y30_N0
\clock_divider|T_temp[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[8]~6_combout\ = ( \clock_divider|T_temp\(8) & ( \clock_divider|Add0~105_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (!\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) 
-- ) ) # ( \clock_divider|T_temp\(8) & ( !\clock_divider|Add0~105_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9)))) ) ) ) # ( !\clock_divider|T_temp\(8) & ( 
-- !\clock_divider|Add0~105_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010100010001010101000000000000000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~7_combout\,
	datac => \ALT_INV_enable_stopwatch~combout\,
	datad => \clock_divider|ALT_INV_T_temp\(9),
	datae => \clock_divider|ALT_INV_T_temp\(8),
	dataf => \clock_divider|ALT_INV_Add0~105_sumout\,
	combout => \clock_divider|T_temp[8]~6_combout\);

-- Location: FF_X87_Y30_N1
\clock_divider|T_temp[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[8]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[8]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y31_N27
\clock_divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~1_sumout\ = SUM(( \clock_divider|T_temp\(9) ) + ( VCC ) + ( \clock_divider|Add0~106\ ))
-- \clock_divider|Add0~2\ = CARRY(( \clock_divider|T_temp\(9) ) + ( VCC ) + ( \clock_divider|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_T_temp\(9),
	cin => \clock_divider|Add0~106\,
	sumout => \clock_divider|Add0~1_sumout\,
	cout => \clock_divider|Add0~2\);

-- Location: FF_X88_Y31_N29
\clock_divider|T_temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~1_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(9));

-- Location: MLABCELL_X87_Y30_N30
\clock_divider|T_temp[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[4]~7_combout\ = ( \clock_divider|T_temp\(4) & ( \clock_divider|Add0~109_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (!\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) 
-- ) ) # ( \clock_divider|T_temp\(4) & ( !\clock_divider|Add0~109_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9)))) ) ) ) # ( !\clock_divider|T_temp\(4) & ( 
-- !\clock_divider|Add0~109_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010100010001010101000000000000000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~7_combout\,
	datac => \ALT_INV_enable_stopwatch~combout\,
	datad => \clock_divider|ALT_INV_T_temp\(9),
	datae => \clock_divider|ALT_INV_T_temp\(4),
	dataf => \clock_divider|ALT_INV_Add0~109_sumout\,
	combout => \clock_divider|T_temp[4]~7_combout\);

-- Location: FF_X87_Y30_N32
\clock_divider|T_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[4]~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(4));

-- Location: MLABCELL_X87_Y30_N24
\clock_divider|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~4_combout\ = ( \clock_divider|T_temp\(2) & ( \clock_divider|T_temp\(1) & ( (\clock_divider|T_temp\(4) & (\clock_divider|T_temp\(0) & \clock_divider|T_temp\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_T_temp\(4),
	datac => \clock_divider|ALT_INV_T_temp\(0),
	datad => \clock_divider|ALT_INV_T_temp\(3),
	datae => \clock_divider|ALT_INV_T_temp\(2),
	dataf => \clock_divider|ALT_INV_T_temp\(1),
	combout => \clock_divider|LessThan0~4_combout\);

-- Location: FF_X88_Y30_N7
\clock_divider|T_temp[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(22));

-- Location: LABCELL_X88_Y30_N42
\clock_divider|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~2_combout\ = ( !\clock_divider|T_temp\(22) & ( !\clock_divider|T_temp\(24) & ( (!\clock_divider|T_temp\(27) & (!\clock_divider|T_temp\(25) & (!\clock_divider|T_temp\(26) & !\clock_divider|T_temp\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp\(27),
	datab => \clock_divider|ALT_INV_T_temp\(25),
	datac => \clock_divider|ALT_INV_T_temp\(26),
	datad => \clock_divider|ALT_INV_T_temp\(23),
	datae => \clock_divider|ALT_INV_T_temp\(22),
	dataf => \clock_divider|ALT_INV_T_temp\(24),
	combout => \clock_divider|LessThan0~2_combout\);

-- Location: LABCELL_X88_Y31_N30
\clock_divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~45_sumout\ = SUM(( \clock_divider|T_temp\(10) ) + ( VCC ) + ( \clock_divider|Add0~2\ ))
-- \clock_divider|Add0~46\ = CARRY(( \clock_divider|T_temp\(10) ) + ( VCC ) + ( \clock_divider|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp\(10),
	cin => \clock_divider|Add0~2\,
	sumout => \clock_divider|Add0~45_sumout\,
	cout => \clock_divider|Add0~46\);

-- Location: FF_X88_Y31_N31
\clock_divider|T_temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~45_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(10));

-- Location: LABCELL_X88_Y31_N33
\clock_divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~49_sumout\ = SUM(( \clock_divider|T_temp\(11) ) + ( VCC ) + ( \clock_divider|Add0~46\ ))
-- \clock_divider|Add0~50\ = CARRY(( \clock_divider|T_temp\(11) ) + ( VCC ) + ( \clock_divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp\(11),
	cin => \clock_divider|Add0~46\,
	sumout => \clock_divider|Add0~49_sumout\,
	cout => \clock_divider|Add0~50\);

-- Location: FF_X88_Y31_N35
\clock_divider|T_temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~49_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(11));

-- Location: LABCELL_X88_Y31_N36
\clock_divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~53_sumout\ = SUM(( \clock_divider|T_temp\(12) ) + ( VCC ) + ( \clock_divider|Add0~50\ ))
-- \clock_divider|Add0~54\ = CARRY(( \clock_divider|T_temp\(12) ) + ( VCC ) + ( \clock_divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp\(12),
	cin => \clock_divider|Add0~50\,
	sumout => \clock_divider|Add0~53_sumout\,
	cout => \clock_divider|Add0~54\);

-- Location: FF_X88_Y31_N38
\clock_divider|T_temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~53_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(12));

-- Location: LABCELL_X88_Y31_N39
\clock_divider|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~101_sumout\ = SUM(( !\clock_divider|T_temp\(13) ) + ( VCC ) + ( \clock_divider|Add0~54\ ))
-- \clock_divider|Add0~102\ = CARRY(( !\clock_divider|T_temp\(13) ) + ( VCC ) + ( \clock_divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp\(13),
	cin => \clock_divider|Add0~54\,
	sumout => \clock_divider|Add0~101_sumout\,
	cout => \clock_divider|Add0~102\);

-- Location: MLABCELL_X87_Y30_N3
\clock_divider|T_temp[13]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[13]~5_combout\ = ( \clock_divider|T_temp\(13) & ( \clock_divider|Add0~101_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (!\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) 
-- ) ) ) # ( \clock_divider|T_temp\(13) & ( !\clock_divider|Add0~101_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9)))) ) ) ) # ( !\clock_divider|T_temp\(13) & ( 
-- !\clock_divider|Add0~101_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001010100010101000101000000000000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~7_combout\,
	datac => \clock_divider|ALT_INV_T_temp\(9),
	datad => \ALT_INV_enable_stopwatch~combout\,
	datae => \clock_divider|ALT_INV_T_temp\(13),
	dataf => \clock_divider|ALT_INV_Add0~101_sumout\,
	combout => \clock_divider|T_temp[13]~5_combout\);

-- Location: FF_X87_Y30_N5
\clock_divider|T_temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[13]~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(13));

-- Location: FF_X87_Y30_N13
\clock_divider|T_temp[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[15]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[15]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y31_N42
\clock_divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~9_sumout\ = SUM(( \clock_divider|T_temp\(14) ) + ( VCC ) + ( \clock_divider|Add0~102\ ))
-- \clock_divider|Add0~10\ = CARRY(( \clock_divider|T_temp\(14) ) + ( VCC ) + ( \clock_divider|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_T_temp\(14),
	cin => \clock_divider|Add0~102\,
	sumout => \clock_divider|Add0~9_sumout\,
	cout => \clock_divider|Add0~10\);

-- Location: FF_X88_Y31_N44
\clock_divider|T_temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~9_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(14));

-- Location: LABCELL_X88_Y31_N45
\clock_divider|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~97_sumout\ = SUM(( !\clock_divider|T_temp[15]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~10\ ))
-- \clock_divider|Add0~98\ = CARRY(( !\clock_divider|T_temp[15]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp[15]~DUPLICATE_q\,
	cin => \clock_divider|Add0~10\,
	sumout => \clock_divider|Add0~97_sumout\,
	cout => \clock_divider|Add0~98\);

-- Location: MLABCELL_X87_Y30_N12
\clock_divider|T_temp[15]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[15]~4_combout\ = ( \clock_divider|T_temp\(15) & ( \clock_divider|Add0~97_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (!\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) 
-- ) ) # ( \clock_divider|T_temp\(15) & ( !\clock_divider|Add0~97_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9)))) ) ) ) # ( !\clock_divider|T_temp\(15) & ( 
-- !\clock_divider|Add0~97_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010100010001010101000000000000000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~7_combout\,
	datac => \ALT_INV_enable_stopwatch~combout\,
	datad => \clock_divider|ALT_INV_T_temp\(9),
	datae => \clock_divider|ALT_INV_T_temp\(15),
	dataf => \clock_divider|ALT_INV_Add0~97_sumout\,
	combout => \clock_divider|T_temp[15]~4_combout\);

-- Location: FF_X87_Y30_N14
\clock_divider|T_temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[15]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(15));

-- Location: FF_X87_Y30_N17
\clock_divider|T_temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[16]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(16));

-- Location: LABCELL_X88_Y31_N48
\clock_divider|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~93_sumout\ = SUM(( !\clock_divider|T_temp[16]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~98\ ))
-- \clock_divider|Add0~94\ = CARRY(( !\clock_divider|T_temp[16]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_T_temp[16]~DUPLICATE_q\,
	cin => \clock_divider|Add0~98\,
	sumout => \clock_divider|Add0~93_sumout\,
	cout => \clock_divider|Add0~94\);

-- Location: MLABCELL_X87_Y30_N15
\clock_divider|T_temp[16]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[16]~3_combout\ = ( \clock_divider|T_temp\(16) & ( \clock_divider|Add0~93_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (!\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) 
-- ) ) # ( \clock_divider|T_temp\(16) & ( !\clock_divider|Add0~93_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9)))) ) ) ) # ( !\clock_divider|T_temp\(16) & ( 
-- !\clock_divider|Add0~93_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001010100010101000101000000000000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~7_combout\,
	datac => \clock_divider|ALT_INV_T_temp\(9),
	datad => \ALT_INV_enable_stopwatch~combout\,
	datae => \clock_divider|ALT_INV_T_temp\(16),
	dataf => \clock_divider|ALT_INV_Add0~93_sumout\,
	combout => \clock_divider|T_temp[16]~3_combout\);

-- Location: FF_X87_Y30_N16
\clock_divider|T_temp[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[16]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[16]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y31_N51
\clock_divider|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~89_sumout\ = SUM(( !\clock_divider|T_temp\(17) ) + ( VCC ) + ( \clock_divider|Add0~94\ ))
-- \clock_divider|Add0~90\ = CARRY(( !\clock_divider|T_temp\(17) ) + ( VCC ) + ( \clock_divider|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp\(17),
	cin => \clock_divider|Add0~94\,
	sumout => \clock_divider|Add0~89_sumout\,
	cout => \clock_divider|Add0~90\);

-- Location: MLABCELL_X87_Y30_N33
\clock_divider|T_temp[17]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[17]~2_combout\ = ( \clock_divider|T_temp\(17) & ( \clock_divider|Add0~89_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (!\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) 
-- ) ) # ( \clock_divider|T_temp\(17) & ( !\clock_divider|Add0~89_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9)))) ) ) ) # ( !\clock_divider|T_temp\(17) & ( 
-- !\clock_divider|Add0~89_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001010100010101000101000000000000000001000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~7_combout\,
	datac => \clock_divider|ALT_INV_T_temp\(9),
	datad => \ALT_INV_enable_stopwatch~combout\,
	datae => \clock_divider|ALT_INV_T_temp\(17),
	dataf => \clock_divider|ALT_INV_Add0~89_sumout\,
	combout => \clock_divider|T_temp[17]~2_combout\);

-- Location: FF_X87_Y30_N35
\clock_divider|T_temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[17]~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(17));

-- Location: FF_X87_Y30_N50
\clock_divider|T_temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[18]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(18));

-- Location: MLABCELL_X87_Y30_N54
\clock_divider|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~3_combout\ = ( \clock_divider|T_temp\(8) & ( \clock_divider|T_temp\(18) & ( (\clock_divider|T_temp\(13) & (\clock_divider|T_temp\(15) & (\clock_divider|T_temp\(17) & \clock_divider|T_temp\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp\(13),
	datab => \clock_divider|ALT_INV_T_temp\(15),
	datac => \clock_divider|ALT_INV_T_temp\(17),
	datad => \clock_divider|ALT_INV_T_temp\(16),
	datae => \clock_divider|ALT_INV_T_temp\(8),
	dataf => \clock_divider|ALT_INV_T_temp\(18),
	combout => \clock_divider|LessThan0~3_combout\);

-- Location: FF_X88_Y30_N29
\clock_divider|T_temp[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(29));

-- Location: FF_X88_Y30_N25
\clock_divider|T_temp[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(28));

-- Location: LABCELL_X88_Y30_N48
\clock_divider|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~1_combout\ = ( !\clock_divider|T_temp\(11) & ( !\clock_divider|T_temp\(28) & ( (!\clock_divider|T_temp\(20) & (!\clock_divider|T_temp\(10) & (!\clock_divider|T_temp\(29) & !\clock_divider|T_temp\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp\(20),
	datab => \clock_divider|ALT_INV_T_temp\(10),
	datac => \clock_divider|ALT_INV_T_temp\(29),
	datad => \clock_divider|ALT_INV_T_temp\(12),
	datae => \clock_divider|ALT_INV_T_temp\(11),
	dataf => \clock_divider|ALT_INV_T_temp\(28),
	combout => \clock_divider|LessThan0~1_combout\);

-- Location: FF_X88_Y31_N16
\clock_divider|T_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~21_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(5));

-- Location: FF_X88_Y31_N58
\clock_divider|T_temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(19));

-- Location: FF_X88_Y31_N19
\clock_divider|T_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~25_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(6));

-- Location: LABCELL_X88_Y30_N36
\clock_divider|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~0_combout\ = ( !\clock_divider|T_temp\(7) & ( !\clock_divider|T_temp\(6) & ( (!\clock_divider|T_temp\(5) & (!\clock_divider|T_temp\(21) & (!\clock_divider|T_temp\(19) & !\clock_divider|T_temp\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp\(5),
	datab => \clock_divider|ALT_INV_T_temp\(21),
	datac => \clock_divider|ALT_INV_T_temp\(19),
	datad => \clock_divider|ALT_INV_T_temp\(14),
	datae => \clock_divider|ALT_INV_T_temp\(7),
	dataf => \clock_divider|ALT_INV_T_temp\(6),
	combout => \clock_divider|LessThan0~0_combout\);

-- Location: MLABCELL_X87_Y30_N6
\clock_divider|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~7_combout\ = ( \clock_divider|LessThan0~0_combout\ & ( !\clock_divider|T_temp\(30) & ( (\clock_divider|LessThan0~4_combout\ & (\clock_divider|LessThan0~2_combout\ & (\clock_divider|LessThan0~3_combout\ & 
-- \clock_divider|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_LessThan0~4_combout\,
	datab => \clock_divider|ALT_INV_LessThan0~2_combout\,
	datac => \clock_divider|ALT_INV_LessThan0~3_combout\,
	datad => \clock_divider|ALT_INV_LessThan0~1_combout\,
	datae => \clock_divider|ALT_INV_LessThan0~0_combout\,
	dataf => \clock_divider|ALT_INV_T_temp\(30),
	combout => \clock_divider|LessThan0~7_combout\);

-- Location: LABCELL_X88_Y31_N54
\clock_divider|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~85_sumout\ = SUM(( !\clock_divider|T_temp[18]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~90\ ))
-- \clock_divider|Add0~86\ = CARRY(( !\clock_divider|T_temp[18]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp[18]~DUPLICATE_q\,
	cin => \clock_divider|Add0~90\,
	sumout => \clock_divider|Add0~85_sumout\,
	cout => \clock_divider|Add0~86\);

-- Location: MLABCELL_X87_Y30_N48
\clock_divider|T_temp[18]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|T_temp[18]~1_combout\ = ( \clock_divider|T_temp\(18) & ( \clock_divider|Add0~85_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (!\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) 
-- ) ) # ( \clock_divider|T_temp\(18) & ( !\clock_divider|Add0~85_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9)))) ) ) ) # ( !\clock_divider|T_temp\(18) & ( 
-- !\clock_divider|Add0~85_sumout\ & ( (!\clock_divider|T_temp[31]~DUPLICATE_q\ & (\enable_stopwatch~combout\ & ((!\clock_divider|LessThan0~7_combout\) # (\clock_divider|T_temp\(9))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001010100010001010101000000000000000001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~7_combout\,
	datac => \ALT_INV_enable_stopwatch~combout\,
	datad => \clock_divider|ALT_INV_T_temp\(9),
	datae => \clock_divider|ALT_INV_T_temp\(18),
	dataf => \clock_divider|ALT_INV_Add0~85_sumout\,
	combout => \clock_divider|T_temp[18]~1_combout\);

-- Location: FF_X87_Y30_N49
\clock_divider|T_temp[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|T_temp[18]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[18]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y31_N57
\clock_divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~13_sumout\ = SUM(( \clock_divider|T_temp[19]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~86\ ))
-- \clock_divider|Add0~14\ = CARRY(( \clock_divider|T_temp[19]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp[19]~DUPLICATE_q\,
	cin => \clock_divider|Add0~86\,
	sumout => \clock_divider|Add0~13_sumout\,
	cout => \clock_divider|Add0~14\);

-- Location: FF_X88_Y31_N59
\clock_divider|T_temp[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~13_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[19]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y30_N0
\clock_divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~41_sumout\ = SUM(( \clock_divider|T_temp\(20) ) + ( VCC ) + ( \clock_divider|Add0~14\ ))
-- \clock_divider|Add0~42\ = CARRY(( \clock_divider|T_temp\(20) ) + ( VCC ) + ( \clock_divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp\(20),
	cin => \clock_divider|Add0~14\,
	sumout => \clock_divider|Add0~41_sumout\,
	cout => \clock_divider|Add0~42\);

-- Location: FF_X88_Y30_N2
\clock_divider|T_temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~41_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(20));

-- Location: LABCELL_X88_Y30_N3
\clock_divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~17_sumout\ = SUM(( \clock_divider|T_temp\(21) ) + ( VCC ) + ( \clock_divider|Add0~42\ ))
-- \clock_divider|Add0~18\ = CARRY(( \clock_divider|T_temp\(21) ) + ( VCC ) + ( \clock_divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp\(21),
	cin => \clock_divider|Add0~42\,
	sumout => \clock_divider|Add0~17_sumout\,
	cout => \clock_divider|Add0~18\);

-- Location: FF_X88_Y30_N4
\clock_divider|T_temp[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~17_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(21));

-- Location: LABCELL_X88_Y30_N6
\clock_divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~57_sumout\ = SUM(( \clock_divider|T_temp[22]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~18\ ))
-- \clock_divider|Add0~58\ = CARRY(( \clock_divider|T_temp[22]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_T_temp[22]~DUPLICATE_q\,
	cin => \clock_divider|Add0~18\,
	sumout => \clock_divider|Add0~57_sumout\,
	cout => \clock_divider|Add0~58\);

-- Location: FF_X88_Y30_N8
\clock_divider|T_temp[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~57_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[22]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y30_N9
\clock_divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~61_sumout\ = SUM(( \clock_divider|T_temp\(23) ) + ( VCC ) + ( \clock_divider|Add0~58\ ))
-- \clock_divider|Add0~62\ = CARRY(( \clock_divider|T_temp\(23) ) + ( VCC ) + ( \clock_divider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp\(23),
	cin => \clock_divider|Add0~58\,
	sumout => \clock_divider|Add0~61_sumout\,
	cout => \clock_divider|Add0~62\);

-- Location: FF_X88_Y30_N11
\clock_divider|T_temp[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~61_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(23));

-- Location: LABCELL_X88_Y30_N12
\clock_divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~65_sumout\ = SUM(( \clock_divider|T_temp\(24) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))
-- \clock_divider|Add0~66\ = CARRY(( \clock_divider|T_temp\(24) ) + ( VCC ) + ( \clock_divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_T_temp\(24),
	cin => \clock_divider|Add0~62\,
	sumout => \clock_divider|Add0~65_sumout\,
	cout => \clock_divider|Add0~66\);

-- Location: FF_X88_Y30_N14
\clock_divider|T_temp[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~65_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(24));

-- Location: LABCELL_X88_Y30_N15
\clock_divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~69_sumout\ = SUM(( \clock_divider|T_temp\(25) ) + ( VCC ) + ( \clock_divider|Add0~66\ ))
-- \clock_divider|Add0~70\ = CARRY(( \clock_divider|T_temp\(25) ) + ( VCC ) + ( \clock_divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp\(25),
	cin => \clock_divider|Add0~66\,
	sumout => \clock_divider|Add0~69_sumout\,
	cout => \clock_divider|Add0~70\);

-- Location: FF_X88_Y30_N17
\clock_divider|T_temp[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~69_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(25));

-- Location: LABCELL_X88_Y30_N18
\clock_divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~73_sumout\ = SUM(( \clock_divider|T_temp\(26) ) + ( VCC ) + ( \clock_divider|Add0~70\ ))
-- \clock_divider|Add0~74\ = CARRY(( \clock_divider|T_temp\(26) ) + ( VCC ) + ( \clock_divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp\(26),
	cin => \clock_divider|Add0~70\,
	sumout => \clock_divider|Add0~73_sumout\,
	cout => \clock_divider|Add0~74\);

-- Location: FF_X88_Y30_N20
\clock_divider|T_temp[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~73_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(26));

-- Location: LABCELL_X88_Y30_N21
\clock_divider|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~77_sumout\ = SUM(( \clock_divider|T_temp\(27) ) + ( VCC ) + ( \clock_divider|Add0~74\ ))
-- \clock_divider|Add0~78\ = CARRY(( \clock_divider|T_temp\(27) ) + ( VCC ) + ( \clock_divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider|ALT_INV_T_temp\(27),
	cin => \clock_divider|Add0~74\,
	sumout => \clock_divider|Add0~77_sumout\,
	cout => \clock_divider|Add0~78\);

-- Location: FF_X88_Y30_N23
\clock_divider|T_temp[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~77_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(27));

-- Location: LABCELL_X88_Y30_N24
\clock_divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~33_sumout\ = SUM(( \clock_divider|T_temp[28]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~78\ ))
-- \clock_divider|Add0~34\ = CARRY(( \clock_divider|T_temp[28]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp[28]~DUPLICATE_q\,
	cin => \clock_divider|Add0~78\,
	sumout => \clock_divider|Add0~33_sumout\,
	cout => \clock_divider|Add0~34\);

-- Location: FF_X88_Y30_N26
\clock_divider|T_temp[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~33_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[28]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y30_N27
\clock_divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~37_sumout\ = SUM(( \clock_divider|T_temp[29]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~34\ ))
-- \clock_divider|Add0~38\ = CARRY(( \clock_divider|T_temp[29]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider|ALT_INV_T_temp[29]~DUPLICATE_q\,
	cin => \clock_divider|Add0~34\,
	sumout => \clock_divider|Add0~37_sumout\,
	cout => \clock_divider|Add0~38\);

-- Location: FF_X88_Y30_N28
\clock_divider|T_temp[29]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~37_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[29]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y30_N30
\clock_divider|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~81_sumout\ = SUM(( \clock_divider|T_temp\(30) ) + ( VCC ) + ( \clock_divider|Add0~38\ ))
-- \clock_divider|Add0~82\ = CARRY(( \clock_divider|T_temp\(30) ) + ( VCC ) + ( \clock_divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider|ALT_INV_T_temp\(30),
	cin => \clock_divider|Add0~38\,
	sumout => \clock_divider|Add0~81_sumout\,
	cout => \clock_divider|Add0~82\);

-- Location: FF_X88_Y30_N32
\clock_divider|T_temp[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~81_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp\(30));

-- Location: LABCELL_X88_Y30_N33
\clock_divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|Add0~5_sumout\ = SUM(( \clock_divider|T_temp[31]~DUPLICATE_q\ ) + ( VCC ) + ( \clock_divider|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	cin => \clock_divider|Add0~82\,
	sumout => \clock_divider|Add0~5_sumout\);

-- Location: FF_X88_Y30_N35
\clock_divider|T_temp[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \clock_divider|Add0~5_sumout\,
	clrn => \reset~input_o\,
	sclr => \clock_divider|LessThan0~6_combout\,
	ena => \clock_divider|T_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|T_temp[31]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y30_N45
\clock_divider|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~5_combout\ = ( \clock_divider|LessThan0~4_combout\ & ( (!\clock_divider|T_temp\(30) & \clock_divider|LessThan0~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp\(30),
	datad => \clock_divider|ALT_INV_LessThan0~3_combout\,
	dataf => \clock_divider|ALT_INV_LessThan0~4_combout\,
	combout => \clock_divider|LessThan0~5_combout\);

-- Location: LABCELL_X88_Y30_N54
\clock_divider|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \clock_divider|LessThan0~6_combout\ = ( \clock_divider|LessThan0~1_combout\ & ( \clock_divider|LessThan0~5_combout\ & ( ((\clock_divider|LessThan0~2_combout\ & (\clock_divider|LessThan0~0_combout\ & !\clock_divider|T_temp\(9)))) # 
-- (\clock_divider|T_temp[31]~DUPLICATE_q\) ) ) ) # ( !\clock_divider|LessThan0~1_combout\ & ( \clock_divider|LessThan0~5_combout\ & ( \clock_divider|T_temp[31]~DUPLICATE_q\ ) ) ) # ( \clock_divider|LessThan0~1_combout\ & ( 
-- !\clock_divider|LessThan0~5_combout\ & ( \clock_divider|T_temp[31]~DUPLICATE_q\ ) ) ) # ( !\clock_divider|LessThan0~1_combout\ & ( !\clock_divider|LessThan0~5_combout\ & ( \clock_divider|T_temp[31]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider|ALT_INV_T_temp[31]~DUPLICATE_q\,
	datab => \clock_divider|ALT_INV_LessThan0~2_combout\,
	datac => \clock_divider|ALT_INV_LessThan0~0_combout\,
	datad => \clock_divider|ALT_INV_T_temp\(9),
	datae => \clock_divider|ALT_INV_LessThan0~1_combout\,
	dataf => \clock_divider|ALT_INV_LessThan0~5_combout\,
	combout => \clock_divider|LessThan0~6_combout\);

-- Location: FF_X88_Y30_N53
\clock_divider|en_out_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \clock_divider|LessThan0~6_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider|en_out_temp~q\);

-- Location: MLABCELL_X87_Y27_N57
\counter0|count_temp[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter0|count_temp[0]~2_combout\ = ( !\counter0|count_temp[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \counter0|ALT_INV_count_temp[0]~DUPLICATE_q\,
	combout => \counter0|count_temp[0]~2_combout\);

-- Location: FF_X87_Y27_N31
\counter0|count_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter0|count_temp[0]~2_combout\,
	clrn => \reset0~q\,
	sload => VCC,
	ena => \enable_stopwatch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|count_temp\(0));

-- Location: MLABCELL_X87_Y27_N15
\counter0|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter0|Add0~0_combout\ = ( !\counter0|count_temp\(1) & ( \counter0|count_temp\(0) ) ) # ( \counter0|count_temp\(1) & ( !\counter0|count_temp\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \counter0|ALT_INV_count_temp\(1),
	dataf => \counter0|ALT_INV_count_temp\(0),
	combout => \counter0|Add0~0_combout\);

-- Location: FF_X87_Y27_N23
\counter0|count_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter0|Add0~0_combout\,
	clrn => \reset0~q\,
	sload => VCC,
	ena => \enable_stopwatch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|count_temp\(1));

-- Location: MLABCELL_X87_Y27_N36
\counter0|count_temp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter0|count_temp[2]~1_combout\ = ( \counter0|count_temp\(0) & ( !\counter0|count_temp[2]~DUPLICATE_q\ $ (((!\counter0|count_temp\(1)) # (!\enable_stopwatch~combout\))) ) ) # ( !\counter0|count_temp\(0) & ( \counter0|count_temp[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010110100101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|ALT_INV_count_temp[2]~DUPLICATE_q\,
	datac => \counter0|ALT_INV_count_temp\(1),
	datad => \ALT_INV_enable_stopwatch~combout\,
	dataf => \counter0|ALT_INV_count_temp\(0),
	combout => \counter0|count_temp[2]~1_combout\);

-- Location: FF_X87_Y27_N53
\counter0|count_temp[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter0|count_temp[2]~1_combout\,
	clrn => \reset0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|count_temp[2]~DUPLICATE_q\);

-- Location: FF_X87_Y27_N52
\counter0|count_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter0|count_temp[2]~1_combout\,
	clrn => \reset0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|count_temp\(2));

-- Location: MLABCELL_X87_Y27_N27
\counter0|count_temp[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter0|count_temp[3]~0_combout\ = ( \counter0|count_temp\(2) & ( \counter0|count_temp\(0) & ( !\counter0|count_temp\(3) $ (((!\enable_stopwatch~combout\) # (!\counter0|count_temp\(1)))) ) ) ) # ( !\counter0|count_temp\(2) & ( \counter0|count_temp\(0) & 
-- ( \counter0|count_temp\(3) ) ) ) # ( \counter0|count_temp\(2) & ( !\counter0|count_temp\(0) & ( \counter0|count_temp\(3) ) ) ) # ( !\counter0|count_temp\(2) & ( !\counter0|count_temp\(0) & ( \counter0|count_temp\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|ALT_INV_count_temp\(3),
	datac => \ALT_INV_enable_stopwatch~combout\,
	datad => \counter0|ALT_INV_count_temp\(1),
	datae => \counter0|ALT_INV_count_temp\(2),
	dataf => \counter0|ALT_INV_count_temp\(0),
	combout => \counter0|count_temp[3]~0_combout\);

-- Location: FF_X87_Y27_N5
\counter0|count_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter0|count_temp[3]~0_combout\,
	clrn => \reset0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|count_temp\(3));

-- Location: MLABCELL_X87_Y27_N6
\reset0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset0~0_combout\ = ( \counter0|count_temp\(1) & ( (!\counter0|count_temp[2]~DUPLICATE_q\ & (!\counter0|count_temp\(0) & \counter0|count_temp\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|ALT_INV_count_temp[2]~DUPLICATE_q\,
	datab => \counter0|ALT_INV_count_temp\(0),
	datac => \counter0|ALT_INV_count_temp\(3),
	dataf => \counter0|ALT_INV_count_temp\(1),
	combout => \reset0~0_combout\);

-- Location: MLABCELL_X87_Y27_N9
\decoder0|Equal15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|Equal15~0_combout\ = ( !\counter0|count_temp\(1) & ( (!\counter0|count_temp[2]~DUPLICATE_q\ & (\counter0|count_temp\(0) & \counter0|count_temp\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|ALT_INV_count_temp[2]~DUPLICATE_q\,
	datab => \counter0|ALT_INV_count_temp\(0),
	datac => \counter0|ALT_INV_count_temp\(3),
	dataf => \counter0|ALT_INV_count_temp\(1),
	combout => \decoder0|Equal15~0_combout\);

-- Location: LABCELL_X88_Y27_N9
\reset0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset0~1_combout\ = ( \decoder0|Equal15~0_combout\ & ( \reset0~q\ ) ) # ( !\decoder0|Equal15~0_combout\ & ( (!\start~input_o\ & (((\reset0~q\)))) # (\start~input_o\ & ((!\stop~input_o\ & ((\reset0~q\))) # (\stop~input_o\ & (!\reset0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111110000001001111111000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datab => \ALT_INV_reset0~0_combout\,
	datac => \ALT_INV_stop~input_o\,
	datad => \ALT_INV_reset0~q\,
	dataf => \decoder0|ALT_INV_Equal15~0_combout\,
	combout => \reset0~1_combout\);

-- Location: LABCELL_X88_Y28_N27
\reset0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset0~2_combout\ = ( \start~input_o\ & ( !\reset~input_o\ & ( \stop~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stop~input_o\,
	datae => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \reset0~2_combout\);

-- Location: FF_X88_Y27_N59
reset0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reset0~1_combout\,
	clrn => \ALT_INV_reset0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset0~q\);

-- Location: FF_X87_Y27_N32
\counter0|count_temp[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter0|count_temp[0]~2_combout\,
	clrn => \reset0~q\,
	sload => VCC,
	ena => \enable_stopwatch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter0|count_temp[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y27_N42
\decoder0|segments[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|segments[0]~0_combout\ = ( \counter0|count_temp\(3) & ( \counter0|count_temp\(1) & ( (\counter0|count_temp[0]~DUPLICATE_q\ & !\counter0|count_temp[2]~DUPLICATE_q\) ) ) ) # ( \counter0|count_temp\(3) & ( !\counter0|count_temp\(1) & ( 
-- (\counter0|count_temp[0]~DUPLICATE_q\ & \counter0|count_temp[2]~DUPLICATE_q\) ) ) ) # ( !\counter0|count_temp\(3) & ( !\counter0|count_temp\(1) & ( !\counter0|count_temp[0]~DUPLICATE_q\ $ (!\counter0|count_temp[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001100000000000000000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter0|ALT_INV_count_temp[0]~DUPLICATE_q\,
	datac => \counter0|ALT_INV_count_temp[2]~DUPLICATE_q\,
	datae => \counter0|ALT_INV_count_temp\(3),
	dataf => \counter0|ALT_INV_count_temp\(1),
	combout => \decoder0|segments[0]~0_combout\);

-- Location: MLABCELL_X87_Y27_N33
\decoder0|segments[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|segments[1]~1_combout\ = ( \counter0|count_temp\(3) & ( \counter0|count_temp[2]~DUPLICATE_q\ & ( (!\counter0|count_temp[0]~DUPLICATE_q\) # (\counter0|count_temp\(1)) ) ) ) # ( !\counter0|count_temp\(3) & ( \counter0|count_temp[2]~DUPLICATE_q\ & 
-- ( !\counter0|count_temp\(1) $ (!\counter0|count_temp[0]~DUPLICATE_q\) ) ) ) # ( \counter0|count_temp\(3) & ( !\counter0|count_temp[2]~DUPLICATE_q\ & ( (\counter0|count_temp\(1) & \counter0|count_temp[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100111100001111001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter0|ALT_INV_count_temp\(1),
	datac => \counter0|ALT_INV_count_temp[0]~DUPLICATE_q\,
	datae => \counter0|ALT_INV_count_temp\(3),
	dataf => \counter0|ALT_INV_count_temp[2]~DUPLICATE_q\,
	combout => \decoder0|segments[1]~1_combout\);

-- Location: MLABCELL_X87_Y27_N39
\decoder0|segments[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|segments[2]~2_combout\ = ( \counter0|count_temp\(3) & ( (!\counter0|count_temp[2]~DUPLICATE_q\) # ((\counter0|count_temp[0]~DUPLICATE_q\ & !\counter0|count_temp\(1))) ) ) # ( !\counter0|count_temp\(3) & ( ((!\counter0|count_temp\(1)) # 
-- (\counter0|count_temp[0]~DUPLICATE_q\)) # (\counter0|count_temp[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011110111010101110101011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|ALT_INV_count_temp[2]~DUPLICATE_q\,
	datab => \counter0|ALT_INV_count_temp[0]~DUPLICATE_q\,
	datac => \counter0|ALT_INV_count_temp\(1),
	dataf => \counter0|ALT_INV_count_temp\(3),
	combout => \decoder0|segments[2]~2_combout\);

-- Location: MLABCELL_X87_Y27_N54
\decoder0|segments[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|segments[3]~3_combout\ = ( \counter0|count_temp[2]~DUPLICATE_q\ & ( (!\counter0|count_temp[0]~DUPLICATE_q\ & (!\counter0|count_temp\(1) & !\counter0|count_temp\(3))) # (\counter0|count_temp[0]~DUPLICATE_q\ & (\counter0|count_temp\(1))) ) ) # ( 
-- !\counter0|count_temp[2]~DUPLICATE_q\ & ( (!\counter0|count_temp[0]~DUPLICATE_q\ & (\counter0|count_temp\(1) & \counter0|count_temp\(3))) # (\counter0|count_temp[0]~DUPLICATE_q\ & (!\counter0|count_temp\(1) & !\counter0|count_temp\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter0|ALT_INV_count_temp[0]~DUPLICATE_q\,
	datac => \counter0|ALT_INV_count_temp\(1),
	datad => \counter0|ALT_INV_count_temp\(3),
	dataf => \counter0|ALT_INV_count_temp[2]~DUPLICATE_q\,
	combout => \decoder0|segments[3]~3_combout\);

-- Location: MLABCELL_X87_Y27_N0
\decoder0|segments[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|segments[4]~4_combout\ = ( !\counter0|count_temp\(3) & ( \counter0|count_temp\(1) & ( \counter0|count_temp[0]~DUPLICATE_q\ ) ) ) # ( \counter0|count_temp\(3) & ( !\counter0|count_temp\(1) & ( (\counter0|count_temp[0]~DUPLICATE_q\ & 
-- !\counter0|count_temp[2]~DUPLICATE_q\) ) ) ) # ( !\counter0|count_temp\(3) & ( !\counter0|count_temp\(1) & ( (\counter0|count_temp[2]~DUPLICATE_q\) # (\counter0|count_temp[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001100000011000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter0|ALT_INV_count_temp[0]~DUPLICATE_q\,
	datac => \counter0|ALT_INV_count_temp[2]~DUPLICATE_q\,
	datae => \counter0|ALT_INV_count_temp\(3),
	dataf => \counter0|ALT_INV_count_temp\(1),
	combout => \decoder0|segments[4]~4_combout\);

-- Location: MLABCELL_X87_Y27_N48
\decoder0|segments[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|segments[5]~5_combout\ = ( \counter0|count_temp\(3) & ( (!\counter0|count_temp\(1) & (\counter0|count_temp[0]~DUPLICATE_q\ & \counter0|count_temp[2]~DUPLICATE_q\)) ) ) # ( !\counter0|count_temp\(3) & ( (!\counter0|count_temp\(1) & 
-- (\counter0|count_temp[0]~DUPLICATE_q\ & !\counter0|count_temp[2]~DUPLICATE_q\)) # (\counter0|count_temp\(1) & ((!\counter0|count_temp[2]~DUPLICATE_q\) # (\counter0|count_temp[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001000000100000001001110001011100010000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|ALT_INV_count_temp\(1),
	datab => \counter0|ALT_INV_count_temp[0]~DUPLICATE_q\,
	datac => \counter0|ALT_INV_count_temp[2]~DUPLICATE_q\,
	datae => \counter0|ALT_INV_count_temp\(3),
	combout => \decoder0|segments[5]~5_combout\);

-- Location: MLABCELL_X87_Y27_N21
\decoder0|segments[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder0|segments[6]~6_combout\ = ( \counter0|count_temp\(1) & ( \counter0|count_temp[0]~DUPLICATE_q\ & ( (!\counter0|count_temp[2]~DUPLICATE_q\) # (\counter0|count_temp\(3)) ) ) ) # ( !\counter0|count_temp\(1) & ( \counter0|count_temp[0]~DUPLICATE_q\ & 
-- ( (\counter0|count_temp\(3)) # (\counter0|count_temp[2]~DUPLICATE_q\) ) ) ) # ( \counter0|count_temp\(1) & ( !\counter0|count_temp[0]~DUPLICATE_q\ ) ) # ( !\counter0|count_temp\(1) & ( !\counter0|count_temp[0]~DUPLICATE_q\ & ( 
-- !\counter0|count_temp[2]~DUPLICATE_q\ $ (!\counter0|count_temp\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010111111111111111101010101111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter0|ALT_INV_count_temp[2]~DUPLICATE_q\,
	datad => \counter0|ALT_INV_count_temp\(3),
	datae => \counter0|ALT_INV_count_temp\(1),
	dataf => \counter0|ALT_INV_count_temp[0]~DUPLICATE_q\,
	combout => \decoder0|segments[6]~6_combout\);

-- Location: LABCELL_X88_Y29_N21
\counter1|count_temp[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter1|count_temp[0]~2_combout\ = ( !\counter1|count_temp\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \counter1|ALT_INV_count_temp\(0),
	combout => \counter1|count_temp[0]~2_combout\);

-- Location: LABCELL_X88_Y29_N3
\counter1|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter1|Add0~0_combout\ = ( \counter1|count_temp\(0) & ( !\counter1|count_temp\(1) ) ) # ( !\counter1|count_temp\(0) & ( \counter1|count_temp\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter1|ALT_INV_count_temp\(1),
	dataf => \counter1|ALT_INV_count_temp\(0),
	combout => \counter1|Add0~0_combout\);

-- Location: MLABCELL_X87_Y29_N57
\enable1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable1~feeder_combout\ = \decoder0|Equal15~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \decoder0|ALT_INV_Equal15~0_combout\,
	combout => \enable1~feeder_combout\);

-- Location: LABCELL_X88_Y27_N33
\enable1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable1~0_combout\ = ( \reset~input_o\ & ( (\start~input_o\ & \stop~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datac => \ALT_INV_stop~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \enable1~0_combout\);

-- Location: FF_X87_Y29_N59
enable1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \enable1~feeder_combout\,
	ena => \enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable1~q\);

-- Location: FF_X88_Y29_N32
\counter1|count_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter1|Add0~0_combout\,
	clrn => \reset1~q\,
	sload => VCC,
	ena => \enable1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|count_temp\(1));

-- Location: LABCELL_X88_Y29_N15
\reset1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset1~0_combout\ = ( !\counter1|count_temp\(0) & ( (\counter1|count_temp\(1) & (!\counter1|count_temp\(2) & \counter1|count_temp\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|ALT_INV_count_temp\(1),
	datac => \counter1|ALT_INV_count_temp\(2),
	datad => \counter1|ALT_INV_count_temp\(3),
	dataf => \counter1|ALT_INV_count_temp\(0),
	combout => \reset1~0_combout\);

-- Location: LABCELL_X88_Y29_N24
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \counter1|count_temp\(3) & ( (\counter1|count_temp\(0) & (!\counter1|count_temp\(1) & !\counter1|count_temp\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter1|ALT_INV_count_temp\(0),
	datac => \counter1|ALT_INV_count_temp\(1),
	datad => \counter1|ALT_INV_count_temp\(2),
	dataf => \counter1|ALT_INV_count_temp\(3),
	combout => \process_0~0_combout\);

-- Location: LABCELL_X88_Y29_N36
\reset1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset1~1_combout\ = ( \start~input_o\ & ( \reset1~q\ & ( (!\reset1~0_combout\) # ((!\stop~input_o\) # ((\process_0~0_combout\ & \decoder0|Equal15~0_combout\))) ) ) ) # ( !\start~input_o\ & ( \reset1~q\ ) ) # ( \start~input_o\ & ( !\reset1~q\ & ( 
-- (!\reset1~0_combout\ & (\stop~input_o\ & ((!\process_0~0_combout\) # (!\decoder0|Equal15~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010100011111111111111111111111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset1~0_combout\,
	datab => \ALT_INV_process_0~0_combout\,
	datac => \decoder0|ALT_INV_Equal15~0_combout\,
	datad => \ALT_INV_stop~input_o\,
	datae => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_reset1~q\,
	combout => \reset1~1_combout\);

-- Location: FF_X88_Y29_N44
reset1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reset1~1_combout\,
	clrn => \ALT_INV_reset0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset1~q\);

-- Location: FF_X88_Y29_N53
\counter1|count_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter1|count_temp[0]~2_combout\,
	clrn => \reset1~q\,
	sload => VCC,
	ena => \enable1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|count_temp\(0));

-- Location: LABCELL_X88_Y29_N27
\counter1|count_temp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter1|count_temp[2]~1_combout\ = ( \enable1~q\ & ( !\counter1|count_temp\(2) $ (((!\counter1|count_temp\(0)) # (!\counter1|count_temp\(1)))) ) ) # ( !\enable1~q\ & ( \counter1|count_temp\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|ALT_INV_count_temp\(0),
	datac => \counter1|ALT_INV_count_temp\(1),
	datad => \counter1|ALT_INV_count_temp\(2),
	dataf => \ALT_INV_enable1~q\,
	combout => \counter1|count_temp[2]~1_combout\);

-- Location: FF_X88_Y29_N2
\counter1|count_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter1|count_temp[2]~1_combout\,
	clrn => \reset1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|count_temp\(2));

-- Location: LABCELL_X88_Y29_N18
\counter1|count_temp[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter1|count_temp[3]~0_combout\ = ( \enable1~q\ & ( !\counter1|count_temp\(3) $ (((!\counter1|count_temp\(2)) # ((!\counter1|count_temp\(1)) # (!\counter1|count_temp\(0))))) ) ) # ( !\enable1~q\ & ( \counter1|count_temp\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|ALT_INV_count_temp\(2),
	datab => \counter1|ALT_INV_count_temp\(1),
	datac => \counter1|ALT_INV_count_temp\(0),
	datad => \counter1|ALT_INV_count_temp\(3),
	dataf => \ALT_INV_enable1~q\,
	combout => \counter1|count_temp[3]~0_combout\);

-- Location: FF_X88_Y29_N8
\counter1|count_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter1|count_temp[3]~0_combout\,
	clrn => \reset1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter1|count_temp\(3));

-- Location: LABCELL_X88_Y29_N30
\decoder1|segments[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|segments[0]~0_combout\ = ( \counter1|count_temp\(0) & ( (!\counter1|count_temp\(3) & (!\counter1|count_temp\(2) & !\counter1|count_temp\(1))) # (\counter1|count_temp\(3) & (!\counter1|count_temp\(2) $ (!\counter1|count_temp\(1)))) ) ) # ( 
-- !\counter1|count_temp\(0) & ( (!\counter1|count_temp\(3) & (\counter1|count_temp\(2) & !\counter1|count_temp\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000011001100001100001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter1|ALT_INV_count_temp\(3),
	datac => \counter1|ALT_INV_count_temp\(2),
	datad => \counter1|ALT_INV_count_temp\(1),
	dataf => \counter1|ALT_INV_count_temp\(0),
	combout => \decoder1|segments[0]~0_combout\);

-- Location: LABCELL_X88_Y29_N48
\decoder1|segments[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|segments[1]~1_combout\ = ( \counter1|count_temp\(0) & ( \counter1|count_temp\(3) & ( \counter1|count_temp\(1) ) ) ) # ( !\counter1|count_temp\(0) & ( \counter1|count_temp\(3) & ( \counter1|count_temp\(2) ) ) ) # ( \counter1|count_temp\(0) & ( 
-- !\counter1|count_temp\(3) & ( (!\counter1|count_temp\(1) & \counter1|count_temp\(2)) ) ) ) # ( !\counter1|count_temp\(0) & ( !\counter1|count_temp\(3) & ( (\counter1|count_temp\(1) & \counter1|count_temp\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011000000110000001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter1|ALT_INV_count_temp\(1),
	datac => \counter1|ALT_INV_count_temp\(2),
	datae => \counter1|ALT_INV_count_temp\(0),
	dataf => \counter1|ALT_INV_count_temp\(3),
	combout => \decoder1|segments[1]~1_combout\);

-- Location: LABCELL_X88_Y29_N6
\decoder1|segments[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|segments[2]~2_combout\ = ( \counter1|count_temp\(1) & ( (!\counter1|count_temp\(2) & ((\counter1|count_temp\(3)) # (\counter1|count_temp\(0)))) # (\counter1|count_temp\(2) & ((!\counter1|count_temp\(3)))) ) ) # ( !\counter1|count_temp\(1) & ( 
-- ((!\counter1|count_temp\(2)) # (!\counter1|count_temp\(3))) # (\counter1|count_temp\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110011111111111111001100111111111100000011111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter1|ALT_INV_count_temp\(0),
	datac => \counter1|ALT_INV_count_temp\(2),
	datad => \counter1|ALT_INV_count_temp\(3),
	dataf => \counter1|ALT_INV_count_temp\(1),
	combout => \decoder1|segments[2]~2_combout\);

-- Location: LABCELL_X88_Y29_N9
\decoder1|segments[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|segments[3]~3_combout\ = ( \counter1|count_temp\(3) & ( (\counter1|count_temp\(1) & (!\counter1|count_temp\(0) $ (\counter1|count_temp\(2)))) ) ) # ( !\counter1|count_temp\(3) & ( (!\counter1|count_temp\(0) & (!\counter1|count_temp\(1) & 
-- \counter1|count_temp\(2))) # (\counter1|count_temp\(0) & (!\counter1|count_temp\(1) $ (\counter1|count_temp\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter1|ALT_INV_count_temp\(0),
	datac => \counter1|ALT_INV_count_temp\(1),
	datad => \counter1|ALT_INV_count_temp\(2),
	dataf => \counter1|ALT_INV_count_temp\(3),
	combout => \decoder1|segments[3]~3_combout\);

-- Location: LABCELL_X88_Y29_N54
\decoder1|segments[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|segments[4]~4_combout\ = ( \counter1|count_temp\(0) & ( (!\counter1|count_temp\(3)) # ((!\counter1|count_temp\(1) & !\counter1|count_temp\(2))) ) ) # ( !\counter1|count_temp\(0) & ( (!\counter1|count_temp\(1) & (!\counter1|count_temp\(3) & 
-- \counter1|count_temp\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000111011001110110000001000000010001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|ALT_INV_count_temp\(1),
	datab => \counter1|ALT_INV_count_temp\(3),
	datac => \counter1|ALT_INV_count_temp\(2),
	datae => \counter1|ALT_INV_count_temp\(0),
	combout => \decoder1|segments[4]~4_combout\);

-- Location: LABCELL_X88_Y29_N0
\decoder1|segments[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|segments[5]~5_combout\ = (!\counter1|count_temp\(1) & (\counter1|count_temp\(0) & (!\counter1|count_temp\(3) $ (\counter1|count_temp\(2))))) # (\counter1|count_temp\(1) & (!\counter1|count_temp\(3) & ((!\counter1|count_temp\(2)) # 
-- (\counter1|count_temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010010011100000001001001110000000100100111000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter1|ALT_INV_count_temp\(1),
	datab => \counter1|ALT_INV_count_temp\(0),
	datac => \counter1|ALT_INV_count_temp\(3),
	datad => \counter1|ALT_INV_count_temp\(2),
	combout => \decoder1|segments[5]~5_combout\);

-- Location: LABCELL_X88_Y29_N45
\decoder1|segments[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder1|segments[6]~6_combout\ = ( \counter1|count_temp\(0) & ( \counter1|count_temp\(3) ) ) # ( !\counter1|count_temp\(0) & ( \counter1|count_temp\(3) & ( (!\counter1|count_temp\(2)) # (\counter1|count_temp\(1)) ) ) ) # ( \counter1|count_temp\(0) & ( 
-- !\counter1|count_temp\(3) & ( !\counter1|count_temp\(1) $ (!\counter1|count_temp\(2)) ) ) ) # ( !\counter1|count_temp\(0) & ( !\counter1|count_temp\(3) & ( (\counter1|count_temp\(2)) # (\counter1|count_temp\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111000011111111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter1|ALT_INV_count_temp\(1),
	datad => \counter1|ALT_INV_count_temp\(2),
	datae => \counter1|ALT_INV_count_temp\(0),
	dataf => \counter1|ALT_INV_count_temp\(3),
	combout => \decoder1|segments[6]~6_combout\);

-- Location: MLABCELL_X87_Y28_N24
\counter2|count_temp[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter2|count_temp[0]~2_combout\ = !\counter2|count_temp\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter2|ALT_INV_count_temp\(0),
	combout => \counter2|count_temp[0]~2_combout\);

-- Location: MLABCELL_X87_Y28_N51
\counter2|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter2|Add0~0_combout\ = ( \counter2|count_temp\(1) & ( !\counter2|count_temp\(0) ) ) # ( !\counter2|count_temp\(1) & ( \counter2|count_temp\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter2|ALT_INV_count_temp\(0),
	dataf => \counter2|ALT_INV_count_temp\(1),
	combout => \counter2|Add0~0_combout\);

-- Location: LABCELL_X88_Y28_N45
\process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = ( \decoder0|Equal15~0_combout\ & ( \process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~0_combout\,
	dataf => \decoder0|ALT_INV_Equal15~0_combout\,
	combout => \process_0~3_combout\);

-- Location: FF_X88_Y28_N47
enable2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \process_0~3_combout\,
	ena => \enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable2~q\);

-- Location: FF_X87_Y28_N23
\counter2|count_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter2|Add0~0_combout\,
	clrn => \reset2~q\,
	sload => VCC,
	ena => \enable2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|count_temp\(1));

-- Location: MLABCELL_X87_Y28_N45
\counter2|count_temp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter2|count_temp[2]~1_combout\ = ( \enable2~q\ & ( !\counter2|count_temp\(2) $ (((!\counter2|count_temp\(1)) # (!\counter2|count_temp\(0)))) ) ) # ( !\enable2~q\ & ( \counter2|count_temp\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111010110100000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|ALT_INV_count_temp\(1),
	datac => \counter2|ALT_INV_count_temp\(2),
	datad => \counter2|ALT_INV_count_temp\(0),
	dataf => \ALT_INV_enable2~q\,
	combout => \counter2|count_temp[2]~1_combout\);

-- Location: FF_X87_Y28_N56
\counter2|count_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter2|count_temp[2]~1_combout\,
	clrn => \reset2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|count_temp\(2));

-- Location: MLABCELL_X87_Y28_N48
\process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = ( \counter2|count_temp\(3) & ( (!\counter2|count_temp\(1) & (\counter2|count_temp\(0) & !\counter2|count_temp\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|ALT_INV_count_temp\(1),
	datab => \counter2|ALT_INV_count_temp\(0),
	datac => \counter2|ALT_INV_count_temp\(2),
	dataf => \counter2|ALT_INV_count_temp\(3),
	combout => \process_0~1_combout\);

-- Location: MLABCELL_X87_Y28_N0
\process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = ( \process_0~1_combout\ & ( (\process_0~0_combout\ & \decoder0|Equal15~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~0_combout\,
	datac => \decoder0|ALT_INV_Equal15~0_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \process_0~2_combout\);

-- Location: MLABCELL_X87_Y28_N33
\reset2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset2~0_combout\ = ( !\counter2|count_temp\(0) & ( !\counter2|count_temp\(2) & ( (\counter2|count_temp\(3) & \counter2|count_temp\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|ALT_INV_count_temp\(3),
	datab => \counter2|ALT_INV_count_temp\(1),
	datae => \counter2|ALT_INV_count_temp\(0),
	dataf => \counter2|ALT_INV_count_temp\(2),
	combout => \reset2~0_combout\);

-- Location: MLABCELL_X87_Y28_N27
\reset2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset2~1_combout\ = ( \reset2~q\ & ( ((!\stop~input_o\) # ((!\reset2~0_combout\) # (!\start~input_o\))) # (\process_0~2_combout\) ) ) # ( !\reset2~q\ & ( (!\process_0~2_combout\ & (\stop~input_o\ & (!\reset2~0_combout\ & \start~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000011111111111111011111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~2_combout\,
	datab => \ALT_INV_stop~input_o\,
	datac => \ALT_INV_reset2~0_combout\,
	datad => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_reset2~q\,
	combout => \reset2~1_combout\);

-- Location: FF_X87_Y28_N32
reset2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reset2~1_combout\,
	clrn => \ALT_INV_reset0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset2~q\);

-- Location: FF_X87_Y28_N5
\counter2|count_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter2|count_temp[0]~2_combout\,
	clrn => \reset2~q\,
	sload => VCC,
	ena => \enable2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|count_temp\(0));

-- Location: MLABCELL_X87_Y28_N9
\counter2|count_temp[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter2|count_temp[3]~0_combout\ = ( \counter2|count_temp\(2) & ( \enable2~q\ & ( !\counter2|count_temp\(3) $ (((!\counter2|count_temp\(0)) # (!\counter2|count_temp\(1)))) ) ) ) # ( !\counter2|count_temp\(2) & ( \enable2~q\ & ( \counter2|count_temp\(3) 
-- ) ) ) # ( \counter2|count_temp\(2) & ( !\enable2~q\ & ( \counter2|count_temp\(3) ) ) ) # ( !\counter2|count_temp\(2) & ( !\enable2~q\ & ( \counter2|count_temp\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|ALT_INV_count_temp\(0),
	datac => \counter2|ALT_INV_count_temp\(3),
	datad => \counter2|ALT_INV_count_temp\(1),
	datae => \counter2|ALT_INV_count_temp\(2),
	dataf => \ALT_INV_enable2~q\,
	combout => \counter2|count_temp[3]~0_combout\);

-- Location: FF_X87_Y28_N38
\counter2|count_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter2|count_temp[3]~0_combout\,
	clrn => \reset2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2|count_temp\(3));

-- Location: MLABCELL_X87_Y28_N3
\decoder2|segments[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder2|segments[0]~0_combout\ = ( \counter2|count_temp\(2) & ( (!\counter2|count_temp\(1) & (!\counter2|count_temp\(3) $ (\counter2|count_temp\(0)))) ) ) # ( !\counter2|count_temp\(2) & ( (\counter2|count_temp\(0) & (!\counter2|count_temp\(3) $ 
-- (\counter2|count_temp\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter2|ALT_INV_count_temp\(3),
	datac => \counter2|ALT_INV_count_temp\(1),
	datad => \counter2|ALT_INV_count_temp\(0),
	dataf => \counter2|ALT_INV_count_temp\(2),
	combout => \decoder2|segments[0]~0_combout\);

-- Location: MLABCELL_X87_Y28_N12
\decoder2|segments[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder2|segments[1]~1_combout\ = ( \counter2|count_temp\(3) & ( (!\counter2|count_temp\(0) & ((\counter2|count_temp\(2)))) # (\counter2|count_temp\(0) & (\counter2|count_temp\(1))) ) ) # ( !\counter2|count_temp\(3) & ( (\counter2|count_temp\(2) & 
-- (!\counter2|count_temp\(0) $ (!\counter2|count_temp\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|ALT_INV_count_temp\(0),
	datab => \counter2|ALT_INV_count_temp\(1),
	datac => \counter2|ALT_INV_count_temp\(2),
	dataf => \counter2|ALT_INV_count_temp\(3),
	combout => \decoder2|segments[1]~1_combout\);

-- Location: MLABCELL_X87_Y28_N57
\decoder2|segments[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder2|segments[2]~2_combout\ = (!\counter2|count_temp\(3) & ((!\counter2|count_temp\(1)) # ((\counter2|count_temp\(2)) # (\counter2|count_temp\(0))))) # (\counter2|count_temp\(3) & ((!\counter2|count_temp\(2)) # ((!\counter2|count_temp\(1) & 
-- \counter2|count_temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111110101110110111111010111011011111101011101101111110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|ALT_INV_count_temp\(3),
	datab => \counter2|ALT_INV_count_temp\(1),
	datac => \counter2|ALT_INV_count_temp\(0),
	datad => \counter2|ALT_INV_count_temp\(2),
	combout => \decoder2|segments[2]~2_combout\);

-- Location: MLABCELL_X87_Y28_N15
\decoder2|segments[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder2|segments[3]~3_combout\ = ( \counter2|count_temp\(1) & ( (!\counter2|count_temp\(0) & (\counter2|count_temp\(3) & !\counter2|count_temp\(2))) # (\counter2|count_temp\(0) & ((\counter2|count_temp\(2)))) ) ) # ( !\counter2|count_temp\(1) & ( 
-- (!\counter2|count_temp\(3) & (!\counter2|count_temp\(0) $ (!\counter2|count_temp\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter2|ALT_INV_count_temp\(0),
	datac => \counter2|ALT_INV_count_temp\(3),
	datad => \counter2|ALT_INV_count_temp\(2),
	dataf => \counter2|ALT_INV_count_temp\(1),
	combout => \decoder2|segments[3]~3_combout\);

-- Location: MLABCELL_X87_Y28_N42
\decoder2|segments[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder2|segments[4]~4_combout\ = ( \counter2|count_temp\(1) & ( (\counter2|count_temp\(0) & !\counter2|count_temp\(3)) ) ) # ( !\counter2|count_temp\(1) & ( (!\counter2|count_temp\(2) & (\counter2|count_temp\(0))) # (\counter2|count_temp\(2) & 
-- ((!\counter2|count_temp\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110000001100111111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter2|ALT_INV_count_temp\(0),
	datac => \counter2|ALT_INV_count_temp\(3),
	datad => \counter2|ALT_INV_count_temp\(2),
	dataf => \counter2|ALT_INV_count_temp\(1),
	combout => \decoder2|segments[4]~4_combout\);

-- Location: MLABCELL_X87_Y28_N54
\decoder2|segments[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder2|segments[5]~5_combout\ = ( \counter2|count_temp\(0) & ( !\counter2|count_temp\(3) $ (((!\counter2|count_temp\(1) & \counter2|count_temp\(2)))) ) ) # ( !\counter2|count_temp\(0) & ( (\counter2|count_temp\(1) & (!\counter2|count_temp\(3) & 
-- !\counter2|count_temp\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011110000001111001111000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter2|ALT_INV_count_temp\(1),
	datac => \counter2|ALT_INV_count_temp\(3),
	datad => \counter2|ALT_INV_count_temp\(2),
	dataf => \counter2|ALT_INV_count_temp\(0),
	combout => \decoder2|segments[5]~5_combout\);

-- Location: MLABCELL_X87_Y28_N21
\decoder2|segments[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder2|segments[6]~6_combout\ = ( \counter2|count_temp\(2) & ( (!\counter2|count_temp\(0) & ((!\counter2|count_temp\(3)) # (\counter2|count_temp\(1)))) # (\counter2|count_temp\(0) & ((!\counter2|count_temp\(1)) # (\counter2|count_temp\(3)))) ) ) # ( 
-- !\counter2|count_temp\(2) & ( (\counter2|count_temp\(1)) # (\counter2|count_temp\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111110011110011111111001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter2|ALT_INV_count_temp\(0),
	datac => \counter2|ALT_INV_count_temp\(3),
	datad => \counter2|ALT_INV_count_temp\(1),
	dataf => \counter2|ALT_INV_count_temp\(2),
	combout => \decoder2|segments[6]~6_combout\);

-- Location: LABCELL_X88_Y28_N21
\counter3|count_temp[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter3|count_temp[0]~2_combout\ = ( !\counter3|count_temp\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \counter3|ALT_INV_count_temp\(0),
	combout => \counter3|count_temp[0]~2_combout\);

-- Location: FF_X88_Y28_N8
enable3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \process_0~2_combout\,
	sload => VCC,
	ena => \enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable3~q\);

-- Location: LABCELL_X88_Y28_N54
\counter3|count_temp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter3|count_temp[2]~1_combout\ = ( \enable3~q\ & ( !\counter3|count_temp\(2) $ (((!\counter3|count_temp\(1)) # (!\counter3|count_temp\(0)))) ) ) # ( !\enable3~q\ & ( \counter3|count_temp\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ALT_INV_count_temp\(1),
	datac => \counter3|ALT_INV_count_temp\(0),
	datad => \counter3|ALT_INV_count_temp\(2),
	dataf => \ALT_INV_enable3~q\,
	combout => \counter3|count_temp[2]~1_combout\);

-- Location: FF_X88_Y28_N38
\counter3|count_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter3|count_temp[2]~1_combout\,
	clrn => \reset3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|count_temp\(2));

-- Location: LABCELL_X88_Y28_N18
\counter3|count_temp[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter3|count_temp[3]~0_combout\ = ( \enable3~q\ & ( !\counter3|count_temp\(3) $ (((!\counter3|count_temp\(0)) # ((!\counter3|count_temp\(1)) # (!\counter3|count_temp\(2))))) ) ) # ( !\enable3~q\ & ( \counter3|count_temp\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ALT_INV_count_temp\(0),
	datab => \counter3|ALT_INV_count_temp\(3),
	datac => \counter3|ALT_INV_count_temp\(1),
	datad => \counter3|ALT_INV_count_temp\(2),
	dataf => \ALT_INV_enable3~q\,
	combout => \counter3|count_temp[3]~0_combout\);

-- Location: FF_X88_Y28_N17
\counter3|count_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter3|count_temp[3]~0_combout\,
	clrn => \reset3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|count_temp\(3));

-- Location: LABCELL_X88_Y28_N33
\process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = ( !\counter3|count_temp\(3) & ( (!\counter3|count_temp\(1) & (\counter3|count_temp\(2) & \counter3|count_temp\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ALT_INV_count_temp\(1),
	datab => \counter3|ALT_INV_count_temp\(2),
	datac => \counter3|ALT_INV_count_temp\(0),
	dataf => \counter3|ALT_INV_count_temp\(3),
	combout => \process_0~4_combout\);

-- Location: MLABCELL_X87_Y28_N18
\process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ( \process_0~1_combout\ & ( (\process_0~4_combout\ & (\decoder0|Equal15~0_combout\ & \process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~4_combout\,
	datac => \decoder0|ALT_INV_Equal15~0_combout\,
	datad => \ALT_INV_process_0~0_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \process_0~5_combout\);

-- Location: LABCELL_X88_Y28_N9
\reset3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset3~0_combout\ = ( !\counter3|count_temp\(0) & ( \counter3|count_temp\(2) & ( (!\counter3|count_temp\(3) & \counter3|count_temp\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter3|ALT_INV_count_temp\(3),
	datad => \counter3|ALT_INV_count_temp\(1),
	datae => \counter3|ALT_INV_count_temp\(0),
	dataf => \counter3|ALT_INV_count_temp\(2),
	combout => \reset3~0_combout\);

-- Location: MLABCELL_X87_Y28_N39
\reset3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset3~1_combout\ = ( \stop~input_o\ & ( \reset3~q\ & ( ((!\reset3~0_combout\) # (!\start~input_o\)) # (\process_0~5_combout\) ) ) ) # ( !\stop~input_o\ & ( \reset3~q\ ) ) # ( \stop~input_o\ & ( !\reset3~q\ & ( (!\process_0~5_combout\ & 
-- (!\reset3~0_combout\ & \start~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000100011111111111111111111111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~5_combout\,
	datab => \ALT_INV_reset3~0_combout\,
	datad => \ALT_INV_start~input_o\,
	datae => \ALT_INV_stop~input_o\,
	dataf => \ALT_INV_reset3~q\,
	combout => \reset3~1_combout\);

-- Location: FF_X87_Y28_N14
reset3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reset3~1_combout\,
	clrn => \ALT_INV_reset0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset3~q\);

-- Location: FF_X88_Y28_N26
\counter3|count_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter3|count_temp[0]~2_combout\,
	clrn => \reset3~q\,
	sload => VCC,
	ena => \enable3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|count_temp\(0));

-- Location: LABCELL_X88_Y28_N48
\counter3|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter3|Add0~0_combout\ = ( \counter3|count_temp\(0) & ( !\counter3|count_temp\(1) ) ) # ( !\counter3|count_temp\(0) & ( \counter3|count_temp\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter3|ALT_INV_count_temp\(1),
	dataf => \counter3|ALT_INV_count_temp\(0),
	combout => \counter3|Add0~0_combout\);

-- Location: FF_X88_Y28_N5
\counter3|count_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter3|Add0~0_combout\,
	clrn => \reset3~q\,
	sload => VCC,
	ena => \enable3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter3|count_temp\(1));

-- Location: LABCELL_X88_Y28_N39
\decoder3|segments[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder3|segments[0]~0_combout\ = (!\counter3|count_temp\(3) & (!\counter3|count_temp\(1) & (!\counter3|count_temp\(0) $ (!\counter3|count_temp\(2))))) # (\counter3|count_temp\(3) & (\counter3|count_temp\(0) & (!\counter3|count_temp\(1) $ 
-- (!\counter3|count_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110000010001000011000001000100001100000100010000110000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ALT_INV_count_temp\(1),
	datab => \counter3|ALT_INV_count_temp\(0),
	datac => \counter3|ALT_INV_count_temp\(3),
	datad => \counter3|ALT_INV_count_temp\(2),
	combout => \decoder3|segments[0]~0_combout\);

-- Location: LABCELL_X88_Y28_N0
\decoder3|segments[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder3|segments[1]~1_combout\ = ( \counter3|count_temp\(3) & ( \counter3|count_temp\(1) & ( (\counter3|count_temp\(2)) # (\counter3|count_temp\(0)) ) ) ) # ( !\counter3|count_temp\(3) & ( \counter3|count_temp\(1) & ( (!\counter3|count_temp\(0) & 
-- \counter3|count_temp\(2)) ) ) ) # ( \counter3|count_temp\(3) & ( !\counter3|count_temp\(1) & ( (!\counter3|count_temp\(0) & \counter3|count_temp\(2)) ) ) ) # ( !\counter3|count_temp\(3) & ( !\counter3|count_temp\(1) & ( (\counter3|count_temp\(0) & 
-- \counter3|count_temp\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ALT_INV_count_temp\(0),
	datac => \counter3|ALT_INV_count_temp\(2),
	datae => \counter3|ALT_INV_count_temp\(3),
	dataf => \counter3|ALT_INV_count_temp\(1),
	combout => \decoder3|segments[1]~1_combout\);

-- Location: LABCELL_X88_Y28_N57
\decoder3|segments[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder3|segments[2]~2_combout\ = ( \counter3|count_temp\(3) & ( (!\counter3|count_temp\(2)) # ((!\counter3|count_temp\(1) & \counter3|count_temp\(0))) ) ) # ( !\counter3|count_temp\(3) & ( (!\counter3|count_temp\(1)) # ((\counter3|count_temp\(2)) # 
-- (\counter3|count_temp\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111111111101110111111111111111111001000101111111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ALT_INV_count_temp\(1),
	datab => \counter3|ALT_INV_count_temp\(0),
	datad => \counter3|ALT_INV_count_temp\(2),
	dataf => \counter3|ALT_INV_count_temp\(3),
	combout => \decoder3|segments[2]~2_combout\);

-- Location: LABCELL_X88_Y28_N12
\decoder3|segments[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder3|segments[3]~3_combout\ = ( \counter3|count_temp\(3) & ( (\counter3|count_temp\(1) & (!\counter3|count_temp\(0) $ (\counter3|count_temp\(2)))) ) ) # ( !\counter3|count_temp\(3) & ( (!\counter3|count_temp\(1) & (!\counter3|count_temp\(0) $ 
-- (!\counter3|count_temp\(2)))) # (\counter3|count_temp\(1) & (\counter3|count_temp\(0) & \counter3|count_temp\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100101000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ALT_INV_count_temp\(1),
	datab => \counter3|ALT_INV_count_temp\(0),
	datad => \counter3|ALT_INV_count_temp\(2),
	dataf => \counter3|ALT_INV_count_temp\(3),
	combout => \decoder3|segments[3]~3_combout\);

-- Location: LABCELL_X88_Y28_N15
\decoder3|segments[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder3|segments[4]~4_combout\ = ( \counter3|count_temp\(2) & ( (!\counter3|count_temp\(3) & ((!\counter3|count_temp\(1)) # (\counter3|count_temp\(0)))) ) ) # ( !\counter3|count_temp\(2) & ( (\counter3|count_temp\(0) & ((!\counter3|count_temp\(1)) # 
-- (!\counter3|count_temp\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001010111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ALT_INV_count_temp\(1),
	datab => \counter3|ALT_INV_count_temp\(0),
	datad => \counter3|ALT_INV_count_temp\(3),
	dataf => \counter3|ALT_INV_count_temp\(2),
	combout => \decoder3|segments[4]~4_combout\);

-- Location: LABCELL_X88_Y28_N51
\decoder3|segments[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder3|segments[5]~5_combout\ = ( \counter3|count_temp\(2) & ( (\counter3|count_temp\(0) & (!\counter3|count_temp\(1) $ (!\counter3|count_temp\(3)))) ) ) # ( !\counter3|count_temp\(2) & ( (!\counter3|count_temp\(3) & ((\counter3|count_temp\(0)) # 
-- (\counter3|count_temp\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000011100000111000000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ALT_INV_count_temp\(1),
	datab => \counter3|ALT_INV_count_temp\(0),
	datac => \counter3|ALT_INV_count_temp\(3),
	dataf => \counter3|ALT_INV_count_temp\(2),
	combout => \decoder3|segments[5]~5_combout\);

-- Location: LABCELL_X88_Y28_N36
\decoder3|segments[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder3|segments[6]~6_combout\ = ( \counter3|count_temp\(3) & ( ((!\counter3|count_temp\(2)) # (\counter3|count_temp\(0))) # (\counter3|count_temp\(1)) ) ) # ( !\counter3|count_temp\(3) & ( (!\counter3|count_temp\(1) & ((\counter3|count_temp\(2)))) # 
-- (\counter3|count_temp\(1) & ((!\counter3|count_temp\(0)) # (!\counter3|count_temp\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111101110010101011110111011111111011101111111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter3|ALT_INV_count_temp\(1),
	datab => \counter3|ALT_INV_count_temp\(0),
	datad => \counter3|ALT_INV_count_temp\(2),
	dataf => \counter3|ALT_INV_count_temp\(3),
	combout => \decoder3|segments[6]~6_combout\);

-- Location: LABCELL_X88_Y27_N24
\counter4|count_temp[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter4|count_temp[0]~2_combout\ = ( !\counter4|count_temp\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \counter4|ALT_INV_count_temp\(0),
	combout => \counter4|count_temp[0]~2_combout\);

-- Location: FF_X87_Y27_N47
enable4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \process_0~5_combout\,
	sload => VCC,
	ena => \enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable4~q\);

-- Location: LABCELL_X88_Y27_N18
\counter4|count_temp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter4|count_temp[2]~1_combout\ = ( \enable4~q\ & ( !\counter4|count_temp\(2) $ (((!\counter4|count_temp\(1)) # (!\counter4|count_temp\(0)))) ) ) # ( !\enable4~q\ & ( \counter4|count_temp\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|ALT_INV_count_temp\(1),
	datac => \counter4|ALT_INV_count_temp\(0),
	datad => \counter4|ALT_INV_count_temp\(2),
	dataf => \ALT_INV_enable4~q\,
	combout => \counter4|count_temp[2]~1_combout\);

-- Location: FF_X88_Y27_N47
\counter4|count_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter4|count_temp[2]~1_combout\,
	clrn => \reset4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter4|count_temp\(2));

-- Location: LABCELL_X88_Y27_N27
\counter4|count_temp[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter4|count_temp[3]~0_combout\ = ( \enable4~q\ & ( !\counter4|count_temp\(3) $ (((!\counter4|count_temp\(1)) # ((!\counter4|count_temp\(2)) # (!\counter4|count_temp\(0))))) ) ) # ( !\enable4~q\ & ( \counter4|count_temp\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001101100011001100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|ALT_INV_count_temp\(1),
	datab => \counter4|ALT_INV_count_temp\(3),
	datac => \counter4|ALT_INV_count_temp\(2),
	datad => \counter4|ALT_INV_count_temp\(0),
	dataf => \ALT_INV_enable4~q\,
	combout => \counter4|count_temp[3]~0_combout\);

-- Location: FF_X88_Y27_N17
\counter4|count_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter4|count_temp[3]~0_combout\,
	clrn => \reset4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter4|count_temp\(3));

-- Location: LABCELL_X88_Y27_N12
\reset4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset4~0_combout\ = ( \counter4|count_temp\(3) & ( !\counter4|count_temp\(2) & ( (\counter4|count_temp\(1) & !\counter4|count_temp\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|ALT_INV_count_temp\(1),
	datab => \counter4|ALT_INV_count_temp\(0),
	datae => \counter4|ALT_INV_count_temp\(3),
	dataf => \counter4|ALT_INV_count_temp\(2),
	combout => \reset4~0_combout\);

-- Location: LABCELL_X88_Y27_N21
\process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = ( \counter4|count_temp\(3) & ( (\counter4|count_temp\(0) & (!\counter4|count_temp\(2) & !\counter4|count_temp\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter4|ALT_INV_count_temp\(0),
	datac => \counter4|ALT_INV_count_temp\(2),
	datad => \counter4|ALT_INV_count_temp\(1),
	dataf => \counter4|ALT_INV_count_temp\(3),
	combout => \process_0~6_combout\);

-- Location: LABCELL_X88_Y27_N0
\process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = ( \process_0~4_combout\ & ( \process_0~1_combout\ & ( (\process_0~6_combout\ & (\decoder0|Equal15~0_combout\ & \process_0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_process_0~6_combout\,
	datab => \decoder0|ALT_INV_Equal15~0_combout\,
	datad => \ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_process_0~4_combout\,
	dataf => \ALT_INV_process_0~1_combout\,
	combout => \process_0~7_combout\);

-- Location: LABCELL_X88_Y27_N30
\reset4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset4~1_combout\ = ( \reset4~q\ & ( (!\start~input_o\) # ((!\reset4~0_combout\) # ((!\stop~input_o\) # (\process_0~7_combout\))) ) ) # ( !\reset4~q\ & ( (\start~input_o\ & (!\reset4~0_combout\ & (!\process_0~7_combout\ & \stop~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000011111111111011111111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datab => \ALT_INV_reset4~0_combout\,
	datac => \ALT_INV_process_0~7_combout\,
	datad => \ALT_INV_stop~input_o\,
	dataf => \ALT_INV_reset4~q\,
	combout => \reset4~1_combout\);

-- Location: FF_X88_Y27_N41
reset4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reset4~1_combout\,
	clrn => \ALT_INV_reset0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset4~q\);

-- Location: FF_X88_Y27_N5
\counter4|count_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter4|count_temp[0]~2_combout\,
	clrn => \reset4~q\,
	sload => VCC,
	ena => \enable4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter4|count_temp\(0));

-- Location: LABCELL_X88_Y27_N6
\counter4|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter4|Add0~0_combout\ = ( \counter4|count_temp\(0) & ( !\counter4|count_temp\(1) ) ) # ( !\counter4|count_temp\(0) & ( \counter4|count_temp\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter4|ALT_INV_count_temp\(1),
	dataf => \counter4|ALT_INV_count_temp\(0),
	combout => \counter4|Add0~0_combout\);

-- Location: FF_X88_Y27_N53
\counter4|count_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter4|Add0~0_combout\,
	clrn => \reset4~q\,
	sload => VCC,
	ena => \enable4~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter4|count_temp\(1));

-- Location: LABCELL_X88_Y27_N45
\decoder4|segments[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder4|segments[0]~0_combout\ = ( \counter4|count_temp\(3) & ( (\counter4|count_temp\(0) & (!\counter4|count_temp\(1) $ (!\counter4|count_temp\(2)))) ) ) # ( !\counter4|count_temp\(3) & ( (!\counter4|count_temp\(1) & (!\counter4|count_temp\(0) $ 
-- (!\counter4|count_temp\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|ALT_INV_count_temp\(1),
	datab => \counter4|ALT_INV_count_temp\(0),
	datad => \counter4|ALT_INV_count_temp\(2),
	dataf => \counter4|ALT_INV_count_temp\(3),
	combout => \decoder4|segments[0]~0_combout\);

-- Location: LABCELL_X88_Y27_N51
\decoder4|segments[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder4|segments[1]~1_combout\ = ( \counter4|count_temp\(3) & ( (!\counter4|count_temp\(0) & (\counter4|count_temp\(2))) # (\counter4|count_temp\(0) & ((\counter4|count_temp\(1)))) ) ) # ( !\counter4|count_temp\(3) & ( (\counter4|count_temp\(2) & 
-- (!\counter4|count_temp\(0) $ (!\counter4|count_temp\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|ALT_INV_count_temp\(0),
	datab => \counter4|ALT_INV_count_temp\(2),
	datad => \counter4|ALT_INV_count_temp\(1),
	dataf => \counter4|ALT_INV_count_temp\(3),
	combout => \decoder4|segments[1]~1_combout\);

-- Location: LABCELL_X88_Y27_N48
\decoder4|segments[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder4|segments[2]~2_combout\ = ( \counter4|count_temp\(1) & ( (!\counter4|count_temp\(2) & ((\counter4|count_temp\(3)) # (\counter4|count_temp\(0)))) # (\counter4|count_temp\(2) & ((!\counter4|count_temp\(3)))) ) ) # ( !\counter4|count_temp\(1) & ( 
-- ((!\counter4|count_temp\(2)) # (!\counter4|count_temp\(3))) # (\counter4|count_temp\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111011101111111111101110101110111110011000111011111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|ALT_INV_count_temp\(0),
	datab => \counter4|ALT_INV_count_temp\(2),
	datad => \counter4|ALT_INV_count_temp\(3),
	dataf => \counter4|ALT_INV_count_temp\(1),
	combout => \decoder4|segments[2]~2_combout\);

-- Location: LABCELL_X88_Y27_N42
\decoder4|segments[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder4|segments[3]~3_combout\ = ( \counter4|count_temp\(2) & ( (!\counter4|count_temp\(1) & (!\counter4|count_temp\(0) & !\counter4|count_temp\(3))) # (\counter4|count_temp\(1) & (\counter4|count_temp\(0))) ) ) # ( !\counter4|count_temp\(2) & ( 
-- (!\counter4|count_temp\(1) & (\counter4|count_temp\(0) & !\counter4|count_temp\(3))) # (\counter4|count_temp\(1) & (!\counter4|count_temp\(0) & \counter4|count_temp\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|ALT_INV_count_temp\(1),
	datab => \counter4|ALT_INV_count_temp\(0),
	datad => \counter4|ALT_INV_count_temp\(3),
	dataf => \counter4|ALT_INV_count_temp\(2),
	combout => \decoder4|segments[3]~3_combout\);

-- Location: MLABCELL_X82_Y27_N0
\decoder4|segments[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder4|segments[4]~4_combout\ = ( \counter4|count_temp\(3) & ( \counter4|count_temp\(0) & ( (!\counter4|count_temp\(1) & !\counter4|count_temp\(2)) ) ) ) # ( !\counter4|count_temp\(3) & ( \counter4|count_temp\(0) ) ) # ( !\counter4|count_temp\(3) & ( 
-- !\counter4|count_temp\(0) & ( (!\counter4|count_temp\(1) & \counter4|count_temp\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000011111111111111111010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|ALT_INV_count_temp\(1),
	datac => \counter4|ALT_INV_count_temp\(2),
	datae => \counter4|ALT_INV_count_temp\(3),
	dataf => \counter4|ALT_INV_count_temp\(0),
	combout => \decoder4|segments[4]~4_combout\);

-- Location: LABCELL_X88_Y27_N54
\decoder4|segments[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder4|segments[5]~5_combout\ = ( \counter4|count_temp\(0) & ( !\counter4|count_temp\(3) $ (((\counter4|count_temp\(2) & !\counter4|count_temp\(1)))) ) ) # ( !\counter4|count_temp\(0) & ( (!\counter4|count_temp\(2) & (\counter4|count_temp\(1) & 
-- !\counter4|count_temp\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000101011110101000000001010000000001010111101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|ALT_INV_count_temp\(2),
	datac => \counter4|ALT_INV_count_temp\(1),
	datad => \counter4|ALT_INV_count_temp\(3),
	datae => \counter4|ALT_INV_count_temp\(0),
	combout => \decoder4|segments[5]~5_combout\);

-- Location: LABCELL_X88_Y27_N36
\decoder4|segments[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder4|segments[6]~6_combout\ = ( \counter4|count_temp\(3) & ( (!\counter4|count_temp\(2)) # ((\counter4|count_temp\(0)) # (\counter4|count_temp\(1))) ) ) # ( !\counter4|count_temp\(3) & ( (!\counter4|count_temp\(2) & (\counter4|count_temp\(1))) # 
-- (\counter4|count_temp\(2) & ((!\counter4|count_temp\(1)) # (!\counter4|count_temp\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011010010111110101101010101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter4|ALT_INV_count_temp\(2),
	datac => \counter4|ALT_INV_count_temp\(1),
	datad => \counter4|ALT_INV_count_temp\(0),
	dataf => \counter4|ALT_INV_count_temp\(3),
	combout => \decoder4|segments[6]~6_combout\);

-- Location: FF_X87_Y29_N53
enable5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \process_0~7_combout\,
	sload => VCC,
	ena => \enable1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable5~q\);

-- Location: MLABCELL_X87_Y29_N27
\counter5|count_temp[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter5|count_temp[0]~2_combout\ = ( !\counter5|count_temp\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \counter5|ALT_INV_count_temp\(0),
	combout => \counter5|count_temp[0]~2_combout\);

-- Location: MLABCELL_X87_Y29_N42
\counter5|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter5|Add0~0_combout\ = ( \counter5|count_temp\(0) & ( !\counter5|count_temp\(1) ) ) # ( !\counter5|count_temp\(0) & ( \counter5|count_temp\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \counter5|ALT_INV_count_temp\(1),
	dataf => \counter5|ALT_INV_count_temp\(0),
	combout => \counter5|Add0~0_combout\);

-- Location: MLABCELL_X87_Y29_N30
\counter5|count_temp[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter5|count_temp[1]~feeder_combout\ = \counter5|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter5|ALT_INV_Add0~0_combout\,
	combout => \counter5|count_temp[1]~feeder_combout\);

-- Location: FF_X87_Y29_N32
\counter5|count_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	d => \counter5|count_temp[1]~feeder_combout\,
	clrn => \reset5~q\,
	ena => \enable5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter5|count_temp\(1));

-- Location: MLABCELL_X87_Y29_N12
\counter5|count_temp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter5|count_temp[2]~1_combout\ = ( \enable5~q\ & ( !\counter5|count_temp\(2) $ (((!\counter5|count_temp\(0)) # (!\counter5|count_temp\(1)))) ) ) # ( !\enable5~q\ & ( \counter5|count_temp\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter5|ALT_INV_count_temp\(0),
	datab => \counter5|ALT_INV_count_temp\(1),
	datad => \counter5|ALT_INV_count_temp\(2),
	dataf => \ALT_INV_enable5~q\,
	combout => \counter5|count_temp[2]~1_combout\);

-- Location: MLABCELL_X87_Y29_N3
\counter5|count_temp[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter5|count_temp[2]~feeder_combout\ = \counter5|count_temp[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter5|ALT_INV_count_temp[2]~1_combout\,
	combout => \counter5|count_temp[2]~feeder_combout\);

-- Location: FF_X87_Y29_N5
\counter5|count_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	d => \counter5|count_temp[2]~feeder_combout\,
	clrn => \reset5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter5|count_temp\(2));

-- Location: MLABCELL_X87_Y29_N48
\reset5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset5~0_combout\ = ( \counter5|count_temp\(2) & ( \counter5|count_temp\(1) & ( (!\counter5|count_temp\(0) & !\counter5|count_temp\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter5|ALT_INV_count_temp\(0),
	datad => \counter5|ALT_INV_count_temp\(3),
	datae => \counter5|ALT_INV_count_temp\(2),
	dataf => \counter5|ALT_INV_count_temp\(1),
	combout => \reset5~0_combout\);

-- Location: LABCELL_X88_Y29_N12
\reset5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset5~1_combout\ = ( \reset5~0_combout\ & ( (\reset5~q\ & ((!\stop~input_o\) # (!\start~input_o\))) ) ) # ( !\reset5~0_combout\ & ( ((\stop~input_o\ & \start~input_o\)) # (\reset5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_stop~input_o\,
	datac => \ALT_INV_start~input_o\,
	datad => \ALT_INV_reset5~q\,
	dataf => \ALT_INV_reset5~0_combout\,
	combout => \reset5~1_combout\);

-- Location: FF_X88_Y29_N59
reset5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \reset5~1_combout\,
	clrn => \ALT_INV_reset0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset5~q\);

-- Location: FF_X87_Y29_N23
\counter5|count_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter5|count_temp[0]~2_combout\,
	clrn => \reset5~q\,
	sload => VCC,
	ena => \enable5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter5|count_temp\(0));

-- Location: MLABCELL_X87_Y29_N9
\counter5|count_temp[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter5|count_temp[3]~0_combout\ = ( \counter5|count_temp\(2) & ( \counter5|count_temp\(1) & ( !\counter5|count_temp\(3) $ (((!\enable5~q\) # (!\counter5|count_temp\(0)))) ) ) ) # ( !\counter5|count_temp\(2) & ( \counter5|count_temp\(1) & ( 
-- \counter5|count_temp\(3) ) ) ) # ( \counter5|count_temp\(2) & ( !\counter5|count_temp\(1) & ( \counter5|count_temp\(3) ) ) ) # ( !\counter5|count_temp\(2) & ( !\counter5|count_temp\(1) & ( \counter5|count_temp\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable5~q\,
	datac => \counter5|ALT_INV_count_temp\(3),
	datad => \counter5|ALT_INV_count_temp\(0),
	datae => \counter5|ALT_INV_count_temp\(2),
	dataf => \counter5|ALT_INV_count_temp\(1),
	combout => \counter5|count_temp[3]~0_combout\);

-- Location: FF_X87_Y29_N38
\counter5|count_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider|en_out_temp~q\,
	asdata => \counter5|count_temp[3]~0_combout\,
	clrn => \reset5~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter5|count_temp\(3));

-- Location: MLABCELL_X87_Y29_N24
\decoder5|segments[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder5|segments[0]~0_combout\ = ( \counter5|count_temp\(0) & ( (!\counter5|count_temp\(3) & (!\counter5|count_temp\(1) & !\counter5|count_temp\(2))) # (\counter5|count_temp\(3) & (!\counter5|count_temp\(1) $ (!\counter5|count_temp\(2)))) ) ) # ( 
-- !\counter5|count_temp\(0) & ( (!\counter5|count_temp\(3) & (!\counter5|count_temp\(1) & \counter5|count_temp\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101010100001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter5|ALT_INV_count_temp\(3),
	datac => \counter5|ALT_INV_count_temp\(1),
	datad => \counter5|ALT_INV_count_temp\(2),
	dataf => \counter5|ALT_INV_count_temp\(0),
	combout => \decoder5|segments[0]~0_combout\);

-- Location: MLABCELL_X87_Y29_N36
\decoder5|segments[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder5|segments[1]~1_combout\ = ( \counter5|count_temp\(1) & ( (!\counter5|count_temp\(0) & (\counter5|count_temp\(2))) # (\counter5|count_temp\(0) & ((\counter5|count_temp\(3)))) ) ) # ( !\counter5|count_temp\(1) & ( (\counter5|count_temp\(2) & 
-- (!\counter5|count_temp\(0) $ (!\counter5|count_temp\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter5|ALT_INV_count_temp\(0),
	datac => \counter5|ALT_INV_count_temp\(2),
	datad => \counter5|ALT_INV_count_temp\(3),
	dataf => \counter5|ALT_INV_count_temp\(1),
	combout => \decoder5|segments[1]~1_combout\);

-- Location: MLABCELL_X87_Y29_N15
\decoder5|segments[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder5|segments[2]~2_combout\ = ( \counter5|count_temp\(0) & ( (!\counter5|count_temp\(1)) # ((!\counter5|count_temp\(2)) # (!\counter5|count_temp\(3))) ) ) # ( !\counter5|count_temp\(0) & ( (!\counter5|count_temp\(2) & ((!\counter5|count_temp\(1)) # 
-- (\counter5|count_temp\(3)))) # (\counter5|count_temp\(2) & ((!\counter5|count_temp\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111110000110011111111000011111111111111001111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter5|ALT_INV_count_temp\(1),
	datac => \counter5|ALT_INV_count_temp\(2),
	datad => \counter5|ALT_INV_count_temp\(3),
	dataf => \counter5|ALT_INV_count_temp\(0),
	combout => \decoder5|segments[2]~2_combout\);

-- Location: MLABCELL_X87_Y29_N21
\decoder5|segments[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder5|segments[3]~3_combout\ = ( \counter5|count_temp\(1) & ( (!\counter5|count_temp\(2) & (\counter5|count_temp\(3) & !\counter5|count_temp\(0))) # (\counter5|count_temp\(2) & ((\counter5|count_temp\(0)))) ) ) # ( !\counter5|count_temp\(1) & ( 
-- (!\counter5|count_temp\(3) & (!\counter5|count_temp\(2) $ (!\counter5|count_temp\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter5|ALT_INV_count_temp\(2),
	datac => \counter5|ALT_INV_count_temp\(3),
	datad => \counter5|ALT_INV_count_temp\(0),
	dataf => \counter5|ALT_INV_count_temp\(1),
	combout => \decoder5|segments[3]~3_combout\);

-- Location: MLABCELL_X87_Y29_N18
\decoder5|segments[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder5|segments[4]~4_combout\ = ( \counter5|count_temp\(0) & ( (!\counter5|count_temp\(3)) # ((!\counter5|count_temp\(2) & !\counter5|count_temp\(1))) ) ) # ( !\counter5|count_temp\(0) & ( (!\counter5|count_temp\(3) & (\counter5|count_temp\(2) & 
-- !\counter5|count_temp\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000011101010111010101110101011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter5|ALT_INV_count_temp\(3),
	datab => \counter5|ALT_INV_count_temp\(2),
	datac => \counter5|ALT_INV_count_temp\(1),
	dataf => \counter5|ALT_INV_count_temp\(0),
	combout => \decoder5|segments[4]~4_combout\);

-- Location: LABCELL_X88_Y29_N33
\decoder5|segments[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder5|segments[5]~5_combout\ = ( \counter5|count_temp\(0) & ( !\counter5|count_temp\(3) $ (((\counter5|count_temp\(2) & !\counter5|count_temp\(1)))) ) ) # ( !\counter5|count_temp\(0) & ( (!\counter5|count_temp\(3) & (!\counter5|count_temp\(2) & 
-- \counter5|count_temp\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100101101010101010010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter5|ALT_INV_count_temp\(3),
	datac => \counter5|ALT_INV_count_temp\(2),
	datad => \counter5|ALT_INV_count_temp\(1),
	dataf => \counter5|ALT_INV_count_temp\(0),
	combout => \decoder5|segments[5]~5_combout\);

-- Location: MLABCELL_X87_Y29_N39
\decoder5|segments[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder5|segments[6]~6_combout\ = ( \counter5|count_temp\(3) & ( ((!\counter5|count_temp\(2)) # (\counter5|count_temp\(1))) # (\counter5|count_temp\(0)) ) ) # ( !\counter5|count_temp\(3) & ( (!\counter5|count_temp\(1) & ((\counter5|count_temp\(2)))) # 
-- (\counter5|count_temp\(1) & ((!\counter5|count_temp\(0)) # (!\counter5|count_temp\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111010000011111111101011111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter5|ALT_INV_count_temp\(0),
	datac => \counter5|ALT_INV_count_temp\(1),
	datad => \counter5|ALT_INV_count_temp\(2),
	dataf => \counter5|ALT_INV_count_temp\(3),
	combout => \decoder5|segments[6]~6_combout\);

-- Location: LABCELL_X24_Y14_N0
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


