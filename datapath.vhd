library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_SIGNED.all;

entity datapath is
generic ( 
	data_width: integer :=8;
	M : std_logic_vector(4 downto 0) := "00011";
	N : std_logic_vector(4 downto 0) := "00011"
);
Port ( 
	clk : in std_logic;
	rst : in std_logic;
	start : in std_logic;
	ld_i , ena_i,ld_j , ena_j : in std_logic;
	we_A, re_A,we_B, re_B : in std_logic;
	ena_temp, ena_SAD: in std_logic;
	SAD_sel : in std_logic;
	addr_in: in std_logic_vector(4 downto 0);
	data_in : in std_logic_vector ( data_width - 1 downto 0);
	i_comp, j_comp : out std_logic;
	data_out : out std_logic_vector ( data_width - 1 downto 0)

);
end datapath;

architecture gate_level of datapath is

component reg is
generic ( data_width: integer :=8);
Port ( 
	clk : in std_logic;
	rst : in std_logic;
	ena: in std_logic;
	D : in std_logic_vector ( data_width - 1 downto 0);
	Q : out std_logic_vector ( data_width - 1 downto 0)
);
end component;

component counter is
Port ( 
    clk : in std_logic;
    rst, ld, ena: in std_logic;
    count: out std_logic_vector(4 downto 0)  
);
end component;

component mem is
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
end component;

signal value_addr, addr: std_logic_vector(4 downto 0);
signal data_A , data_B, temp_in, temp_out,temp_out_p, temp_add, temp_sub,SAD_in, SAD_out ,SAD_mux :  std_logic_vector(data_width - 1 downto 0);
signal count_i_p : std_logic_vector(4 downto 0); 
signal value_mul_p : std_logic_vector(4 downto 0);
signal count_j_p : std_logic_vector(4 downto 0); 
signal value_addr_p : std_logic_vector(4 downto 0);

begin

-- counter i
dem_i : counter port map( clk, rst, ld_i, ena_i, count_i_p);

-- counter j
dem_j : counter port map( clk, rst, ld_j, ena_j, count_j_p);

value_addr <= count_i_p + count_i_p + count_i_p + count_j_p ;

-- mux address
addr <= addr_in when start ='0' else value_addr;

--Compare i < M
i_comp <= '1' when signed(count_i_p) < signed(M) else '0';
--Compare j < N
j_comp <= '1' when signed(count_j_p) < signed(N) else '0';

-- Memory A 
MemA : mem  port map (clk,rst, re_A, we_A , addr, data_in, data_A );

-- Memory B
MemB : mem  port map (clk,rst, re_B , we_B,addr, data_in, data_B );

-- Sub A -B
temp_in <= data_A - data_B ;

-- reg temp 
temp : reg generic map(data_width) port map( clk, rst,ena_temp, temp_in, temp_out_p );
temp_out <= temp_out_p when temp_out_p(7) = '0' else not temp_out_p +'1';

-- mux 2:1 SAD
SAD_in <= "00000000" when SAD_sel='0' else temp_add;

-- register SAD
sad : reg generic map(data_width) port map( clk, rst ,ena_SAD, SAD_in, SAD_out );

-- temp_out > 0 and SAD = SAD + temp_out
temp_add <= SAD_out + temp_out ;

data_out <= SAD_out;

end gate_level;
