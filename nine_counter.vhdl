library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nine_counter is
	port(
		count: out std_logic_vector(6 downto 0);
		--EN:in std_logic;
		clk: in std_logic;
		reset:in std_logic;
		full: out std_logic
		
	);
end entity nine_counter;

architecture counter_arch of nine_counter is
  signal r_reg: unsigned(6 downto 0);
  signal r_next: unsigned(6 downto 0);
begin
	r_reg <= (others =>0);
  process(clk, reset)
    begin 
      if(reset = '1') then 
        r_reg <= (others => '0');
      elsif(clk'event and clk='1') then
            r_reg <= r_next;
      end if;       
    end process;
    r_next <=r_reg +1;
    count <= std_logic_vector(r_reg);
    full <= '1' when (r_reg ="1100011") else
      '0';  
end counter_arch;