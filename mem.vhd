library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
use IEEE.NUMERIC_STD.ALL;

entity mem is
generic( data_width: integer :=8);
port(
	clk : in std_logic;
	rst : in std_logic;
	re : in std_logic;
	we : in std_logic;
	addr : in std_logic_vector ( 4 downto 0);
	data_in : in std_logic_vector ( data_width - 1 downto 0);
	data_out : out std_logic_vector ( data_width - 1 downto 0)
);
end mem;

architecture RTL of mem is


type ram_type is array (0 to 8) of std_logic_vector (data_width - 1 downto 0);
signal ramA: ram_type ;

begin

process(clk)
begin
	if rst = '1' then
		data_out <= (others => '0');
		ramA <= (others => (others => '0'));
	elsif (clk'event and clk='1') then
		if we ='1' then
			ramA(conv_integer(addr)) <= data_in;
		elsif re = '1' then
			data_out <= ramA(conv_integer(addr));
		end if;
	end if;
end process;
		
end RTL;
