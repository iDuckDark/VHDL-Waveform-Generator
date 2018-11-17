library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nine_counter is
  port(
    P:in std_logic; --ENABLE COUNTER
    clk: in std_logic;
    CC: in std_logic; --RESET COUNTER
    full: out std_logic;
    address_bus: out std_logic_vector(6 downto 0)
  );
end entity nine_counter;

architecture counter_arch of nine_counter is
  signal r_reg: unsigned(6 downto 0) := "0000000";
  signal r_next: unsigned(6 downto 0):= "0000000";
begin
  process(clk, reset)
    begin 
      if(reset = '0') then 
        r_reg <= (others => '0');
      elsif(clk'event and clk='1') then
        r_reg <= r_next;
      end if;       
    end process;
    r_next <=r_reg +1 when r_reg/="1100011" else (others => '0');
    address_bus <= std_logic_vector(r_reg);
    full <= '1' when (r_reg ="1100011") else'0';  
end counter_arch;
