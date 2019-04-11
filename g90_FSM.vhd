library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use Work.all;

entity g90_FSM is
	Port (enable    : in std_logic;
		  direction : in std_logic;
		  reset     : in std_logic;
		  clk       : in std_logic;
		  count     : out std_logic_vector(3 downto 0));
end g90_FSM;

architecture behaviour of g90_FSM is

--different states represented by letters
	type state is (A, B, C, D, E, F, G, H, I, J, K, L, M, N, O);

	signal count_tmp : state;

begin

    process(clk, reset) begin
        if (reset = '0') then

	    count_tmp <= A;
        elsif (rising_edge(clk)) then

            if (enable = '1') then

--starting state is ab
--if direction ==1, go to next state
--if direction !=1, go to previous state
                case count_tmp is
					when A => 
						if (direction = '1') then
							count_tmp <= B;
						else
							count_tmp <= O;
						end if;
					when B =>
						if (direction = '1') then
							count_tmp <= C;
						else
							count_tmp <= A;
						end if;
					when C =>
						if (direction = '1') then
							count_tmp <= D;
						else
							count_tmp <= B;
						end if;
					when D =>
						if (direction = '1') then
							count_tmp <= E;
						else
							count_tmp <= C;
						end if;
					when E =>
						if (direction = '1') then
							count_tmp <= F;
						else
							count_tmp <= D;
						end if;
					when F =>
						if (direction = '1') then
							count_tmp <= G;
						else
							count_tmp <= E;
						end if;
					when G =>
						if (direction = '1') then
							count_tmp <= H;
						else
							count_tmp <= F;
						end if;
					when H =>
						if (direction = '1') then
							count_tmp <= I;
						else
							count_tmp <= G;
						end if;
					when I =>
						if (direction = '1') then
							count_tmp <= J;
						else
							count_tmp <= H;
						end if;
					when J =>
						if (direction = '1') then
							count_tmp <= K;
						else
							count_tmp <= I;
						end if;
					when K =>
						if (direction = '1') then
							count_tmp <= L;
						else
							count_tmp <= J;
						end if;
					when L =>
						if (direction = '1') then
							count_tmp <= M;
						else
							count_tmp <= K;
						end if;
					when M =>
						if (direction = '1') then
							count_tmp <= N;
						else
							count_tmp <= L;
						end if;
					when N =>
						if (direction = '1') then
							count_tmp <= O;
						else
							count_tmp <= M;
						end if;
					when O =>
						if (direction = '1') then
							count_tmp <= A;
						else
							count_tmp <= N;
						end if;
                end case;
				--if anything else is presssed, stay at current state
            else
				count_tmp <= count_tmp; 
			end if;
		end if;
	end process;

--conversion of the state into binary which will be converted to BCD for the display

    WITH count_tmp SELECT
    count <="0001" when A, -- 1
            "0010" when B, -- 2
            "0100" when C, -- 4
            "1000" when D, -- 8
            "0011" when E, -- 3
            "0110" when F, -- 6
            "1100" when G, -- 12
            "1011" when H, -- 11
            "0101" when I, -- 5
            "1010" when J, -- 10
            "0111" when K, -- 7
            "1110" when L, -- 14
            "1111" when M, -- 15
            "1101" when N, -- 13
            "1001" when O, -- 9
            "0000" when OTHERS;

end behaviour;