library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sad_tb is

end sad_tb;

architecture arch_tb of sad_tb is
constant data_width: integer :=8;
component sad is
generic( data_width: integer :=8);
port(
	clk : in std_logic;
	rst : in std_logic;
	start, we_A, we_B : in std_logic;
	data_in : in std_logic_vector ( data_width - 1 downto 0);
	addr_in: in std_logic_vector(4 downto 0);

	done : out std_logic;
	data_out : out std_logic_vector ( data_width - 1 downto 0)
);
end component;

signal clk :  std_logic;
signal rst :  std_logic;
signal start, we_A, we_B :  std_logic;
signal data_in :  std_logic_vector ( data_width - 1 downto 0);
signal addr_in:  std_logic_vector(4 downto 0);

signal done :  std_logic;
signal data_out :  std_logic_vector ( data_width - 1 downto 0);

begin

uut : sad generic  map(data_width)  
port map(
	clk ,
	rst ,
	start ,we_A, we_B,
	data_in ,
	addr_in ,
	done ,
	data_out
);

clock_process :process
begin
     clk <= '1';
     wait for 5 ns;
     clk <= '0';
     wait for 5 ns;
end process;

rst_process :process
begin
     	rst <= '1'; wait for 10 ns;
	rst <= '0'; wait ;
end process;

simulate_process :process
begin


start <= '0';
we_A <= '0';
we_B <= '0';
data_in <= "00000000";
addr_in <= "00000";
 wait for 10 ns;
addr_in <= "00000";wait for 10 ns;
we_A <= '1';wait for 10 ns;
-- write A 

data_in <= "11111110";
addr_in <= "00001";
wait for 10 ns;
addr_in <= "00010";
data_in <= "00001000";

wait for 10 ns;
addr_in <= "00011";
data_in <= "00000111";

wait for 10 ns;
addr_in <= "00100";
data_in <= "00000110";

wait for 10 ns;
addr_in <= "00101";
data_in <= "00000101";


wait for 10 ns;
addr_in <= "00110";
data_in <= "00000100";


wait for 10 ns;
addr_in <= "00111";
data_in <= "00000011";

wait for 10 ns;
addr_in <= "01000";
data_in <= "00000010";

wait for 10 ns;
addr_in <= "00000";
data_in <= "00000001";

wait for 10 ns; we_A <= '0';
wait for 10 ns; we_B <= '1';
-- Write B

wait for 10 ns;
addr_in <= "00001";
data_in <= "00000001";

wait for 10 ns;
addr_in <= "00010";
data_in <= "00000010";

wait for 10 ns;
addr_in <= "00011";
data_in <= "00000011";

wait for 10 ns;
addr_in <= "00100";
data_in <= "00000100";

wait for 10 ns;
addr_in <= "00101";
data_in <= "00000101";


wait for 10 ns;
addr_in <= "00110";
data_in <= "00000110";


wait for 10 ns;
addr_in <= "00111";
data_in <= "00000111";

wait for 10 ns;
addr_in <= "01000";
data_in <= "00001000";

wait for 10 ns;
addr_in <= "01000";
data_in <= "00001001";

wait for 10 ns; we_B <= '0';
	start<='1';
wait;
end process;
end arch_tb;
