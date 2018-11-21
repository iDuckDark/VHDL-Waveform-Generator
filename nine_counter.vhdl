library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity nine_counter is
  port(
    start:in std_logic;
    P:in std_logic; --ENABLE COUNTER
    clk: in std_logic;
    CC: in std_logic; --RESET COUNTER
    dataPoints: in std_logic; --0 means 100 sample rate -- 1 means 50 sample rate
    period: in std_logic_vector(1 downto 0); -- 00=1ms -- 01=0.01s -- 10=0.1s
    full: out std_logic;
    address_bus: out std_logic_vector(6 downto 0)
  );
end entity nine_counter;

architecture counter_arch of nine_counter is
  signal r_reg: unsigned(6 downto 0) := "0000000";
  signal r_next: unsigned(6 downto 0):= "0000000";
begin
  process(clk, CC)
    begin 
    if(start='0') then 
      r_reg <= r_reg;
    else  
      if(CC = '0') then 
        r_reg <= (others => '0');
      elsif(clk'event and clk='1') then
        r_reg <= r_next;
      end if; 
    end if;
    end process;

    process
    begin
      if(period="00") then --1ms period
        if(dataPoints = '0')  then -- 100 sample rate
          wait for 10 us ;--ts 10 microsess
        elsif(dataPoints = '0') then-- 50 sample rate
          wait for 20 us; --ts 20 microsecs
        end if;
      end if;
      if(period="01") then -- 0.01s period
        if(dataPoints = '0')  then -- 100 sample rate
          wait for 100 us ;--ts 0.1ms
        elsif(dataPoints = '0') then-- 50 sample rate
          wait for 200 us; --ts 0.2 ms
        end if;
      end if;
      if(period="10") then --0.1ms period
        if(dataPoints = '0')  then -- 100 sample rate
          wait for 1 ms ;--ts 1ms
        elsif(dataPoints = '0') then-- 50 sample rate
          wait for 2 ms; --ts 2 ms
        end if;
      end if;
    end process;

    r_next <= r_reg +1 when r_reg/="1100011" and dataPoints='0' else -- 100 sample rate
              r_reg +2 when r_reg/="1100011" and dataPoints='1' else -- 50 sample rate
              r_reg when start ='0'
              else (others => '0');
    address_bus <= std_logic_vector(r_reg);
    full <= '1' when (r_reg ="1100011") else'0';  
end counter_arch;

