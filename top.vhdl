library ieee;
use IEEE.Std_Logic_1164.all;
entity top is
	port ( 
			 CLOCK_50   : in std_logic;
			 reset: in std_logic;
			 wave: in std_logic_vector(1 downto 0);
			  --KEY(0)=>RST and --KEY(1)=>EN
		    val	    : out real
  	);
end top;
architecture top_arch of top is
	signal F: std_logic_vector(6 downto 0);
	signal F1: std_logic; 
	signal F2: real;

	component nine_counter
		port(
	    --EN:in std_logic;
	    clk: in std_logic;
	    reset:in std_logic;
	    full: out std_logic;
		count: out std_logic_vector(6 downto 0)
			
		);
		end component;

	--component sin_entity
 --     port ( address : in std_logic_vector(6 downto 0);
 --            data : out real );

	--end component;
	component rom is
	port ( wave_type : in std_logic_vector(1 downto 0);
		address: in std_logic_vector(6 downto 0);
	     value : out real 
	     );
	end component rom;

	--signal F, F1, F2, F3, F4, G3, OP_A: std_logic_vector(7 downto 0);
	--signal SEL: std_logic_vector(1 downto 0);
	--signal EN_1, EN_2: std_logic;
	--signal G1, G2: std_logic_vector(3 downto 0);
	--component C1
	--	port (  A : in std_logic_vector(7 downto 0);
	--			B : in std_logic_vector(7 downto 0);
	--			F : out std_logic_vector(7 downto 0)
	--	);
	--end component;
	--component C2
	--	port (  A : in std_logic_vector(7 downto 0);
	--			B : in std_logic_vector(7 downto 0);
	--			F : out std_logic_vector(7 downto 0)
	--	);
	--end component;
	--component C3
	--	port (  A : in std_logic_vector(7 downto 0);
	--			B : in std_logic_vector(7 downto 0);
	--			F : out std_logic_vector(7 downto 0)
	--	);
	--end component;
	--component C4
	--	port (  A : in std_logic_vector(7 downto 0);
	--			F : out std_logic_vector(7 downto 0)
	--	);
	--end component;
	--component mux4x1
	--	port (     w, x, y, z : in std_logic_vector(7 downto 0);
	--						s : in std_logic_vector(1 downto 0);
	--						m : out std_logic_vector(7 downto 0)
	--	);
	--end component;
	--component Decod7seg
	--	port (  A : in std_logic_vector(3 downto 0);
	--			F : out std_logic_vector(6 downto 0)
	--	);
	--end component;
	--component D_4FF
	--	port (
	--		CLK : in std_logic;
	--		EN : in std_logic;
	--		RST : in std_logic;
	--		D : in std_logic_vector(3 downto 0);
	--		Q : out std_logic_vector(3 downto 0)
	--	);
	--end component;
	--component D_8FF
	--	port (
	--		CLK : in std_logic;
	--		EN : in std_logic;
	--		RST : in std_logic;
	--		D : in std_logic_vector(7 downto 0);
	--		Q : out std_logic_vector(7 downto 0)
	--	);
	--end component;
	--component FSMctrl is
	--port (   Clk, Rst, Enter : in std_logic;
	--		 Operation: in std_logic_vector(1 downto 0);
	--		 Selection: out std_logic_vector(1 downto 0);
	--		 Enable_1, Enable_2: out std_logic
	--	);
	--end component;
	--component shiftreg is
	--	port (
	--	clk	    : in std_logic;
	--	reset   : in std_logic;
	--	sr_in	    : in std_logic_vector((8-1) downto 0);
	--	sr_out	: out std_logic_vector((8-1) downto 0)
	--);
	--end component;
	--component shiftregR is
	--port (
	--	clk	    : in std_logic;
	--	reset   : in std_logic;
	--	sr_in	    : in std_logic_vector((8-1) downto 0);
	--	sr_out	: out std_logic_vector((8-1) downto 0)
	--);
	--end component;
begin
	L0: nine_counter port map(CLOCK_50,reset,F1,F);
	L1: rom port map(wave,F,F2);
	--L0: FSMctrl port map (CLOCK_50,  KEY(0), KEY(1), SW(17 downto 16), SEL, EN_1, EN_2);
	--L1: D_8FF port map (CLOCK_50, EN_1, KEY(0), SW(7 downto 0), OP_A);
	--L2: C1 port map (OP_A, SW(7 downto 0), F1);
	--L3: C2 port map (OP_A, SW(7 downto 0), F2);
	--L4: shiftreg port map (CLOCK_50, KEY(0), SW(7 downto 0), F4);
	--L5: shiftregR port map (CLOCK_50, KEY(0), SW(7 downto 0), F3);
	--L6: mux4x1 port map (F1, F2, F3, F4, SEL, F);
	--L7: D_4FF port map (CLOCK_50, EN_2, KEY(0), F(3 downto 0), G1);
	--L8: D_4FF port map (CLOCK_50, EN_2, KEY(0), F(7 downto 4), G2);
	--L9: D_8FF port map (CLOCK_50, EN_2, KEY(0), F(7 downto 0), G3);
	--L10: Decod7seg port map (G1, HEX0);
	--L11: Decod7seg port map (G2, HEX1);
	--LEDR(7 downto 0) <= G3;
	val <= F2;
end top_arch;