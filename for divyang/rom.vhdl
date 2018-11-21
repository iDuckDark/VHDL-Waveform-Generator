library ieee;
use ieee.std_logic_1164.all;

entity rom is
	port ( 
		address: in std_logic_vector(6 downto 0);
		CS: in std_logic; --Clear Memory
		EN: in std_logic; --Enable Memory
		wave_type : in std_logic_vector(1 downto 0);
		wave_period : in std_logic_vector(1 downto 0);
		wave_datapoints : in std_logic_vector(1 downto 0);
	    value : out real 
	);
end entity rom;

architecture rom_arch of rom is
	signal F1,F2,F3:real; --,F4


	component square_entity
  		port ( 
  			address : in std_logic_vector(6 downto 0);
         	data : out real 
        );
	end component;



begin
	
	R2: square_entity port map(address,F1);
	
	--R4: last wave
	value <= 	F1 when wave_type = "00" else -- square wave
				F2 when wave_type = "01" else -- sqiare wave
				F3 when wave_type = "10" else -- triangle wave
				5.0; -- our last wave
end rom_arch;