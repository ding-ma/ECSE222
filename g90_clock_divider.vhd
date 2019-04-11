library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity g90_clock_divider is
        Generic(--change timeconstant to match this lab
		--the previous lab used hex0 and hex1 as ms, we want seconds at these displays
		--therefore we have to slow down the clock
                TimeConstant : integer := 50000000
        );  
        Port (
                enable  : in std_logic; 
                reset   : in std_logic;
                clk     : in std_logic;
                en_out  : out std_logic 
        );  
end g90_clock_divider;
 
 
 
architecture behaviour of g90_clock_divider is
    
    

begin

    process(clk, reset, enable)
	--50000000-1
 	 variable elapse : integer := TimeConstant - 1;
    
    begin
	 --if reset is an active low, it will set back the downcounter to its original state
        if(reset = '0') then
            elapse := TimeConstant-1;
				--if the clock is counting, every cycle it will -1 to the timeconstant
        elsif (Rising_edge(clk)  and enable = '1') then 
            if(elapse = 0) then 
                elapse := TimeConstant - 1;
					 --otherwise, we know that the clock is being reset to is original time
				else
            elapse := elapse - 1; 
            end if;
        end if; 
 
        --check value of timeconstant, if it is 0, set it at 1
        if (elapse = 0) then 
            en_out <= '1';
			else
            en_out <= '0';
        end if;
            
    end process;
 end behaviour;
 