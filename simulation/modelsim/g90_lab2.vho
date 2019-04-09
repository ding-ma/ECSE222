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

-- DATE "04/08/2019 22:49:26"

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

ENTITY 	g90_stopwatch IS
    PORT (
	start : IN std_logic;
	stop : IN std_logic;
	reset : IN std_logic;
	clk : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END g90_stopwatch;

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
-- HEX2[0]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF g90_stopwatch IS
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
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \enable_clock~combout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~2\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~45_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse~3_combout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~46\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~41_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse~2_combout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~42\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~37_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse~1_combout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~38\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~33_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse~0_combout\ : std_logic;
SIGNAL \Clock_Divider_0|LessThan0~1_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~73_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse~10_combout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|elapse[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~74\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~69_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse~9_combout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~70\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~65_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse~8_combout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~66\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~61_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse~7_combout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|LessThan0~2_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~6\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~29_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~30\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~25_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~26\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~53_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse~5_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~54\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~21_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~22\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~17_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~18\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~13_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~14\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~9_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|LessThan0~0_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~10\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~49_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse~4_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~50\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~1_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~62\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~57_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse~6_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~58\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~5_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|LessThan0~3_combout\ : std_logic;
SIGNAL \Clock_Divider_0|en_out~q\ : std_logic;
SIGNAL \Counter_0|clk_peak[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Counter_0|clk_peak[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|clk_peak[1]~1_combout\ : std_logic;
SIGNAL \reset_0~1_combout\ : std_logic;
SIGNAL \Counter_0|clk_peak[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|clk_peak[2]~2_combout\ : std_logic;
SIGNAL \Counter_0|clk_peak[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|clk_peak[3]~3_combout\ : std_logic;
SIGNAL \Counter_0|clk_peak[3]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder_0|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux0~0_combout\ : std_logic;
SIGNAL \Counter_1|clk_peak[1]~1_combout\ : std_logic;
SIGNAL \Counter_1|clk_peak[3]~3_combout\ : std_logic;
SIGNAL \reset_1~0_combout\ : std_logic;
SIGNAL \Counter_1|clk_peak[0]~0_combout\ : std_logic;
SIGNAL \Counter_1|clk_peak[0]~DUPLICATE_q\ : std_logic;
SIGNAL \enable_2~0_combout\ : std_logic;
SIGNAL \Counter_1|clk_peak[2]~2_combout\ : std_logic;
SIGNAL \Counter_1|clk_peak[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_1|clk_peak[3]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder_1|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux0~0_combout\ : std_logic;
SIGNAL \enable_2~1_combout\ : std_logic;
SIGNAL \Counter_2|clk_peak[1]~1_combout\ : std_logic;
SIGNAL \Counter_2|clk_peak[3]~3_combout\ : std_logic;
SIGNAL \Counter_2|clk_peak[1]~DUPLICATE_q\ : std_logic;
SIGNAL \reset_2~0_combout\ : std_logic;
SIGNAL \Counter_2|clk_peak[0]~0_combout\ : std_logic;
SIGNAL \Counter_2|clk_peak[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_2|clk_peak[2]~2_combout\ : std_logic;
SIGNAL \Counter_2|clk_peak[2]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder_2|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux0~0_combout\ : std_logic;
SIGNAL \enable_3~0_combout\ : std_logic;
SIGNAL \enable_4~0_combout\ : std_logic;
SIGNAL \Counter_3|clk_peak[2]~2_combout\ : std_logic;
SIGNAL \Counter_3|clk_peak[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_3|clk_peak[3]~3_combout\ : std_logic;
SIGNAL \reset_3~0_combout\ : std_logic;
SIGNAL \Counter_3|clk_peak[0]~0_combout\ : std_logic;
SIGNAL \Counter_3|clk_peak[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_3|clk_peak[1]~1_combout\ : std_logic;
SIGNAL \Counter_3|clk_peak[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_3|clk_peak[3]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder_3|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux0~0_combout\ : std_logic;
SIGNAL \enable_4~1_combout\ : std_logic;
SIGNAL \enable_4~combout\ : std_logic;
SIGNAL \Counter_4|clk_peak[1]~1_combout\ : std_logic;
SIGNAL \Counter_4|clk_peak[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_4|clk_peak[2]~2_combout\ : std_logic;
SIGNAL \Counter_4|clk_peak[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_4|clk_peak[3]~3_combout\ : std_logic;
SIGNAL \reset_4~0_combout\ : std_logic;
SIGNAL \Counter_4|clk_peak[0]~0_combout\ : std_logic;
SIGNAL \Counter_4|clk_peak[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_4|clk_peak[3]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder_4|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux0~0_combout\ : std_logic;
SIGNAL \Clock_Divider_0|elapse\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Counter_1|clk_peak\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter_0|clk_peak\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter_2|clk_peak\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter_3|clk_peak\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter_4|clk_peak\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset_0~1_combout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_en_out~q\ : std_logic;
SIGNAL \decoder_4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Counter_4|ALT_INV_clk_peak\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder_3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Counter_3|ALT_INV_clk_peak\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder_2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Counter_2|ALT_INV_clk_peak\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder_1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Counter_1|ALT_INV_clk_peak\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder_0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Counter_0|ALT_INV_clk_peak\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock_Divider_0|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_elapse\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Clock_Divider_0|ALT_INV_elapse[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_elapse[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_elapse[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_elapse[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_elapse[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_elapse[15]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_elapse[16]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_elapse[17]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_elapse[18]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_4|ALT_INV_clk_peak[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_4|ALT_INV_clk_peak[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_4|ALT_INV_clk_peak[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_4|ALT_INV_clk_peak[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_3|ALT_INV_clk_peak[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_3|ALT_INV_clk_peak[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_3|ALT_INV_clk_peak[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_3|ALT_INV_clk_peak[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_2|ALT_INV_clk_peak[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_2|ALT_INV_clk_peak[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_2|ALT_INV_clk_peak[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_1|ALT_INV_clk_peak[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_1|ALT_INV_clk_peak[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_1|ALT_INV_clk_peak[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|ALT_INV_clk_peak[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|ALT_INV_clk_peak[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|ALT_INV_clk_peak[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_elapse[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_stop~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_enable_clock~combout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset_4~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable_4~combout\ : std_logic;
SIGNAL \ALT_INV_enable_4~1_combout\ : std_logic;
SIGNAL \ALT_INV_enable_4~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset_3~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable_3~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable_2~1_combout\ : std_logic;
SIGNAL \ALT_INV_enable_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset_1~0_combout\ : std_logic;

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
\ALT_INV_reset_0~1_combout\ <= NOT \reset_0~1_combout\;
\Clock_Divider_0|ALT_INV_en_out~q\ <= NOT \Clock_Divider_0|en_out~q\;
\decoder_4|ALT_INV_Mux6~0_combout\ <= NOT \decoder_4|Mux6~0_combout\;
\Counter_4|ALT_INV_clk_peak\(3) <= NOT \Counter_4|clk_peak\(3);
\Counter_4|ALT_INV_clk_peak\(2) <= NOT \Counter_4|clk_peak\(2);
\Counter_4|ALT_INV_clk_peak\(1) <= NOT \Counter_4|clk_peak\(1);
\Counter_4|ALT_INV_clk_peak\(0) <= NOT \Counter_4|clk_peak\(0);
\decoder_3|ALT_INV_Mux6~0_combout\ <= NOT \decoder_3|Mux6~0_combout\;
\Counter_3|ALT_INV_clk_peak\(3) <= NOT \Counter_3|clk_peak\(3);
\Counter_3|ALT_INV_clk_peak\(2) <= NOT \Counter_3|clk_peak\(2);
\Counter_3|ALT_INV_clk_peak\(1) <= NOT \Counter_3|clk_peak\(1);
\Counter_3|ALT_INV_clk_peak\(0) <= NOT \Counter_3|clk_peak\(0);
\decoder_2|ALT_INV_Mux6~0_combout\ <= NOT \decoder_2|Mux6~0_combout\;
\Counter_2|ALT_INV_clk_peak\(3) <= NOT \Counter_2|clk_peak\(3);
\Counter_2|ALT_INV_clk_peak\(2) <= NOT \Counter_2|clk_peak\(2);
\Counter_2|ALT_INV_clk_peak\(1) <= NOT \Counter_2|clk_peak\(1);
\Counter_2|ALT_INV_clk_peak\(0) <= NOT \Counter_2|clk_peak\(0);
\decoder_1|ALT_INV_Mux6~0_combout\ <= NOT \decoder_1|Mux6~0_combout\;
\Counter_1|ALT_INV_clk_peak\(3) <= NOT \Counter_1|clk_peak\(3);
\Counter_1|ALT_INV_clk_peak\(2) <= NOT \Counter_1|clk_peak\(2);
\Counter_1|ALT_INV_clk_peak\(1) <= NOT \Counter_1|clk_peak\(1);
\Counter_1|ALT_INV_clk_peak\(0) <= NOT \Counter_1|clk_peak\(0);
\decoder_0|ALT_INV_Mux6~0_combout\ <= NOT \decoder_0|Mux6~0_combout\;
\Counter_0|ALT_INV_clk_peak\(3) <= NOT \Counter_0|clk_peak\(3);
\Counter_0|ALT_INV_clk_peak\(2) <= NOT \Counter_0|clk_peak\(2);
\Counter_0|ALT_INV_clk_peak\(1) <= NOT \Counter_0|clk_peak\(1);
\Counter_0|ALT_INV_clk_peak\(0) <= NOT \Counter_0|clk_peak\(0);
\Clock_Divider_0|ALT_INV_Add0~73_sumout\ <= NOT \Clock_Divider_0|Add0~73_sumout\;
\Clock_Divider_0|ALT_INV_Add0~69_sumout\ <= NOT \Clock_Divider_0|Add0~69_sumout\;
\Clock_Divider_0|ALT_INV_Add0~65_sumout\ <= NOT \Clock_Divider_0|Add0~65_sumout\;
\Clock_Divider_0|ALT_INV_Add0~61_sumout\ <= NOT \Clock_Divider_0|Add0~61_sumout\;
\Clock_Divider_0|ALT_INV_Add0~57_sumout\ <= NOT \Clock_Divider_0|Add0~57_sumout\;
\Clock_Divider_0|ALT_INV_Add0~53_sumout\ <= NOT \Clock_Divider_0|Add0~53_sumout\;
\Clock_Divider_0|ALT_INV_Add0~49_sumout\ <= NOT \Clock_Divider_0|Add0~49_sumout\;
\Clock_Divider_0|ALT_INV_Add0~45_sumout\ <= NOT \Clock_Divider_0|Add0~45_sumout\;
\Clock_Divider_0|ALT_INV_Add0~41_sumout\ <= NOT \Clock_Divider_0|Add0~41_sumout\;
\Clock_Divider_0|ALT_INV_Add0~37_sumout\ <= NOT \Clock_Divider_0|Add0~37_sumout\;
\Clock_Divider_0|ALT_INV_Add0~33_sumout\ <= NOT \Clock_Divider_0|Add0~33_sumout\;
\Clock_Divider_0|ALT_INV_elapse\(6) <= NOT \Clock_Divider_0|elapse\(6);
\Clock_Divider_0|ALT_INV_elapse\(7) <= NOT \Clock_Divider_0|elapse\(7);
\Clock_Divider_0|ALT_INV_elapse\(9) <= NOT \Clock_Divider_0|elapse\(9);
\Clock_Divider_0|ALT_INV_elapse\(10) <= NOT \Clock_Divider_0|elapse\(10);
\Clock_Divider_0|ALT_INV_elapse\(11) <= NOT \Clock_Divider_0|elapse\(11);
\Clock_Divider_0|ALT_INV_elapse\(12) <= NOT \Clock_Divider_0|elapse\(12);
\Clock_Divider_0|ALT_INV_elapse\(5) <= NOT \Clock_Divider_0|elapse\(5);
\Clock_Divider_0|ALT_INV_elapse\(14) <= NOT \Clock_Divider_0|elapse\(14);
\Clock_Divider_0|ALT_INV_elapse[0]~DUPLICATE_q\ <= NOT \Clock_Divider_0|elapse[0]~DUPLICATE_q\;
\Clock_Divider_0|ALT_INV_elapse[1]~DUPLICATE_q\ <= NOT \Clock_Divider_0|elapse[1]~DUPLICATE_q\;
\Clock_Divider_0|ALT_INV_elapse[2]~DUPLICATE_q\ <= NOT \Clock_Divider_0|elapse[2]~DUPLICATE_q\;
\Clock_Divider_0|ALT_INV_elapse[3]~DUPLICATE_q\ <= NOT \Clock_Divider_0|elapse[3]~DUPLICATE_q\;
\Clock_Divider_0|ALT_INV_elapse[4]~DUPLICATE_q\ <= NOT \Clock_Divider_0|elapse[4]~DUPLICATE_q\;
\Clock_Divider_0|ALT_INV_elapse[15]~DUPLICATE_q\ <= NOT \Clock_Divider_0|elapse[15]~DUPLICATE_q\;
\Clock_Divider_0|ALT_INV_elapse[16]~DUPLICATE_q\ <= NOT \Clock_Divider_0|elapse[16]~DUPLICATE_q\;
\Clock_Divider_0|ALT_INV_elapse[17]~DUPLICATE_q\ <= NOT \Clock_Divider_0|elapse[17]~DUPLICATE_q\;
\Clock_Divider_0|ALT_INV_elapse[18]~DUPLICATE_q\ <= NOT \Clock_Divider_0|elapse[18]~DUPLICATE_q\;
\Counter_4|ALT_INV_clk_peak[3]~DUPLICATE_q\ <= NOT \Counter_4|clk_peak[3]~DUPLICATE_q\;
\Counter_4|ALT_INV_clk_peak[2]~DUPLICATE_q\ <= NOT \Counter_4|clk_peak[2]~DUPLICATE_q\;
\Counter_4|ALT_INV_clk_peak[1]~DUPLICATE_q\ <= NOT \Counter_4|clk_peak[1]~DUPLICATE_q\;
\Counter_4|ALT_INV_clk_peak[0]~DUPLICATE_q\ <= NOT \Counter_4|clk_peak[0]~DUPLICATE_q\;
\Counter_3|ALT_INV_clk_peak[3]~DUPLICATE_q\ <= NOT \Counter_3|clk_peak[3]~DUPLICATE_q\;
\Counter_3|ALT_INV_clk_peak[2]~DUPLICATE_q\ <= NOT \Counter_3|clk_peak[2]~DUPLICATE_q\;
\Counter_3|ALT_INV_clk_peak[1]~DUPLICATE_q\ <= NOT \Counter_3|clk_peak[1]~DUPLICATE_q\;
\Counter_3|ALT_INV_clk_peak[0]~DUPLICATE_q\ <= NOT \Counter_3|clk_peak[0]~DUPLICATE_q\;
\Counter_2|ALT_INV_clk_peak[2]~DUPLICATE_q\ <= NOT \Counter_2|clk_peak[2]~DUPLICATE_q\;
\Counter_2|ALT_INV_clk_peak[1]~DUPLICATE_q\ <= NOT \Counter_2|clk_peak[1]~DUPLICATE_q\;
\Counter_2|ALT_INV_clk_peak[0]~DUPLICATE_q\ <= NOT \Counter_2|clk_peak[0]~DUPLICATE_q\;
\Counter_1|ALT_INV_clk_peak[3]~DUPLICATE_q\ <= NOT \Counter_1|clk_peak[3]~DUPLICATE_q\;
\Counter_1|ALT_INV_clk_peak[2]~DUPLICATE_q\ <= NOT \Counter_1|clk_peak[2]~DUPLICATE_q\;
\Counter_1|ALT_INV_clk_peak[0]~DUPLICATE_q\ <= NOT \Counter_1|clk_peak[0]~DUPLICATE_q\;
\Counter_0|ALT_INV_clk_peak[3]~DUPLICATE_q\ <= NOT \Counter_0|clk_peak[3]~DUPLICATE_q\;
\Counter_0|ALT_INV_clk_peak[2]~DUPLICATE_q\ <= NOT \Counter_0|clk_peak[2]~DUPLICATE_q\;
\Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\ <= NOT \Counter_0|clk_peak[1]~DUPLICATE_q\;
\Counter_0|ALT_INV_clk_peak[0]~DUPLICATE_q\ <= NOT \Counter_0|clk_peak[0]~DUPLICATE_q\;
\Clock_Divider_0|ALT_INV_elapse[12]~DUPLICATE_q\ <= NOT \Clock_Divider_0|elapse[12]~DUPLICATE_q\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_stop~input_o\ <= NOT \stop~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_enable_clock~combout\ <= NOT \enable_clock~combout\;
\Clock_Divider_0|ALT_INV_LessThan0~3_combout\ <= NOT \Clock_Divider_0|LessThan0~3_combout\;
\Clock_Divider_0|ALT_INV_LessThan0~2_combout\ <= NOT \Clock_Divider_0|LessThan0~2_combout\;
\Clock_Divider_0|ALT_INV_elapse\(0) <= NOT \Clock_Divider_0|elapse\(0);
\Clock_Divider_0|ALT_INV_elapse\(1) <= NOT \Clock_Divider_0|elapse\(1);
\Clock_Divider_0|ALT_INV_elapse\(2) <= NOT \Clock_Divider_0|elapse\(2);
\Clock_Divider_0|ALT_INV_elapse\(3) <= NOT \Clock_Divider_0|elapse\(3);
\Clock_Divider_0|ALT_INV_elapse\(4) <= NOT \Clock_Divider_0|elapse\(4);
\Clock_Divider_0|ALT_INV_LessThan0~1_combout\ <= NOT \Clock_Divider_0|LessThan0~1_combout\;
\Clock_Divider_0|ALT_INV_elapse\(8) <= NOT \Clock_Divider_0|elapse\(8);
\Clock_Divider_0|ALT_INV_elapse\(13) <= NOT \Clock_Divider_0|elapse\(13);
\Clock_Divider_0|ALT_INV_elapse\(15) <= NOT \Clock_Divider_0|elapse\(15);
\Clock_Divider_0|ALT_INV_elapse\(16) <= NOT \Clock_Divider_0|elapse\(16);
\Clock_Divider_0|ALT_INV_elapse\(17) <= NOT \Clock_Divider_0|elapse\(17);
\Clock_Divider_0|ALT_INV_elapse\(18) <= NOT \Clock_Divider_0|elapse\(18);
\Clock_Divider_0|ALT_INV_LessThan0~0_combout\ <= NOT \Clock_Divider_0|LessThan0~0_combout\;
\ALT_INV_reset_4~0_combout\ <= NOT \reset_4~0_combout\;
\ALT_INV_enable_4~combout\ <= NOT \enable_4~combout\;
\ALT_INV_enable_4~1_combout\ <= NOT \enable_4~1_combout\;
\ALT_INV_enable_4~0_combout\ <= NOT \enable_4~0_combout\;
\ALT_INV_reset_3~0_combout\ <= NOT \reset_3~0_combout\;
\ALT_INV_enable_3~0_combout\ <= NOT \enable_3~0_combout\;
\ALT_INV_reset_2~0_combout\ <= NOT \reset_2~0_combout\;
\ALT_INV_enable_2~1_combout\ <= NOT \enable_2~1_combout\;
\ALT_INV_enable_2~0_combout\ <= NOT \enable_2~0_combout\;
\ALT_INV_reset_1~0_combout\ <= NOT \reset_1~0_combout\;

-- Location: IOOBUF_X89_Y4_N96
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_0|ALT_INV_Mux6~0_combout\,
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
	i => \decoder_0|Mux5~0_combout\,
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
	i => \decoder_0|Mux4~0_combout\,
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
	i => \decoder_0|Mux3~0_combout\,
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
	i => \decoder_0|Mux2~0_combout\,
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
	i => \decoder_0|Mux1~0_combout\,
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
	i => \decoder_0|Mux0~0_combout\,
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
	i => \decoder_1|ALT_INV_Mux6~0_combout\,
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
	i => \decoder_1|Mux5~0_combout\,
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
	i => \decoder_1|Mux4~0_combout\,
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
	i => \decoder_1|Mux3~0_combout\,
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
	i => \decoder_1|Mux2~0_combout\,
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
	i => \decoder_1|Mux1~0_combout\,
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
	i => \decoder_1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_3|Mux2~0_combout\,
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
	i => \decoder_3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_4|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X89_Y25_N4
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G11
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

-- Location: LABCELL_X43_Y2_N24
enable_clock : cyclonev_lcell_comb
-- Equation(s):
-- \enable_clock~combout\ = ( \start~input_o\ & ( \enable_clock~combout\ & ( \stop~input_o\ ) ) ) # ( !\start~input_o\ & ( \enable_clock~combout\ & ( \stop~input_o\ ) ) ) # ( !\start~input_o\ & ( !\enable_clock~combout\ & ( \stop~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_stop~input_o\,
	datae => \ALT_INV_start~input_o\,
	dataf => \ALT_INV_enable_clock~combout\,
	combout => \enable_clock~combout\);

-- Location: FF_X81_Y14_N1
\Clock_Divider_0|elapse[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~1_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse[17]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y14_N42
\Clock_Divider_0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~1_sumout\ = SUM(( \Clock_Divider_0|elapse\(14) ) + ( VCC ) + ( \Clock_Divider_0|Add0~50\ ))
-- \Clock_Divider_0|Add0~2\ = CARRY(( \Clock_Divider_0|elapse\(14) ) + ( VCC ) + ( \Clock_Divider_0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_elapse\(14),
	cin => \Clock_Divider_0|Add0~50\,
	sumout => \Clock_Divider_0|Add0~1_sumout\,
	cout => \Clock_Divider_0|Add0~2\);

-- Location: MLABCELL_X82_Y14_N45
\Clock_Divider_0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~45_sumout\ = SUM(( !\Clock_Divider_0|elapse[15]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~2\ ))
-- \Clock_Divider_0|Add0~46\ = CARRY(( !\Clock_Divider_0|elapse[15]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_elapse[15]~DUPLICATE_q\,
	cin => \Clock_Divider_0|Add0~2\,
	sumout => \Clock_Divider_0|Add0~45_sumout\,
	cout => \Clock_Divider_0|Add0~46\);

-- Location: LABCELL_X81_Y14_N3
\Clock_Divider_0|elapse~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|elapse~3_combout\ = ( !\Clock_Divider_0|Add0~45_sumout\ & ( !\Clock_Divider_0|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_LessThan0~3_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~45_sumout\,
	combout => \Clock_Divider_0|elapse~3_combout\);

-- Location: FF_X81_Y14_N4
\Clock_Divider_0|elapse[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~3_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse[15]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y14_N48
\Clock_Divider_0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~41_sumout\ = SUM(( !\Clock_Divider_0|elapse[16]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~46\ ))
-- \Clock_Divider_0|Add0~42\ = CARRY(( !\Clock_Divider_0|elapse[16]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_elapse[16]~DUPLICATE_q\,
	cin => \Clock_Divider_0|Add0~46\,
	sumout => \Clock_Divider_0|Add0~41_sumout\,
	cout => \Clock_Divider_0|Add0~42\);

-- Location: LABCELL_X81_Y14_N33
\Clock_Divider_0|elapse~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|elapse~2_combout\ = ( !\Clock_Divider_0|LessThan0~3_combout\ & ( !\Clock_Divider_0|Add0~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_Add0~41_sumout\,
	dataf => \Clock_Divider_0|ALT_INV_LessThan0~3_combout\,
	combout => \Clock_Divider_0|elapse~2_combout\);

-- Location: FF_X81_Y14_N34
\Clock_Divider_0|elapse[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~2_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse[16]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y14_N51
\Clock_Divider_0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~37_sumout\ = SUM(( !\Clock_Divider_0|elapse[17]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~42\ ))
-- \Clock_Divider_0|Add0~38\ = CARRY(( !\Clock_Divider_0|elapse[17]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_elapse[17]~DUPLICATE_q\,
	cin => \Clock_Divider_0|Add0~42\,
	sumout => \Clock_Divider_0|Add0~37_sumout\,
	cout => \Clock_Divider_0|Add0~38\);

-- Location: LABCELL_X81_Y14_N0
\Clock_Divider_0|elapse~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|elapse~1_combout\ = ( !\Clock_Divider_0|Add0~37_sumout\ & ( !\Clock_Divider_0|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_LessThan0~3_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~37_sumout\,
	combout => \Clock_Divider_0|elapse~1_combout\);

-- Location: FF_X81_Y14_N2
\Clock_Divider_0|elapse[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~1_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(17));

-- Location: FF_X81_Y14_N5
\Clock_Divider_0|elapse[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~3_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(15));

-- Location: FF_X81_Y14_N28
\Clock_Divider_0|elapse[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~0_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse[18]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y14_N54
\Clock_Divider_0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~33_sumout\ = SUM(( !\Clock_Divider_0|elapse[18]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_elapse[18]~DUPLICATE_q\,
	cin => \Clock_Divider_0|Add0~38\,
	sumout => \Clock_Divider_0|Add0~33_sumout\);

-- Location: LABCELL_X81_Y14_N27
\Clock_Divider_0|elapse~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|elapse~0_combout\ = ( !\Clock_Divider_0|Add0~33_sumout\ & ( !\Clock_Divider_0|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_LessThan0~3_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~33_sumout\,
	combout => \Clock_Divider_0|elapse~0_combout\);

-- Location: FF_X81_Y14_N29
\Clock_Divider_0|elapse[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~0_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(18));

-- Location: FF_X81_Y14_N35
\Clock_Divider_0|elapse[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~2_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(16));

-- Location: LABCELL_X81_Y14_N12
\Clock_Divider_0|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|LessThan0~1_combout\ = ( \Clock_Divider_0|elapse\(18) & ( \Clock_Divider_0|elapse\(16) & ( (\Clock_Divider_0|elapse\(17) & (\Clock_Divider_0|elapse\(8) & (\Clock_Divider_0|elapse\(15) & \Clock_Divider_0|elapse\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_elapse\(17),
	datab => \Clock_Divider_0|ALT_INV_elapse\(8),
	datac => \Clock_Divider_0|ALT_INV_elapse\(15),
	datad => \Clock_Divider_0|ALT_INV_elapse\(13),
	datae => \Clock_Divider_0|ALT_INV_elapse\(18),
	dataf => \Clock_Divider_0|ALT_INV_elapse\(16),
	combout => \Clock_Divider_0|LessThan0~1_combout\);

-- Location: FF_X81_Y14_N49
\Clock_Divider_0|elapse[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~10_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(0));

-- Location: MLABCELL_X82_Y14_N0
\Clock_Divider_0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~73_sumout\ = SUM(( !\Clock_Divider_0|elapse\(0) ) + ( VCC ) + ( !VCC ))
-- \Clock_Divider_0|Add0~74\ = CARRY(( !\Clock_Divider_0|elapse\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_elapse\(0),
	cin => GND,
	sumout => \Clock_Divider_0|Add0~73_sumout\,
	cout => \Clock_Divider_0|Add0~74\);

-- Location: LABCELL_X81_Y14_N48
\Clock_Divider_0|elapse~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|elapse~10_combout\ = ( \Clock_Divider_0|elapse\(5) & ( \Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~73_sumout\ ) ) ) # ( !\Clock_Divider_0|elapse\(5) & ( \Clock_Divider_0|LessThan0~2_combout\ & ( 
-- (!\Clock_Divider_0|Add0~73_sumout\ & (((!\Clock_Divider_0|LessThan0~0_combout\) # (!\Clock_Divider_0|LessThan0~1_combout\)) # (\Clock_Divider_0|elapse\(14)))) ) ) ) # ( \Clock_Divider_0|elapse\(5) & ( !\Clock_Divider_0|LessThan0~2_combout\ & ( 
-- !\Clock_Divider_0|Add0~73_sumout\ ) ) ) # ( !\Clock_Divider_0|elapse\(5) & ( !\Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~73_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_Add0~73_sumout\,
	datab => \Clock_Divider_0|ALT_INV_elapse\(14),
	datac => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datad => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datae => \Clock_Divider_0|ALT_INV_elapse\(5),
	dataf => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	combout => \Clock_Divider_0|elapse~10_combout\);

-- Location: FF_X81_Y14_N50
\Clock_Divider_0|elapse[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~10_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse[0]~DUPLICATE_q\);

-- Location: FF_X81_Y14_N7
\Clock_Divider_0|elapse[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~8_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse[2]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y14_N3
\Clock_Divider_0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~69_sumout\ = SUM(( !\Clock_Divider_0|elapse[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~74\ ))
-- \Clock_Divider_0|Add0~70\ = CARRY(( !\Clock_Divider_0|elapse[1]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_elapse[1]~DUPLICATE_q\,
	cin => \Clock_Divider_0|Add0~74\,
	sumout => \Clock_Divider_0|Add0~69_sumout\,
	cout => \Clock_Divider_0|Add0~70\);

-- Location: LABCELL_X81_Y14_N21
\Clock_Divider_0|elapse~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|elapse~9_combout\ = ( !\Clock_Divider_0|Add0~69_sumout\ & ( \Clock_Divider_0|LessThan0~2_combout\ & ( (((!\Clock_Divider_0|LessThan0~1_combout\) # (!\Clock_Divider_0|LessThan0~0_combout\)) # (\Clock_Divider_0|elapse\(14))) # 
-- (\Clock_Divider_0|elapse\(5)) ) ) ) # ( !\Clock_Divider_0|Add0~69_sumout\ & ( !\Clock_Divider_0|LessThan0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_elapse\(5),
	datab => \Clock_Divider_0|ALT_INV_elapse\(14),
	datac => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datad => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datae => \Clock_Divider_0|ALT_INV_Add0~69_sumout\,
	dataf => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	combout => \Clock_Divider_0|elapse~9_combout\);

-- Location: FF_X81_Y14_N22
\Clock_Divider_0|elapse[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~9_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse[1]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y14_N6
\Clock_Divider_0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~65_sumout\ = SUM(( !\Clock_Divider_0|elapse[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~70\ ))
-- \Clock_Divider_0|Add0~66\ = CARRY(( !\Clock_Divider_0|elapse[2]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_elapse[2]~DUPLICATE_q\,
	cin => \Clock_Divider_0|Add0~70\,
	sumout => \Clock_Divider_0|Add0~65_sumout\,
	cout => \Clock_Divider_0|Add0~66\);

-- Location: LABCELL_X81_Y14_N6
\Clock_Divider_0|elapse~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|elapse~8_combout\ = ( !\Clock_Divider_0|Add0~65_sumout\ & ( \Clock_Divider_0|LessThan0~2_combout\ & ( (!\Clock_Divider_0|LessThan0~0_combout\) # ((!\Clock_Divider_0|LessThan0~1_combout\) # ((\Clock_Divider_0|elapse\(14)) # 
-- (\Clock_Divider_0|elapse\(5)))) ) ) ) # ( !\Clock_Divider_0|Add0~65_sumout\ & ( !\Clock_Divider_0|LessThan0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011101111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datab => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datac => \Clock_Divider_0|ALT_INV_elapse\(5),
	datad => \Clock_Divider_0|ALT_INV_elapse\(14),
	datae => \Clock_Divider_0|ALT_INV_Add0~65_sumout\,
	dataf => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	combout => \Clock_Divider_0|elapse~8_combout\);

-- Location: FF_X81_Y14_N8
\Clock_Divider_0|elapse[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~8_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(2));

-- Location: FF_X81_Y14_N23
\Clock_Divider_0|elapse[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~9_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(1));

-- Location: FF_X81_Y14_N58
\Clock_Divider_0|elapse[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~7_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse[3]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y14_N9
\Clock_Divider_0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~61_sumout\ = SUM(( !\Clock_Divider_0|elapse[3]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~66\ ))
-- \Clock_Divider_0|Add0~62\ = CARRY(( !\Clock_Divider_0|elapse[3]~DUPLICATE_q\ ) + ( VCC ) + ( \Clock_Divider_0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_elapse[3]~DUPLICATE_q\,
	cin => \Clock_Divider_0|Add0~66\,
	sumout => \Clock_Divider_0|Add0~61_sumout\,
	cout => \Clock_Divider_0|Add0~62\);

-- Location: LABCELL_X81_Y14_N57
\Clock_Divider_0|elapse~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|elapse~7_combout\ = ( \Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~61_sumout\ & ( (((!\Clock_Divider_0|LessThan0~1_combout\) # (!\Clock_Divider_0|LessThan0~0_combout\)) # (\Clock_Divider_0|elapse\(14))) # 
-- (\Clock_Divider_0|elapse\(5)) ) ) ) # ( !\Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_elapse\(5),
	datab => \Clock_Divider_0|ALT_INV_elapse\(14),
	datac => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datad => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datae => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~61_sumout\,
	combout => \Clock_Divider_0|elapse~7_combout\);

-- Location: FF_X81_Y14_N59
\Clock_Divider_0|elapse[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~7_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(3));

-- Location: FF_X81_Y14_N44
\Clock_Divider_0|elapse[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse[4]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y14_N30
\Clock_Divider_0|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|LessThan0~2_combout\ = ( \Clock_Divider_0|elapse[4]~DUPLICATE_q\ & ( (\Clock_Divider_0|elapse[0]~DUPLICATE_q\ & (\Clock_Divider_0|elapse\(2) & (\Clock_Divider_0|elapse\(1) & \Clock_Divider_0|elapse\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_elapse[0]~DUPLICATE_q\,
	datab => \Clock_Divider_0|ALT_INV_elapse\(2),
	datac => \Clock_Divider_0|ALT_INV_elapse\(1),
	datad => \Clock_Divider_0|ALT_INV_elapse\(3),
	dataf => \Clock_Divider_0|ALT_INV_elapse[4]~DUPLICATE_q\,
	combout => \Clock_Divider_0|LessThan0~2_combout\);

-- Location: MLABCELL_X82_Y14_N15
\Clock_Divider_0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~5_sumout\ = SUM(( \Clock_Divider_0|elapse\(5) ) + ( VCC ) + ( \Clock_Divider_0|Add0~58\ ))
-- \Clock_Divider_0|Add0~6\ = CARRY(( \Clock_Divider_0|elapse\(5) ) + ( VCC ) + ( \Clock_Divider_0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_elapse\(5),
	cin => \Clock_Divider_0|Add0~58\,
	sumout => \Clock_Divider_0|Add0~5_sumout\,
	cout => \Clock_Divider_0|Add0~6\);

-- Location: MLABCELL_X82_Y14_N18
\Clock_Divider_0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~29_sumout\ = SUM(( \Clock_Divider_0|elapse\(6) ) + ( VCC ) + ( \Clock_Divider_0|Add0~6\ ))
-- \Clock_Divider_0|Add0~30\ = CARRY(( \Clock_Divider_0|elapse\(6) ) + ( VCC ) + ( \Clock_Divider_0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_elapse\(6),
	cin => \Clock_Divider_0|Add0~6\,
	sumout => \Clock_Divider_0|Add0~29_sumout\,
	cout => \Clock_Divider_0|Add0~30\);

-- Location: FF_X82_Y14_N20
\Clock_Divider_0|elapse[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~29_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(6));

-- Location: MLABCELL_X82_Y14_N21
\Clock_Divider_0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~25_sumout\ = SUM(( \Clock_Divider_0|elapse\(7) ) + ( VCC ) + ( \Clock_Divider_0|Add0~30\ ))
-- \Clock_Divider_0|Add0~26\ = CARRY(( \Clock_Divider_0|elapse\(7) ) + ( VCC ) + ( \Clock_Divider_0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_elapse\(7),
	cin => \Clock_Divider_0|Add0~30\,
	sumout => \Clock_Divider_0|Add0~25_sumout\,
	cout => \Clock_Divider_0|Add0~26\);

-- Location: FF_X82_Y14_N23
\Clock_Divider_0|elapse[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~25_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(7));

-- Location: MLABCELL_X82_Y14_N24
\Clock_Divider_0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~53_sumout\ = SUM(( !\Clock_Divider_0|elapse\(8) ) + ( VCC ) + ( \Clock_Divider_0|Add0~26\ ))
-- \Clock_Divider_0|Add0~54\ = CARRY(( !\Clock_Divider_0|elapse\(8) ) + ( VCC ) + ( \Clock_Divider_0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_elapse\(8),
	cin => \Clock_Divider_0|Add0~26\,
	sumout => \Clock_Divider_0|Add0~53_sumout\,
	cout => \Clock_Divider_0|Add0~54\);

-- Location: LABCELL_X81_Y14_N45
\Clock_Divider_0|elapse~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|elapse~5_combout\ = ( \Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~53_sumout\ & ( (((!\Clock_Divider_0|LessThan0~1_combout\) # (!\Clock_Divider_0|LessThan0~0_combout\)) # (\Clock_Divider_0|elapse\(14))) # 
-- (\Clock_Divider_0|elapse\(5)) ) ) ) # ( !\Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_elapse\(5),
	datab => \Clock_Divider_0|ALT_INV_elapse\(14),
	datac => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datad => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datae => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~53_sumout\,
	combout => \Clock_Divider_0|elapse~5_combout\);

-- Location: FF_X81_Y14_N46
\Clock_Divider_0|elapse[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~5_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(8));

-- Location: MLABCELL_X82_Y14_N27
\Clock_Divider_0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~21_sumout\ = SUM(( \Clock_Divider_0|elapse\(9) ) + ( VCC ) + ( \Clock_Divider_0|Add0~54\ ))
-- \Clock_Divider_0|Add0~22\ = CARRY(( \Clock_Divider_0|elapse\(9) ) + ( VCC ) + ( \Clock_Divider_0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_elapse\(9),
	cin => \Clock_Divider_0|Add0~54\,
	sumout => \Clock_Divider_0|Add0~21_sumout\,
	cout => \Clock_Divider_0|Add0~22\);

-- Location: FF_X82_Y14_N29
\Clock_Divider_0|elapse[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~21_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(9));

-- Location: MLABCELL_X82_Y14_N30
\Clock_Divider_0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~17_sumout\ = SUM(( \Clock_Divider_0|elapse\(10) ) + ( VCC ) + ( \Clock_Divider_0|Add0~22\ ))
-- \Clock_Divider_0|Add0~18\ = CARRY(( \Clock_Divider_0|elapse\(10) ) + ( VCC ) + ( \Clock_Divider_0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_elapse\(10),
	cin => \Clock_Divider_0|Add0~22\,
	sumout => \Clock_Divider_0|Add0~17_sumout\,
	cout => \Clock_Divider_0|Add0~18\);

-- Location: FF_X82_Y14_N31
\Clock_Divider_0|elapse[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~17_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(10));

-- Location: MLABCELL_X82_Y14_N33
\Clock_Divider_0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~13_sumout\ = SUM(( \Clock_Divider_0|elapse\(11) ) + ( VCC ) + ( \Clock_Divider_0|Add0~18\ ))
-- \Clock_Divider_0|Add0~14\ = CARRY(( \Clock_Divider_0|elapse\(11) ) + ( VCC ) + ( \Clock_Divider_0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_elapse\(11),
	cin => \Clock_Divider_0|Add0~18\,
	sumout => \Clock_Divider_0|Add0~13_sumout\,
	cout => \Clock_Divider_0|Add0~14\);

-- Location: FF_X82_Y14_N35
\Clock_Divider_0|elapse[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~13_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(11));

-- Location: FF_X81_Y14_N16
\Clock_Divider_0|elapse[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Clock_Divider_0|Add0~9_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	sload => VCC,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(12));

-- Location: MLABCELL_X82_Y14_N36
\Clock_Divider_0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~9_sumout\ = SUM(( \Clock_Divider_0|elapse\(12) ) + ( VCC ) + ( \Clock_Divider_0|Add0~14\ ))
-- \Clock_Divider_0|Add0~10\ = CARRY(( \Clock_Divider_0|elapse\(12) ) + ( VCC ) + ( \Clock_Divider_0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Divider_0|ALT_INV_elapse\(12),
	cin => \Clock_Divider_0|Add0~14\,
	sumout => \Clock_Divider_0|Add0~9_sumout\,
	cout => \Clock_Divider_0|Add0~10\);

-- Location: FF_X81_Y14_N17
\Clock_Divider_0|elapse[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Clock_Divider_0|Add0~9_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	sload => VCC,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse[12]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y14_N36
\Clock_Divider_0|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|LessThan0~0_combout\ = ( !\Clock_Divider_0|elapse\(9) & ( !\Clock_Divider_0|elapse[12]~DUPLICATE_q\ & ( (!\Clock_Divider_0|elapse\(11) & (!\Clock_Divider_0|elapse\(6) & (!\Clock_Divider_0|elapse\(7) & !\Clock_Divider_0|elapse\(10)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_elapse\(11),
	datab => \Clock_Divider_0|ALT_INV_elapse\(6),
	datac => \Clock_Divider_0|ALT_INV_elapse\(7),
	datad => \Clock_Divider_0|ALT_INV_elapse\(10),
	datae => \Clock_Divider_0|ALT_INV_elapse\(9),
	dataf => \Clock_Divider_0|ALT_INV_elapse[12]~DUPLICATE_q\,
	combout => \Clock_Divider_0|LessThan0~0_combout\);

-- Location: MLABCELL_X82_Y14_N39
\Clock_Divider_0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~49_sumout\ = SUM(( !\Clock_Divider_0|elapse\(13) ) + ( VCC ) + ( \Clock_Divider_0|Add0~10\ ))
-- \Clock_Divider_0|Add0~50\ = CARRY(( !\Clock_Divider_0|elapse\(13) ) + ( VCC ) + ( \Clock_Divider_0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_elapse\(13),
	cin => \Clock_Divider_0|Add0~10\,
	sumout => \Clock_Divider_0|Add0~49_sumout\,
	cout => \Clock_Divider_0|Add0~50\);

-- Location: LABCELL_X81_Y14_N54
\Clock_Divider_0|elapse~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|elapse~4_combout\ = ( \Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~49_sumout\ & ( (((!\Clock_Divider_0|LessThan0~0_combout\) # (!\Clock_Divider_0|LessThan0~1_combout\)) # (\Clock_Divider_0|elapse\(14))) # 
-- (\Clock_Divider_0|elapse\(5)) ) ) ) # ( !\Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_elapse\(5),
	datab => \Clock_Divider_0|ALT_INV_elapse\(14),
	datac => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datad => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datae => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~49_sumout\,
	combout => \Clock_Divider_0|elapse~4_combout\);

-- Location: FF_X81_Y14_N55
\Clock_Divider_0|elapse[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~4_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(13));

-- Location: FF_X82_Y14_N43
\Clock_Divider_0|elapse[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~1_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(14));

-- Location: MLABCELL_X82_Y14_N12
\Clock_Divider_0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~57_sumout\ = SUM(( !\Clock_Divider_0|elapse\(4) ) + ( VCC ) + ( \Clock_Divider_0|Add0~62\ ))
-- \Clock_Divider_0|Add0~58\ = CARRY(( !\Clock_Divider_0|elapse\(4) ) + ( VCC ) + ( \Clock_Divider_0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_elapse\(4),
	cin => \Clock_Divider_0|Add0~62\,
	sumout => \Clock_Divider_0|Add0~57_sumout\,
	cout => \Clock_Divider_0|Add0~58\);

-- Location: LABCELL_X81_Y14_N42
\Clock_Divider_0|elapse~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|elapse~6_combout\ = ( \Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~57_sumout\ & ( (((!\Clock_Divider_0|LessThan0~0_combout\) # (!\Clock_Divider_0|LessThan0~1_combout\)) # (\Clock_Divider_0|elapse\(14))) # 
-- (\Clock_Divider_0|elapse\(5)) ) ) ) # ( !\Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_elapse\(5),
	datab => \Clock_Divider_0|ALT_INV_elapse\(14),
	datac => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datad => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datae => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~57_sumout\,
	combout => \Clock_Divider_0|elapse~6_combout\);

-- Location: FF_X81_Y14_N43
\Clock_Divider_0|elapse[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|elapse~6_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(4));

-- Location: FF_X82_Y14_N17
\Clock_Divider_0|elapse[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~5_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|elapse\(5));

-- Location: LABCELL_X81_Y14_N24
\Clock_Divider_0|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|LessThan0~3_combout\ = ( \Clock_Divider_0|LessThan0~2_combout\ & ( (!\Clock_Divider_0|elapse\(5) & (\Clock_Divider_0|LessThan0~1_combout\ & (\Clock_Divider_0|LessThan0~0_combout\ & !\Clock_Divider_0|elapse\(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_elapse\(5),
	datab => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datac => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datad => \Clock_Divider_0|ALT_INV_elapse\(14),
	dataf => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	combout => \Clock_Divider_0|LessThan0~3_combout\);

-- Location: FF_X82_Y14_N47
\Clock_Divider_0|en_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Clock_Divider_0|LessThan0~3_combout\,
	sload => VCC,
	ena => \enable_clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|en_out~q\);

-- Location: MLABCELL_X84_Y14_N36
\Counter_0|clk_peak[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_0|clk_peak[0]~0_combout\ = ( \Clock_Divider_0|en_out~q\ & ( !\Counter_0|clk_peak\(0) ) ) # ( !\Clock_Divider_0|en_out~q\ & ( \Counter_0|clk_peak\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter_0|ALT_INV_clk_peak\(0),
	dataf => \Clock_Divider_0|ALT_INV_en_out~q\,
	combout => \Counter_0|clk_peak[0]~0_combout\);

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

-- Location: FF_X84_Y14_N2
\Counter_0|clk_peak[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|clk_peak[3]~3_combout\,
	clrn => \ALT_INV_reset_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|clk_peak\(3));

-- Location: FF_X84_Y14_N37
\Counter_0|clk_peak[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|clk_peak[0]~0_combout\,
	clrn => \ALT_INV_reset_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|clk_peak[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y14_N24
\Counter_0|clk_peak[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_0|clk_peak[1]~1_combout\ = ( \Counter_0|clk_peak\(1) & ( \Counter_0|clk_peak[0]~DUPLICATE_q\ & ( !\Clock_Divider_0|en_out~q\ ) ) ) # ( !\Counter_0|clk_peak\(1) & ( \Counter_0|clk_peak[0]~DUPLICATE_q\ & ( \Clock_Divider_0|en_out~q\ ) ) ) # ( 
-- \Counter_0|clk_peak\(1) & ( !\Counter_0|clk_peak[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_en_out~q\,
	datae => \Counter_0|ALT_INV_clk_peak\(1),
	dataf => \Counter_0|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	combout => \Counter_0|clk_peak[1]~1_combout\);

-- Location: FF_X84_Y14_N26
\Counter_0|clk_peak[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|clk_peak[1]~1_combout\,
	clrn => \ALT_INV_reset_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|clk_peak\(1));

-- Location: MLABCELL_X84_Y14_N9
\reset_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset_0~1_combout\ = ( \Counter_0|clk_peak\(0) & ( \Counter_0|clk_peak\(1) & ( !\reset~input_o\ ) ) ) # ( !\Counter_0|clk_peak\(0) & ( \Counter_0|clk_peak\(1) & ( (!\reset~input_o\) # ((!\Counter_0|clk_peak[2]~DUPLICATE_q\ & \Counter_0|clk_peak\(3))) ) ) 
-- ) # ( \Counter_0|clk_peak\(0) & ( !\Counter_0|clk_peak\(1) & ( !\reset~input_o\ ) ) ) # ( !\Counter_0|clk_peak\(0) & ( !\Counter_0|clk_peak\(1) & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010111110101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \Counter_0|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datad => \Counter_0|ALT_INV_clk_peak\(3),
	datae => \Counter_0|ALT_INV_clk_peak\(0),
	dataf => \Counter_0|ALT_INV_clk_peak\(1),
	combout => \reset_0~1_combout\);

-- Location: FF_X84_Y14_N38
\Counter_0|clk_peak[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|clk_peak[0]~0_combout\,
	clrn => \ALT_INV_reset_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|clk_peak\(0));

-- Location: FF_X84_Y14_N16
\Counter_0|clk_peak[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|clk_peak[2]~2_combout\,
	clrn => \ALT_INV_reset_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|clk_peak\(2));

-- Location: FF_X84_Y14_N25
\Counter_0|clk_peak[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|clk_peak[1]~1_combout\,
	clrn => \ALT_INV_reset_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|clk_peak[1]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y14_N15
\Counter_0|clk_peak[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_0|clk_peak[2]~2_combout\ = ( \Counter_0|clk_peak\(2) & ( \Counter_0|clk_peak[1]~DUPLICATE_q\ & ( (!\Clock_Divider_0|en_out~q\) # (!\Counter_0|clk_peak\(0)) ) ) ) # ( !\Counter_0|clk_peak\(2) & ( \Counter_0|clk_peak[1]~DUPLICATE_q\ & ( 
-- (\Clock_Divider_0|en_out~q\ & \Counter_0|clk_peak\(0)) ) ) ) # ( \Counter_0|clk_peak\(2) & ( !\Counter_0|clk_peak[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_en_out~q\,
	datad => \Counter_0|ALT_INV_clk_peak\(0),
	datae => \Counter_0|ALT_INV_clk_peak\(2),
	dataf => \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \Counter_0|clk_peak[2]~2_combout\);

-- Location: FF_X84_Y14_N17
\Counter_0|clk_peak[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|clk_peak[2]~2_combout\,
	clrn => \ALT_INV_reset_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|clk_peak[2]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y14_N0
\Counter_0|clk_peak[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_0|clk_peak[3]~3_combout\ = ( \Counter_0|clk_peak[1]~DUPLICATE_q\ & ( !\Counter_0|clk_peak\(3) $ (((!\Clock_Divider_0|en_out~q\) # ((!\Counter_0|clk_peak[2]~DUPLICATE_q\) # (!\Counter_0|clk_peak\(0))))) ) ) # ( !\Counter_0|clk_peak[1]~DUPLICATE_q\ 
-- & ( \Counter_0|clk_peak\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_en_out~q\,
	datab => \Counter_0|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_clk_peak\(0),
	datad => \Counter_0|ALT_INV_clk_peak\(3),
	dataf => \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \Counter_0|clk_peak[3]~3_combout\);

-- Location: FF_X84_Y14_N1
\Counter_0|clk_peak[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|clk_peak[3]~3_combout\,
	clrn => \ALT_INV_reset_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|clk_peak[3]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y14_N39
\decoder_0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux6~0_combout\ = ( \Counter_0|clk_peak\(2) & ( (!\Counter_0|clk_peak[3]~DUPLICATE_q\ & ((!\Counter_0|clk_peak[0]~DUPLICATE_q\) # (!\Counter_0|clk_peak[1]~DUPLICATE_q\))) # (\Counter_0|clk_peak[3]~DUPLICATE_q\ & 
-- ((\Counter_0|clk_peak[1]~DUPLICATE_q\) # (\Counter_0|clk_peak[0]~DUPLICATE_q\))) ) ) # ( !\Counter_0|clk_peak\(2) & ( (\Counter_0|clk_peak[1]~DUPLICATE_q\) # (\Counter_0|clk_peak[3]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111110111101101111011011110110111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datab => \Counter_0|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_clk_peak\(2),
	combout => \decoder_0|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y14_N3
\decoder_0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux5~0_combout\ = ( \Counter_0|clk_peak[1]~DUPLICATE_q\ & ( (!\Counter_0|clk_peak[0]~DUPLICATE_q\ & (!\Counter_0|clk_peak[2]~DUPLICATE_q\)) # (\Counter_0|clk_peak[0]~DUPLICATE_q\ & ((!\Counter_0|clk_peak[3]~DUPLICATE_q\))) ) ) # ( 
-- !\Counter_0|clk_peak[1]~DUPLICATE_q\ & ( (\Counter_0|clk_peak[0]~DUPLICATE_q\ & (!\Counter_0|clk_peak[2]~DUPLICATE_q\ $ (\Counter_0|clk_peak[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111001111110000001100111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_0|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datad => \Counter_0|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \decoder_0|Mux5~0_combout\);

-- Location: MLABCELL_X84_Y14_N18
\decoder_0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux4~0_combout\ = ( !\Counter_0|clk_peak[3]~DUPLICATE_q\ & ( \Counter_0|clk_peak[1]~DUPLICATE_q\ & ( \Counter_0|clk_peak\(0) ) ) ) # ( \Counter_0|clk_peak[3]~DUPLICATE_q\ & ( !\Counter_0|clk_peak[1]~DUPLICATE_q\ & ( (!\Counter_0|clk_peak\(2) & 
-- \Counter_0|clk_peak\(0)) ) ) ) # ( !\Counter_0|clk_peak[3]~DUPLICATE_q\ & ( !\Counter_0|clk_peak[1]~DUPLICATE_q\ & ( (\Counter_0|clk_peak\(0)) # (\Counter_0|clk_peak\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011000000110000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_0|ALT_INV_clk_peak\(2),
	datac => \Counter_0|ALT_INV_clk_peak\(0),
	datae => \Counter_0|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \decoder_0|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y14_N54
\decoder_0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux3~0_combout\ = ( \Counter_0|clk_peak[3]~DUPLICATE_q\ & ( \Counter_0|clk_peak[1]~DUPLICATE_q\ & ( (\Counter_0|clk_peak\(2) & \Counter_0|clk_peak\(0)) ) ) ) # ( !\Counter_0|clk_peak[3]~DUPLICATE_q\ & ( \Counter_0|clk_peak[1]~DUPLICATE_q\ & ( 
-- (\Counter_0|clk_peak\(2) & \Counter_0|clk_peak\(0)) ) ) ) # ( !\Counter_0|clk_peak[3]~DUPLICATE_q\ & ( !\Counter_0|clk_peak[1]~DUPLICATE_q\ & ( !\Counter_0|clk_peak\(2) $ (!\Counter_0|clk_peak\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_0|ALT_INV_clk_peak\(2),
	datac => \Counter_0|ALT_INV_clk_peak\(0),
	datae => \Counter_0|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \decoder_0|Mux3~0_combout\);

-- Location: MLABCELL_X84_Y14_N51
\decoder_0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux2~0_combout\ = ( \Counter_0|clk_peak[3]~DUPLICATE_q\ & ( \Counter_0|clk_peak[1]~DUPLICATE_q\ & ( \Counter_0|clk_peak\(2) ) ) ) # ( !\Counter_0|clk_peak[3]~DUPLICATE_q\ & ( \Counter_0|clk_peak[1]~DUPLICATE_q\ & ( (!\Counter_0|clk_peak\(0) & 
-- !\Counter_0|clk_peak\(2)) ) ) ) # ( \Counter_0|clk_peak[3]~DUPLICATE_q\ & ( !\Counter_0|clk_peak[1]~DUPLICATE_q\ & ( (!\Counter_0|clk_peak\(0) & \Counter_0|clk_peak\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_clk_peak\(0),
	datac => \Counter_0|ALT_INV_clk_peak\(2),
	datae => \Counter_0|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \decoder_0|Mux2~0_combout\);

-- Location: LABCELL_X85_Y15_N36
\decoder_0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux1~0_combout\ = ( \Counter_0|clk_peak\(2) & ( (!\Counter_0|clk_peak[0]~DUPLICATE_q\ & ((\Counter_0|clk_peak[3]~DUPLICATE_q\) # (\Counter_0|clk_peak[1]~DUPLICATE_q\))) # (\Counter_0|clk_peak[0]~DUPLICATE_q\ & 
-- (!\Counter_0|clk_peak[1]~DUPLICATE_q\ $ (\Counter_0|clk_peak[3]~DUPLICATE_q\))) ) ) # ( !\Counter_0|clk_peak\(2) & ( (\Counter_0|clk_peak[0]~DUPLICATE_q\ & (\Counter_0|clk_peak[1]~DUPLICATE_q\ & \Counter_0|clk_peak[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datab => \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_clk_peak\(2),
	combout => \decoder_0|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y14_N33
\decoder_0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux0~0_combout\ = ( \Counter_0|clk_peak[3]~DUPLICATE_q\ & ( \Counter_0|clk_peak[1]~DUPLICATE_q\ & ( (\Counter_0|clk_peak\(0) & !\Counter_0|clk_peak\(2)) ) ) ) # ( \Counter_0|clk_peak[3]~DUPLICATE_q\ & ( !\Counter_0|clk_peak[1]~DUPLICATE_q\ & ( 
-- (\Counter_0|clk_peak\(0) & \Counter_0|clk_peak\(2)) ) ) ) # ( !\Counter_0|clk_peak[3]~DUPLICATE_q\ & ( !\Counter_0|clk_peak[1]~DUPLICATE_q\ & ( !\Counter_0|clk_peak\(0) $ (!\Counter_0|clk_peak\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000001010000010100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_clk_peak\(0),
	datac => \Counter_0|ALT_INV_clk_peak\(2),
	datae => \Counter_0|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \decoder_0|Mux0~0_combout\);

-- Location: LABCELL_X85_Y15_N39
\Counter_1|clk_peak[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_1|clk_peak[1]~1_combout\ = ( \enable_2~0_combout\ & ( !\Counter_1|clk_peak\(1) ) ) # ( !\enable_2~0_combout\ & ( \Counter_1|clk_peak\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter_1|ALT_INV_clk_peak\(1),
	dataf => \ALT_INV_enable_2~0_combout\,
	combout => \Counter_1|clk_peak[1]~1_combout\);

-- Location: FF_X85_Y15_N41
\Counter_1|clk_peak[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_1|clk_peak[1]~1_combout\,
	clrn => \ALT_INV_reset_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_1|clk_peak\(1));

-- Location: LABCELL_X85_Y15_N54
\Counter_1|clk_peak[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_1|clk_peak[3]~3_combout\ = ( \Counter_1|clk_peak\(1) & ( !\Counter_1|clk_peak\(3) $ (((!\Counter_1|clk_peak[2]~DUPLICATE_q\) # (!\enable_2~0_combout\))) ) ) # ( !\Counter_1|clk_peak\(1) & ( \Counter_1|clk_peak\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datac => \ALT_INV_enable_2~0_combout\,
	datad => \Counter_1|ALT_INV_clk_peak\(3),
	dataf => \Counter_1|ALT_INV_clk_peak\(1),
	combout => \Counter_1|clk_peak[3]~3_combout\);

-- Location: FF_X85_Y15_N56
\Counter_1|clk_peak[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_1|clk_peak[3]~3_combout\,
	clrn => \ALT_INV_reset_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_1|clk_peak\(3));

-- Location: LABCELL_X85_Y15_N15
\reset_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset_1~0_combout\ = ( \Counter_1|clk_peak\(0) & ( \Counter_1|clk_peak\(1) & ( !\reset~input_o\ ) ) ) # ( !\Counter_1|clk_peak\(0) & ( \Counter_1|clk_peak\(1) & ( (!\reset~input_o\) # ((\Counter_1|clk_peak\(3) & !\Counter_1|clk_peak[2]~DUPLICATE_q\)) ) ) 
-- ) # ( \Counter_1|clk_peak\(0) & ( !\Counter_1|clk_peak\(1) & ( !\reset~input_o\ ) ) ) # ( !\Counter_1|clk_peak\(0) & ( !\Counter_1|clk_peak\(1) & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110101111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_clk_peak\(3),
	datac => \ALT_INV_reset~input_o\,
	datad => \Counter_1|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datae => \Counter_1|ALT_INV_clk_peak\(0),
	dataf => \Counter_1|ALT_INV_clk_peak\(1),
	combout => \reset_1~0_combout\);

-- Location: FF_X85_Y15_N49
\Counter_1|clk_peak[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_1|clk_peak[0]~0_combout\,
	clrn => \ALT_INV_reset_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_1|clk_peak\(0));

-- Location: LABCELL_X85_Y15_N48
\Counter_1|clk_peak[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_1|clk_peak[0]~0_combout\ = ( \Counter_1|clk_peak\(0) & ( \Counter_0|clk_peak\(2) ) ) # ( \Counter_1|clk_peak\(0) & ( !\Counter_0|clk_peak\(2) & ( (!\Counter_0|clk_peak[3]~DUPLICATE_q\) # ((!\Counter_0|clk_peak[0]~DUPLICATE_q\) # 
-- ((!\Clock_Divider_0|en_out~q\) # (\Counter_0|clk_peak[1]~DUPLICATE_q\))) ) ) ) # ( !\Counter_1|clk_peak\(0) & ( !\Counter_0|clk_peak\(2) & ( (\Counter_0|clk_peak[3]~DUPLICATE_q\ & (\Counter_0|clk_peak[0]~DUPLICATE_q\ & (\Clock_Divider_0|en_out~q\ & 
-- !\Counter_0|clk_peak[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111111101111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datab => \Counter_0|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datac => \Clock_Divider_0|ALT_INV_en_out~q\,
	datad => \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datae => \Counter_1|ALT_INV_clk_peak\(0),
	dataf => \Counter_0|ALT_INV_clk_peak\(2),
	combout => \Counter_1|clk_peak[0]~0_combout\);

-- Location: FF_X85_Y15_N50
\Counter_1|clk_peak[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_1|clk_peak[0]~0_combout\,
	clrn => \ALT_INV_reset_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_1|clk_peak[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y14_N45
\enable_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_2~0_combout\ = ( \Clock_Divider_0|en_out~q\ & ( \Counter_1|clk_peak[0]~DUPLICATE_q\ & ( (\Counter_0|clk_peak[3]~DUPLICATE_q\ & (!\Counter_0|clk_peak[2]~DUPLICATE_q\ & (!\Counter_0|clk_peak[1]~DUPLICATE_q\ & \Counter_0|clk_peak\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datab => \Counter_0|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datad => \Counter_0|ALT_INV_clk_peak\(0),
	datae => \Clock_Divider_0|ALT_INV_en_out~q\,
	dataf => \Counter_1|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	combout => \enable_2~0_combout\);

-- Location: FF_X85_Y15_N22
\Counter_1|clk_peak[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_1|clk_peak[2]~2_combout\,
	clrn => \ALT_INV_reset_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_1|clk_peak\(2));

-- Location: LABCELL_X85_Y15_N21
\Counter_1|clk_peak[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_1|clk_peak[2]~2_combout\ = ( \Counter_1|clk_peak\(1) & ( !\enable_2~0_combout\ $ (!\Counter_1|clk_peak\(2)) ) ) # ( !\Counter_1|clk_peak\(1) & ( \Counter_1|clk_peak\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable_2~0_combout\,
	datad => \Counter_1|ALT_INV_clk_peak\(2),
	dataf => \Counter_1|ALT_INV_clk_peak\(1),
	combout => \Counter_1|clk_peak[2]~2_combout\);

-- Location: FF_X85_Y15_N23
\Counter_1|clk_peak[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_1|clk_peak[2]~2_combout\,
	clrn => \ALT_INV_reset_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_1|clk_peak[2]~DUPLICATE_q\);

-- Location: FF_X85_Y15_N55
\Counter_1|clk_peak[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_1|clk_peak[3]~3_combout\,
	clrn => \ALT_INV_reset_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_1|clk_peak[3]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y15_N57
\decoder_1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux6~0_combout\ = ( \Counter_1|clk_peak[0]~DUPLICATE_q\ & ( (!\Counter_1|clk_peak[2]~DUPLICATE_q\ $ (!\Counter_1|clk_peak\(1))) # (\Counter_1|clk_peak[3]~DUPLICATE_q\) ) ) # ( !\Counter_1|clk_peak[0]~DUPLICATE_q\ & ( 
-- (!\Counter_1|clk_peak[2]~DUPLICATE_q\ $ (!\Counter_1|clk_peak[3]~DUPLICATE_q\)) # (\Counter_1|clk_peak\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101101101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datab => \Counter_1|ALT_INV_clk_peak\(1),
	datac => \Counter_1|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_1|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	combout => \decoder_1|Mux6~0_combout\);

-- Location: LABCELL_X88_Y15_N0
\decoder_1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux5~0_combout\ = ( \Counter_1|clk_peak[0]~DUPLICATE_q\ & ( \Counter_1|clk_peak\(2) & ( !\Counter_1|clk_peak\(1) $ (!\Counter_1|clk_peak[3]~DUPLICATE_q\) ) ) ) # ( \Counter_1|clk_peak[0]~DUPLICATE_q\ & ( !\Counter_1|clk_peak\(2) & ( 
-- !\Counter_1|clk_peak[3]~DUPLICATE_q\ ) ) ) # ( !\Counter_1|clk_peak[0]~DUPLICATE_q\ & ( !\Counter_1|clk_peak\(2) & ( \Counter_1|clk_peak\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111100001111000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_1|ALT_INV_clk_peak\(1),
	datac => \Counter_1|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datae => \Counter_1|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	dataf => \Counter_1|ALT_INV_clk_peak\(2),
	combout => \decoder_1|Mux5~0_combout\);

-- Location: LABCELL_X88_Y15_N45
\decoder_1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux4~0_combout\ = ( \Counter_1|clk_peak[0]~DUPLICATE_q\ & ( \Counter_1|clk_peak\(2) & ( !\Counter_1|clk_peak[3]~DUPLICATE_q\ ) ) ) # ( !\Counter_1|clk_peak[0]~DUPLICATE_q\ & ( \Counter_1|clk_peak\(2) & ( (!\Counter_1|clk_peak[3]~DUPLICATE_q\ & 
-- !\Counter_1|clk_peak\(1)) ) ) ) # ( \Counter_1|clk_peak[0]~DUPLICATE_q\ & ( !\Counter_1|clk_peak\(2) & ( (!\Counter_1|clk_peak[3]~DUPLICATE_q\) # (!\Counter_1|clk_peak\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101010100000101000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datac => \Counter_1|ALT_INV_clk_peak\(1),
	datae => \Counter_1|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	dataf => \Counter_1|ALT_INV_clk_peak\(2),
	combout => \decoder_1|Mux4~0_combout\);

-- Location: LABCELL_X85_Y15_N42
\decoder_1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux3~0_combout\ = ( \Counter_1|clk_peak[3]~DUPLICATE_q\ & ( \Counter_1|clk_peak\(1) & ( (\Counter_1|clk_peak[0]~DUPLICATE_q\ & \Counter_1|clk_peak\(2)) ) ) ) # ( !\Counter_1|clk_peak[3]~DUPLICATE_q\ & ( \Counter_1|clk_peak\(1) & ( 
-- (\Counter_1|clk_peak[0]~DUPLICATE_q\ & \Counter_1|clk_peak\(2)) ) ) ) # ( !\Counter_1|clk_peak[3]~DUPLICATE_q\ & ( !\Counter_1|clk_peak\(1) & ( !\Counter_1|clk_peak[0]~DUPLICATE_q\ $ (!\Counter_1|clk_peak\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datac => \Counter_1|ALT_INV_clk_peak\(2),
	datae => \Counter_1|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_1|ALT_INV_clk_peak\(1),
	combout => \decoder_1|Mux3~0_combout\);

-- Location: LABCELL_X88_Y15_N51
\decoder_1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux2~0_combout\ = ( \Counter_1|clk_peak[0]~DUPLICATE_q\ & ( \Counter_1|clk_peak\(2) & ( (\Counter_1|clk_peak[3]~DUPLICATE_q\ & \Counter_1|clk_peak\(1)) ) ) ) # ( !\Counter_1|clk_peak[0]~DUPLICATE_q\ & ( \Counter_1|clk_peak\(2) & ( 
-- \Counter_1|clk_peak[3]~DUPLICATE_q\ ) ) ) # ( !\Counter_1|clk_peak[0]~DUPLICATE_q\ & ( !\Counter_1|clk_peak\(2) & ( (!\Counter_1|clk_peak[3]~DUPLICATE_q\ & \Counter_1|clk_peak\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000001010101010101010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datac => \Counter_1|ALT_INV_clk_peak\(1),
	datae => \Counter_1|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	dataf => \Counter_1|ALT_INV_clk_peak\(2),
	combout => \decoder_1|Mux2~0_combout\);

-- Location: LABCELL_X85_Y15_N0
\decoder_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux1~0_combout\ = ( \Counter_1|clk_peak[0]~DUPLICATE_q\ & ( (!\Counter_1|clk_peak\(1) & (\Counter_1|clk_peak\(2) & !\Counter_1|clk_peak[3]~DUPLICATE_q\)) # (\Counter_1|clk_peak\(1) & ((\Counter_1|clk_peak[3]~DUPLICATE_q\))) ) ) # ( 
-- !\Counter_1|clk_peak[0]~DUPLICATE_q\ & ( (\Counter_1|clk_peak\(2) & ((\Counter_1|clk_peak[3]~DUPLICATE_q\) # (\Counter_1|clk_peak\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101000100001100110100010000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_clk_peak\(2),
	datab => \Counter_1|ALT_INV_clk_peak\(1),
	datad => \Counter_1|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_1|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	combout => \decoder_1|Mux1~0_combout\);

-- Location: LABCELL_X85_Y15_N3
\decoder_1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux0~0_combout\ = ( \Counter_1|clk_peak[0]~DUPLICATE_q\ & ( (!\Counter_1|clk_peak\(2) & (!\Counter_1|clk_peak\(1) $ (\Counter_1|clk_peak[3]~DUPLICATE_q\))) # (\Counter_1|clk_peak\(2) & (!\Counter_1|clk_peak\(1) & 
-- \Counter_1|clk_peak[3]~DUPLICATE_q\)) ) ) # ( !\Counter_1|clk_peak[0]~DUPLICATE_q\ & ( (\Counter_1|clk_peak\(2) & (!\Counter_1|clk_peak\(1) & !\Counter_1|clk_peak[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010000110100001101000011010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_clk_peak\(2),
	datab => \Counter_1|ALT_INV_clk_peak\(1),
	datac => \Counter_1|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_1|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	combout => \decoder_1|Mux0~0_combout\);

-- Location: LABCELL_X85_Y15_N9
\enable_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_2~1_combout\ = ( !\Counter_1|clk_peak[2]~DUPLICATE_q\ & ( !\Counter_1|clk_peak\(1) & ( \Counter_1|clk_peak[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter_1|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datae => \Counter_1|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	dataf => \Counter_1|ALT_INV_clk_peak\(1),
	combout => \enable_2~1_combout\);

-- Location: FF_X84_Y15_N29
\Counter_2|clk_peak[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_2|clk_peak[2]~2_combout\,
	clrn => \ALT_INV_reset_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_2|clk_peak\(2));

-- Location: MLABCELL_X84_Y15_N21
\Counter_2|clk_peak[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_2|clk_peak[1]~1_combout\ = ( \Counter_2|clk_peak\(0) & ( !\Counter_2|clk_peak\(1) $ (((!\enable_2~1_combout\) # (!\enable_2~0_combout\))) ) ) # ( !\Counter_2|clk_peak\(0) & ( \Counter_2|clk_peak\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_2~1_combout\,
	datac => \ALT_INV_enable_2~0_combout\,
	datad => \Counter_2|ALT_INV_clk_peak\(1),
	dataf => \Counter_2|ALT_INV_clk_peak\(0),
	combout => \Counter_2|clk_peak[1]~1_combout\);

-- Location: FF_X84_Y15_N23
\Counter_2|clk_peak[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_2|clk_peak[1]~1_combout\,
	clrn => \ALT_INV_reset_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_2|clk_peak\(1));

-- Location: MLABCELL_X84_Y15_N42
\Counter_2|clk_peak[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_2|clk_peak[3]~3_combout\ = ( \Counter_2|clk_peak\(3) & ( \Counter_2|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_2|clk_peak\(1)) # ((!\enable_2~0_combout\) # ((!\Counter_2|clk_peak\(0)) # (!\enable_2~1_combout\))) ) ) ) # ( !\Counter_2|clk_peak\(3) & 
-- ( \Counter_2|clk_peak[2]~DUPLICATE_q\ & ( (\Counter_2|clk_peak\(1) & (\enable_2~0_combout\ & (\Counter_2|clk_peak\(0) & \enable_2~1_combout\))) ) ) ) # ( \Counter_2|clk_peak\(3) & ( !\Counter_2|clk_peak[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_clk_peak\(1),
	datab => \ALT_INV_enable_2~0_combout\,
	datac => \Counter_2|ALT_INV_clk_peak\(0),
	datad => \ALT_INV_enable_2~1_combout\,
	datae => \Counter_2|ALT_INV_clk_peak\(3),
	dataf => \Counter_2|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \Counter_2|clk_peak[3]~3_combout\);

-- Location: FF_X84_Y15_N44
\Counter_2|clk_peak[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_2|clk_peak[3]~3_combout\,
	clrn => \ALT_INV_reset_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_2|clk_peak\(3));

-- Location: FF_X84_Y15_N22
\Counter_2|clk_peak[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_2|clk_peak[1]~1_combout\,
	clrn => \ALT_INV_reset_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_2|clk_peak[1]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y15_N6
\reset_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset_2~0_combout\ = ( \Counter_2|clk_peak[0]~DUPLICATE_q\ & ( \Counter_2|clk_peak[1]~DUPLICATE_q\ & ( !\reset~input_o\ ) ) ) # ( !\Counter_2|clk_peak[0]~DUPLICATE_q\ & ( \Counter_2|clk_peak[1]~DUPLICATE_q\ & ( (!\reset~input_o\) # 
-- ((!\Counter_2|clk_peak\(2) & \Counter_2|clk_peak\(3))) ) ) ) # ( \Counter_2|clk_peak[0]~DUPLICATE_q\ & ( !\Counter_2|clk_peak[1]~DUPLICATE_q\ & ( !\reset~input_o\ ) ) ) # ( !\Counter_2|clk_peak[0]~DUPLICATE_q\ & ( !\Counter_2|clk_peak[1]~DUPLICATE_q\ & ( 
-- !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \Counter_2|ALT_INV_clk_peak\(2),
	datad => \Counter_2|ALT_INV_clk_peak\(3),
	datae => \Counter_2|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	dataf => \Counter_2|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \reset_2~0_combout\);

-- Location: FF_X84_Y15_N58
\Counter_2|clk_peak[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_2|clk_peak[0]~0_combout\,
	clrn => \ALT_INV_reset_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_2|clk_peak\(0));

-- Location: MLABCELL_X84_Y15_N57
\Counter_2|clk_peak[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_2|clk_peak[0]~0_combout\ = ( \Counter_2|clk_peak\(0) & ( \enable_2~0_combout\ & ( !\enable_2~1_combout\ ) ) ) # ( !\Counter_2|clk_peak\(0) & ( \enable_2~0_combout\ & ( \enable_2~1_combout\ ) ) ) # ( \Counter_2|clk_peak\(0) & ( 
-- !\enable_2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_2~1_combout\,
	datae => \Counter_2|ALT_INV_clk_peak\(0),
	dataf => \ALT_INV_enable_2~0_combout\,
	combout => \Counter_2|clk_peak[0]~0_combout\);

-- Location: FF_X84_Y15_N59
\Counter_2|clk_peak[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_2|clk_peak[0]~0_combout\,
	clrn => \ALT_INV_reset_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_2|clk_peak[0]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y15_N27
\Counter_2|clk_peak[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_2|clk_peak[2]~2_combout\ = ( \Counter_2|clk_peak\(2) & ( \Counter_2|clk_peak[1]~DUPLICATE_q\ & ( (!\enable_2~1_combout\) # ((!\enable_2~0_combout\) # (!\Counter_2|clk_peak[0]~DUPLICATE_q\)) ) ) ) # ( !\Counter_2|clk_peak\(2) & ( 
-- \Counter_2|clk_peak[1]~DUPLICATE_q\ & ( (\enable_2~1_combout\ & (\enable_2~0_combout\ & \Counter_2|clk_peak[0]~DUPLICATE_q\)) ) ) ) # ( \Counter_2|clk_peak\(2) & ( !\Counter_2|clk_peak[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000001000000011111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_2~1_combout\,
	datab => \ALT_INV_enable_2~0_combout\,
	datac => \Counter_2|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datae => \Counter_2|ALT_INV_clk_peak\(2),
	dataf => \Counter_2|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \Counter_2|clk_peak[2]~2_combout\);

-- Location: FF_X84_Y15_N28
\Counter_2|clk_peak[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_2|clk_peak[2]~2_combout\,
	clrn => \ALT_INV_reset_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_2|clk_peak[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y15_N36
\decoder_2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux6~0_combout\ = ( \Counter_2|clk_peak[1]~DUPLICATE_q\ & ( \Counter_2|clk_peak\(3) ) ) # ( !\Counter_2|clk_peak[1]~DUPLICATE_q\ & ( \Counter_2|clk_peak\(3) & ( (!\Counter_2|clk_peak[2]~DUPLICATE_q\) # (\Counter_2|clk_peak\(0)) ) ) ) # ( 
-- \Counter_2|clk_peak[1]~DUPLICATE_q\ & ( !\Counter_2|clk_peak\(3) & ( (!\Counter_2|clk_peak[2]~DUPLICATE_q\) # (!\Counter_2|clk_peak\(0)) ) ) ) # ( !\Counter_2|clk_peak[1]~DUPLICATE_q\ & ( !\Counter_2|clk_peak\(3) & ( \Counter_2|clk_peak[2]~DUPLICATE_q\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111100110011001100111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_2|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datad => \Counter_2|ALT_INV_clk_peak\(0),
	datae => \Counter_2|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	dataf => \Counter_2|ALT_INV_clk_peak\(3),
	combout => \decoder_2|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y15_N33
\decoder_2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux5~0_combout\ = ( \Counter_2|clk_peak\(0) & ( !\Counter_2|clk_peak\(3) $ (((!\Counter_2|clk_peak[1]~DUPLICATE_q\ & \Counter_2|clk_peak[2]~DUPLICATE_q\))) ) ) # ( !\Counter_2|clk_peak\(0) & ( (\Counter_2|clk_peak[1]~DUPLICATE_q\ & 
-- !\Counter_2|clk_peak[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110011000011001111001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_2|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datac => \Counter_2|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datad => \Counter_2|ALT_INV_clk_peak\(3),
	dataf => \Counter_2|ALT_INV_clk_peak\(0),
	combout => \decoder_2|Mux5~0_combout\);

-- Location: MLABCELL_X84_Y15_N0
\decoder_2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux4~0_combout\ = ( \Counter_2|clk_peak\(3) & ( (!\Counter_2|clk_peak\(1) & (!\Counter_2|clk_peak[2]~DUPLICATE_q\ & \Counter_2|clk_peak\(0))) ) ) # ( !\Counter_2|clk_peak\(3) & ( ((!\Counter_2|clk_peak\(1) & 
-- \Counter_2|clk_peak[2]~DUPLICATE_q\)) # (\Counter_2|clk_peak\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111000010000000100000101111001011110000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_clk_peak\(1),
	datab => \Counter_2|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datac => \Counter_2|ALT_INV_clk_peak\(0),
	datae => \Counter_2|ALT_INV_clk_peak\(3),
	combout => \decoder_2|Mux4~0_combout\);

-- Location: LABCELL_X85_Y15_N24
\decoder_2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux3~0_combout\ = ( \Counter_2|clk_peak[0]~DUPLICATE_q\ & ( (!\Counter_2|clk_peak[2]~DUPLICATE_q\ & (!\Counter_2|clk_peak\(3) & !\Counter_2|clk_peak[1]~DUPLICATE_q\)) # (\Counter_2|clk_peak[2]~DUPLICATE_q\ & 
-- ((\Counter_2|clk_peak[1]~DUPLICATE_q\))) ) ) # ( !\Counter_2|clk_peak[0]~DUPLICATE_q\ & ( (!\Counter_2|clk_peak\(3) & (\Counter_2|clk_peak[2]~DUPLICATE_q\ & !\Counter_2|clk_peak[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_clk_peak\(3),
	datac => \Counter_2|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datad => \Counter_2|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	dataf => \Counter_2|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	combout => \decoder_2|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y15_N42
\decoder_2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux2~0_combout\ = ( \Counter_2|clk_peak[1]~DUPLICATE_q\ & ( \Counter_2|clk_peak\(3) & ( \Counter_2|clk_peak[2]~DUPLICATE_q\ ) ) ) # ( !\Counter_2|clk_peak[1]~DUPLICATE_q\ & ( \Counter_2|clk_peak\(3) & ( (\Counter_2|clk_peak[2]~DUPLICATE_q\ & 
-- !\Counter_2|clk_peak\(0)) ) ) ) # ( \Counter_2|clk_peak[1]~DUPLICATE_q\ & ( !\Counter_2|clk_peak\(3) & ( (!\Counter_2|clk_peak[2]~DUPLICATE_q\ & !\Counter_2|clk_peak\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000110011000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_2|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datad => \Counter_2|ALT_INV_clk_peak\(0),
	datae => \Counter_2|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	dataf => \Counter_2|ALT_INV_clk_peak\(3),
	combout => \decoder_2|Mux2~0_combout\);

-- Location: MLABCELL_X84_Y15_N15
\decoder_2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux1~0_combout\ = ( \Counter_2|clk_peak\(0) & ( (!\Counter_2|clk_peak\(1) & (\Counter_2|clk_peak[2]~DUPLICATE_q\ & !\Counter_2|clk_peak\(3))) # (\Counter_2|clk_peak\(1) & ((\Counter_2|clk_peak\(3)))) ) ) # ( !\Counter_2|clk_peak\(0) & ( 
-- (\Counter_2|clk_peak[2]~DUPLICATE_q\ & ((\Counter_2|clk_peak\(3)) # (\Counter_2|clk_peak\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100110000000011110011000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_2|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datac => \Counter_2|ALT_INV_clk_peak\(1),
	datad => \Counter_2|ALT_INV_clk_peak\(3),
	dataf => \Counter_2|ALT_INV_clk_peak\(0),
	combout => \decoder_2|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y15_N3
\decoder_2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux0~0_combout\ = ( \Counter_2|clk_peak[1]~DUPLICATE_q\ & ( \Counter_2|clk_peak\(3) & ( (\Counter_2|clk_peak\(0) & !\Counter_2|clk_peak[2]~DUPLICATE_q\) ) ) ) # ( !\Counter_2|clk_peak[1]~DUPLICATE_q\ & ( \Counter_2|clk_peak\(3) & ( 
-- (\Counter_2|clk_peak\(0) & \Counter_2|clk_peak[2]~DUPLICATE_q\) ) ) ) # ( !\Counter_2|clk_peak[1]~DUPLICATE_q\ & ( !\Counter_2|clk_peak\(3) & ( !\Counter_2|clk_peak\(0) $ (!\Counter_2|clk_peak[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000000000000000000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_2|ALT_INV_clk_peak\(0),
	datac => \Counter_2|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datae => \Counter_2|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	dataf => \Counter_2|ALT_INV_clk_peak\(3),
	combout => \decoder_2|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y15_N30
\enable_3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_3~0_combout\ = ( !\Counter_2|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_2|clk_peak[1]~DUPLICATE_q\ & \Counter_2|clk_peak\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_2|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datad => \Counter_2|ALT_INV_clk_peak\(3),
	dataf => \Counter_2|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \enable_3~0_combout\);

-- Location: LABCELL_X83_Y15_N24
\enable_4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_4~0_combout\ = ( \enable_2~0_combout\ & ( \Counter_3|clk_peak[0]~DUPLICATE_q\ & ( (\Counter_2|clk_peak\(0) & (\enable_3~0_combout\ & \enable_2~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_clk_peak\(0),
	datac => \ALT_INV_enable_3~0_combout\,
	datad => \ALT_INV_enable_2~1_combout\,
	datae => \ALT_INV_enable_2~0_combout\,
	dataf => \Counter_3|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	combout => \enable_4~0_combout\);

-- Location: LABCELL_X83_Y15_N45
\Counter_3|clk_peak[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_3|clk_peak[2]~2_combout\ = ( \Counter_3|clk_peak\(2) & ( \Counter_3|clk_peak[1]~DUPLICATE_q\ & ( !\enable_4~0_combout\ ) ) ) # ( !\Counter_3|clk_peak\(2) & ( \Counter_3|clk_peak[1]~DUPLICATE_q\ & ( \enable_4~0_combout\ ) ) ) # ( 
-- \Counter_3|clk_peak\(2) & ( !\Counter_3|clk_peak[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_4~0_combout\,
	datae => \Counter_3|ALT_INV_clk_peak\(2),
	dataf => \Counter_3|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \Counter_3|clk_peak[2]~2_combout\);

-- Location: FF_X83_Y15_N47
\Counter_3|clk_peak[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|clk_peak[2]~2_combout\,
	clrn => \ALT_INV_reset_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|clk_peak\(2));

-- Location: FF_X83_Y15_N46
\Counter_3|clk_peak[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|clk_peak[2]~2_combout\,
	clrn => \ALT_INV_reset_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|clk_peak[2]~DUPLICATE_q\);

-- Location: LABCELL_X83_Y15_N54
\Counter_3|clk_peak[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_3|clk_peak[3]~3_combout\ = ( \Counter_3|clk_peak\(3) & ( \Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (!\enable_4~0_combout\) # (!\Counter_3|clk_peak[1]~DUPLICATE_q\) ) ) ) # ( !\Counter_3|clk_peak\(3) & ( \Counter_3|clk_peak[2]~DUPLICATE_q\ & ( 
-- (\enable_4~0_combout\ & \Counter_3|clk_peak[1]~DUPLICATE_q\) ) ) ) # ( \Counter_3|clk_peak\(3) & ( !\Counter_3|clk_peak[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable_4~0_combout\,
	datad => \Counter_3|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datae => \Counter_3|ALT_INV_clk_peak\(3),
	dataf => \Counter_3|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \Counter_3|clk_peak[3]~3_combout\);

-- Location: FF_X83_Y15_N56
\Counter_3|clk_peak[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|clk_peak[3]~3_combout\,
	clrn => \ALT_INV_reset_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|clk_peak\(3));

-- Location: LABCELL_X83_Y15_N15
\reset_3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset_3~0_combout\ = ( \Counter_3|clk_peak\(3) & ( \Counter_3|clk_peak[1]~DUPLICATE_q\ & ( !\reset~input_o\ ) ) ) # ( !\Counter_3|clk_peak\(3) & ( \Counter_3|clk_peak[1]~DUPLICATE_q\ & ( (!\reset~input_o\) # ((\Counter_3|clk_peak\(2) & 
-- !\Counter_3|clk_peak[0]~DUPLICATE_q\)) ) ) ) # ( \Counter_3|clk_peak\(3) & ( !\Counter_3|clk_peak[1]~DUPLICATE_q\ & ( !\reset~input_o\ ) ) ) # ( !\Counter_3|clk_peak\(3) & ( !\Counter_3|clk_peak[1]~DUPLICATE_q\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001111110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \Counter_3|ALT_INV_clk_peak\(2),
	datad => \Counter_3|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datae => \Counter_3|ALT_INV_clk_peak\(3),
	dataf => \Counter_3|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \reset_3~0_combout\);

-- Location: FF_X83_Y15_N34
\Counter_3|clk_peak[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|clk_peak[0]~0_combout\,
	clrn => \ALT_INV_reset_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|clk_peak\(0));

-- Location: LABCELL_X83_Y15_N33
\Counter_3|clk_peak[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_3|clk_peak[0]~0_combout\ = ( \Counter_3|clk_peak\(0) & ( \Counter_2|clk_peak\(0) & ( (!\enable_3~0_combout\) # ((!\enable_2~1_combout\) # (!\enable_2~0_combout\)) ) ) ) # ( !\Counter_3|clk_peak\(0) & ( \Counter_2|clk_peak\(0) & ( 
-- (\enable_3~0_combout\ & (\enable_2~1_combout\ & \enable_2~0_combout\)) ) ) ) # ( \Counter_3|clk_peak\(0) & ( !\Counter_2|clk_peak\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000001011111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_3~0_combout\,
	datac => \ALT_INV_enable_2~1_combout\,
	datad => \ALT_INV_enable_2~0_combout\,
	datae => \Counter_3|ALT_INV_clk_peak\(0),
	dataf => \Counter_2|ALT_INV_clk_peak\(0),
	combout => \Counter_3|clk_peak[0]~0_combout\);

-- Location: FF_X83_Y15_N35
\Counter_3|clk_peak[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|clk_peak[0]~0_combout\,
	clrn => \ALT_INV_reset_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|clk_peak[0]~DUPLICATE_q\);

-- Location: FF_X83_Y15_N40
\Counter_3|clk_peak[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|clk_peak[1]~1_combout\,
	clrn => \ALT_INV_reset_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|clk_peak\(1));

-- Location: LABCELL_X83_Y15_N39
\Counter_3|clk_peak[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_3|clk_peak[1]~1_combout\ = ( \Counter_3|clk_peak\(1) & ( \Counter_2|clk_peak\(0) & ( (!\enable_2~0_combout\) # ((!\enable_3~0_combout\) # ((!\enable_2~1_combout\) # (!\Counter_3|clk_peak[0]~DUPLICATE_q\))) ) ) ) # ( !\Counter_3|clk_peak\(1) & ( 
-- \Counter_2|clk_peak\(0) & ( (\enable_2~0_combout\ & (\enable_3~0_combout\ & (\enable_2~1_combout\ & \Counter_3|clk_peak[0]~DUPLICATE_q\))) ) ) ) # ( \Counter_3|clk_peak\(1) & ( !\Counter_2|clk_peak\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_2~0_combout\,
	datab => \ALT_INV_enable_3~0_combout\,
	datac => \ALT_INV_enable_2~1_combout\,
	datad => \Counter_3|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datae => \Counter_3|ALT_INV_clk_peak\(1),
	dataf => \Counter_2|ALT_INV_clk_peak\(0),
	combout => \Counter_3|clk_peak[1]~1_combout\);

-- Location: FF_X83_Y15_N41
\Counter_3|clk_peak[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|clk_peak[1]~1_combout\,
	clrn => \ALT_INV_reset_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|clk_peak[1]~DUPLICATE_q\);

-- Location: FF_X83_Y15_N55
\Counter_3|clk_peak[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|clk_peak[3]~3_combout\,
	clrn => \ALT_INV_reset_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|clk_peak[3]~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y15_N51
\decoder_3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux6~0_combout\ = ( \Counter_3|clk_peak\(0) & ( \Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_3|clk_peak[1]~DUPLICATE_q\) # (\Counter_3|clk_peak[3]~DUPLICATE_q\) ) ) ) # ( !\Counter_3|clk_peak\(0) & ( \Counter_3|clk_peak[2]~DUPLICATE_q\ & 
-- ( (!\Counter_3|clk_peak[3]~DUPLICATE_q\) # (\Counter_3|clk_peak[1]~DUPLICATE_q\) ) ) ) # ( \Counter_3|clk_peak\(0) & ( !\Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (\Counter_3|clk_peak[3]~DUPLICATE_q\) # (\Counter_3|clk_peak[1]~DUPLICATE_q\) ) ) ) # ( 
-- !\Counter_3|clk_peak\(0) & ( !\Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (\Counter_3|clk_peak[3]~DUPLICATE_q\) # (\Counter_3|clk_peak[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter_3|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datad => \Counter_3|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datae => \Counter_3|ALT_INV_clk_peak\(0),
	dataf => \Counter_3|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \decoder_3|Mux6~0_combout\);

-- Location: LABCELL_X85_Y15_N30
\decoder_3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux5~0_combout\ = ( \Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (\Counter_3|clk_peak\(0) & (!\Counter_3|clk_peak[3]~DUPLICATE_q\ $ (!\Counter_3|clk_peak\(1)))) ) ) # ( !\Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_3|clk_peak\(0) & 
-- ((\Counter_3|clk_peak\(1)))) # (\Counter_3|clk_peak\(0) & (!\Counter_3|clk_peak[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111100000011001111110000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_3|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datac => \Counter_3|ALT_INV_clk_peak\(0),
	datad => \Counter_3|ALT_INV_clk_peak\(1),
	dataf => \Counter_3|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \decoder_3|Mux5~0_combout\);

-- Location: MLABCELL_X84_Y15_N39
\decoder_3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux4~0_combout\ = ( \Counter_3|clk_peak\(0) & ( \Counter_3|clk_peak[2]~DUPLICATE_q\ & ( !\Counter_3|clk_peak[3]~DUPLICATE_q\ ) ) ) # ( !\Counter_3|clk_peak\(0) & ( \Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_3|clk_peak[1]~DUPLICATE_q\ & 
-- !\Counter_3|clk_peak[3]~DUPLICATE_q\) ) ) ) # ( \Counter_3|clk_peak\(0) & ( !\Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_3|clk_peak[1]~DUPLICATE_q\) # (!\Counter_3|clk_peak[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000011110000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter_3|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datad => \Counter_3|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datae => \Counter_3|ALT_INV_clk_peak\(0),
	dataf => \Counter_3|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \decoder_3|Mux4~0_combout\);

-- Location: LABCELL_X85_Y15_N27
\decoder_3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux3~0_combout\ = ( \Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_3|clk_peak\(1) & (!\Counter_3|clk_peak[3]~DUPLICATE_q\ & !\Counter_3|clk_peak\(0))) # (\Counter_3|clk_peak\(1) & ((\Counter_3|clk_peak\(0)))) ) ) # ( 
-- !\Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_3|clk_peak[3]~DUPLICATE_q\ & (!\Counter_3|clk_peak\(1) & \Counter_3|clk_peak\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_3|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datac => \Counter_3|ALT_INV_clk_peak\(1),
	datad => \Counter_3|ALT_INV_clk_peak\(0),
	dataf => \Counter_3|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \decoder_3|Mux3~0_combout\);

-- Location: MLABCELL_X84_Y15_N18
\decoder_3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux2~0_combout\ = ( \Counter_3|clk_peak[3]~DUPLICATE_q\ & ( (\Counter_3|clk_peak[2]~DUPLICATE_q\ & ((!\Counter_3|clk_peak\(0)) # (\Counter_3|clk_peak[1]~DUPLICATE_q\))) ) ) # ( !\Counter_3|clk_peak[3]~DUPLICATE_q\ & ( 
-- (\Counter_3|clk_peak[1]~DUPLICATE_q\ & (!\Counter_3|clk_peak[2]~DUPLICATE_q\ & !\Counter_3|clk_peak\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_3|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datac => \Counter_3|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datad => \Counter_3|ALT_INV_clk_peak\(0),
	dataf => \Counter_3|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	combout => \decoder_3|Mux2~0_combout\);

-- Location: LABCELL_X85_Y15_N33
\decoder_3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux1~0_combout\ = ( \Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_3|clk_peak[3]~DUPLICATE_q\ & (!\Counter_3|clk_peak\(0) $ (!\Counter_3|clk_peak\(1)))) # (\Counter_3|clk_peak[3]~DUPLICATE_q\ & ((!\Counter_3|clk_peak\(0)) # 
-- (\Counter_3|clk_peak\(1)))) ) ) # ( !\Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (\Counter_3|clk_peak[3]~DUPLICATE_q\ & (\Counter_3|clk_peak\(0) & \Counter_3|clk_peak\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_3|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datac => \Counter_3|ALT_INV_clk_peak\(0),
	datad => \Counter_3|ALT_INV_clk_peak\(1),
	dataf => \Counter_3|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \decoder_3|Mux1~0_combout\);

-- Location: LABCELL_X85_Y15_N18
\decoder_3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux0~0_combout\ = ( \Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_3|clk_peak\(1) & (!\Counter_3|clk_peak\(0) $ (\Counter_3|clk_peak[3]~DUPLICATE_q\))) ) ) # ( !\Counter_3|clk_peak[2]~DUPLICATE_q\ & ( (\Counter_3|clk_peak\(0) & 
-- (!\Counter_3|clk_peak\(1) $ (\Counter_3|clk_peak[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001010001000001000110001000010001001000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_3|ALT_INV_clk_peak\(0),
	datab => \Counter_3|ALT_INV_clk_peak\(1),
	datad => \Counter_3|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_3|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \decoder_3|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y15_N12
\enable_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_4~1_combout\ = ( !\Counter_3|clk_peak[3]~DUPLICATE_q\ & ( (\Counter_3|clk_peak[2]~DUPLICATE_q\ & !\Counter_3|clk_peak[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_3|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datad => \Counter_3|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	dataf => \Counter_3|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	combout => \enable_4~1_combout\);

-- Location: LABCELL_X85_Y14_N6
enable_4 : cyclonev_lcell_comb
-- Equation(s):
-- \enable_4~combout\ = ( \enable_3~0_combout\ & ( \enable_2~1_combout\ & ( (\Counter_3|clk_peak\(0) & (\enable_4~1_combout\ & (\enable_2~0_combout\ & \Counter_2|clk_peak[0]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_3|ALT_INV_clk_peak\(0),
	datab => \ALT_INV_enable_4~1_combout\,
	datac => \ALT_INV_enable_2~0_combout\,
	datad => \Counter_2|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datae => \ALT_INV_enable_3~0_combout\,
	dataf => \ALT_INV_enable_2~1_combout\,
	combout => \enable_4~combout\);

-- Location: FF_X85_Y14_N40
\Counter_4|clk_peak[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|clk_peak[1]~1_combout\,
	clrn => \ALT_INV_reset_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|clk_peak\(1));

-- Location: LABCELL_X85_Y14_N39
\Counter_4|clk_peak[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_4|clk_peak[1]~1_combout\ = ( \Counter_4|clk_peak\(1) & ( \Counter_4|clk_peak[0]~DUPLICATE_q\ & ( !\enable_4~combout\ ) ) ) # ( !\Counter_4|clk_peak\(1) & ( \Counter_4|clk_peak[0]~DUPLICATE_q\ & ( \enable_4~combout\ ) ) ) # ( 
-- \Counter_4|clk_peak\(1) & ( !\Counter_4|clk_peak[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enable_4~combout\,
	datae => \Counter_4|ALT_INV_clk_peak\(1),
	dataf => \Counter_4|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	combout => \Counter_4|clk_peak[1]~1_combout\);

-- Location: FF_X85_Y14_N41
\Counter_4|clk_peak[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|clk_peak[1]~1_combout\,
	clrn => \ALT_INV_reset_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|clk_peak[1]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y14_N15
\Counter_4|clk_peak[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_4|clk_peak[2]~2_combout\ = ( \Counter_4|clk_peak[0]~DUPLICATE_q\ & ( !\Counter_4|clk_peak\(2) $ (((!\Counter_4|clk_peak[1]~DUPLICATE_q\) # (!\enable_4~combout\))) ) ) # ( !\Counter_4|clk_peak[0]~DUPLICATE_q\ & ( \Counter_4|clk_peak\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_4|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datac => \ALT_INV_enable_4~combout\,
	datad => \Counter_4|ALT_INV_clk_peak\(2),
	dataf => \Counter_4|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	combout => \Counter_4|clk_peak[2]~2_combout\);

-- Location: FF_X85_Y14_N17
\Counter_4|clk_peak[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|clk_peak[2]~2_combout\,
	clrn => \ALT_INV_reset_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|clk_peak\(2));

-- Location: FF_X85_Y14_N16
\Counter_4|clk_peak[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|clk_peak[2]~2_combout\,
	clrn => \ALT_INV_reset_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|clk_peak[2]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y14_N45
\Counter_4|clk_peak[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_4|clk_peak[3]~3_combout\ = ( \Counter_4|clk_peak\(3) & ( \Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (!\enable_4~combout\) # ((!\Counter_4|clk_peak[1]~DUPLICATE_q\) # (!\Counter_4|clk_peak\(0))) ) ) ) # ( !\Counter_4|clk_peak\(3) & ( 
-- \Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (\enable_4~combout\ & (\Counter_4|clk_peak[1]~DUPLICATE_q\ & \Counter_4|clk_peak\(0))) ) ) ) # ( \Counter_4|clk_peak\(3) & ( !\Counter_4|clk_peak[2]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable_4~combout\,
	datac => \Counter_4|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datad => \Counter_4|ALT_INV_clk_peak\(0),
	datae => \Counter_4|ALT_INV_clk_peak\(3),
	dataf => \Counter_4|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \Counter_4|clk_peak[3]~3_combout\);

-- Location: FF_X85_Y14_N47
\Counter_4|clk_peak[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|clk_peak[3]~3_combout\,
	clrn => \ALT_INV_reset_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|clk_peak\(3));

-- Location: LABCELL_X85_Y14_N57
\reset_4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \reset_4~0_combout\ = ( \Counter_4|clk_peak\(3) & ( \Counter_4|clk_peak[1]~DUPLICATE_q\ & ( (!\reset~input_o\) # ((!\Counter_4|clk_peak\(2) & !\Counter_4|clk_peak\(0))) ) ) ) # ( !\Counter_4|clk_peak\(3) & ( \Counter_4|clk_peak[1]~DUPLICATE_q\ & ( 
-- !\reset~input_o\ ) ) ) # ( \Counter_4|clk_peak\(3) & ( !\Counter_4|clk_peak[1]~DUPLICATE_q\ & ( !\reset~input_o\ ) ) ) # ( !\Counter_4|clk_peak\(3) & ( !\Counter_4|clk_peak[1]~DUPLICATE_q\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \Counter_4|ALT_INV_clk_peak\(2),
	datad => \Counter_4|ALT_INV_clk_peak\(0),
	datae => \Counter_4|ALT_INV_clk_peak\(3),
	dataf => \Counter_4|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	combout => \reset_4~0_combout\);

-- Location: FF_X85_Y14_N50
\Counter_4|clk_peak[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|clk_peak[0]~0_combout\,
	clrn => \ALT_INV_reset_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|clk_peak\(0));

-- Location: LABCELL_X85_Y14_N48
\Counter_4|clk_peak[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_4|clk_peak[0]~0_combout\ = ( \enable_4~combout\ & ( !\Counter_4|clk_peak\(0) ) ) # ( !\enable_4~combout\ & ( \Counter_4|clk_peak\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter_4|ALT_INV_clk_peak\(0),
	dataf => \ALT_INV_enable_4~combout\,
	combout => \Counter_4|clk_peak[0]~0_combout\);

-- Location: FF_X85_Y14_N49
\Counter_4|clk_peak[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|clk_peak[0]~0_combout\,
	clrn => \ALT_INV_reset_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|clk_peak[0]~DUPLICATE_q\);

-- Location: FF_X85_Y14_N46
\Counter_4|clk_peak[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|clk_peak[3]~3_combout\,
	clrn => \ALT_INV_reset_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|clk_peak[3]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y14_N12
\decoder_4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux6~0_combout\ = (!\Counter_4|clk_peak[0]~DUPLICATE_q\ & ((!\Counter_4|clk_peak[2]~DUPLICATE_q\ $ (!\Counter_4|clk_peak[3]~DUPLICATE_q\)) # (\Counter_4|clk_peak[1]~DUPLICATE_q\))) # (\Counter_4|clk_peak[0]~DUPLICATE_q\ & 
-- ((!\Counter_4|clk_peak[1]~DUPLICATE_q\ $ (!\Counter_4|clk_peak[2]~DUPLICATE_q\)) # (\Counter_4|clk_peak[3]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111011110111001111101111011100111110111101110011111011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datab => \Counter_4|ALT_INV_clk_peak[1]~DUPLICATE_q\,
	datac => \Counter_4|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	datad => \Counter_4|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	combout => \decoder_4|Mux6~0_combout\);

-- Location: LABCELL_X85_Y14_N18
\decoder_4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux5~0_combout\ = ( \Counter_4|clk_peak[3]~DUPLICATE_q\ & ( \Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_4|clk_peak\(1) & \Counter_4|clk_peak[0]~DUPLICATE_q\) ) ) ) # ( !\Counter_4|clk_peak[3]~DUPLICATE_q\ & ( 
-- \Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (\Counter_4|clk_peak\(1) & \Counter_4|clk_peak[0]~DUPLICATE_q\) ) ) ) # ( \Counter_4|clk_peak[3]~DUPLICATE_q\ & ( !\Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (\Counter_4|clk_peak\(1) & 
-- !\Counter_4|clk_peak[0]~DUPLICATE_q\) ) ) ) # ( !\Counter_4|clk_peak[3]~DUPLICATE_q\ & ( !\Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (\Counter_4|clk_peak[0]~DUPLICATE_q\) # (\Counter_4|clk_peak\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010100000101000000000101000001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_clk_peak\(1),
	datac => \Counter_4|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datae => \Counter_4|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_4|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \decoder_4|Mux5~0_combout\);

-- Location: LABCELL_X85_Y14_N51
\decoder_4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux4~0_combout\ = ( \Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_4|clk_peak[3]~DUPLICATE_q\ & ((!\Counter_4|clk_peak\(1)) # (\Counter_4|clk_peak[0]~DUPLICATE_q\))) ) ) # ( !\Counter_4|clk_peak[2]~DUPLICATE_q\ & ( 
-- (\Counter_4|clk_peak[0]~DUPLICATE_q\ & ((!\Counter_4|clk_peak\(1)) # (!\Counter_4|clk_peak[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001100100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_clk_peak\(1),
	datab => \Counter_4|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datac => \Counter_4|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	dataf => \Counter_4|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \decoder_4|Mux4~0_combout\);

-- Location: LABCELL_X85_Y14_N0
\decoder_4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux3~0_combout\ = ( \Counter_4|clk_peak[3]~DUPLICATE_q\ & ( \Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (\Counter_4|clk_peak\(1) & \Counter_4|clk_peak[0]~DUPLICATE_q\) ) ) ) # ( !\Counter_4|clk_peak[3]~DUPLICATE_q\ & ( 
-- \Counter_4|clk_peak[2]~DUPLICATE_q\ & ( !\Counter_4|clk_peak\(1) $ (\Counter_4|clk_peak[0]~DUPLICATE_q\) ) ) ) # ( !\Counter_4|clk_peak[3]~DUPLICATE_q\ & ( !\Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_4|clk_peak\(1) & 
-- \Counter_4|clk_peak[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000010100101101001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_clk_peak\(1),
	datac => \Counter_4|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	datae => \Counter_4|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	dataf => \Counter_4|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \decoder_4|Mux3~0_combout\);

-- Location: LABCELL_X85_Y14_N33
\decoder_4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux2~0_combout\ = ( \Counter_4|clk_peak[0]~DUPLICATE_q\ & ( \Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (\Counter_4|clk_peak[3]~DUPLICATE_q\ & \Counter_4|clk_peak\(1)) ) ) ) # ( !\Counter_4|clk_peak[0]~DUPLICATE_q\ & ( 
-- \Counter_4|clk_peak[2]~DUPLICATE_q\ & ( \Counter_4|clk_peak[3]~DUPLICATE_q\ ) ) ) # ( !\Counter_4|clk_peak[0]~DUPLICATE_q\ & ( !\Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_4|clk_peak[3]~DUPLICATE_q\ & \Counter_4|clk_peak\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000000001111000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter_4|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datad => \Counter_4|ALT_INV_clk_peak\(1),
	datae => \Counter_4|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	dataf => \Counter_4|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \decoder_4|Mux2~0_combout\);

-- Location: LABCELL_X85_Y14_N24
\decoder_4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux1~0_combout\ = ( \Counter_4|clk_peak[0]~DUPLICATE_q\ & ( (!\Counter_4|clk_peak\(1) & (!\Counter_4|clk_peak[3]~DUPLICATE_q\ & \Counter_4|clk_peak[2]~DUPLICATE_q\)) # (\Counter_4|clk_peak\(1) & (\Counter_4|clk_peak[3]~DUPLICATE_q\)) ) ) # ( 
-- !\Counter_4|clk_peak[0]~DUPLICATE_q\ & ( (\Counter_4|clk_peak[2]~DUPLICATE_q\ & ((\Counter_4|clk_peak[3]~DUPLICATE_q\) # (\Counter_4|clk_peak\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_clk_peak\(1),
	datab => \Counter_4|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datac => \Counter_4|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	dataf => \Counter_4|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	combout => \decoder_4|Mux1~0_combout\);

-- Location: LABCELL_X85_Y14_N27
\decoder_4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux0~0_combout\ = ( \Counter_4|clk_peak[2]~DUPLICATE_q\ & ( (!\Counter_4|clk_peak\(1) & (!\Counter_4|clk_peak[3]~DUPLICATE_q\ $ (\Counter_4|clk_peak[0]~DUPLICATE_q\))) ) ) # ( !\Counter_4|clk_peak[2]~DUPLICATE_q\ & ( 
-- (\Counter_4|clk_peak[0]~DUPLICATE_q\ & (!\Counter_4|clk_peak\(1) $ (\Counter_4|clk_peak[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_clk_peak\(1),
	datab => \Counter_4|ALT_INV_clk_peak[3]~DUPLICATE_q\,
	datac => \Counter_4|ALT_INV_clk_peak[0]~DUPLICATE_q\,
	dataf => \Counter_4|ALT_INV_clk_peak[2]~DUPLICATE_q\,
	combout => \decoder_4|Mux0~0_combout\);

-- Location: MLABCELL_X21_Y25_N3
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


