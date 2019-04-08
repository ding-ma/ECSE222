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
	signal HEX0_UNDECODED		:  std_logic_vector (3 downto 0); 
	signal HEX1_UNDECODED		:  std_logic_vector (3 downto 0); 
	signal HEX2_UNDECODED		:  std_logic_vector (3 downto 0); 
	signal HEX3_UNDECODED		:  std_logic_vector (3 downto 0); 
	signal HEX4_UNDECODED		:  std_logic_vector (3 downto 0); 
	signal HEX5_UNDECODED		:  std_logic_vector (3 downto 0); 
	
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
	
	process(start,stop,reset,clk,HEX0_UNDECODED,HEX1_UNDECODED,HEX2_UNDECODED,HEX3_UNDECODED,HEX4_UNDECODED,HEX5_UNDECODED,enable_0,enable_1,enable_2,enable_3,enable_4,enable_5)
	begin
		
		-- if reset has a rising edge (i.e. not being pressed)
		if (rising_edge(reset)) then
		-- set reset_clock to 0 (i.e. OFF or not being reset) 
			reset_clock <= '0';
		end if;
		--if stop is not being pressed
		if (stop = '0') then
		--
			enable_clock <= '0';
		else
			if (rising_edge(start)) then
				enable_clock <= '0';
			end if;
		end if;
		
		-- reset hex0 when it becomes greater than 9
		if (HEX0_UNDECODED = "1010" or reset = '0') then 
			reset_0 <= '1';
		else
			reset_0 <= '0';
		end if;
		
		-- reset hex1 when it becomes greater than 9
		if (HEX1_UNDECODED = "1010" or reset = '0') then 
			reset_1 <= '1';
		else
			reset_1 <= '0';
		end if;
		
		-- reset hex2 when it becomes greater than 9
		if (HEX2_UNDECODED = "1010" or reset = '0') then 
			reset_2 <= '1';
		else
			reset_2 <= '0';
		end if;
		
		-- reset hex3 when it becomes greater than 5
		if (HEX3_UNDECODED = "0110" or reset = '0') then 
			reset_3 <= '1';
		else
			reset_3 <= '0';
		end if;
		
		-- reset hex4 when it becomes greater than 9
		if (HEX4_UNDECODED = "1010" or reset = '0') then 
			reset_4 <= '1';
		else
			reset_4 <= '0';
		end if;
		
		-- reset hex5 when it becomes greater than 5
		if (HEX5_UNDECODED = "0110" or reset = '0') then 
			reset_5 <= '1';
		else
			reset_5 <= '0';
		end if;
		
		-- set enable/not for each digit to increase
		if (enable_0='1' and HEX0_UNDECODED = "1001" and stop = '1') then 
			enable_1 <= '1';
		else
			enable_1 <= '0';
		end if;
		
		if (enable_1='1' and HEX1_UNDECODED = "1001" and stop = '1') then 
			enable_2 <= '1';
		else
			enable_2 <= '0';
		end if;
		
		if (enable_2='1' and HEX2_UNDECODED = "1001" and stop = '1') then 
			enable_3 <= '1';
		else
			enable_3 <= '0';
		end if;
		
		if (enable_3='1' and HEX3_UNDECODED = "0101" and stop = '1') then 
			enable_4 <= '1';
		else
			enable_4 <= '0';
		end if;
		
		if (enable_4='1' and HEX4_UNDECODED = "1001" and stop = '1') then 
			enable_5 <= '1';
		else
			enable_5 <= '0';
		end if;			

	end process;
		-- create clock divider
		Clock_Divider_0: g90_clock_divider PORT MAP(enable => enable_clock, reset => reset_clock, clk => clk, en_out => enable_0);

		-- create 6 counters for each digit	
		Counter_0: g90_lab2 PORT MAP(enable	=> enable_0, reset => reset_0, clk => clk, count => HEX0_UNDECODED(3 downto 0));
		Counter_1: g90_lab2 PORT MAP(enable	=> enable_1, reset => reset_1, clk => clk, count => HEX1_UNDECODED(3 downto 0));
		Counter_2: g90_lab2 PORT MAP(enable	=> enable_2, reset => reset_2, clk => clk, count => HEX2_UNDECODED(3 downto 0));
		Counter_3: g90_lab2 PORT MAP(enable	=> enable_3, reset => reset_3, clk => clk, count => HEX3_UNDECODED(3 downto 0));
		Counter_4: g90_lab2 PORT MAP(enable	=> enable_4, reset => reset_4, clk => clk, count => HEX4_UNDECODED(3 downto 0));
		Counter_5: g90_lab2 PORT MAP(enable	=> enable_5, reset => reset_5, clk => clk, count => HEX5_UNDECODED(3 downto 0));
		
		--create 6 decoders for each digit
		decoder_0: g90_lab1 PORT MAP(bcd => HEX0_UNDECODED(3 downto 0), segment7 => HEX0(6 downto 0));
		decoder_1: g90_lab1 PORT MAP(bcd => HEX1_UNDECODED(3 downto 0), segment7 => HEX1(6 downto 0));
		decoder_2: g90_lab1 PORT MAP(bcd => HEX2_UNDECODED(3 downto 0), segment7 => HEX2(6 downto 0));
		decoder_3: g90_lab1 PORT MAP(bcd => HEX3_UNDECODED(3 downto 0), segment7 => HEX3(6 downto 0));
		decoder_4: g90_lab1 PORT MAP(bcd => HEX4_UNDECODED(3 downto 0), segment7 => HEX4(6 downto 0));
		decoder_5: g90_lab1 PORT MAP(bcd => HEX5_UNDECODED(3 downto 0), segment7 => HEX5(6 downto 0));
	
end behaviour;