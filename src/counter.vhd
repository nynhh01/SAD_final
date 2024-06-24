library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_SIGNED.all;

entity counter is
  Port ( 
    clk : in std_logic;
    rst, ld, ena: in std_logic;
    count: out std_logic_vector(4 downto 0)  
  );
end counter;

architecture gate_level of counter is
signal count_p : std_logic_vector(4 downto 0);
begin
process (clk, rst)
begin
	if rst ='1' then
		count_p <= (others => '0');
	elsif( clk'event and clk ='1') then
		if( ld = '1') then
			count_p <= (others => '0');
		elsif( ena ='1') then
			count_p <= count_p +1;
		end if;	
	end if;
end process;
count <= count_p;
end gate_level;
