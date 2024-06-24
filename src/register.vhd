library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity reg is
generic ( data_width: integer :=8);
Port ( 
	clk : in std_logic;
	rst : in std_logic;
	ena: in std_logic;
	D : in std_logic_vector ( data_width - 1 downto 0);
	Q : out std_logic_vector ( data_width - 1 downto 0)
);
end reg;

architecture gate_level of reg is
begin
process( clk, rst)
begin
	if ( rst ='1') then
		Q <= ( others => '0');
	elsif( clk'event and clk ='1') then
		if( ena ='1') then
			Q <= D;
		end if;
	end if;
end process;
end gate_level;

