library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity g90_clock_divider is
	Port(
		enable			: in		std_logic;
		reset				: in		std_logic;
		clk				: in		std_logic;
		en_out			: out		std_logic
	);
end g90_clock_divider;

architecture behaviour of g90_clock_divider is

	signal countlocal:		std_logic_vector(18 downto 0) := "1111010000100011111";

begin
	process(clk, reset) begin
		
		if(reset = '1') then
			countlocal <= "1111010000100011111";
			en_out <= '0';
			
		elsif(rising_edge(clk)) then
			if(enable = '1') then
				countlocal <= countlocal - "0000000000000000001";
					
				if(countlocal > "0000000000000000000") then
					en_out <= '0';
				else
					en_out <= '1';
					countlocal <= "1111010000100011111";
				end if;
				
			else
				countlocal <= countlocal;
			end if;
		end if;
	
	end process;
	
end behaviour;