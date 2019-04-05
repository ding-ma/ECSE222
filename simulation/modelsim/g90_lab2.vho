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

-- DATE "03/30/2019 13:16:14"

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
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
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
SIGNAL \Clock_Divider_0|Add0~18\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~13_sumout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \enable_clock~0_combout\ : std_logic;
SIGNAL \stop~input_o\ : std_logic;
SIGNAL \enable_clock~q\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~14\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~9_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~10\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~50\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~1_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~73_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal~10_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~74\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~69_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal~9_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~70\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~65_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal~8_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~66\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~61_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal~7_combout\ : std_logic;
SIGNAL \Clock_Divider_0|LessThan0~2_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~49_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal~4_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~2\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~45_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal~3_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~46\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~41_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal~2_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~42\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~37_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal~1_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~38\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~33_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal~0_combout\ : std_logic;
SIGNAL \Clock_Divider_0|LessThan0~1_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~6\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~29_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~30\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~25_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~26\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~53_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal~5_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~54\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~21_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~22\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~17_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|LessThan0~0_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~62\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~57_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal~6_combout\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~58\ : std_logic;
SIGNAL \Clock_Divider_0|Add0~5_sumout\ : std_logic;
SIGNAL \Clock_Divider_0|LessThan0~3_combout\ : std_logic;
SIGNAL \Clock_Divider_0|en_out~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Counter_0|countlocal[1]~2_combout\ : std_logic;
SIGNAL \Counter_0|countlocal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|countlocal[3]~4_combout\ : std_logic;
SIGNAL \reset_0~combout\ : std_logic;
SIGNAL \Counter_0|countlocal[0]~0_combout\ : std_logic;
SIGNAL \Counter_0|countlocal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|countlocal[1]~1_combout\ : std_logic;
SIGNAL \Counter_0|countlocal[2]~3_combout\ : std_logic;
SIGNAL \Counter_0|countlocal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|countlocal[3]~DUPLICATE_q\ : std_logic;
SIGNAL \decoder_0|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_0|Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Counter_1|countlocal[0]~0_combout\ : std_logic;
SIGNAL \Counter_1|countlocal[1]~1_combout\ : std_logic;
SIGNAL \enable_1~0_combout\ : std_logic;
SIGNAL \Counter_1|countlocal[3]~3_combout\ : std_logic;
SIGNAL \reset_1~combout\ : std_logic;
SIGNAL \Counter_1|countlocal[2]~2_combout\ : std_logic;
SIGNAL \decoder_1|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_1|Mux0~0_combout\ : std_logic;
SIGNAL \enable_2~0_combout\ : std_logic;
SIGNAL \Counter_2|countlocal[0]~0_combout\ : std_logic;
SIGNAL \enable_2~1_combout\ : std_logic;
SIGNAL \Counter_2|countlocal[1]~1_combout\ : std_logic;
SIGNAL \Counter_2|countlocal[3]~3_combout\ : std_logic;
SIGNAL \reset_2~combout\ : std_logic;
SIGNAL \Counter_2|countlocal[2]~2_combout\ : std_logic;
SIGNAL \decoder_2|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_2|Mux0~0_combout\ : std_logic;
SIGNAL \enable_3~0_combout\ : std_logic;
SIGNAL \Counter_3|countlocal[0]~0_combout\ : std_logic;
SIGNAL \enable_4~0_combout\ : std_logic;
SIGNAL \Counter_3|countlocal[2]~2_combout\ : std_logic;
SIGNAL \Counter_3|countlocal[3]~3_combout\ : std_logic;
SIGNAL \reset_3~combout\ : std_logic;
SIGNAL \Counter_3|countlocal[1]~1_combout\ : std_logic;
SIGNAL \decoder_3|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_3|Mux0~0_combout\ : std_logic;
SIGNAL \enable_4~1_combout\ : std_logic;
SIGNAL \Counter_4|countlocal[0]~0_combout\ : std_logic;
SIGNAL \Counter_4|countlocal[3]~3_combout\ : std_logic;
SIGNAL \reset_4~combout\ : std_logic;
SIGNAL \Counter_4|countlocal[1]~1_combout\ : std_logic;
SIGNAL \Counter_4|countlocal[2]~2_combout\ : std_logic;
SIGNAL \decoder_4|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_4|Mux0~0_combout\ : std_logic;
SIGNAL \enable_5~0_combout\ : std_logic;
SIGNAL \Counter_5|countlocal[0]~0_combout\ : std_logic;
SIGNAL \enable_5~1_combout\ : std_logic;
SIGNAL \Counter_5|countlocal[2]~2_combout\ : std_logic;
SIGNAL \Counter_5|countlocal[3]~3_combout\ : std_logic;
SIGNAL \reset_5~combout\ : std_logic;
SIGNAL \Counter_5|countlocal[1]~1_combout\ : std_logic;
SIGNAL \decoder_5|Mux6~0_combout\ : std_logic;
SIGNAL \decoder_5|Mux5~0_combout\ : std_logic;
SIGNAL \decoder_5|Mux4~0_combout\ : std_logic;
SIGNAL \decoder_5|Mux3~0_combout\ : std_logic;
SIGNAL \decoder_5|Mux2~0_combout\ : std_logic;
SIGNAL \decoder_5|Mux1~0_combout\ : std_logic;
SIGNAL \decoder_5|Mux0~0_combout\ : std_logic;
SIGNAL \Clock_Divider_0|countlocal\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Counter_1|countlocal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter_0|countlocal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter_2|countlocal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter_3|countlocal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter_4|countlocal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter_5|countlocal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counter_0|ALT_INV_countlocal[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Counter_0|ALT_INV_countlocal[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_stop~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_enable_clock~q\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_countlocal\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Clock_Divider_0|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable_5~1_combout\ : std_logic;
SIGNAL \ALT_INV_reset_5~combout\ : std_logic;
SIGNAL \ALT_INV_enable_5~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset_4~combout\ : std_logic;
SIGNAL \ALT_INV_enable_4~1_combout\ : std_logic;
SIGNAL \ALT_INV_enable_4~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset_3~combout\ : std_logic;
SIGNAL \ALT_INV_enable_3~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable_2~1_combout\ : std_logic;
SIGNAL \ALT_INV_reset_2~combout\ : std_logic;
SIGNAL \ALT_INV_enable_2~0_combout\ : std_logic;
SIGNAL \ALT_INV_enable_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset_1~combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Counter_0|ALT_INV_countlocal[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_reset_0~combout\ : std_logic;
SIGNAL \Clock_Divider_0|ALT_INV_en_out~q\ : std_logic;
SIGNAL \decoder_5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Counter_5|ALT_INV_countlocal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder_4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Counter_4|ALT_INV_countlocal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder_3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Counter_3|ALT_INV_countlocal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder_2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Counter_2|ALT_INV_countlocal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder_1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Counter_1|ALT_INV_countlocal\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \decoder_0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Counter_0|ALT_INV_countlocal\ : std_logic_vector(3 DOWNTO 0);
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
\Counter_0|ALT_INV_countlocal[3]~DUPLICATE_q\ <= NOT \Counter_0|countlocal[3]~DUPLICATE_q\;
\Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\ <= NOT \Counter_0|countlocal[2]~DUPLICATE_q\;
\Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\ <= NOT \Counter_0|countlocal[1]~DUPLICATE_q\;
\Counter_0|ALT_INV_countlocal[0]~DUPLICATE_q\ <= NOT \Counter_0|countlocal[0]~DUPLICATE_q\;
\ALT_INV_stop~input_o\ <= NOT \stop~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_enable_clock~q\ <= NOT \enable_clock~q\;
\Clock_Divider_0|ALT_INV_LessThan0~3_combout\ <= NOT \Clock_Divider_0|LessThan0~3_combout\;
\Clock_Divider_0|ALT_INV_LessThan0~2_combout\ <= NOT \Clock_Divider_0|LessThan0~2_combout\;
\Clock_Divider_0|ALT_INV_countlocal\(0) <= NOT \Clock_Divider_0|countlocal\(0);
\Clock_Divider_0|ALT_INV_countlocal\(1) <= NOT \Clock_Divider_0|countlocal\(1);
\Clock_Divider_0|ALT_INV_countlocal\(2) <= NOT \Clock_Divider_0|countlocal\(2);
\Clock_Divider_0|ALT_INV_countlocal\(3) <= NOT \Clock_Divider_0|countlocal\(3);
\Clock_Divider_0|ALT_INV_countlocal\(4) <= NOT \Clock_Divider_0|countlocal\(4);
\Clock_Divider_0|ALT_INV_LessThan0~1_combout\ <= NOT \Clock_Divider_0|LessThan0~1_combout\;
\Clock_Divider_0|ALT_INV_countlocal\(8) <= NOT \Clock_Divider_0|countlocal\(8);
\Clock_Divider_0|ALT_INV_countlocal\(13) <= NOT \Clock_Divider_0|countlocal\(13);
\Clock_Divider_0|ALT_INV_countlocal\(15) <= NOT \Clock_Divider_0|countlocal\(15);
\Clock_Divider_0|ALT_INV_countlocal\(16) <= NOT \Clock_Divider_0|countlocal\(16);
\Clock_Divider_0|ALT_INV_countlocal\(17) <= NOT \Clock_Divider_0|countlocal\(17);
\Clock_Divider_0|ALT_INV_countlocal\(18) <= NOT \Clock_Divider_0|countlocal\(18);
\Clock_Divider_0|ALT_INV_LessThan0~0_combout\ <= NOT \Clock_Divider_0|LessThan0~0_combout\;
\ALT_INV_enable_5~1_combout\ <= NOT \enable_5~1_combout\;
\ALT_INV_reset_5~combout\ <= NOT \reset_5~combout\;
\ALT_INV_enable_5~0_combout\ <= NOT \enable_5~0_combout\;
\ALT_INV_reset_4~combout\ <= NOT \reset_4~combout\;
\ALT_INV_enable_4~1_combout\ <= NOT \enable_4~1_combout\;
\ALT_INV_enable_4~0_combout\ <= NOT \enable_4~0_combout\;
\ALT_INV_reset_3~combout\ <= NOT \reset_3~combout\;
\ALT_INV_enable_3~0_combout\ <= NOT \enable_3~0_combout\;
\ALT_INV_enable_2~1_combout\ <= NOT \enable_2~1_combout\;
\ALT_INV_reset_2~combout\ <= NOT \reset_2~combout\;
\ALT_INV_enable_2~0_combout\ <= NOT \enable_2~0_combout\;
\ALT_INV_enable_1~0_combout\ <= NOT \enable_1~0_combout\;
\ALT_INV_reset_1~combout\ <= NOT \reset_1~combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\Counter_0|ALT_INV_countlocal[1]~1_combout\ <= NOT \Counter_0|countlocal[1]~1_combout\;
\ALT_INV_reset_0~combout\ <= NOT \reset_0~combout\;
\Clock_Divider_0|ALT_INV_en_out~q\ <= NOT \Clock_Divider_0|en_out~q\;
\decoder_5|ALT_INV_Mux6~0_combout\ <= NOT \decoder_5|Mux6~0_combout\;
\Counter_5|ALT_INV_countlocal\(3) <= NOT \Counter_5|countlocal\(3);
\Counter_5|ALT_INV_countlocal\(2) <= NOT \Counter_5|countlocal\(2);
\Counter_5|ALT_INV_countlocal\(1) <= NOT \Counter_5|countlocal\(1);
\Counter_5|ALT_INV_countlocal\(0) <= NOT \Counter_5|countlocal\(0);
\decoder_4|ALT_INV_Mux6~0_combout\ <= NOT \decoder_4|Mux6~0_combout\;
\Counter_4|ALT_INV_countlocal\(3) <= NOT \Counter_4|countlocal\(3);
\Counter_4|ALT_INV_countlocal\(2) <= NOT \Counter_4|countlocal\(2);
\Counter_4|ALT_INV_countlocal\(1) <= NOT \Counter_4|countlocal\(1);
\Counter_4|ALT_INV_countlocal\(0) <= NOT \Counter_4|countlocal\(0);
\decoder_3|ALT_INV_Mux6~0_combout\ <= NOT \decoder_3|Mux6~0_combout\;
\Counter_3|ALT_INV_countlocal\(3) <= NOT \Counter_3|countlocal\(3);
\Counter_3|ALT_INV_countlocal\(2) <= NOT \Counter_3|countlocal\(2);
\Counter_3|ALT_INV_countlocal\(1) <= NOT \Counter_3|countlocal\(1);
\Counter_3|ALT_INV_countlocal\(0) <= NOT \Counter_3|countlocal\(0);
\decoder_2|ALT_INV_Mux6~0_combout\ <= NOT \decoder_2|Mux6~0_combout\;
\Counter_2|ALT_INV_countlocal\(3) <= NOT \Counter_2|countlocal\(3);
\Counter_2|ALT_INV_countlocal\(2) <= NOT \Counter_2|countlocal\(2);
\Counter_2|ALT_INV_countlocal\(1) <= NOT \Counter_2|countlocal\(1);
\Counter_2|ALT_INV_countlocal\(0) <= NOT \Counter_2|countlocal\(0);
\decoder_1|ALT_INV_Mux6~0_combout\ <= NOT \decoder_1|Mux6~0_combout\;
\Counter_1|ALT_INV_countlocal\(3) <= NOT \Counter_1|countlocal\(3);
\Counter_1|ALT_INV_countlocal\(2) <= NOT \Counter_1|countlocal\(2);
\Counter_1|ALT_INV_countlocal\(1) <= NOT \Counter_1|countlocal\(1);
\Counter_1|ALT_INV_countlocal\(0) <= NOT \Counter_1|countlocal\(0);
\decoder_0|ALT_INV_Mux6~0_combout\ <= NOT \decoder_0|Mux6~0_combout\;
\Counter_0|ALT_INV_countlocal\(3) <= NOT \Counter_0|countlocal\(3);
\Counter_0|ALT_INV_countlocal\(2) <= NOT \Counter_0|countlocal\(2);
\Counter_0|ALT_INV_countlocal\(1) <= NOT \Counter_0|countlocal\(1);
\Counter_0|ALT_INV_countlocal\(0) <= NOT \Counter_0|countlocal\(0);
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
\Clock_Divider_0|ALT_INV_countlocal\(6) <= NOT \Clock_Divider_0|countlocal\(6);
\Clock_Divider_0|ALT_INV_countlocal\(7) <= NOT \Clock_Divider_0|countlocal\(7);
\Clock_Divider_0|ALT_INV_countlocal\(9) <= NOT \Clock_Divider_0|countlocal\(9);
\Clock_Divider_0|ALT_INV_countlocal\(10) <= NOT \Clock_Divider_0|countlocal\(10);
\Clock_Divider_0|ALT_INV_countlocal\(11) <= NOT \Clock_Divider_0|countlocal\(11);
\Clock_Divider_0|ALT_INV_countlocal\(12) <= NOT \Clock_Divider_0|countlocal\(12);
\Clock_Divider_0|ALT_INV_countlocal\(5) <= NOT \Clock_Divider_0|countlocal\(5);
\Clock_Divider_0|ALT_INV_countlocal\(14) <= NOT \Clock_Divider_0|countlocal\(14);

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
	i => \decoder_5|ALT_INV_Mux6~0_combout\,
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
	i => \decoder_5|Mux5~0_combout\,
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
	i => \decoder_5|Mux4~0_combout\,
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
	i => \decoder_5|Mux3~0_combout\,
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
	i => \decoder_5|Mux2~0_combout\,
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
	i => \decoder_5|Mux1~0_combout\,
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
	i => \decoder_5|Mux0~0_combout\,
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

-- Location: MLABCELL_X82_Y11_N30
\Clock_Divider_0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~17_sumout\ = SUM(( \Clock_Divider_0|countlocal\(10) ) + ( VCC ) + ( \Clock_Divider_0|Add0~22\ ))
-- \Clock_Divider_0|Add0~18\ = CARRY(( \Clock_Divider_0|countlocal\(10) ) + ( VCC ) + ( \Clock_Divider_0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Divider_0|ALT_INV_countlocal\(10),
	cin => \Clock_Divider_0|Add0~22\,
	sumout => \Clock_Divider_0|Add0~17_sumout\,
	cout => \Clock_Divider_0|Add0~18\);

-- Location: MLABCELL_X82_Y11_N33
\Clock_Divider_0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~13_sumout\ = SUM(( \Clock_Divider_0|countlocal\(11) ) + ( VCC ) + ( \Clock_Divider_0|Add0~18\ ))
-- \Clock_Divider_0|Add0~14\ = CARRY(( \Clock_Divider_0|countlocal\(11) ) + ( VCC ) + ( \Clock_Divider_0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_countlocal\(11),
	cin => \Clock_Divider_0|Add0~18\,
	sumout => \Clock_Divider_0|Add0~13_sumout\,
	cout => \Clock_Divider_0|Add0~14\);

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

-- Location: LABCELL_X81_Y11_N21
\enable_clock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_clock~0_combout\ = ( !\enable_clock~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_enable_clock~q\,
	combout => \enable_clock~0_combout\);

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

-- Location: FF_X81_Y11_N17
enable_clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \start~input_o\,
	asdata => \enable_clock~0_combout\,
	clrn => \stop~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enable_clock~q\);

-- Location: FF_X82_Y11_N35
\Clock_Divider_0|countlocal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~13_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(11));

-- Location: MLABCELL_X82_Y11_N36
\Clock_Divider_0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~9_sumout\ = SUM(( \Clock_Divider_0|countlocal\(12) ) + ( VCC ) + ( \Clock_Divider_0|Add0~14\ ))
-- \Clock_Divider_0|Add0~10\ = CARRY(( \Clock_Divider_0|countlocal\(12) ) + ( VCC ) + ( \Clock_Divider_0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_countlocal\(12),
	cin => \Clock_Divider_0|Add0~14\,
	sumout => \Clock_Divider_0|Add0~9_sumout\,
	cout => \Clock_Divider_0|Add0~10\);

-- Location: FF_X81_Y11_N44
\Clock_Divider_0|countlocal[12]\ : dffeas
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
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(12));

-- Location: MLABCELL_X82_Y11_N39
\Clock_Divider_0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~49_sumout\ = SUM(( !\Clock_Divider_0|countlocal\(13) ) + ( VCC ) + ( \Clock_Divider_0|Add0~10\ ))
-- \Clock_Divider_0|Add0~50\ = CARRY(( !\Clock_Divider_0|countlocal\(13) ) + ( VCC ) + ( \Clock_Divider_0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_countlocal\(13),
	cin => \Clock_Divider_0|Add0~10\,
	sumout => \Clock_Divider_0|Add0~49_sumout\,
	cout => \Clock_Divider_0|Add0~50\);

-- Location: MLABCELL_X82_Y11_N42
\Clock_Divider_0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~1_sumout\ = SUM(( \Clock_Divider_0|countlocal\(14) ) + ( VCC ) + ( \Clock_Divider_0|Add0~50\ ))
-- \Clock_Divider_0|Add0~2\ = CARRY(( \Clock_Divider_0|countlocal\(14) ) + ( VCC ) + ( \Clock_Divider_0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Divider_0|ALT_INV_countlocal\(14),
	cin => \Clock_Divider_0|Add0~50\,
	sumout => \Clock_Divider_0|Add0~1_sumout\,
	cout => \Clock_Divider_0|Add0~2\);

-- Location: FF_X82_Y11_N44
\Clock_Divider_0|countlocal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~1_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(14));

-- Location: MLABCELL_X82_Y11_N0
\Clock_Divider_0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~73_sumout\ = SUM(( !\Clock_Divider_0|countlocal\(0) ) + ( VCC ) + ( !VCC ))
-- \Clock_Divider_0|Add0~74\ = CARRY(( !\Clock_Divider_0|countlocal\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_countlocal\(0),
	cin => GND,
	sumout => \Clock_Divider_0|Add0~73_sumout\,
	cout => \Clock_Divider_0|Add0~74\);

-- Location: LABCELL_X81_Y11_N54
\Clock_Divider_0|countlocal~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|countlocal~10_combout\ = ( \Clock_Divider_0|LessThan0~1_combout\ & ( \Clock_Divider_0|LessThan0~0_combout\ & ( (!\Clock_Divider_0|Add0~73_sumout\ & (((!\Clock_Divider_0|LessThan0~2_combout\) # (\Clock_Divider_0|countlocal\(5))) # 
-- (\Clock_Divider_0|countlocal\(14)))) ) ) ) # ( !\Clock_Divider_0|LessThan0~1_combout\ & ( \Clock_Divider_0|LessThan0~0_combout\ & ( !\Clock_Divider_0|Add0~73_sumout\ ) ) ) # ( \Clock_Divider_0|LessThan0~1_combout\ & ( 
-- !\Clock_Divider_0|LessThan0~0_combout\ & ( !\Clock_Divider_0|Add0~73_sumout\ ) ) ) # ( !\Clock_Divider_0|LessThan0~1_combout\ & ( !\Clock_Divider_0|LessThan0~0_combout\ & ( !\Clock_Divider_0|Add0~73_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_Add0~73_sumout\,
	datab => \Clock_Divider_0|ALT_INV_countlocal\(14),
	datac => \Clock_Divider_0|ALT_INV_countlocal\(5),
	datad => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	datae => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	dataf => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	combout => \Clock_Divider_0|countlocal~10_combout\);

-- Location: FF_X81_Y11_N56
\Clock_Divider_0|countlocal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|countlocal~10_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(0));

-- Location: MLABCELL_X82_Y11_N3
\Clock_Divider_0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~69_sumout\ = SUM(( !\Clock_Divider_0|countlocal\(1) ) + ( VCC ) + ( \Clock_Divider_0|Add0~74\ ))
-- \Clock_Divider_0|Add0~70\ = CARRY(( !\Clock_Divider_0|countlocal\(1) ) + ( VCC ) + ( \Clock_Divider_0|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_countlocal\(1),
	cin => \Clock_Divider_0|Add0~74\,
	sumout => \Clock_Divider_0|Add0~69_sumout\,
	cout => \Clock_Divider_0|Add0~70\);

-- Location: LABCELL_X81_Y11_N33
\Clock_Divider_0|countlocal~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|countlocal~9_combout\ = ( \Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~69_sumout\ & ( ((!\Clock_Divider_0|LessThan0~0_combout\) # ((!\Clock_Divider_0|LessThan0~1_combout\) # (\Clock_Divider_0|countlocal\(14)))) # 
-- (\Clock_Divider_0|countlocal\(5)) ) ) ) # ( !\Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~69_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_countlocal\(5),
	datab => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datac => \Clock_Divider_0|ALT_INV_countlocal\(14),
	datad => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datae => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~69_sumout\,
	combout => \Clock_Divider_0|countlocal~9_combout\);

-- Location: FF_X81_Y11_N35
\Clock_Divider_0|countlocal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|countlocal~9_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(1));

-- Location: MLABCELL_X82_Y11_N6
\Clock_Divider_0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~65_sumout\ = SUM(( !\Clock_Divider_0|countlocal\(2) ) + ( VCC ) + ( \Clock_Divider_0|Add0~70\ ))
-- \Clock_Divider_0|Add0~66\ = CARRY(( !\Clock_Divider_0|countlocal\(2) ) + ( VCC ) + ( \Clock_Divider_0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_countlocal\(2),
	cin => \Clock_Divider_0|Add0~70\,
	sumout => \Clock_Divider_0|Add0~65_sumout\,
	cout => \Clock_Divider_0|Add0~66\);

-- Location: LABCELL_X81_Y11_N24
\Clock_Divider_0|countlocal~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|countlocal~8_combout\ = ( \Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~65_sumout\ & ( ((!\Clock_Divider_0|LessThan0~0_combout\) # ((!\Clock_Divider_0|LessThan0~1_combout\) # (\Clock_Divider_0|countlocal\(14)))) # 
-- (\Clock_Divider_0|countlocal\(5)) ) ) ) # ( !\Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~65_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_countlocal\(5),
	datab => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datac => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datad => \Clock_Divider_0|ALT_INV_countlocal\(14),
	datae => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~65_sumout\,
	combout => \Clock_Divider_0|countlocal~8_combout\);

-- Location: FF_X81_Y11_N26
\Clock_Divider_0|countlocal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|countlocal~8_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(2));

