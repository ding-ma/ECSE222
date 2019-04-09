library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity declaration
entity g90_stopwatch is
		Port (
				start		: in std_logic;
				stop		: in std_logic;
				reset		: in std_logic;
				clk		: in std_logic;
				HEX0		: out std_logic_vector(6 downto 0);
				HEX1		: out std_logic_vector(6 downto 0);
				HEX2		: out std_logic_vector(6 downto 0);
				HEX3		: out std_logic_vector(6 downto 0);
				HEX4		: out std_logic_vector(6 downto 0);
				HEX5		: out std_logic_vector(6 downto 0)
		);
end g90_stopwatch;


architecture behaviour of g90_stopwatch is

	-- 7-segment decoder
	component g90_lab1 is
		port(
			bcd			: in std_logic_vector(3 downto 0);
			segment7		: out std_logic_vector(6 downto 0)
		);
	end component g90_lab1;
	
	-- counter
	component g90_lab2 is
		Port (
				enable	: in std_logic;
				reset		: in std_logic;
				clk		: in std_logic;
				count 	: out std_logic_vector(3 downto 0)
		);
	end component g90_lab2;
	
	-- clock divider
	component g90_clock_divider is
		Port (
				enable	: in std_logic;
				reset		: in std_logic;
				clk		: in std_logic;
				en_out 	: out std_logic
		);		
	end component g90_clock_divider;
	
	-- store the undecoded outputs of counters
	signal HEX0_Decoder		:  std_logic_vector (3 downto 0); 
	signal HEX1_Decoder		:  std_logic_vector (3 downto 0); 
	signal HEX2_Decoder		:  std_logic_vector (3 downto 0); 
	signal HEX3_Decoder		:  std_logic_vector (3 downto 0); 
	signal HEX4_Decoder		:  std_logic_vector (3 downto 0); 
	signal HEX5_Decoder		:  std_logic_vector (3 downto 0); 
	
	-- enable for each time counters
	signal enable_0				: std_logic;
	signal enable_1				: std_logic;
	signal enable_2				: std_logic;
	signal enable_3				: std_logic;
	signal enable_4				: std_logic;
	signal enable_5				: std_logic;
	
	-- reset for each time counters
	signal reset_0					: std_logic; 
	signal reset_1					: std_logic;
	signal reset_2					: std_logic;
	signal reset_3					: std_logic;
	signal reset_4					: std_logic;
	signal reset_5					: std_logic;
	
	signal reset_clock			: std_logic := '0';
	signal enable_clock			: std_logic := '0';	
	

--the logic
begin
	
	--these are being started much like a main method, or a run method starting threads (signals) sequentially 
	
	process(start,stop,reset,clk)
	begin
	
		reset_0 <= '0';
		reset_1 <= '0';
		reset_2 <= '0';
		reset_3 <= '0';
		reset_4 <= '0';
		reset_5 <= '0';
		
		--if stop is not being pressed
		if (stop = '0') then
		-- prevent stop watch from running
			enable_clock <= '0';
			
		--If start isn't being pressed start the stopwatch
		elsif (start = '0') then
			enable_clock <= '1';
		end if;
	
		-- reset hex0 when it becomes greater than 9
		if (HEX0_Decoder = "1010") then 
		-- enable reset of value of reset_0
			reset_0 <= '1';
		end if;
	
		-- reset hex1 when it becomes greater than 9
		if (HEX1_Decoder = "1010") then 
			reset_1 <= '1';
		end if;
		
		-- reset hex2 when it becomes greater than 9
		if (HEX2_Decoder = "1010") then 
			reset_2 <= '1';
		end if;
		
		-- reset hex3 when it becomes greater than 5
		if (HEX3_Decoder = "0110") then 
			reset_3 <= '1';
		end if;
		
		-- reset hex4 when it becomes greater than 9
		if (HEX4_Decoder = "1010") then 
			reset_4 <= '1';
		end if;
		
		-- reset hex5 when it becomes greater than 5
		if (HEX5_Decoder = "0110") then 
			reset_5 <= '1';
		end if;
			
		--If the reset button is pressed (i.e. if reset is no longer in a active-low state) reset all counters.
		
		-- set enable/not for each digit to increase
		if (enable_0='1' AND HEX0_Decoder = "1001") then 
			enable_1 <= '1';
		else
			enable_1 <= '0';
		end if;
		
		if (enable_1='1' AND HEX1_Decoder = "1001") then 
			enable_2 <= '1';
		else
			enable_2 <= '0';
		end if;
		
		if (enable_2='1' AND HEX2_Decoder = "1001") then 
			enable_3 <= '1';
		else
			enable_3 <= '0';
		end if;
		
		if (enable_3='1' AND HEX3_Decoder = "0101") then 
			enable_4 <= '1';
		else
			enable_4 <= '0';
		end if;
		
		if (enable_4='1' AND HEX4_Decoder = "1001") then 
			enable_5 <= '1';
		else
			enable_5 <= '0';
		end if;

		-- Once the stopwatch overflows or goes past an hour  (i.e. 60 minutes) simply reset the entire stopwatch. 
		-- If the reset button is pressed (i.e. if reset is no longer in a active-low state) reset all counters.
		if ((enable_5='1' AND HEX5_Decoder = "0101") OR reset = '0') then 
			reset_0 <= '1';
			reset_1 <= '1';
			reset_2 <= '1';
			reset_3 <= '1';
			reset_4 <= '1';
			reset_5 <= '1';
		
		else
			enable_5 <= '0';
		-- if reset has a rising edge (i.e. not being pressed)
		-- set reset_clock to 0 (i.e. OFF or not being reset) 
			reset_clock <= '0';
		end if;

	end process;
	
	-- create clock divider
	Clock_Divider_0: g90_clock_divider PORT MAP(enable => enable_clock, reset => reset_clock, clk => clk, en_out => enable_0);

	-- create 6 counters for each digit allowing to enable counting, and resetting 	
	Counter_0: g90_lab2 PORT MAP(enable	=> enable_0, reset => reset_0, clk => clk, count => HEX0_Decoder);
	Counter_1: g90_lab2 PORT MAP(enable	=> enable_1, reset => reset_1, clk => clk, count => HEX1_Decoder);
	Counter_2: g90_lab2 PORT MAP(enable	=> enable_2, reset => reset_2, clk => clk, count => HEX2_Decoder);
	Counter_3: g90_lab2 PORT MAP(enable	=> enable_3, reset => reset_3, clk => clk, count => HEX3_Decoder);
	Counter_4: g90_lab2 PORT MAP(enable	=> enable_4, reset => reset_4, clk => clk, count => HEX4_Decoder);
	Counter_5: g90_lab2 PORT MAP(enable	=> enable_5, reset => reset_5, clk => clk, count => HEX5_Decoder);
	
	--create 6 decoders for each digit to display on the FPGA board
	decoder_0: g90_lab1 PORT MAP(bcd => HEX0_Decoder, segment7 => HEX0);
	decoder_1: g90_lab1 PORT MAP(bcd => HEX1_Decoder, segment7 => HEX1);
	decoder_2: g90_lab1 PORT MAP(bcd => HEX2_Decoder, segment7 => HEX2);
	decoder_3: g90_lab1 PORT MAP(bcd => HEX3_Decoder, segment7 => HEX3);
	decoder_4: g90_lab1 PORT MAP(bcd => HEX4_Decoder, segment7 => HEX4);
	decoder_5: g90_lab1 PORT MAP(bcd => HEX5_Decoder, segment7 => HEX5);
	
end behaviour;