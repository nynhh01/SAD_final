library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sad is
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
end sad;

architecture RTL of sad is
constant M : std_logic_vector(4 downto 0) := "00011";
constant N : std_logic_vector(4 downto 0) := "00011";

component datapath is
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
end component;

component controller is
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
end component;

signal i_comp, j_comp : std_logic;
signal ld_i , ena_i :  std_logic;
signal  re_A,re_B :  std_logic;
signal ld_j , ena_j , ena_temp, ena_SAD:  std_logic;
signal SAD_sel :  std_logic;
begin
control_unit : controller 
generic  map(data_width)  
port map (
	clk ,
	rst ,
	start,
	i_comp, j_comp, 
	ld_i , ena_i ,ld_j , ena_j ,
	 re_A, re_B ,
	ena_temp, ena_SAD,
	SAD_sel, 
	done 
);
datapath_unit : datapath
generic map (data_width, M, N)
port map (
	clk ,
	rst ,
	start ,
	ld_i , ena_i ,ld_j , ena_j , 
	we_A, re_A,we_B, re_B ,
	ena_temp, ena_SAD,
	SAD_sel, 
	addr_in,
	data_in ,
	i_comp, j_comp, 
	data_out 
);

end RTL;