-- Location: MLABCELL_X82_Y11_N9
\Clock_Divider_0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~61_sumout\ = SUM(( !\Clock_Divider_0|countlocal\(3) ) + ( VCC ) + ( \Clock_Divider_0|Add0~66\ ))
-- \Clock_Divider_0|Add0~62\ = CARRY(( !\Clock_Divider_0|countlocal\(3) ) + ( VCC ) + ( \Clock_Divider_0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_countlocal\(3),
	cin => \Clock_Divider_0|Add0~66\,
	sumout => \Clock_Divider_0|Add0~61_sumout\,
	cout => \Clock_Divider_0|Add0~62\);

-- Location: LABCELL_X81_Y11_N51
\Clock_Divider_0|countlocal~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|countlocal~7_combout\ = ( \Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~61_sumout\ & ( ((!\Clock_Divider_0|LessThan0~0_combout\) # ((!\Clock_Divider_0|LessThan0~1_combout\) # (\Clock_Divider_0|countlocal\(14)))) # 
-- (\Clock_Divider_0|countlocal\(5)) ) ) ) # ( !\Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~61_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_countlocal\(5),
	datab => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datac => \Clock_Divider_0|ALT_INV_countlocal\(14),
	datad => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datae => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~61_sumout\,
	combout => \Clock_Divider_0|countlocal~7_combout\);

-- Location: FF_X81_Y11_N53
\Clock_Divider_0|countlocal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|countlocal~7_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(3));

