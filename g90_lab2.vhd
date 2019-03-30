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

	signal countlocal:		std_logic_vector(3 downto 0) := "0000";

begin
	process(clk,reset) begin
		if(reset = '1') then
			countlocal <= "0000";
		elsif(rising_edge(clk)) then
			if (enable = '1') then 
				countlocal <= std_logic_vector(unsigned(countlocal) + 1);
			else
				countlocal <= countlocal;
			end if;
		end if;
	end process;
	
	count <= countlocal;
	
end behaviour;