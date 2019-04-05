library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use Work.all;

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

	component g90_FSM is
		Port (enable : in std_logic;
				direction : in std_logic;
				reset : in std_logic;
				clk : in std_logic;
				count : out std_logic_vector(3 downto 0));
	end component g90_FSM;

	component g90_lab2 is
		Port(enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			count : out std_logic);
	end component g90_lab2;	

	component g90_lab1 is
		Port(bcd: in std_logic_vector(3 downto 0);
			segment7: out std_logic_vector(6 downto 0));
	end component g90_lab1;
	
	signal divided_clk : std_logic;
	signal enable_temp : std_logic := '0';
	
	signal count_temp : std_logic_vector(3 downto 0);
	signal digit0 : std_logic_vector(3 downto 0);
	signal digit1 : std_logic_vector(3 downto 0);
	
begin

	clock_divider : g90_lab2 PORT MAP(enable => enable_temp,
																reset => reset,
																clk => clk,
																count => divided_clk);

	FSM : g90_FSM PORT MAP(enable => enable_temp,
									direction => direction,
									reset => reset,
									clk => divided_clk,
									count => count_temp);
	
	Process(start, stop, count_temp) begin
	
		if(start = '0') then
			enable_temp <= '1';
			
		elsif(stop = '0') then
			enable_temp <= '0'; 
			
		end if;
		
		if(count_temp > "1001")then
			digit0 <= std_logic_vector(unsigned(count_temp) + "0110"); 
			digit1 <= "0001";
			
		else
			digit0 <= count_temp;
			digit1 <= "0000";
		end if;
		
	end Process;

	decoder0: g90_lab1 PORT MAP(bcd => digit0,
							segment7 => HEX0);

	decoder1: g90_lab1 PORT MAP(bcd => digit1,
							segment7 => HEX1);
	
end behaviour;
