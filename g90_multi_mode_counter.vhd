library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity g90_multi_mode_counter is
	Port (	start		: in std_logic;
			stop		: in std_logic;
			direction	: in std_logic;
			reset		: in std_logic;
			clk			: in std_logic;
			HEX0		: out std_logic_vector(6 downto 0);
			HEX1		: out std_logic_vector(6 downto 0));
end g90_multi_mode_counter;

architecture behaviour of g90_multi_mode_counter is

--import FSM
	component g90_FSM is
		Port (enable    : in std_logic;
				direction : in std_logic;
				reset     : in std_logic;
				clk       : in std_logic;
				count     : out std_logic_vector(3 downto 0));
	end component g90_FSM;
	
--import clock divider (same as lab2)
	component g90_clock_divider is
		Port(enable : in std_logic;
				reset : in std_logic;
				clk : in std_logic;
				en_out : out std_logic);
	end component g90_clock_divider;	

--import lab1 (7 segment display), same as lab2 and lab1
	component g90_lab1 is
		Port(bcd: in std_logic_vector(3 downto 0);
				segment7: out std_logic_vector(6 downto 0));
	end component g90_lab1;
	
	  signal reset_clock		: std_logic;
	  signal enable_clock	: std_logic:= '0';
	  
	  signal count_fsm		: std_logic_vector(3 downto 0);
	  
	  signal count_0			: std_logic_vector(3 downto 0);
	  signal count_1			: std_logic_vector(3 downto 0);
	  
	begin
	
	process ( start, stop,count_fsm, reset)
	
				begin
				
				--this means that the clock should hold its current state, it is not counting up 
				if (start = '0' and stop ='1') then
					enable_clock <= '1';
				end if;
				
				--the clock is counting up thus the state is changing
				if (reset = '0' AND start = '1') then 
					enable_clock <= '0'; 
				end if;
			  
			  --if the clock is not stoped, it still counts up, same function as before
			  if (stop ='0' AND start = '1') then 
					enable_clock <= '0'; 
				end if;
			  --if the number is greater than 9, add 6 in order to make it compatible with bcd and 7 segment display
			  --this is to use both hex0 and hex1 displays
				if(count_fsm > "1001")then
					count_0 <= std_logic_vector(unsigned(count_fsm)+"0110");
					count_1 <= "0001";
				else
				--if it is not greater than 9, keep it at the same number and hex1 will be displayed as 0
					count_0 <= count_fsm;
					count_1 <= "0000";
			   end if;
				
			end process;

			
			
--using the clock divider
	clock_divider : g90_clock_divider PORT MAP(enable => enable_clock, reset => reset, clk => clk, en_out => reset_clock);

--using FSM, creating instance
	FSM : g90_FSM PORT MAP(enable => reset_clock, direction => direction, 
	reset =>reset ,clk => clk, count => count_fsm);
									 
--using 7 segment display
	decoder0: g90_lab1 PORT MAP(bcd => count_0, segment7 => HEX0);
	decoder1: g90_lab1 PORT MAP(bcd => count_1, segment7 => HEX1);
end behaviour;
