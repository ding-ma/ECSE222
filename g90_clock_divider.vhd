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

	signal elapse:		std_logic_vector(18 downto 0) := "1111010000100011111";

begin
	process(clk, reset) begin
	
		--if reset is "on" simply reset the elapsed time and decrement again
		if(reset = '1') then
			elapse <= "1111010000100011111";
		-- set output value to "off" so as not to trigger the count/incrementation for the digits
			en_out <= '0';
			
		-- if reset is "off", and enabled is on (i.e. digit is enabled) decrease value by 1, and make that the new value
		elsif(rising_edge(clk)) then
			if(enable = '1') then
				elapse <= elapse - "0000000000000000001";
		-- if time elapsed is negative, required time has passed for iterating once, therefore enabling iterating of digit, and restart		
				if(elapse > "0000000000000000000") then
					en_out <= '0';
				else
					en_out <= '1';
					elapse <= "1111010000100011111";
				end if;
			end if;
		end if;
	
	end process;
	
	--Assign number of times the required time elapsed to an actual output
	elapse <= elapse;
	
end behaviour;