-- Location: LABCELL_X81_Y11_N45
\Clock_Divider_0|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|LessThan0~2_combout\ = ( \Clock_Divider_0|countlocal\(2) & ( \Clock_Divider_0|countlocal\(4) & ( (\Clock_Divider_0|countlocal\(1) & (\Clock_Divider_0|countlocal\(0) & \Clock_Divider_0|countlocal\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_countlocal\(1),
	datac => \Clock_Divider_0|ALT_INV_countlocal\(0),
	datad => \Clock_Divider_0|ALT_INV_countlocal\(3),
	datae => \Clock_Divider_0|ALT_INV_countlocal\(2),
	dataf => \Clock_Divider_0|ALT_INV_countlocal\(4),
	combout => \Clock_Divider_0|LessThan0~2_combout\);

-- Location: LABCELL_X81_Y11_N27
\Clock_Divider_0|countlocal~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|countlocal~4_combout\ = ( \Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~49_sumout\ & ( ((!\Clock_Divider_0|LessThan0~0_combout\) # ((!\Clock_Divider_0|LessThan0~1_combout\) # (\Clock_Divider_0|countlocal\(14)))) # 
-- (\Clock_Divider_0|countlocal\(5)) ) ) ) # ( !\Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_countlocal\(5),
	datab => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datac => \Clock_Divider_0|ALT_INV_countlocal\(14),
	datad => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datae => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~49_sumout\,
	combout => \Clock_Divider_0|countlocal~4_combout\);

-- Location: FF_X81_Y11_N29
\Clock_Divider_0|countlocal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|countlocal~4_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(13));

-- Location: MLABCELL_X82_Y11_N45
\Clock_Divider_0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~45_sumout\ = SUM(( !\Clock_Divider_0|countlocal\(15) ) + ( VCC ) + ( \Clock_Divider_0|Add0~2\ ))
-- \Clock_Divider_0|Add0~46\ = CARRY(( !\Clock_Divider_0|countlocal\(15) ) + ( VCC ) + ( \Clock_Divider_0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_countlocal\(15),
	cin => \Clock_Divider_0|Add0~2\,
	sumout => \Clock_Divider_0|Add0~45_sumout\,
	cout => \Clock_Divider_0|Add0~46\);

-- Location: LABCELL_X81_Y11_N6
\Clock_Divider_0|countlocal~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|countlocal~3_combout\ = ( !\Clock_Divider_0|LessThan0~3_combout\ & ( !\Clock_Divider_0|Add0~45_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_Add0~45_sumout\,
	dataf => \Clock_Divider_0|ALT_INV_LessThan0~3_combout\,
	combout => \Clock_Divider_0|countlocal~3_combout\);

-- Location: FF_X81_Y11_N8
\Clock_Divider_0|countlocal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|countlocal~3_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(15));

-- Location: MLABCELL_X82_Y11_N48
\Clock_Divider_0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~41_sumout\ = SUM(( !\Clock_Divider_0|countlocal\(16) ) + ( VCC ) + ( \Clock_Divider_0|Add0~46\ ))
-- \Clock_Divider_0|Add0~42\ = CARRY(( !\Clock_Divider_0|countlocal\(16) ) + ( VCC ) + ( \Clock_Divider_0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_countlocal\(16),
	cin => \Clock_Divider_0|Add0~46\,
	sumout => \Clock_Divider_0|Add0~41_sumout\,
	cout => \Clock_Divider_0|Add0~42\);

-- Location: LABCELL_X81_Y11_N9
\Clock_Divider_0|countlocal~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|countlocal~2_combout\ = ( !\Clock_Divider_0|LessThan0~3_combout\ & ( !\Clock_Divider_0|Add0~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_Add0~41_sumout\,
	dataf => \Clock_Divider_0|ALT_INV_LessThan0~3_combout\,
	combout => \Clock_Divider_0|countlocal~2_combout\);

-- Location: FF_X81_Y11_N11
\Clock_Divider_0|countlocal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|countlocal~2_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(16));

-- Location: MLABCELL_X82_Y11_N51
\Clock_Divider_0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~37_sumout\ = SUM(( !\Clock_Divider_0|countlocal\(17) ) + ( VCC ) + ( \Clock_Divider_0|Add0~42\ ))
-- \Clock_Divider_0|Add0~38\ = CARRY(( !\Clock_Divider_0|countlocal\(17) ) + ( VCC ) + ( \Clock_Divider_0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_countlocal\(17),
	cin => \Clock_Divider_0|Add0~42\,
	sumout => \Clock_Divider_0|Add0~37_sumout\,
	cout => \Clock_Divider_0|Add0~38\);

-- Location: LABCELL_X81_Y11_N39
\Clock_Divider_0|countlocal~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|countlocal~1_combout\ = ( !\Clock_Divider_0|Add0~37_sumout\ & ( !\Clock_Divider_0|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_LessThan0~3_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~37_sumout\,
	combout => \Clock_Divider_0|countlocal~1_combout\);

-- Location: FF_X81_Y11_N41
\Clock_Divider_0|countlocal[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|countlocal~1_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(17));

-- Location: MLABCELL_X82_Y11_N54
\Clock_Divider_0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~33_sumout\ = SUM(( !\Clock_Divider_0|countlocal\(18) ) + ( VCC ) + ( \Clock_Divider_0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_countlocal\(18),
	cin => \Clock_Divider_0|Add0~38\,
	sumout => \Clock_Divider_0|Add0~33_sumout\);

-- Location: LABCELL_X81_Y11_N36
\Clock_Divider_0|countlocal~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|countlocal~0_combout\ = ( !\Clock_Divider_0|Add0~33_sumout\ & ( !\Clock_Divider_0|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_LessThan0~3_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~33_sumout\,
	combout => \Clock_Divider_0|countlocal~0_combout\);

-- Location: FF_X81_Y11_N38
\Clock_Divider_0|countlocal[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|countlocal~0_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(18));

-- Location: LABCELL_X81_Y11_N0
\Clock_Divider_0|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|LessThan0~1_combout\ = ( \Clock_Divider_0|countlocal\(18) & ( \Clock_Divider_0|countlocal\(17) & ( (\Clock_Divider_0|countlocal\(13) & (\Clock_Divider_0|countlocal\(16) & (\Clock_Divider_0|countlocal\(8) & 
-- \Clock_Divider_0|countlocal\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_countlocal\(13),
	datab => \Clock_Divider_0|ALT_INV_countlocal\(16),
	datac => \Clock_Divider_0|ALT_INV_countlocal\(8),
	datad => \Clock_Divider_0|ALT_INV_countlocal\(15),
	datae => \Clock_Divider_0|ALT_INV_countlocal\(18),
	dataf => \Clock_Divider_0|ALT_INV_countlocal\(17),
	combout => \Clock_Divider_0|LessThan0~1_combout\);

-- Location: MLABCELL_X82_Y11_N15
\Clock_Divider_0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~5_sumout\ = SUM(( \Clock_Divider_0|countlocal\(5) ) + ( VCC ) + ( \Clock_Divider_0|Add0~58\ ))
-- \Clock_Divider_0|Add0~6\ = CARRY(( \Clock_Divider_0|countlocal\(5) ) + ( VCC ) + ( \Clock_Divider_0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_countlocal\(5),
	cin => \Clock_Divider_0|Add0~58\,
	sumout => \Clock_Divider_0|Add0~5_sumout\,
	cout => \Clock_Divider_0|Add0~6\);

-- Location: MLABCELL_X82_Y11_N18
\Clock_Divider_0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~29_sumout\ = SUM(( \Clock_Divider_0|countlocal\(6) ) + ( VCC ) + ( \Clock_Divider_0|Add0~6\ ))
-- \Clock_Divider_0|Add0~30\ = CARRY(( \Clock_Divider_0|countlocal\(6) ) + ( VCC ) + ( \Clock_Divider_0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_countlocal\(6),
	cin => \Clock_Divider_0|Add0~6\,
	sumout => \Clock_Divider_0|Add0~29_sumout\,
	cout => \Clock_Divider_0|Add0~30\);

-- Location: FF_X82_Y11_N20
\Clock_Divider_0|countlocal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~29_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(6));

-- Location: MLABCELL_X82_Y11_N21
\Clock_Divider_0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~25_sumout\ = SUM(( \Clock_Divider_0|countlocal\(7) ) + ( VCC ) + ( \Clock_Divider_0|Add0~30\ ))
-- \Clock_Divider_0|Add0~26\ = CARRY(( \Clock_Divider_0|countlocal\(7) ) + ( VCC ) + ( \Clock_Divider_0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_countlocal\(7),
	cin => \Clock_Divider_0|Add0~30\,
	sumout => \Clock_Divider_0|Add0~25_sumout\,
	cout => \Clock_Divider_0|Add0~26\);

-- Location: FF_X82_Y11_N23
\Clock_Divider_0|countlocal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~25_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(7));

-- Location: MLABCELL_X82_Y11_N24
\Clock_Divider_0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~53_sumout\ = SUM(( !\Clock_Divider_0|countlocal\(8) ) + ( VCC ) + ( \Clock_Divider_0|Add0~26\ ))
-- \Clock_Divider_0|Add0~54\ = CARRY(( !\Clock_Divider_0|countlocal\(8) ) + ( VCC ) + ( \Clock_Divider_0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_countlocal\(8),
	cin => \Clock_Divider_0|Add0~26\,
	sumout => \Clock_Divider_0|Add0~53_sumout\,
	cout => \Clock_Divider_0|Add0~54\);

-- Location: LABCELL_X81_Y11_N30
\Clock_Divider_0|countlocal~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|countlocal~5_combout\ = ( \Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~53_sumout\ & ( ((!\Clock_Divider_0|LessThan0~0_combout\) # ((!\Clock_Divider_0|LessThan0~1_combout\) # (\Clock_Divider_0|countlocal\(14)))) # 
-- (\Clock_Divider_0|countlocal\(5)) ) ) ) # ( !\Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~53_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_countlocal\(5),
	datab => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datac => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datad => \Clock_Divider_0|ALT_INV_countlocal\(14),
	datae => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~53_sumout\,
	combout => \Clock_Divider_0|countlocal~5_combout\);

-- Location: FF_X81_Y11_N32
\Clock_Divider_0|countlocal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|countlocal~5_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(8));

-- Location: MLABCELL_X82_Y11_N27
\Clock_Divider_0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~21_sumout\ = SUM(( \Clock_Divider_0|countlocal\(9) ) + ( VCC ) + ( \Clock_Divider_0|Add0~54\ ))
-- \Clock_Divider_0|Add0~22\ = CARRY(( \Clock_Divider_0|countlocal\(9) ) + ( VCC ) + ( \Clock_Divider_0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_countlocal\(9),
	cin => \Clock_Divider_0|Add0~54\,
	sumout => \Clock_Divider_0|Add0~21_sumout\,
	cout => \Clock_Divider_0|Add0~22\);

-- Location: FF_X82_Y11_N29
\Clock_Divider_0|countlocal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~21_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(9));

-- Location: FF_X82_Y11_N32
\Clock_Divider_0|countlocal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~17_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(10));

-- Location: LABCELL_X81_Y11_N12
\Clock_Divider_0|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|LessThan0~0_combout\ = ( !\Clock_Divider_0|countlocal\(7) & ( !\Clock_Divider_0|countlocal\(12) & ( (!\Clock_Divider_0|countlocal\(10) & (!\Clock_Divider_0|countlocal\(6) & (!\Clock_Divider_0|countlocal\(9) & 
-- !\Clock_Divider_0|countlocal\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_countlocal\(10),
	datab => \Clock_Divider_0|ALT_INV_countlocal\(6),
	datac => \Clock_Divider_0|ALT_INV_countlocal\(9),
	datad => \Clock_Divider_0|ALT_INV_countlocal\(11),
	datae => \Clock_Divider_0|ALT_INV_countlocal\(7),
	dataf => \Clock_Divider_0|ALT_INV_countlocal\(12),
	combout => \Clock_Divider_0|LessThan0~0_combout\);

-- Location: MLABCELL_X82_Y11_N12
\Clock_Divider_0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|Add0~57_sumout\ = SUM(( !\Clock_Divider_0|countlocal\(4) ) + ( VCC ) + ( \Clock_Divider_0|Add0~62\ ))
-- \Clock_Divider_0|Add0~58\ = CARRY(( !\Clock_Divider_0|countlocal\(4) ) + ( VCC ) + ( \Clock_Divider_0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Clock_Divider_0|ALT_INV_countlocal\(4),
	cin => \Clock_Divider_0|Add0~62\,
	sumout => \Clock_Divider_0|Add0~57_sumout\,
	cout => \Clock_Divider_0|Add0~58\);

-- Location: LABCELL_X81_Y11_N48
\Clock_Divider_0|countlocal~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|countlocal~6_combout\ = ( \Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~57_sumout\ & ( ((!\Clock_Divider_0|LessThan0~0_combout\) # ((!\Clock_Divider_0|LessThan0~1_combout\) # (\Clock_Divider_0|countlocal\(14)))) # 
-- (\Clock_Divider_0|countlocal\(5)) ) ) ) # ( !\Clock_Divider_0|LessThan0~2_combout\ & ( !\Clock_Divider_0|Add0~57_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_countlocal\(5),
	datab => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	datac => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datad => \Clock_Divider_0|ALT_INV_countlocal\(14),
	datae => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	dataf => \Clock_Divider_0|ALT_INV_Add0~57_sumout\,
	combout => \Clock_Divider_0|countlocal~6_combout\);

-- Location: FF_X81_Y11_N50
\Clock_Divider_0|countlocal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|countlocal~6_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(4));

-- Location: FF_X82_Y11_N17
\Clock_Divider_0|countlocal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Clock_Divider_0|Add0~5_sumout\,
	sclr => \Clock_Divider_0|LessThan0~3_combout\,
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|countlocal\(5));

-- Location: LABCELL_X81_Y11_N18
\Clock_Divider_0|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Clock_Divider_0|LessThan0~3_combout\ = ( \Clock_Divider_0|LessThan0~0_combout\ & ( (!\Clock_Divider_0|countlocal\(5) & (!\Clock_Divider_0|countlocal\(14) & (\Clock_Divider_0|LessThan0~1_combout\ & \Clock_Divider_0|LessThan0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_countlocal\(5),
	datab => \Clock_Divider_0|ALT_INV_countlocal\(14),
	datac => \Clock_Divider_0|ALT_INV_LessThan0~1_combout\,
	datad => \Clock_Divider_0|ALT_INV_LessThan0~2_combout\,
	dataf => \Clock_Divider_0|ALT_INV_LessThan0~0_combout\,
	combout => \Clock_Divider_0|LessThan0~3_combout\);

-- Location: FF_X81_Y11_N59
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
	ena => \enable_clock~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Divider_0|en_out~q\);

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

-- Location: FF_X82_Y10_N40
\Counter_0|countlocal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|countlocal[1]~2_combout\,
	clrn => \ALT_INV_reset_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|countlocal\(1));

-- Location: MLABCELL_X82_Y10_N39
\Counter_0|countlocal[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_0|countlocal[1]~2_combout\ = !\Counter_0|countlocal[1]~1_combout\ $ (!\Counter_0|countlocal\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter_0|ALT_INV_countlocal[1]~1_combout\,
	datad => \Counter_0|ALT_INV_countlocal\(1),
	combout => \Counter_0|countlocal[1]~2_combout\);

-- Location: FF_X82_Y10_N41
\Counter_0|countlocal[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|countlocal[1]~2_combout\,
	clrn => \ALT_INV_reset_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|countlocal[1]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y10_N21
\Counter_0|countlocal[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_0|countlocal[3]~4_combout\ = ( \Counter_0|countlocal[2]~DUPLICATE_q\ & ( !\Counter_0|countlocal\(3) $ (((!\Counter_0|countlocal[1]~DUPLICATE_q\) # (!\Counter_0|countlocal[1]~1_combout\))) ) ) # ( !\Counter_0|countlocal[2]~DUPLICATE_q\ & ( 
-- \Counter_0|countlocal\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_countlocal[1]~1_combout\,
	datad => \Counter_0|ALT_INV_countlocal\(3),
	dataf => \Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\,
	combout => \Counter_0|countlocal[3]~4_combout\);

-- Location: FF_X82_Y10_N23
\Counter_0|countlocal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|countlocal[3]~4_combout\,
	clrn => \ALT_INV_reset_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|countlocal\(3));

-- Location: FF_X82_Y10_N56
\Counter_0|countlocal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|countlocal[2]~3_combout\,
	clrn => \ALT_INV_reset_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|countlocal\(2));

-- Location: MLABCELL_X82_Y10_N6
reset_0 : cyclonev_lcell_comb
-- Equation(s):
-- \reset_0~combout\ = ( \Counter_0|countlocal\(2) & ( \Counter_0|countlocal[1]~DUPLICATE_q\ & ( !\reset~input_o\ ) ) ) # ( !\Counter_0|countlocal\(2) & ( \Counter_0|countlocal[1]~DUPLICATE_q\ & ( (!\reset~input_o\) # ((\Counter_0|countlocal\(3) & 
-- !\Counter_0|countlocal\(0))) ) ) ) # ( \Counter_0|countlocal\(2) & ( !\Counter_0|countlocal[1]~DUPLICATE_q\ & ( !\reset~input_o\ ) ) ) # ( !\Counter_0|countlocal\(2) & ( !\Counter_0|countlocal[1]~DUPLICATE_q\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101111101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \Counter_0|ALT_INV_countlocal\(3),
	datad => \Counter_0|ALT_INV_countlocal\(0),
	datae => \Counter_0|ALT_INV_countlocal\(2),
	dataf => \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\,
	combout => \reset_0~combout\);

-- Location: FF_X82_Y10_N17
\Counter_0|countlocal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|countlocal[0]~0_combout\,
	clrn => \ALT_INV_reset_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|countlocal\(0));

-- Location: MLABCELL_X82_Y10_N15
\Counter_0|countlocal[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_0|countlocal[0]~0_combout\ = !\Clock_Divider_0|en_out~q\ $ (!\Counter_0|countlocal\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_en_out~q\,
	datad => \Counter_0|ALT_INV_countlocal\(0),
	combout => \Counter_0|countlocal[0]~0_combout\);

-- Location: FF_X82_Y10_N16
\Counter_0|countlocal[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|countlocal[0]~0_combout\,
	clrn => \ALT_INV_reset_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|countlocal[0]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y10_N33
\Counter_0|countlocal[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_0|countlocal[1]~1_combout\ = ( \Counter_0|countlocal[0]~DUPLICATE_q\ & ( \Clock_Divider_0|en_out~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Divider_0|ALT_INV_en_out~q\,
	dataf => \Counter_0|ALT_INV_countlocal[0]~DUPLICATE_q\,
	combout => \Counter_0|countlocal[1]~1_combout\);

-- Location: MLABCELL_X82_Y10_N54
\Counter_0|countlocal[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_0|countlocal[2]~3_combout\ = ( \Counter_0|countlocal[1]~DUPLICATE_q\ & ( !\Counter_0|countlocal[1]~1_combout\ $ (!\Counter_0|countlocal\(2)) ) ) # ( !\Counter_0|countlocal[1]~DUPLICATE_q\ & ( \Counter_0|countlocal\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter_0|ALT_INV_countlocal[1]~1_combout\,
	datad => \Counter_0|ALT_INV_countlocal\(2),
	dataf => \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\,
	combout => \Counter_0|countlocal[2]~3_combout\);

-- Location: FF_X82_Y10_N55
\Counter_0|countlocal[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|countlocal[2]~3_combout\,
	clrn => \ALT_INV_reset_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|countlocal[2]~DUPLICATE_q\);

-- Location: FF_X82_Y10_N22
\Counter_0|countlocal[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_0|countlocal[3]~4_combout\,
	clrn => \ALT_INV_reset_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_0|countlocal[3]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y10_N57
\decoder_0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux6~0_combout\ = ( \Counter_0|countlocal[0]~DUPLICATE_q\ & ( (!\Counter_0|countlocal[2]~DUPLICATE_q\ $ (!\Counter_0|countlocal[1]~DUPLICATE_q\)) # (\Counter_0|countlocal[3]~DUPLICATE_q\) ) ) # ( !\Counter_0|countlocal[0]~DUPLICATE_q\ & ( 
-- (!\Counter_0|countlocal[2]~DUPLICATE_q\ $ (!\Counter_0|countlocal[3]~DUPLICATE_q\)) # (\Counter_0|countlocal[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011110111011011101111011101101100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\,
	datab => \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\,
	datad => \Counter_0|ALT_INV_countlocal[3]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_countlocal[0]~DUPLICATE_q\,
	combout => \decoder_0|Mux6~0_combout\);

-- Location: MLABCELL_X82_Y10_N12
\decoder_0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux5~0_combout\ = ( \Counter_0|countlocal[2]~DUPLICATE_q\ & ( (\Counter_0|countlocal[0]~DUPLICATE_q\ & (!\Counter_0|countlocal[3]~DUPLICATE_q\ $ (!\Counter_0|countlocal\(1)))) ) ) # ( !\Counter_0|countlocal[2]~DUPLICATE_q\ & ( 
-- (!\Counter_0|countlocal[0]~DUPLICATE_q\ & ((\Counter_0|countlocal\(1)))) # (\Counter_0|countlocal[0]~DUPLICATE_q\ & (!\Counter_0|countlocal[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111100001100001111110000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_0|ALT_INV_countlocal[0]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_countlocal[3]~DUPLICATE_q\,
	datad => \Counter_0|ALT_INV_countlocal\(1),
	dataf => \Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\,
	combout => \decoder_0|Mux5~0_combout\);

-- Location: MLABCELL_X82_Y10_N42
\decoder_0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux4~0_combout\ = ( \Counter_0|countlocal[0]~DUPLICATE_q\ & ( (!\Counter_0|countlocal[3]~DUPLICATE_q\) # ((!\Counter_0|countlocal[1]~DUPLICATE_q\ & !\Counter_0|countlocal[2]~DUPLICATE_q\)) ) ) # ( !\Counter_0|countlocal[0]~DUPLICATE_q\ & ( 
-- (!\Counter_0|countlocal[3]~DUPLICATE_q\ & (!\Counter_0|countlocal[1]~DUPLICATE_q\ & \Counter_0|countlocal[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000011111010101010101111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_countlocal[3]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\,
	datad => \Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_countlocal[0]~DUPLICATE_q\,
	combout => \decoder_0|Mux4~0_combout\);

-- Location: MLABCELL_X82_Y10_N0
\decoder_0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux3~0_combout\ = ( \Counter_0|countlocal[0]~DUPLICATE_q\ & ( (!\Counter_0|countlocal[2]~DUPLICATE_q\ & (!\Counter_0|countlocal[1]~DUPLICATE_q\ & !\Counter_0|countlocal[3]~DUPLICATE_q\)) # (\Counter_0|countlocal[2]~DUPLICATE_q\ & 
-- (\Counter_0|countlocal[1]~DUPLICATE_q\)) ) ) # ( !\Counter_0|countlocal[0]~DUPLICATE_q\ & ( (\Counter_0|countlocal[2]~DUPLICATE_q\ & (!\Counter_0|countlocal[1]~DUPLICATE_q\ & !\Counter_0|countlocal[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\,
	datad => \Counter_0|ALT_INV_countlocal[3]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_countlocal[0]~DUPLICATE_q\,
	combout => \decoder_0|Mux3~0_combout\);

-- Location: MLABCELL_X82_Y10_N45
\decoder_0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux2~0_combout\ = ( \Counter_0|countlocal[0]~DUPLICATE_q\ & ( (\Counter_0|countlocal[3]~DUPLICATE_q\ & (\Counter_0|countlocal[2]~DUPLICATE_q\ & \Counter_0|countlocal\(1))) ) ) # ( !\Counter_0|countlocal[0]~DUPLICATE_q\ & ( 
-- (!\Counter_0|countlocal[3]~DUPLICATE_q\ & (!\Counter_0|countlocal[2]~DUPLICATE_q\ & \Counter_0|countlocal\(1))) # (\Counter_0|countlocal[3]~DUPLICATE_q\ & (\Counter_0|countlocal[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100101000001011010010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_countlocal[3]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\,
	datad => \Counter_0|ALT_INV_countlocal\(1),
	dataf => \Counter_0|ALT_INV_countlocal[0]~DUPLICATE_q\,
	combout => \decoder_0|Mux2~0_combout\);

-- Location: MLABCELL_X82_Y10_N18
\decoder_0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux1~0_combout\ = ( \Counter_0|countlocal[0]~DUPLICATE_q\ & ( (!\Counter_0|countlocal[1]~DUPLICATE_q\ & (!\Counter_0|countlocal[3]~DUPLICATE_q\ & \Counter_0|countlocal[2]~DUPLICATE_q\)) # (\Counter_0|countlocal[1]~DUPLICATE_q\ & 
-- (\Counter_0|countlocal[3]~DUPLICATE_q\)) ) ) # ( !\Counter_0|countlocal[0]~DUPLICATE_q\ & ( (\Counter_0|countlocal[2]~DUPLICATE_q\ & ((\Counter_0|countlocal[3]~DUPLICATE_q\) # (\Counter_0|countlocal[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_countlocal[3]~DUPLICATE_q\,
	datad => \Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_countlocal[0]~DUPLICATE_q\,
	combout => \decoder_0|Mux1~0_combout\);

-- Location: MLABCELL_X82_Y10_N3
\decoder_0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_0|Mux0~0_combout\ = ( \Counter_0|countlocal[1]~DUPLICATE_q\ & ( (!\Counter_0|countlocal[2]~DUPLICATE_q\ & (\Counter_0|countlocal[0]~DUPLICATE_q\ & \Counter_0|countlocal[3]~DUPLICATE_q\)) ) ) # ( !\Counter_0|countlocal[1]~DUPLICATE_q\ & ( 
-- (!\Counter_0|countlocal[2]~DUPLICATE_q\ & (\Counter_0|countlocal[0]~DUPLICATE_q\ & !\Counter_0|countlocal[3]~DUPLICATE_q\)) # (\Counter_0|countlocal[2]~DUPLICATE_q\ & (!\Counter_0|countlocal[0]~DUPLICATE_q\ $ (\Counter_0|countlocal[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\,
	datac => \Counter_0|ALT_INV_countlocal[0]~DUPLICATE_q\,
	datad => \Counter_0|ALT_INV_countlocal[3]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\,
	combout => \decoder_0|Mux0~0_combout\);

-- Location: LABCELL_X83_Y10_N6
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Counter_0|countlocal[2]~DUPLICATE_q\ & ( \Counter_0|countlocal[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Counter_0|ALT_INV_countlocal[3]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X84_Y10_N0
\Counter_1|countlocal[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_1|countlocal[0]~0_combout\ = ( \Equal0~0_combout\ & ( !\Counter_1|countlocal\(0) $ (((!\stop~input_o\) # ((!\Counter_0|countlocal[1]~1_combout\) # (\Counter_0|countlocal[1]~DUPLICATE_q\)))) ) ) # ( !\Equal0~0_combout\ & ( 
-- \Counter_1|countlocal\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011011000110011001101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_stop~input_o\,
	datab => \Counter_1|ALT_INV_countlocal\(0),
	datac => \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\,
	datad => \Counter_0|ALT_INV_countlocal[1]~1_combout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Counter_1|countlocal[0]~0_combout\);

-- Location: MLABCELL_X84_Y10_N6
\Counter_1|countlocal[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_1|countlocal[1]~1_combout\ = ( \Counter_1|countlocal\(1) & ( \Counter_1|countlocal\(0) & ( (!\Counter_0|countlocal[1]~1_combout\) # ((!\Equal0~0_combout\) # ((!\stop~input_o\) # (\Counter_0|countlocal[1]~DUPLICATE_q\))) ) ) ) # ( 
-- !\Counter_1|countlocal\(1) & ( \Counter_1|countlocal\(0) & ( (\Counter_0|countlocal[1]~1_combout\ & (\Equal0~0_combout\ & (!\Counter_0|countlocal[1]~DUPLICATE_q\ & \stop~input_o\))) ) ) ) # ( \Counter_1|countlocal\(1) & ( !\Counter_1|countlocal\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000100001111111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_0|ALT_INV_countlocal[1]~1_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\,
	datad => \ALT_INV_stop~input_o\,
	datae => \Counter_1|ALT_INV_countlocal\(1),
	dataf => \Counter_1|ALT_INV_countlocal\(0),
	combout => \Counter_1|countlocal[1]~1_combout\);

-- Location: FF_X84_Y10_N8
\Counter_1|countlocal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_1|countlocal[1]~1_combout\,
	clrn => \ALT_INV_reset_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_1|countlocal\(1));

-- Location: MLABCELL_X82_Y10_N48
\enable_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_1~0_combout\ = ( \Counter_0|countlocal[3]~DUPLICATE_q\ & ( \Counter_0|countlocal\(0) & ( (\Clock_Divider_0|en_out~q\ & (!\Counter_0|countlocal[2]~DUPLICATE_q\ & (\stop~input_o\ & !\Counter_0|countlocal[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Divider_0|ALT_INV_en_out~q\,
	datab => \Counter_0|ALT_INV_countlocal[2]~DUPLICATE_q\,
	datac => \ALT_INV_stop~input_o\,
	datad => \Counter_0|ALT_INV_countlocal[1]~DUPLICATE_q\,
	datae => \Counter_0|ALT_INV_countlocal[3]~DUPLICATE_q\,
	dataf => \Counter_0|ALT_INV_countlocal\(0),
	combout => \enable_1~0_combout\);

-- Location: MLABCELL_X84_Y10_N30
\Counter_1|countlocal[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_1|countlocal[3]~3_combout\ = ( \Counter_1|countlocal\(0) & ( !\Counter_1|countlocal\(3) $ (((!\Counter_1|countlocal\(2)) # ((!\Counter_1|countlocal\(1)) # (!\enable_1~0_combout\)))) ) ) # ( !\Counter_1|countlocal\(0) & ( \Counter_1|countlocal\(3) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_countlocal\(2),
	datab => \Counter_1|ALT_INV_countlocal\(1),
	datac => \ALT_INV_enable_1~0_combout\,
	datad => \Counter_1|ALT_INV_countlocal\(3),
	dataf => \Counter_1|ALT_INV_countlocal\(0),
	combout => \Counter_1|countlocal[3]~3_combout\);

-- Location: FF_X84_Y10_N32
\Counter_1|countlocal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_1|countlocal[3]~3_combout\,
	clrn => \ALT_INV_reset_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_1|countlocal\(3));

-- Location: MLABCELL_X84_Y10_N15
reset_1 : cyclonev_lcell_comb
-- Equation(s):
-- \reset_1~combout\ = ( \Counter_1|countlocal\(1) & ( (!\reset~input_o\) # ((!\Counter_1|countlocal\(2) & (\Counter_1|countlocal\(3) & !\Counter_1|countlocal\(0)))) ) ) # ( !\Counter_1|countlocal\(1) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001110110011001100111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_countlocal\(2),
	datab => \ALT_INV_reset~input_o\,
	datac => \Counter_1|ALT_INV_countlocal\(3),
	datad => \Counter_1|ALT_INV_countlocal\(0),
	dataf => \Counter_1|ALT_INV_countlocal\(1),
	combout => \reset_1~combout\);

-- Location: FF_X84_Y10_N2
\Counter_1|countlocal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_1|countlocal[0]~0_combout\,
	clrn => \ALT_INV_reset_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_1|countlocal\(0));

-- Location: MLABCELL_X84_Y10_N54
\Counter_1|countlocal[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_1|countlocal[2]~2_combout\ = ( \Counter_1|countlocal\(1) & ( !\Counter_1|countlocal\(2) $ (((!\Counter_1|countlocal\(0)) # (!\enable_1~0_combout\))) ) ) # ( !\Counter_1|countlocal\(1) & ( \Counter_1|countlocal\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_countlocal\(0),
	datac => \ALT_INV_enable_1~0_combout\,
	datad => \Counter_1|ALT_INV_countlocal\(2),
	dataf => \Counter_1|ALT_INV_countlocal\(1),
	combout => \Counter_1|countlocal[2]~2_combout\);

-- Location: FF_X84_Y10_N56
\Counter_1|countlocal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_1|countlocal[2]~2_combout\,
	clrn => \ALT_INV_reset_1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_1|countlocal\(2));

-- Location: MLABCELL_X84_Y10_N33
\decoder_1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux6~0_combout\ = ( \Counter_1|countlocal\(0) & ( (!\Counter_1|countlocal\(2) $ (!\Counter_1|countlocal\(1))) # (\Counter_1|countlocal\(3)) ) ) # ( !\Counter_1|countlocal\(0) & ( (!\Counter_1|countlocal\(2) $ (!\Counter_1|countlocal\(3))) # 
-- (\Counter_1|countlocal\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101101101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_countlocal\(2),
	datab => \Counter_1|ALT_INV_countlocal\(1),
	datac => \Counter_1|ALT_INV_countlocal\(3),
	dataf => \Counter_1|ALT_INV_countlocal\(0),
	combout => \decoder_1|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y10_N57
\decoder_1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux5~0_combout\ = ( \Counter_1|countlocal\(3) & ( (!\Counter_1|countlocal\(0) & (\Counter_1|countlocal\(1) & !\Counter_1|countlocal\(2))) # (\Counter_1|countlocal\(0) & (!\Counter_1|countlocal\(1) & \Counter_1|countlocal\(2))) ) ) # ( 
-- !\Counter_1|countlocal\(3) & ( (!\Counter_1|countlocal\(0) & (\Counter_1|countlocal\(1) & !\Counter_1|countlocal\(2))) # (\Counter_1|countlocal\(0) & ((!\Counter_1|countlocal\(2)) # (\Counter_1|countlocal\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000100100100001001000010010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_countlocal\(0),
	datab => \Counter_1|ALT_INV_countlocal\(1),
	datac => \Counter_1|ALT_INV_countlocal\(2),
	dataf => \Counter_1|ALT_INV_countlocal\(3),
	combout => \decoder_1|Mux5~0_combout\);

-- Location: MLABCELL_X84_Y10_N3
\decoder_1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux4~0_combout\ = ( \Counter_1|countlocal\(1) & ( (\Counter_1|countlocal\(0) & !\Counter_1|countlocal\(3)) ) ) # ( !\Counter_1|countlocal\(1) & ( (!\Counter_1|countlocal\(2) & (\Counter_1|countlocal\(0))) # (\Counter_1|countlocal\(2) & 
-- ((!\Counter_1|countlocal\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110000001100111111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_1|ALT_INV_countlocal\(0),
	datac => \Counter_1|ALT_INV_countlocal\(3),
	datad => \Counter_1|ALT_INV_countlocal\(2),
	dataf => \Counter_1|ALT_INV_countlocal\(1),
	combout => \decoder_1|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y10_N27
\decoder_1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux3~0_combout\ = ( \Counter_1|countlocal\(1) & ( (\Counter_1|countlocal\(0) & \Counter_1|countlocal\(2)) ) ) # ( !\Counter_1|countlocal\(1) & ( (!\Counter_1|countlocal\(3) & (!\Counter_1|countlocal\(0) $ (!\Counter_1|countlocal\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_countlocal\(3),
	datac => \Counter_1|ALT_INV_countlocal\(0),
	datad => \Counter_1|ALT_INV_countlocal\(2),
	dataf => \Counter_1|ALT_INV_countlocal\(1),
	combout => \decoder_1|Mux3~0_combout\);

-- Location: LABCELL_X85_Y10_N9
\decoder_1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux2~0_combout\ = ( \Counter_1|countlocal\(0) & ( (\Counter_1|countlocal\(3) & (\Counter_1|countlocal\(1) & \Counter_1|countlocal\(2))) ) ) # ( !\Counter_1|countlocal\(0) & ( (!\Counter_1|countlocal\(3) & (\Counter_1|countlocal\(1) & 
-- !\Counter_1|countlocal\(2))) # (\Counter_1|countlocal\(3) & ((\Counter_1|countlocal\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010101000010100101010100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_countlocal\(3),
	datac => \Counter_1|ALT_INV_countlocal\(1),
	datad => \Counter_1|ALT_INV_countlocal\(2),
	dataf => \Counter_1|ALT_INV_countlocal\(0),
	combout => \decoder_1|Mux2~0_combout\);

-- Location: MLABCELL_X82_Y10_N27
\decoder_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux1~0_combout\ = ( \Counter_1|countlocal\(2) & ( (!\Counter_1|countlocal\(0) & ((\Counter_1|countlocal\(3)) # (\Counter_1|countlocal\(1)))) # (\Counter_1|countlocal\(0) & (!\Counter_1|countlocal\(1) $ (\Counter_1|countlocal\(3)))) ) ) # ( 
-- !\Counter_1|countlocal\(2) & ( (\Counter_1|countlocal\(0) & (\Counter_1|countlocal\(1) & \Counter_1|countlocal\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011010101011110101101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_countlocal\(0),
	datac => \Counter_1|ALT_INV_countlocal\(1),
	datad => \Counter_1|ALT_INV_countlocal\(3),
	dataf => \Counter_1|ALT_INV_countlocal\(2),
	combout => \decoder_1|Mux1~0_combout\);

-- Location: LABCELL_X85_Y10_N48
\decoder_1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_1|Mux0~0_combout\ = ( \Counter_1|countlocal\(3) & ( (\Counter_1|countlocal\(0) & (!\Counter_1|countlocal\(1) $ (!\Counter_1|countlocal\(2)))) ) ) # ( !\Counter_1|countlocal\(3) & ( (!\Counter_1|countlocal\(1) & (!\Counter_1|countlocal\(0) $ 
-- (!\Counter_1|countlocal\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_1|ALT_INV_countlocal\(0),
	datac => \Counter_1|ALT_INV_countlocal\(1),
	datad => \Counter_1|ALT_INV_countlocal\(2),
	dataf => \Counter_1|ALT_INV_countlocal\(3),
	combout => \decoder_1|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y10_N36
\enable_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_2~0_combout\ = ( !\Counter_1|countlocal\(1) & ( (\Counter_1|countlocal\(3) & !\Counter_1|countlocal\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_1|ALT_INV_countlocal\(3),
	datad => \Counter_1|ALT_INV_countlocal\(2),
	dataf => \Counter_1|ALT_INV_countlocal\(1),
	combout => \enable_2~0_combout\);

-- Location: LABCELL_X85_Y10_N15
\Counter_2|countlocal[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_2|countlocal[0]~0_combout\ = ( \enable_2~0_combout\ & ( !\Counter_2|countlocal\(0) $ (((!\enable_1~0_combout\) # (!\Counter_1|countlocal\(0)))) ) ) # ( !\enable_2~0_combout\ & ( \Counter_2|countlocal\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_1~0_combout\,
	datac => \Counter_1|ALT_INV_countlocal\(0),
	datad => \Counter_2|ALT_INV_countlocal\(0),
	dataf => \ALT_INV_enable_2~0_combout\,
	combout => \Counter_2|countlocal[0]~0_combout\);

-- Location: LABCELL_X83_Y10_N18
\enable_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_2~1_combout\ = ( \Counter_0|countlocal[1]~1_combout\ & ( !\Counter_0|countlocal\(1) & ( (\Counter_1|countlocal\(0) & (\stop~input_o\ & (\Equal0~0_combout\ & \enable_2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_1|ALT_INV_countlocal\(0),
	datab => \ALT_INV_stop~input_o\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_enable_2~0_combout\,
	datae => \Counter_0|ALT_INV_countlocal[1]~1_combout\,
	dataf => \Counter_0|ALT_INV_countlocal\(1),
	combout => \enable_2~1_combout\);

-- Location: LABCELL_X85_Y10_N51
\Counter_2|countlocal[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_2|countlocal[1]~1_combout\ = ( \Counter_2|countlocal\(0) & ( !\Counter_2|countlocal\(1) $ (((!\enable_2~0_combout\) # ((!\Counter_1|countlocal\(0)) # (!\enable_1~0_combout\)))) ) ) # ( !\Counter_2|countlocal\(0) & ( \Counter_2|countlocal\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_2~0_combout\,
	datab => \Counter_1|ALT_INV_countlocal\(0),
	datac => \ALT_INV_enable_1~0_combout\,
	datad => \Counter_2|ALT_INV_countlocal\(1),
	dataf => \Counter_2|ALT_INV_countlocal\(0),
	combout => \Counter_2|countlocal[1]~1_combout\);

-- Location: FF_X85_Y10_N53
\Counter_2|countlocal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_2|countlocal[1]~1_combout\,
	clrn => \ALT_INV_reset_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_2|countlocal\(1));

-- Location: LABCELL_X85_Y10_N45
\Counter_2|countlocal[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_2|countlocal[3]~3_combout\ = ( \Counter_2|countlocal\(1) & ( !\Counter_2|countlocal\(3) $ (((!\Counter_2|countlocal\(2)) # ((!\Counter_2|countlocal\(0)) # (!\enable_2~1_combout\)))) ) ) # ( !\Counter_2|countlocal\(1) & ( \Counter_2|countlocal\(3) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_countlocal\(2),
	datab => \Counter_2|ALT_INV_countlocal\(0),
	datac => \ALT_INV_enable_2~1_combout\,
	datad => \Counter_2|ALT_INV_countlocal\(3),
	dataf => \Counter_2|ALT_INV_countlocal\(1),
	combout => \Counter_2|countlocal[3]~3_combout\);

-- Location: FF_X85_Y10_N47
\Counter_2|countlocal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_2|countlocal[3]~3_combout\,
	clrn => \ALT_INV_reset_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_2|countlocal\(3));

-- Location: LABCELL_X85_Y10_N42
reset_2 : cyclonev_lcell_comb
-- Equation(s):
-- \reset_2~combout\ = ( \Counter_2|countlocal\(1) & ( (!\reset~input_o\) # ((!\Counter_2|countlocal\(2) & (!\Counter_2|countlocal\(0) & \Counter_2|countlocal\(3)))) ) ) # ( !\Counter_2|countlocal\(1) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111110001111000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_countlocal\(2),
	datab => \Counter_2|ALT_INV_countlocal\(0),
	datac => \ALT_INV_reset~input_o\,
	datad => \Counter_2|ALT_INV_countlocal\(3),
	dataf => \Counter_2|ALT_INV_countlocal\(1),
	combout => \reset_2~combout\);

-- Location: FF_X85_Y10_N17
\Counter_2|countlocal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_2|countlocal[0]~0_combout\,
	clrn => \ALT_INV_reset_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_2|countlocal\(0));

-- Location: LABCELL_X85_Y10_N54
\Counter_2|countlocal[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_2|countlocal[2]~2_combout\ = ( \Counter_2|countlocal\(2) & ( \Counter_2|countlocal\(1) & ( (!\enable_1~0_combout\) # ((!\Counter_1|countlocal\(0)) # ((!\enable_2~0_combout\) # (!\Counter_2|countlocal\(0)))) ) ) ) # ( !\Counter_2|countlocal\(2) & 
-- ( \Counter_2|countlocal\(1) & ( (\enable_1~0_combout\ & (\Counter_1|countlocal\(0) & (\enable_2~0_combout\ & \Counter_2|countlocal\(0)))) ) ) ) # ( \Counter_2|countlocal\(2) & ( !\Counter_2|countlocal\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_1~0_combout\,
	datab => \Counter_1|ALT_INV_countlocal\(0),
	datac => \ALT_INV_enable_2~0_combout\,
	datad => \Counter_2|ALT_INV_countlocal\(0),
	datae => \Counter_2|ALT_INV_countlocal\(2),
	dataf => \Counter_2|ALT_INV_countlocal\(1),
	combout => \Counter_2|countlocal[2]~2_combout\);

-- Location: FF_X85_Y10_N56
\Counter_2|countlocal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_2|countlocal[2]~2_combout\,
	clrn => \ALT_INV_reset_2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_2|countlocal\(2));

-- Location: MLABCELL_X84_Y10_N18
\decoder_2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux6~0_combout\ = ( \Counter_2|countlocal\(3) & ( (!\Counter_2|countlocal\(2)) # ((\Counter_2|countlocal\(0)) # (\Counter_2|countlocal\(1))) ) ) # ( !\Counter_2|countlocal\(3) & ( (!\Counter_2|countlocal\(2) & (\Counter_2|countlocal\(1))) # 
-- (\Counter_2|countlocal\(2) & ((!\Counter_2|countlocal\(1)) # (!\Counter_2|countlocal\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111100001111110011110011001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_2|ALT_INV_countlocal\(2),
	datac => \Counter_2|ALT_INV_countlocal\(1),
	datad => \Counter_2|ALT_INV_countlocal\(0),
	dataf => \Counter_2|ALT_INV_countlocal\(3),
	combout => \decoder_2|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y10_N45
\decoder_2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux5~0_combout\ = ( \Counter_2|countlocal\(3) & ( (!\Counter_2|countlocal\(1) & (\Counter_2|countlocal\(2) & \Counter_2|countlocal\(0))) # (\Counter_2|countlocal\(1) & (!\Counter_2|countlocal\(2) & !\Counter_2|countlocal\(0))) ) ) # ( 
-- !\Counter_2|countlocal\(3) & ( (!\Counter_2|countlocal\(1) & (!\Counter_2|countlocal\(2) & \Counter_2|countlocal\(0))) # (\Counter_2|countlocal\(1) & ((!\Counter_2|countlocal\(2)) # (\Counter_2|countlocal\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011011101010001001101110101000100001000100100010000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_countlocal\(1),
	datab => \Counter_2|ALT_INV_countlocal\(2),
	datad => \Counter_2|ALT_INV_countlocal\(0),
	dataf => \Counter_2|ALT_INV_countlocal\(3),
	combout => \decoder_2|Mux5~0_combout\);

-- Location: MLABCELL_X82_Y10_N30
\decoder_2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux4~0_combout\ = ( \Counter_2|countlocal\(3) & ( (!\Counter_2|countlocal\(1) & (!\Counter_2|countlocal\(2) & \Counter_2|countlocal\(0))) ) ) # ( !\Counter_2|countlocal\(3) & ( ((!\Counter_2|countlocal\(1) & \Counter_2|countlocal\(2))) # 
-- (\Counter_2|countlocal\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_countlocal\(1),
	datab => \Counter_2|ALT_INV_countlocal\(2),
	datac => \Counter_2|ALT_INV_countlocal\(0),
	dataf => \Counter_2|ALT_INV_countlocal\(3),
	combout => \decoder_2|Mux4~0_combout\);

-- Location: MLABCELL_X82_Y10_N36
\decoder_2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux3~0_combout\ = ( \Counter_2|countlocal\(3) & ( (\Counter_2|countlocal\(1) & (\Counter_2|countlocal\(2) & \Counter_2|countlocal\(0))) ) ) # ( !\Counter_2|countlocal\(3) & ( (!\Counter_2|countlocal\(1) & (!\Counter_2|countlocal\(2) $ 
-- (!\Counter_2|countlocal\(0)))) # (\Counter_2|countlocal\(1) & (\Counter_2|countlocal\(2) & \Counter_2|countlocal\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_countlocal\(1),
	datab => \Counter_2|ALT_INV_countlocal\(2),
	datac => \Counter_2|ALT_INV_countlocal\(0),
	dataf => \Counter_2|ALT_INV_countlocal\(3),
	combout => \decoder_2|Mux3~0_combout\);

-- Location: LABCELL_X85_Y10_N12
\decoder_2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux2~0_combout\ = ( \Counter_2|countlocal\(1) & ( (!\Counter_2|countlocal\(2) & (!\Counter_2|countlocal\(0) & !\Counter_2|countlocal\(3))) # (\Counter_2|countlocal\(2) & ((\Counter_2|countlocal\(3)))) ) ) # ( !\Counter_2|countlocal\(1) & ( 
-- (!\Counter_2|countlocal\(0) & (\Counter_2|countlocal\(2) & \Counter_2|countlocal\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_2|ALT_INV_countlocal\(0),
	datac => \Counter_2|ALT_INV_countlocal\(2),
	datad => \Counter_2|ALT_INV_countlocal\(3),
	dataf => \Counter_2|ALT_INV_countlocal\(1),
	combout => \decoder_2|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y10_N36
\decoder_2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux1~0_combout\ = ( \Counter_2|countlocal\(3) & ( (!\Counter_2|countlocal\(0) & ((\Counter_2|countlocal\(2)))) # (\Counter_2|countlocal\(0) & (\Counter_2|countlocal\(1))) ) ) # ( !\Counter_2|countlocal\(3) & ( (\Counter_2|countlocal\(2) & 
-- (!\Counter_2|countlocal\(1) $ (!\Counter_2|countlocal\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_countlocal\(1),
	datab => \Counter_2|ALT_INV_countlocal\(0),
	datac => \Counter_2|ALT_INV_countlocal\(2),
	dataf => \Counter_2|ALT_INV_countlocal\(3),
	combout => \decoder_2|Mux1~0_combout\);

-- Location: MLABCELL_X82_Y10_N24
\decoder_2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_2|Mux0~0_combout\ = ( \Counter_2|countlocal\(3) & ( (\Counter_2|countlocal\(0) & (!\Counter_2|countlocal\(2) $ (!\Counter_2|countlocal\(1)))) ) ) # ( !\Counter_2|countlocal\(3) & ( (!\Counter_2|countlocal\(1) & (!\Counter_2|countlocal\(2) $ 
-- (!\Counter_2|countlocal\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_2|ALT_INV_countlocal\(2),
	datac => \Counter_2|ALT_INV_countlocal\(1),
	datad => \Counter_2|ALT_INV_countlocal\(0),
	dataf => \Counter_2|ALT_INV_countlocal\(3),
	combout => \decoder_2|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y10_N42
\enable_3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_3~0_combout\ = ( \Counter_2|countlocal\(3) & ( (!\Counter_2|countlocal\(1) & !\Counter_2|countlocal\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_countlocal\(1),
	datab => \Counter_2|ALT_INV_countlocal\(2),
	dataf => \Counter_2|ALT_INV_countlocal\(3),
	combout => \enable_3~0_combout\);

-- Location: LABCELL_X83_Y10_N12
\Counter_3|countlocal[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_3|countlocal[0]~0_combout\ = ( \Counter_3|countlocal\(0) & ( \enable_3~0_combout\ & ( (!\Counter_2|countlocal\(0)) # ((!\enable_1~0_combout\) # ((!\Counter_1|countlocal\(0)) # (!\enable_2~0_combout\))) ) ) ) # ( !\Counter_3|countlocal\(0) & ( 
-- \enable_3~0_combout\ & ( (\Counter_2|countlocal\(0) & (\enable_1~0_combout\ & (\Counter_1|countlocal\(0) & \enable_2~0_combout\))) ) ) ) # ( \Counter_3|countlocal\(0) & ( !\enable_3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_2|ALT_INV_countlocal\(0),
	datab => \ALT_INV_enable_1~0_combout\,
	datac => \Counter_1|ALT_INV_countlocal\(0),
	datad => \ALT_INV_enable_2~0_combout\,
	datae => \Counter_3|ALT_INV_countlocal\(0),
	dataf => \ALT_INV_enable_3~0_combout\,
	combout => \Counter_3|countlocal[0]~0_combout\);

-- Location: MLABCELL_X84_Y10_N48
\enable_4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_4~0_combout\ = ( \Counter_1|countlocal\(0) & ( \enable_1~0_combout\ & ( (\enable_2~0_combout\ & (\enable_3~0_combout\ & (\Counter_2|countlocal\(0) & \Counter_3|countlocal\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_2~0_combout\,
	datab => \ALT_INV_enable_3~0_combout\,
	datac => \Counter_2|ALT_INV_countlocal\(0),
	datad => \Counter_3|ALT_INV_countlocal\(0),
	datae => \Counter_1|ALT_INV_countlocal\(0),
	dataf => \ALT_INV_enable_1~0_combout\,
	combout => \enable_4~0_combout\);

-- Location: LABCELL_X83_Y10_N54
\Counter_3|countlocal[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_3|countlocal[2]~2_combout\ = ( \Counter_3|countlocal\(2) & ( \Counter_3|countlocal\(1) & ( (!\enable_3~0_combout\) # ((!\Counter_2|countlocal\(0)) # ((!\enable_2~1_combout\) # (!\Counter_3|countlocal\(0)))) ) ) ) # ( !\Counter_3|countlocal\(2) & 
-- ( \Counter_3|countlocal\(1) & ( (\enable_3~0_combout\ & (\Counter_2|countlocal\(0) & (\enable_2~1_combout\ & \Counter_3|countlocal\(0)))) ) ) ) # ( \Counter_3|countlocal\(2) & ( !\Counter_3|countlocal\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_3~0_combout\,
	datab => \Counter_2|ALT_INV_countlocal\(0),
	datac => \ALT_INV_enable_2~1_combout\,
	datad => \Counter_3|ALT_INV_countlocal\(0),
	datae => \Counter_3|ALT_INV_countlocal\(2),
	dataf => \Counter_3|ALT_INV_countlocal\(1),
	combout => \Counter_3|countlocal[2]~2_combout\);

-- Location: FF_X83_Y10_N56
\Counter_3|countlocal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|countlocal[2]~2_combout\,
	clrn => \ALT_INV_reset_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|countlocal\(2));

-- Location: LABCELL_X83_Y10_N33
\Counter_3|countlocal[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_3|countlocal[3]~3_combout\ = ( \Counter_3|countlocal\(2) & ( !\Counter_3|countlocal\(3) $ (((!\Counter_3|countlocal\(1)) # (!\enable_4~0_combout\))) ) ) # ( !\Counter_3|countlocal\(2) & ( \Counter_3|countlocal\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_3|ALT_INV_countlocal\(1),
	datac => \ALT_INV_enable_4~0_combout\,
	datad => \Counter_3|ALT_INV_countlocal\(3),
	dataf => \Counter_3|ALT_INV_countlocal\(2),
	combout => \Counter_3|countlocal[3]~3_combout\);

-- Location: FF_X83_Y10_N35
\Counter_3|countlocal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|countlocal[3]~3_combout\,
	clrn => \ALT_INV_reset_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|countlocal\(3));

-- Location: LABCELL_X83_Y10_N9
reset_3 : cyclonev_lcell_comb
-- Equation(s):
-- \reset_3~combout\ = ( \Counter_3|countlocal\(1) & ( (!\reset~input_o\) # ((!\Counter_3|countlocal\(3) & (!\Counter_3|countlocal\(0) & \Counter_3|countlocal\(2)))) ) ) # ( !\Counter_3|countlocal\(1) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100111011001100110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_3|ALT_INV_countlocal\(3),
	datab => \ALT_INV_reset~input_o\,
	datac => \Counter_3|ALT_INV_countlocal\(0),
	datad => \Counter_3|ALT_INV_countlocal\(2),
	dataf => \Counter_3|ALT_INV_countlocal\(1),
	combout => \reset_3~combout\);

-- Location: FF_X83_Y10_N14
\Counter_3|countlocal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|countlocal[0]~0_combout\,
	clrn => \ALT_INV_reset_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|countlocal\(0));

-- Location: LABCELL_X83_Y10_N30
\Counter_3|countlocal[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_3|countlocal[1]~1_combout\ = ( \Counter_3|countlocal\(0) & ( !\Counter_3|countlocal\(1) $ (((!\Counter_2|countlocal\(0)) # ((!\enable_3~0_combout\) # (!\enable_2~1_combout\)))) ) ) # ( !\Counter_3|countlocal\(0) & ( \Counter_3|countlocal\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_3|ALT_INV_countlocal\(1),
	datab => \Counter_2|ALT_INV_countlocal\(0),
	datac => \ALT_INV_enable_3~0_combout\,
	datad => \ALT_INV_enable_2~1_combout\,
	dataf => \Counter_3|ALT_INV_countlocal\(0),
	combout => \Counter_3|countlocal[1]~1_combout\);

-- Location: FF_X83_Y10_N32
\Counter_3|countlocal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_3|countlocal[1]~1_combout\,
	clrn => \ALT_INV_reset_3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_3|countlocal\(1));

-- Location: LABCELL_X80_Y11_N3
\decoder_3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux6~0_combout\ = ( \Counter_3|countlocal\(2) & ( \Counter_3|countlocal\(3) & ( (\Counter_3|countlocal\(0)) # (\Counter_3|countlocal\(1)) ) ) ) # ( !\Counter_3|countlocal\(2) & ( \Counter_3|countlocal\(3) ) ) # ( \Counter_3|countlocal\(2) & ( 
-- !\Counter_3|countlocal\(3) & ( (!\Counter_3|countlocal\(1)) # (!\Counter_3|countlocal\(0)) ) ) ) # ( !\Counter_3|countlocal\(2) & ( !\Counter_3|countlocal\(3) & ( \Counter_3|countlocal\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111001111110011111111111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_3|ALT_INV_countlocal\(1),
	datac => \Counter_3|ALT_INV_countlocal\(0),
	datae => \Counter_3|ALT_INV_countlocal\(2),
	dataf => \Counter_3|ALT_INV_countlocal\(3),
	combout => \decoder_3|Mux6~0_combout\);

-- Location: LABCELL_X80_Y11_N54
\decoder_3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux5~0_combout\ = ( \Counter_3|countlocal\(2) & ( \Counter_3|countlocal\(3) & ( (\Counter_3|countlocal\(0) & !\Counter_3|countlocal\(1)) ) ) ) # ( !\Counter_3|countlocal\(2) & ( \Counter_3|countlocal\(3) & ( (!\Counter_3|countlocal\(0) & 
-- \Counter_3|countlocal\(1)) ) ) ) # ( \Counter_3|countlocal\(2) & ( !\Counter_3|countlocal\(3) & ( (\Counter_3|countlocal\(0) & \Counter_3|countlocal\(1)) ) ) ) # ( !\Counter_3|countlocal\(2) & ( !\Counter_3|countlocal\(3) & ( (\Counter_3|countlocal\(1)) # 
-- (\Counter_3|countlocal\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111000000000011001100000000110011000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_3|ALT_INV_countlocal\(0),
	datad => \Counter_3|ALT_INV_countlocal\(1),
	datae => \Counter_3|ALT_INV_countlocal\(2),
	dataf => \Counter_3|ALT_INV_countlocal\(3),
	combout => \decoder_3|Mux5~0_combout\);

-- Location: LABCELL_X80_Y11_N15
\decoder_3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux4~0_combout\ = ( !\Counter_3|countlocal\(2) & ( \Counter_3|countlocal\(3) & ( (!\Counter_3|countlocal\(1) & \Counter_3|countlocal\(0)) ) ) ) # ( \Counter_3|countlocal\(2) & ( !\Counter_3|countlocal\(3) & ( (!\Counter_3|countlocal\(1)) # 
-- (\Counter_3|countlocal\(0)) ) ) ) # ( !\Counter_3|countlocal\(2) & ( !\Counter_3|countlocal\(3) & ( \Counter_3|countlocal\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011111100111100001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_3|ALT_INV_countlocal\(1),
	datac => \Counter_3|ALT_INV_countlocal\(0),
	datae => \Counter_3|ALT_INV_countlocal\(2),
	dataf => \Counter_3|ALT_INV_countlocal\(3),
	combout => \decoder_3|Mux4~0_combout\);

-- Location: LABCELL_X80_Y11_N6
\decoder_3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux3~0_combout\ = ( \Counter_3|countlocal\(1) & ( \Counter_3|countlocal\(3) & ( (\Counter_3|countlocal\(0) & \Counter_3|countlocal\(2)) ) ) ) # ( \Counter_3|countlocal\(1) & ( !\Counter_3|countlocal\(3) & ( (\Counter_3|countlocal\(0) & 
-- \Counter_3|countlocal\(2)) ) ) ) # ( !\Counter_3|countlocal\(1) & ( !\Counter_3|countlocal\(3) & ( !\Counter_3|countlocal\(0) $ (!\Counter_3|countlocal\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_3|ALT_INV_countlocal\(0),
	datac => \Counter_3|ALT_INV_countlocal\(2),
	datae => \Counter_3|ALT_INV_countlocal\(1),
	dataf => \Counter_3|ALT_INV_countlocal\(3),
	combout => \decoder_3|Mux3~0_combout\);

-- Location: LABCELL_X80_Y11_N27
\decoder_3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux2~0_combout\ = ( \Counter_3|countlocal\(2) & ( \Counter_3|countlocal\(3) & ( (!\Counter_3|countlocal\(0)) # (\Counter_3|countlocal\(1)) ) ) ) # ( !\Counter_3|countlocal\(2) & ( !\Counter_3|countlocal\(3) & ( (\Counter_3|countlocal\(1) & 
-- !\Counter_3|countlocal\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000000000000000001111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_3|ALT_INV_countlocal\(1),
	datac => \Counter_3|ALT_INV_countlocal\(0),
	datae => \Counter_3|ALT_INV_countlocal\(2),
	dataf => \Counter_3|ALT_INV_countlocal\(3),
	combout => \decoder_3|Mux2~0_combout\);

-- Location: LABCELL_X80_Y11_N30
\decoder_3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux1~0_combout\ = ( \Counter_3|countlocal\(3) & ( (!\Counter_3|countlocal\(0) & ((\Counter_3|countlocal\(2)))) # (\Counter_3|countlocal\(0) & (\Counter_3|countlocal\(1))) ) ) # ( !\Counter_3|countlocal\(3) & ( (\Counter_3|countlocal\(2) & 
-- (!\Counter_3|countlocal\(1) $ (!\Counter_3|countlocal\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_3|ALT_INV_countlocal\(1),
	datab => \Counter_3|ALT_INV_countlocal\(0),
	datac => \Counter_3|ALT_INV_countlocal\(2),
	dataf => \Counter_3|ALT_INV_countlocal\(3),
	combout => \decoder_3|Mux1~0_combout\);

-- Location: LABCELL_X80_Y11_N33
\decoder_3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_3|Mux0~0_combout\ = ( \Counter_3|countlocal\(3) & ( (\Counter_3|countlocal\(0) & (!\Counter_3|countlocal\(1) $ (!\Counter_3|countlocal\(2)))) ) ) # ( !\Counter_3|countlocal\(3) & ( (!\Counter_3|countlocal\(1) & (!\Counter_3|countlocal\(0) $ 
-- (!\Counter_3|countlocal\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_3|ALT_INV_countlocal\(0),
	datac => \Counter_3|ALT_INV_countlocal\(1),
	datad => \Counter_3|ALT_INV_countlocal\(2),
	dataf => \Counter_3|ALT_INV_countlocal\(3),
	combout => \decoder_3|Mux0~0_combout\);

-- Location: LABCELL_X83_Y10_N27
\enable_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_4~1_combout\ = ( !\Counter_3|countlocal\(3) & ( (!\Counter_3|countlocal\(1) & \Counter_3|countlocal\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter_3|ALT_INV_countlocal\(1),
	datad => \Counter_3|ALT_INV_countlocal\(2),
	dataf => \Counter_3|ALT_INV_countlocal\(3),
	combout => \enable_4~1_combout\);

-- Location: LABCELL_X85_Y10_N18
\Counter_4|countlocal[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_4|countlocal[0]~0_combout\ = ( \Counter_4|countlocal\(0) & ( \Counter_2|countlocal\(0) & ( (!\enable_4~1_combout\) # ((!\enable_3~0_combout\) # ((!\Counter_3|countlocal\(0)) # (!\enable_2~1_combout\))) ) ) ) # ( !\Counter_4|countlocal\(0) & ( 
-- \Counter_2|countlocal\(0) & ( (\enable_4~1_combout\ & (\enable_3~0_combout\ & (\Counter_3|countlocal\(0) & \enable_2~1_combout\))) ) ) ) # ( \Counter_4|countlocal\(0) & ( !\Counter_2|countlocal\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_4~1_combout\,
	datab => \ALT_INV_enable_3~0_combout\,
	datac => \Counter_3|ALT_INV_countlocal\(0),
	datad => \ALT_INV_enable_2~1_combout\,
	datae => \Counter_4|ALT_INV_countlocal\(0),
	dataf => \Counter_2|ALT_INV_countlocal\(0),
	combout => \Counter_4|countlocal[0]~0_combout\);

-- Location: LABCELL_X85_Y10_N0
\Counter_4|countlocal[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_4|countlocal[3]~3_combout\ = ( \Counter_4|countlocal\(3) & ( \Counter_4|countlocal\(0) & ( (!\enable_4~1_combout\) # ((!\enable_4~0_combout\) # ((!\Counter_4|countlocal\(2)) # (!\Counter_4|countlocal\(1)))) ) ) ) # ( !\Counter_4|countlocal\(3) & 
-- ( \Counter_4|countlocal\(0) & ( (\enable_4~1_combout\ & (\enable_4~0_combout\ & (\Counter_4|countlocal\(2) & \Counter_4|countlocal\(1)))) ) ) ) # ( \Counter_4|countlocal\(3) & ( !\Counter_4|countlocal\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_4~1_combout\,
	datab => \ALT_INV_enable_4~0_combout\,
	datac => \Counter_4|ALT_INV_countlocal\(2),
	datad => \Counter_4|ALT_INV_countlocal\(1),
	datae => \Counter_4|ALT_INV_countlocal\(3),
	dataf => \Counter_4|ALT_INV_countlocal\(0),
	combout => \Counter_4|countlocal[3]~3_combout\);

-- Location: FF_X85_Y10_N2
\Counter_4|countlocal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|countlocal[3]~3_combout\,
	clrn => \ALT_INV_reset_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|countlocal\(3));

-- Location: LABCELL_X85_Y10_N24
reset_4 : cyclonev_lcell_comb
-- Equation(s):
-- \reset_4~combout\ = ( \Counter_4|countlocal\(1) & ( (!\reset~input_o\) # ((!\Counter_4|countlocal\(2) & (!\Counter_4|countlocal\(0) & \Counter_4|countlocal\(3)))) ) ) # ( !\Counter_4|countlocal\(1) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100111011001100110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_countlocal\(2),
	datab => \ALT_INV_reset~input_o\,
	datac => \Counter_4|ALT_INV_countlocal\(0),
	datad => \Counter_4|ALT_INV_countlocal\(3),
	dataf => \Counter_4|ALT_INV_countlocal\(1),
	combout => \reset_4~combout\);

-- Location: FF_X85_Y10_N20
\Counter_4|countlocal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|countlocal[0]~0_combout\,
	clrn => \ALT_INV_reset_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|countlocal\(0));

-- Location: LABCELL_X85_Y10_N6
\Counter_4|countlocal[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_4|countlocal[1]~1_combout\ = ( \Counter_4|countlocal\(0) & ( !\Counter_4|countlocal\(1) $ (((!\enable_4~0_combout\) # (!\enable_4~1_combout\))) ) ) # ( !\Counter_4|countlocal\(0) & ( \Counter_4|countlocal\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011111111000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enable_4~0_combout\,
	datac => \ALT_INV_enable_4~1_combout\,
	datad => \Counter_4|ALT_INV_countlocal\(1),
	dataf => \Counter_4|ALT_INV_countlocal\(0),
	combout => \Counter_4|countlocal[1]~1_combout\);

-- Location: FF_X85_Y10_N8
\Counter_4|countlocal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|countlocal[1]~1_combout\,
	clrn => \ALT_INV_reset_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|countlocal\(1));

-- Location: LABCELL_X85_Y10_N33
\Counter_4|countlocal[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_4|countlocal[2]~2_combout\ = ( \Counter_4|countlocal\(0) & ( !\Counter_4|countlocal\(2) $ (((!\enable_4~1_combout\) # ((!\Counter_4|countlocal\(1)) # (!\enable_4~0_combout\)))) ) ) # ( !\Counter_4|countlocal\(0) & ( \Counter_4|countlocal\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_4~1_combout\,
	datab => \Counter_4|ALT_INV_countlocal\(1),
	datac => \ALT_INV_enable_4~0_combout\,
	datad => \Counter_4|ALT_INV_countlocal\(2),
	dataf => \Counter_4|ALT_INV_countlocal\(0),
	combout => \Counter_4|countlocal[2]~2_combout\);

-- Location: FF_X85_Y10_N35
\Counter_4|countlocal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_4|countlocal[2]~2_combout\,
	clrn => \ALT_INV_reset_4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_4|countlocal\(2));

-- Location: MLABCELL_X84_Y10_N24
\decoder_4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux6~0_combout\ = ( \Counter_4|countlocal\(0) & ( (!\Counter_4|countlocal\(2) $ (!\Counter_4|countlocal\(1))) # (\Counter_4|countlocal\(3)) ) ) # ( !\Counter_4|countlocal\(0) & ( (!\Counter_4|countlocal\(2) $ (!\Counter_4|countlocal\(3))) # 
-- (\Counter_4|countlocal\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111001111001111111100111100111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_4|ALT_INV_countlocal\(2),
	datac => \Counter_4|ALT_INV_countlocal\(1),
	datad => \Counter_4|ALT_INV_countlocal\(3),
	dataf => \Counter_4|ALT_INV_countlocal\(0),
	combout => \decoder_4|Mux6~0_combout\);

-- Location: LABCELL_X85_Y10_N30
\decoder_4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux5~0_combout\ = ( \Counter_4|countlocal\(2) & ( (\Counter_4|countlocal\(0) & (!\Counter_4|countlocal\(1) $ (!\Counter_4|countlocal\(3)))) ) ) # ( !\Counter_4|countlocal\(2) & ( (!\Counter_4|countlocal\(0) & (\Counter_4|countlocal\(1))) # 
-- (\Counter_4|countlocal\(0) & ((!\Counter_4|countlocal\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110000001100111111000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Counter_4|ALT_INV_countlocal\(1),
	datac => \Counter_4|ALT_INV_countlocal\(3),
	datad => \Counter_4|ALT_INV_countlocal\(0),
	dataf => \Counter_4|ALT_INV_countlocal\(2),
	combout => \decoder_4|Mux5~0_combout\);

-- Location: LABCELL_X85_Y10_N27
\decoder_4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux4~0_combout\ = ( \Counter_4|countlocal\(1) & ( (\Counter_4|countlocal\(0) & !\Counter_4|countlocal\(3)) ) ) # ( !\Counter_4|countlocal\(1) & ( (!\Counter_4|countlocal\(2) & (\Counter_4|countlocal\(0))) # (\Counter_4|countlocal\(2) & 
-- ((!\Counter_4|countlocal\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010010111110000101000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_countlocal\(2),
	datac => \Counter_4|ALT_INV_countlocal\(0),
	datad => \Counter_4|ALT_INV_countlocal\(3),
	dataf => \Counter_4|ALT_INV_countlocal\(1),
	combout => \decoder_4|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y10_N39
\decoder_4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux3~0_combout\ = ( \Counter_4|countlocal\(0) & ( (!\Counter_4|countlocal\(1) & (!\Counter_4|countlocal\(2) & !\Counter_4|countlocal\(3))) # (\Counter_4|countlocal\(1) & (\Counter_4|countlocal\(2))) ) ) # ( !\Counter_4|countlocal\(0) & ( 
-- (!\Counter_4|countlocal\(1) & (\Counter_4|countlocal\(2) & !\Counter_4|countlocal\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_countlocal\(1),
	datac => \Counter_4|ALT_INV_countlocal\(2),
	datad => \Counter_4|ALT_INV_countlocal\(3),
	dataf => \Counter_4|ALT_INV_countlocal\(0),
	combout => \decoder_4|Mux3~0_combout\);

-- Location: LABCELL_X85_Y10_N39
\decoder_4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux2~0_combout\ = ( \Counter_4|countlocal\(0) & ( (\Counter_4|countlocal\(1) & (\Counter_4|countlocal\(2) & \Counter_4|countlocal\(3))) ) ) # ( !\Counter_4|countlocal\(0) & ( (!\Counter_4|countlocal\(2) & (\Counter_4|countlocal\(1) & 
-- !\Counter_4|countlocal\(3))) # (\Counter_4|countlocal\(2) & ((\Counter_4|countlocal\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000110011010001000011001100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_countlocal\(1),
	datab => \Counter_4|ALT_INV_countlocal\(2),
	datad => \Counter_4|ALT_INV_countlocal\(3),
	dataf => \Counter_4|ALT_INV_countlocal\(0),
	combout => \decoder_4|Mux2~0_combout\);

-- Location: LABCELL_X85_Y10_N36
\decoder_4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux1~0_combout\ = ( \Counter_4|countlocal\(0) & ( (!\Counter_4|countlocal\(1) & (\Counter_4|countlocal\(2) & !\Counter_4|countlocal\(3))) # (\Counter_4|countlocal\(1) & ((\Counter_4|countlocal\(3)))) ) ) # ( !\Counter_4|countlocal\(0) & ( 
-- (\Counter_4|countlocal\(2) & ((\Counter_4|countlocal\(3)) # (\Counter_4|countlocal\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100100101001001010010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_countlocal\(1),
	datab => \Counter_4|ALT_INV_countlocal\(2),
	datac => \Counter_4|ALT_INV_countlocal\(3),
	dataf => \Counter_4|ALT_INV_countlocal\(0),
	combout => \decoder_4|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y10_N21
\decoder_4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_4|Mux0~0_combout\ = ( \Counter_4|countlocal\(0) & ( (!\Counter_4|countlocal\(1) & (!\Counter_4|countlocal\(2) $ (\Counter_4|countlocal\(3)))) # (\Counter_4|countlocal\(1) & (!\Counter_4|countlocal\(2) & \Counter_4|countlocal\(3))) ) ) # ( 
-- !\Counter_4|countlocal\(0) & ( (!\Counter_4|countlocal\(1) & (\Counter_4|countlocal\(2) & !\Counter_4|countlocal\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100000010110101010000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_4|ALT_INV_countlocal\(1),
	datac => \Counter_4|ALT_INV_countlocal\(2),
	datad => \Counter_4|ALT_INV_countlocal\(3),
	dataf => \Counter_4|ALT_INV_countlocal\(0),
	combout => \decoder_4|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y10_N12
\enable_5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_5~0_combout\ = ( !\Counter_4|countlocal\(2) & ( (\Counter_4|countlocal\(3) & !\Counter_4|countlocal\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Counter_4|ALT_INV_countlocal\(3),
	datad => \Counter_4|ALT_INV_countlocal\(1),
	dataf => \Counter_4|ALT_INV_countlocal\(2),
	combout => \enable_5~0_combout\);

-- Location: LABCELL_X83_Y10_N36
\Counter_5|countlocal[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_5|countlocal[0]~0_combout\ = ( \Counter_4|countlocal\(0) & ( !\Counter_5|countlocal\(0) $ (((!\enable_5~0_combout\) # ((!\enable_4~1_combout\) # (!\enable_4~0_combout\)))) ) ) # ( !\Counter_4|countlocal\(0) & ( \Counter_5|countlocal\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_5|ALT_INV_countlocal\(0),
	datab => \ALT_INV_enable_5~0_combout\,
	datac => \ALT_INV_enable_4~1_combout\,
	datad => \ALT_INV_enable_4~0_combout\,
	dataf => \Counter_4|ALT_INV_countlocal\(0),
	combout => \Counter_5|countlocal[0]~0_combout\);

-- Location: LABCELL_X83_Y10_N0
\enable_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \enable_5~1_combout\ = ( \enable_3~0_combout\ & ( \enable_2~1_combout\ & ( (\enable_4~1_combout\ & (\Counter_3|countlocal\(0) & (\Counter_2|countlocal\(0) & \Counter_4|countlocal\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_4~1_combout\,
	datab => \Counter_3|ALT_INV_countlocal\(0),
	datac => \Counter_2|ALT_INV_countlocal\(0),
	datad => \Counter_4|ALT_INV_countlocal\(0),
	datae => \ALT_INV_enable_3~0_combout\,
	dataf => \ALT_INV_enable_2~1_combout\,
	combout => \enable_5~1_combout\);

-- Location: LABCELL_X83_Y10_N39
\Counter_5|countlocal[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_5|countlocal[2]~2_combout\ = ( \enable_5~1_combout\ & ( !\Counter_5|countlocal\(2) $ (((!\Counter_5|countlocal\(0)) # ((!\enable_5~0_combout\) # (!\Counter_5|countlocal\(1))))) ) ) # ( !\enable_5~1_combout\ & ( \Counter_5|countlocal\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_5|ALT_INV_countlocal\(0),
	datab => \ALT_INV_enable_5~0_combout\,
	datac => \Counter_5|ALT_INV_countlocal\(1),
	datad => \Counter_5|ALT_INV_countlocal\(2),
	dataf => \ALT_INV_enable_5~1_combout\,
	combout => \Counter_5|countlocal[2]~2_combout\);

-- Location: FF_X83_Y10_N41
\Counter_5|countlocal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_5|countlocal[2]~2_combout\,
	clrn => \ALT_INV_reset_5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_5|countlocal\(2));

-- Location: LABCELL_X83_Y10_N42
\Counter_5|countlocal[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_5|countlocal[3]~3_combout\ = ( \Counter_5|countlocal\(3) & ( \Counter_5|countlocal\(1) & ( (!\enable_5~1_combout\) # ((!\Counter_5|countlocal\(2)) # ((!\Counter_5|countlocal\(0)) # (!\enable_5~0_combout\))) ) ) ) # ( !\Counter_5|countlocal\(3) & 
-- ( \Counter_5|countlocal\(1) & ( (\enable_5~1_combout\ & (\Counter_5|countlocal\(2) & (\Counter_5|countlocal\(0) & \enable_5~0_combout\))) ) ) ) # ( \Counter_5|countlocal\(3) & ( !\Counter_5|countlocal\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_5~1_combout\,
	datab => \Counter_5|ALT_INV_countlocal\(2),
	datac => \Counter_5|ALT_INV_countlocal\(0),
	datad => \ALT_INV_enable_5~0_combout\,
	datae => \Counter_5|ALT_INV_countlocal\(3),
	dataf => \Counter_5|ALT_INV_countlocal\(1),
	combout => \Counter_5|countlocal[3]~3_combout\);

-- Location: FF_X83_Y10_N44
\Counter_5|countlocal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_5|countlocal[3]~3_combout\,
	clrn => \ALT_INV_reset_5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_5|countlocal\(3));

-- Location: LABCELL_X83_Y10_N24
reset_5 : cyclonev_lcell_comb
-- Equation(s):
-- \reset_5~combout\ = ( \Counter_5|countlocal\(1) & ( (!\reset~input_o\) # ((!\Counter_5|countlocal\(3) & (\Counter_5|countlocal\(2) & !\Counter_5|countlocal\(0)))) ) ) # ( !\Counter_5|countlocal\(1) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101110101010101010111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \Counter_5|ALT_INV_countlocal\(3),
	datac => \Counter_5|ALT_INV_countlocal\(2),
	datad => \Counter_5|ALT_INV_countlocal\(0),
	dataf => \Counter_5|ALT_INV_countlocal\(1),
	combout => \reset_5~combout\);

-- Location: FF_X83_Y10_N38
\Counter_5|countlocal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_5|countlocal[0]~0_combout\,
	clrn => \ALT_INV_reset_5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_5|countlocal\(0));

-- Location: LABCELL_X83_Y10_N48
\Counter_5|countlocal[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Counter_5|countlocal[1]~1_combout\ = ( \Counter_5|countlocal\(1) & ( \Counter_5|countlocal\(0) & ( (!\enable_4~1_combout\) # ((!\enable_4~0_combout\) # ((!\Counter_4|countlocal\(0)) # (!\enable_5~0_combout\))) ) ) ) # ( !\Counter_5|countlocal\(1) & ( 
-- \Counter_5|countlocal\(0) & ( (\enable_4~1_combout\ & (\enable_4~0_combout\ & (\Counter_4|countlocal\(0) & \enable_5~0_combout\))) ) ) ) # ( \Counter_5|countlocal\(1) & ( !\Counter_5|countlocal\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_enable_4~1_combout\,
	datab => \ALT_INV_enable_4~0_combout\,
	datac => \Counter_4|ALT_INV_countlocal\(0),
	datad => \ALT_INV_enable_5~0_combout\,
	datae => \Counter_5|ALT_INV_countlocal\(1),
	dataf => \Counter_5|ALT_INV_countlocal\(0),
	combout => \Counter_5|countlocal[1]~1_combout\);

-- Location: FF_X83_Y10_N50
\Counter_5|countlocal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Counter_5|countlocal[1]~1_combout\,
	clrn => \ALT_INV_reset_5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counter_5|countlocal\(1));

-- Location: LABCELL_X80_Y11_N51
\decoder_5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_5|Mux6~0_combout\ = ( \Counter_5|countlocal\(2) & ( \Counter_5|countlocal\(3) & ( (\Counter_5|countlocal\(0)) # (\Counter_5|countlocal\(1)) ) ) ) # ( !\Counter_5|countlocal\(2) & ( \Counter_5|countlocal\(3) ) ) # ( \Counter_5|countlocal\(2) & ( 
-- !\Counter_5|countlocal\(3) & ( (!\Counter_5|countlocal\(1)) # (!\Counter_5|countlocal\(0)) ) ) ) # ( !\Counter_5|countlocal\(2) & ( !\Counter_5|countlocal\(3) & ( \Counter_5|countlocal\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111110101111101011111111111111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_5|ALT_INV_countlocal\(1),
	datac => \Counter_5|ALT_INV_countlocal\(0),
	datae => \Counter_5|ALT_INV_countlocal\(2),
	dataf => \Counter_5|ALT_INV_countlocal\(3),
	combout => \decoder_5|Mux6~0_combout\);

-- Location: LABCELL_X80_Y11_N21
\decoder_5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_5|Mux5~0_combout\ = ( \Counter_5|countlocal\(3) & ( (!\Counter_5|countlocal\(1) & (\Counter_5|countlocal\(0) & \Counter_5|countlocal\(2))) # (\Counter_5|countlocal\(1) & (!\Counter_5|countlocal\(0) & !\Counter_5|countlocal\(2))) ) ) # ( 
-- !\Counter_5|countlocal\(3) & ( (!\Counter_5|countlocal\(1) & (\Counter_5|countlocal\(0) & !\Counter_5|countlocal\(2))) # (\Counter_5|countlocal\(1) & ((!\Counter_5|countlocal\(2)) # (\Counter_5|countlocal\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000101000100001000100100010000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_5|ALT_INV_countlocal\(1),
	datab => \Counter_5|ALT_INV_countlocal\(0),
	datad => \Counter_5|ALT_INV_countlocal\(2),
	dataf => \Counter_5|ALT_INV_countlocal\(3),
	combout => \decoder_5|Mux5~0_combout\);

-- Location: LABCELL_X80_Y11_N18
\decoder_5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_5|Mux4~0_combout\ = (!\Counter_5|countlocal\(1) & ((!\Counter_5|countlocal\(2) & (\Counter_5|countlocal\(0))) # (\Counter_5|countlocal\(2) & ((!\Counter_5|countlocal\(3)))))) # (\Counter_5|countlocal\(1) & (\Counter_5|countlocal\(0) & 
-- (!\Counter_5|countlocal\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010110000001100101011000000110010101100000011001010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_5|ALT_INV_countlocal\(1),
	datab => \Counter_5|ALT_INV_countlocal\(0),
	datac => \Counter_5|ALT_INV_countlocal\(3),
	datad => \Counter_5|ALT_INV_countlocal\(2),
	combout => \decoder_5|Mux4~0_combout\);

-- Location: LABCELL_X80_Y11_N36
\decoder_5|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_5|Mux3~0_combout\ = ( \Counter_5|countlocal\(3) & ( (\Counter_5|countlocal\(1) & (\Counter_5|countlocal\(0) & \Counter_5|countlocal\(2))) ) ) # ( !\Counter_5|countlocal\(3) & ( (!\Counter_5|countlocal\(1) & (!\Counter_5|countlocal\(0) $ 
-- (!\Counter_5|countlocal\(2)))) # (\Counter_5|countlocal\(1) & (\Counter_5|countlocal\(0) & \Counter_5|countlocal\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001001010010010100100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_5|ALT_INV_countlocal\(1),
	datab => \Counter_5|ALT_INV_countlocal\(0),
	datac => \Counter_5|ALT_INV_countlocal\(2),
	dataf => \Counter_5|ALT_INV_countlocal\(3),
	combout => \decoder_5|Mux3~0_combout\);

-- Location: LABCELL_X80_Y11_N39
\decoder_5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_5|Mux2~0_combout\ = ( \Counter_5|countlocal\(3) & ( (\Counter_5|countlocal\(2) & ((!\Counter_5|countlocal\(0)) # (\Counter_5|countlocal\(1)))) ) ) # ( !\Counter_5|countlocal\(3) & ( (\Counter_5|countlocal\(1) & (!\Counter_5|countlocal\(0) & 
-- !\Counter_5|countlocal\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_5|ALT_INV_countlocal\(1),
	datab => \Counter_5|ALT_INV_countlocal\(0),
	datad => \Counter_5|ALT_INV_countlocal\(2),
	dataf => \Counter_5|ALT_INV_countlocal\(3),
	combout => \decoder_5|Mux2~0_combout\);

-- Location: LABCELL_X80_Y11_N42
\decoder_5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_5|Mux1~0_combout\ = ( \Counter_5|countlocal\(3) & ( (!\Counter_5|countlocal\(0) & ((\Counter_5|countlocal\(2)))) # (\Counter_5|countlocal\(0) & (\Counter_5|countlocal\(1))) ) ) # ( !\Counter_5|countlocal\(3) & ( (\Counter_5|countlocal\(2) & 
-- (!\Counter_5|countlocal\(1) $ (!\Counter_5|countlocal\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_5|ALT_INV_countlocal\(1),
	datab => \Counter_5|ALT_INV_countlocal\(0),
	datac => \Counter_5|ALT_INV_countlocal\(2),
	dataf => \Counter_5|ALT_INV_countlocal\(3),
	combout => \decoder_5|Mux1~0_combout\);

-- Location: LABCELL_X80_Y11_N45
\decoder_5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_5|Mux0~0_combout\ = ( \Counter_5|countlocal\(3) & ( (\Counter_5|countlocal\(0) & (!\Counter_5|countlocal\(1) $ (!\Counter_5|countlocal\(2)))) ) ) # ( !\Counter_5|countlocal\(3) & ( (!\Counter_5|countlocal\(1) & (!\Counter_5|countlocal\(0) $ 
-- (!\Counter_5|countlocal\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Counter_5|ALT_INV_countlocal\(1),
	datab => \Counter_5|ALT_INV_countlocal\(0),
	datad => \Counter_5|ALT_INV_countlocal\(2),
	dataf => \Counter_5|ALT_INV_countlocal\(3),
	combout => \decoder_5|Mux0~0_combout\);

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


