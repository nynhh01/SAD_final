library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity controller is
generic ( data_width: integer :=8);
Port ( 
	clk : in std_logic;
	rst : in std_logic;
	start: in std_logic;
	i_comp, j_comp : in std_logic;
	
	ld_i , ena_i,ld_j , ena_j  : out std_logic;
	re_A, re_B : out std_logic;
	ena_temp, ena_SAD: out std_logic;
	SAD_sel: out std_logic;
	done : out std_logic
);
end controller;

architecture gate_level of controller is
type state_type is (S0 ,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14);  
signal current_state : state_type;

begin
process( rst, clk)
begin
if rst = '1' then
	current_state <= S0;
elsif (clk'event and clk ='1') then
	case current_state is
		when S0 => current_state <= S1;
		when S1 =>
			if start ='1' then
				current_state <= S2;
			else
				current_state <= S1;
			end if;
		when S2 => current_state <= S3;
		when S3 =>
			if( i_comp ='1') then
				current_state <= S4;
			else
				current_state <= S12;
			end if;
		when S4 => current_state <= S5;
		when S5 =>
			if( j_comp ='1') then
				current_state <= S6;
			else
				current_state <= S11;
			end if;
		when S6 => current_state <= S7;
		when S7 => current_state <= S8;
		when S8 => current_state <= S9;
	
		when S9 => current_state <= S10;
		
		when S10 => current_state <= S5;
		when S11 => current_state <= S3;
		when S12 => current_state <= S13;
		when S13 =>
			if start ='1' then
				current_state <= S13;
			else
				current_state <= S14;
			end if;
		when S14 => current_state <= S0;
		when others => current_state <= S0;
	end case ;
end if;
end process;

-- combitional logic
--we_A <= '1' when current_state = S0 else '0';
--we_B <= '1' when current_state = S1 else '0';

ld_i <= '1' when current_state = S2 else '0';
ld_j <= '1' when current_state = S4 else '0';
re_A <= '1' when current_state = S6 else '0';
re_B <= '1' when current_state = S6 else '0';


ena_temp <= '1' when current_state = S7 else '0';
ena_SAD <= '1' when current_state = S8 else '0';

ena_j <= '1' when current_state = S10 else '0';
ena_i <= '1' when current_state = S11 else '0';




SAD_sel <= '0' when current_state = S2 else '1';
done <= '1' when current_state = S12 else '0';

end gate_level;
