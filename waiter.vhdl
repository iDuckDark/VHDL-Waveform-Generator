library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity waiter is
  port(
    start:in std_logic;
    P:in std_logic; --ENABLE COUNTER
    clk: in std_logic;
    CC: in std_logic; --RESET COUNTER
    dataPoints: in std_logic_vector(1 downto 0); --0 means 100 sample rate -- 1 means 50 sample rate
    period: in std_logic_vector(1 downto 0); -- 00=1ms -- 01=0.01s -- 10=0.1s
    max: out std_logic
  );
end entity waiter;

architecture waiter_arch of waiter is 
    signal counter: unsigned(16 downto 0):="00000000000000000";
    signal flag:std_logic;
    begin
    process(clk,CC)
        begin
            if(CC='0') then
                counter <= (others =>'0');
            elsif(clk'event and clk='1') then

                if(period="00") then --1ms period

                    if(dataPoints = "00")  then -- 100 sample rate
                        if(counter="00000000111110100") then --500 cycles
                            counter <= (others =>'0');
                            flag<='1';
                        else
                            counter<=counter+1;
                            flag<='0';
                        end if;

                    elsif(dataPoints = "01") then-- 50 sample rate
                        if(counter="00000001111101000") then --1k cycles
                            counter <= (others =>'0');
                            flag<='1';
                        else
                            counter<=counter+1;
                            flag<='0';
                        end if;
                    end if;

                elsif(period="01") then --1ms period

                    if(dataPoints = "00")  then -- 100 sample rate
                        if(counter="00001001110001000") then --5k cycles
                            counter <= (others =>'0');
                            flag<='1';
                        else
                            counter<=counter+1;
                            flag<='0';
                        end if;

                    elsif(dataPoints = "01") then-- 50 sample rate
                        if(counter="00010011100010000") then --10 cycles
                            counter <= (others =>'0');
                            flag<='1';
                        else
                            counter<=counter+1;
                            flag<='0';
                        end if;
                    end if;


                elsif(period="10") then --1ms period

                    if(dataPoints = "00")  then -- 100 sample rate
                        if(counter="01100001101010000") then --50k cycles
                            counter <= (others =>'0');
                            flag<='1';
                        else
                            counter<=counter+1;
                            flag<='0';
                        end if;

                    elsif(dataPoints = "01") then-- 50 sample rate
                        if(counter="11000011010100000") then --100k cycle
                            counter <= (others =>'0');
                            flag<='1';
                        else
                            counter<=counter+1;
                            flag<='0';
                        end if;
                    end if;
                end if;
            end if;
        end process;
    max <= '1' when flag = '1' else
            '0';
end waiter_arch;