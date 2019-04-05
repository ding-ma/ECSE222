library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity g90_FSM is
	Port( 	enable 		: in std_logic;
			direction	: in std_logic;
			reset		: in std_logic;
			clk			: in std_logic;
			count		: out std_logic(3 downto 0));
end g90_FSM;

architecture behaviour of g90_FSM is
	type state_type is (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O);
	signal count_temp : state_type := A;
begin

Process(clk, reset) begin
		if(reset = '0') then
			if (direction = '1') then
				count_temp <= A;
			else
				count_temp <= O;
			end if;
			
		elsif(rising_edge(clk)) then
			if(enable = '1') then
				case count_temp is
					when A =>
						if (direction = '1') then
							count_temp <= B;
						else
							count_temp <= O;
						end if;
					when B =>
						if (direction = '1') then
							count_temp <= C;
						else
							count_temp <= A;
						end if;
					when C =>
						if (direction = '1') then
							count_temp <= D;
						else
							count_temp <= B;
						end if;
					when D =>
						if (direction = '1') then
							count_temp <= E;
						else
							count_temp <= C;
						end if;
					when E =>
						if (direction = '1') then
							count_temp <= F;
						else
							count_temp <= D;
						end if;
					when F =>
						if (direction = '1') then
							count_temp <= G;
						else
							count_temp <= E;
						end if;
					when G =>
						if (direction = '1') then
							count_temp <= H;
						else
							count_temp <= F;
						end if;
					when H =>
						if (direction = '1') then
							count_temp <= I;
						else
							count_temp <= G;
						end if;
					when I =>
						if (direction = '1') then
							count_temp <= J;
						else
							count_temp <= H;
						end if;
					when J =>
						if (direction = '1') then
							count_temp <= K;
						else
							count_temp <= I;
						end if;
					when K =>
						if (direction = '1') then
							count_temp <= L;
						else
							count_temp <= J;
						end if;
					when L =>
						if (direction = '1') then
							count_temp <= M;
						else
							count_temp <= K;
						end if;
					when M =>
						if (direction = '1') then
							count_temp <= N;
						else
							count_temp <= L;
						end if;
					when N =>
						if (direction = '1') then
							count_temp <= O;
						else
							count_temp <= M;
						end if;
					when O =>
						if (direction = '1') then
							count_temp <= A;
						else
							count_temp <= N;
						end if;
				end case;
					
			else
				count_temp <= count_temp;
			end if;
		end if;
		
			case count is
	
	when A => count_temp <= "0001";
	when B => count_temp <= "0010";
	when C => count_temp <= "0100";
	when D => count_temp <= "1000";
	when E => count_temp <= "0011";
	when F => count_temp <= "0110";
	when G => count_temp <= "1100";
	when H => count_temp <= "1100";
	when I => count_temp <= "0101";
	when J => count_temp <= "1010";
	when K => count_temp <= "0111";
	when L => count_temp <= "1110";
	when M => count_temp <= "1111";
	when N => count_temp <= "1101";
	when O => count_temp <= "1001";
	
end case;
	end Process;
	


end behaviour;