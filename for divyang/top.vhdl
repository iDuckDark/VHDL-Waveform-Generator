library ieee;
use ieee.std_Logic_1164.all;

entity top is
	port ( 
		CLOCK_50: in std_logic;
		reset: in std_logic;
		start: in std_logic;
		wave_type: in std_logic_vector(1 downto 0);
		wave_period: in std_logic_vector(1 downto 0);
		wave_datapoints: in std_logic_vector(1 downto 0);
		val: out real
  	);
end top;

architecture top_arch of top is
	signal address_sig: std_logic_vector(6 downto 0);
	signal data_sig: real;

	--signal F1: std_logic; 
	signal F2: real;

	signal counterEN: std_logic; --P
	signal counterClear: std_logic; --CC
	signal counterFull: std_logic; --Full

	signal memoryClear: std_logic; --CS
	signal memoryEnable: std_logic; --EN

	signal DEnable: std_logic; --LP
	signal DOutput: real; --Q

	component clocked_fsm is
		port(
			clk,reset : in std_logic;
			start: in std_logic; -- start waveform generation
			full: in std_logic; --Counter is Full
			waveform_selector: in std_logic_vector(1 downto 0);
			waveform_period: in std_logic_vector(1 downto 0);
			waveform_datapoints: in std_logic_vector(1 downto 0);
			P: out std_logic; --Counter Toggle
			CC: out std_logic; -- Clear Counter
			CS: out std_logic; --Clear state memory
			EN: out std_logic; --Enable Memory
			LP: out std_logic --Enable Data Latch
		);
	end component;

	component nine_counter
		port(
			start:in std_logic;
	    	P:in std_logic; --ENABLE COUNTER
		    clk: in std_logic;
		    CC:in std_logic; --RESET COUNTER
		    full: out std_logic;
			address_bus: out std_logic_vector(6 downto 0)
		);
	end component;

	component rom is
		port ( 
			address: in std_logic_vector(6 downto 0);
			CS: in std_logic; --Clear Memory
			EN: in std_logic; --Enable Memory
			wave_type : in std_logic_vector(1 downto 0);
			wave_period : in std_logic_vector(1 downto 0);
			wave_datapoints : in std_logic_vector(1 downto 0);
		    value : out real 
		);
	end component rom;

	component D_Latch is
		port(
			LP: in std_logic; --ENABLE D LATCH
			d: in real; --DATA
			q: out real --OUTPUT
		);
	end component D_Latch;

begin
	L0: clocked_fsm port map(CLOCK_50, reset, start, counterFull,wave_type, wave_period, wave_datapoints, counterEN, counterClear, memoryClear, memoryEnable, DEnable);
	L1: nine_counter port map(start, counterEN, CLOCK_50, counterClear, counterFull, address_sig);
	L2: rom port map(address_sig, memoryClear, memoryEnable,wave_type, wave_period, wave_datapoints,data_sig);
	L3: D_Latch port map(DEnable, data_sig,DOutput);
	--LEDR(7 downto 0) <= G3;
	val <= DOutput;
end top_arch;