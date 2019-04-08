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

	component g90_clock_divider is
		Port(enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			en_out : out std_logic);
	end component g90_clock_divider;	

	component g90_lab1 is
		Port(bcd: in std_logic_vector(3 downto 0);
			segment7: out std_logic_vector(6 downto 0));
	end component g90_lab1;
	
	
--defin signals	
	signal count_tmp : std_logic_vector(3 downto 0);
	-- Declare two signals to hold the BCD digits of count_tmp
	signal digit_0 : std_logic_vector(3 downto 0);
	signal digit_1 : std_logic_vector(3 downto 0);
    -- Declare a signal to hold a temporary enable value
    -- The enable value is initially 0 (off)
	signal enable_tmp : std_logic := '0';
	-- Declare a signal to store the clock value from the divider
	signal divider_clk : std_logic;
	
begin

	clock_divider : g90_clock_divider PORT MAP(enable => enable_tmp,
											    reset => reset,
											    clk => clk,
												en_out => divider_clk);

	FSM : g90_FSM PORT MAP(enable => enable_tmp,
                            direction => direction,
                            reset => reset,
                            clk => divider_clk,
                            count => count_tmp);
	
	process(start, stop, reset, count_tmp) begin

        -- Check value of start (active-low)
        -- Start is asynchronous and 0 means "on" (logical-high)
        if (start = '0') then
           reset <= '1'; -- If start is on (0), then enable the stopwatch
			enable_tmp <= '1';
        -- Check the value of stop (active-low)
        -- Stop is also active-low and asynchronous
        elsif (stop = '0') then
		  -- If stop is on (0), then disable the stopwatch
			enable_tmp <= '0';
		end if;

        -- Convert count_tmp to BCD digits
        -- Store their BCD digit values in digit_0 and digit_1
		if (count_tmp > "1001") then
            -- If count_tmp greater than 9, we must add 6 (base-10)
            -- 6 (base-10) is 0110 in 4-bit binary values
			digit_0 <= std_logic_vector((count_tmp) - "1001");
			digit_1 <= "0001";
		else
            -- Check if count_tmp is less than 9
            -- If so, set digit_0 = count_tmp and digit_1 = 0
			digit_0 <= count_tmp;
			digit_1 <= "0000";
		end if;
		
		if(reset = '1') then
			reset <= '0';
			enable_tmp <= '0';
		end if;
		
	end Process;

	decoder0: g90_lab1 PORT MAP(bcd => digit_0,
							segment7 => HEX0);

	decoder1: g90_lab1 PORT MAP(bcd => digit_1,
							segment7 => HEX1);
	
end behaviour;
