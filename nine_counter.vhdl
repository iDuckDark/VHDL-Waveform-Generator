library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nine_counter is
	port(
		count: out std_logic_vector(6 downto 0);
		EN:in std_logic;
		clk: in std_logic;
		reset:in std_logic;
		full: out std_logic
		
	);
end entity nine_counter;

architecture counter_arch of nine_counter is
  signal counter: unsigned(6 downto 0);
begin
  process(clk, reset)
    begin 
      if(reset = '0') then 
        counter <= "0000000";
      elsif(clk'event and clk='1') then
        if(EN = '1') then 
          if(counter = "1100011") then
            counter <="0000000";
          else 
            counter <= counter + 1;
          end if;
        end if;
    end if;         
    end process;
    count <=std_logic_vector(counter);
    full <= '1' when (counter ="1100011") else
      '0';  
end counter_arch;
