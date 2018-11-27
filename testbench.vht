LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSMctrl_vhd_tst IS
END FSMctrl_vhd_tst;

ARCHITECTURE FSMctrl_arch OF FSMctrl_vhd_tst IS
type test_vector is record


end record;

type test_vector_array is array (natural range <>) of test_vector;
	--need to make this array 
    constant test_vectors : test_vector_array := ( );

   --define signals
   signal CLOCK_50 : std_logic := '0';
   constant clk_period_half : time := 10 ns;

   signal reset: std_logic;
   signal start: std_logic;
   signal wave_type: std_logic_vector(1 downto 0);
   signal wave_period: std_logic_vector(1 downto 0);
   signal wave_datapoints: std_logic_vector(1 downto 0);
   signal val: real;

   --define top component
	component top
		port ( 
			CLOCK_50: in std_logic;
			reset: in std_logic;
			start: in std_logic;
			wave_type: in std_logic_vector(1 downto 0);
			wave_period: in std_logic_vector(1 downto 0);
			wave_datapoints: in std_logic_vector(1 downto 0);
			val: out real
			);
	end component;
BEGIN

	--routing top
   uut: top PORT MAP(
   		CLOCK_50 => CLOCK_50;
   		reset => reset;
   		start => start;
   		wave_type => wave_type;
   		wave_period => wave_period;
   		wave_datapoints => wave_datapoints;
   		val => val;
   	);

   
	test : process
	begin
		for i in 0 to 1 loop
			
			A <= test_vectors(i).A;
			B <= test_vectors(i).B;
			cin <= test_vectors(i).cin;

			wait for 100 ps;

			assert(
				(sum = test_vectors(i).sum) and 
				(flags = test_vectors(i).flags)
			)
			report "test_vector " & integer'image(i) & " failed "
				severity error;
			
			wait for 100 ps;
		end loop;
	end process test;  


   -- Clock process definitions
   always :process
   begin
		CLOCK_50 <= not CLOCK_50 after clk_period_half;
   end process;


END FSMctrl_arch;