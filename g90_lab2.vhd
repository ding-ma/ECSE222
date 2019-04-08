--This is our Counter

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity g90_lab2 is
	Port(
		enable			: in		std_logic;
		reset				: in		std_logic;
		clk				: in		std_logic;
		count				: out		std_logic_vector(3 downto 0)
	);
end g90_lab2;

architecture behaviour of g90_lab2 is

	--Signal to keep track of all the peaks throughout the clock signals life time
	signal clk_peak:		std_logic_vector(3 downto 0) := "0000";

begin
	process(clk,reset)
		begin
			--if reset is "on" simply clear the number of peak counts, and start iterating again
			if(reset = '1') then
				clk_peak <= "0000";
			-- if reset is "off", then every time the clock is at an uptick (i.e. rising edge) simply increment and track 
			elsif(rising_edge(clk)) then
				if (enable = '1') then 
					clk_peak <= std_logic_vector(clk_peak + 1);
				end if;
			end if;
	end process;
	
	--Assign all signal peaks to an actual output (i.e. count in this instance)
	count <= clk_peak;
	
end behaviour;