library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity g90_adder is
	port(			A, B			: in std_logic_vector(4 downto 0);
					decoded_A   : out std_logic_vector(13 downto 0);
					decoded_B	: out std_logic_vector(13 downto 0);
					decoded_AplusB :out std_logic_vector(13 downto 0));
end g90_adder;

architecture behavioral of g90_adder is

	component g90_lab1 is
		port ( 	bcd 			: in std_logic_vector(3 downto 0);
					segment7		: out std_logic_vector(6 downto 0));
	end component g90_lab1;
	
	signal sum			: std_logic_vector(5 downto 0);
	signal A_1			: std_logic_vector(3 downto 0);
	signal B_1			: std_logic_vector(3 downto 0);
	signal SUM_1		: std_logic_vector(3 downto 0);
	
	begin
	
	A_1			<= "000" & A(4);
	B_1			<= "000" & B(4);
	SUM_1			<= "00" & sum(5 downto 4);
	
	sum			<= std_logic_vector (unsigned('0' & A) + unsigned('0' & B));
	
	A0:					g90_lab1 port map(bcd => A(3 downto 0), 		segment7 => decoded_A(6 downto 0));
	A1:					g90_lab1 port map(bcd => A_1, 			  		segment7 => decoded_A(13 downto 7));
	B0:					g90_lab1 port map(bcd => B(3 downto 0), 		segment7 => decoded_B(6 downto 0));
	B1:					g90_lab1 port map(bcd => B_1, 			   	segment7 => decoded_B(13 downto 7));
	SUM0:					g90_lab1 port map(bcd => SUM(3 downto 0), 	segment7 => decoded_AplusB(6 downto 0));
	SUM1:					g90_lab1 port map(bcd => SUM_1, 					segment7 => decoded_AplusB(13 downto 7));
	
end behavioral;
						