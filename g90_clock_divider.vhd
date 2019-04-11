library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity g90_clock_divider is
        Generic(
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

 	 variable elapse : integer := TimeConstant - 1;
    
    begin
        -- reset
        if(reset = '0') then
            elapse := TimeConstant-1;
        elsif (Rising_edge(clk)  and enable = '1') then 
            if(elapse = 0) then 
                elapse := TimeConstant - 1;
				else
            elapse := elapse - 1; 
            end if;
        end if; 
        
        if (elapse = 0) then 
            en_out <= '1';
        else
            en_out <= '0';
        end if;
            
    end process;
 end behaviour;
 