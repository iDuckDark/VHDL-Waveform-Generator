library ieee;
use ieee.std_logic_1164.all;

entity clocked_fsm is
	port(
		clk,reset : in std_logic;
		start: in std_logic; -- start waveform generation
		full: in std_logic; --Counter is Full
		send: in std_logic;
		waveform_selector: in std_logic_vector(1 downto 0);
		waveform_period: in std_logic_vector(1 downto 0);
		waveform_datapoints: in std_logic_vector(1 downto 0);
		P: out std_logic; --Counter Toggle
		CC: out std_logic; -- Clear Counter
		CS: out std_logic; --Clear state memory
		EN: out std_logic; --Enable Memory
		LP: out std_logic --Enable Data Latch
	);
end clocked_fsm;

architecture clocked_fsm_arch of clocked_fsm is
	type waveform_state_type is (s0, s1, s2, s3);
	signal state_reg, state_next: waveform_state_type;
begin
	--State Register Logic
	process(clk, reset)
	begin
		-- Active Low FSM Reset
		if (reset = '0') 
			then state_reg <=s0;
		elsif (clk'event and clk ='1') 
			then state_reg <= state_next;
		end if; 
	end process;

	--Next State Logic 
	process(state_reg, start, send)
	begin
		case state_reg is 
			when s0 => 
				if (start ='1') then state_next <= s1;
				else state_next <= s0; 
				end if;
			when s1 => 
				if (start ='0') then state_next <= s1;
				else
				state_next <= s2;
				end if;
			when s2 => 
				if (start ='0') then state_next <= s2;
				else
					if(send = '1') then
						state_next <= s3;
					else
						state_next <= s2;
					end  if;
				end if;
			when s3 => 
				if (start ='0') then state_next <= s3;
				else
				state_next <= s1;
				end if;
		end case;
	end process;

	--Moore Output Logic
	process(state_reg)
	begin
		case state_reg is 
			when s0 => 
				P  <= '0';
				CC <= '0';
				CS <= '1';
				EN <= '1';
				LP <= '0';
			when s1 => 
				P  <= '0';
				CC <= '1';
				CS <= '0';
				EN <= '0';
				LP <= '0';			
			when s2 => 
				LP <= '1'; 
			when s3 => 
				LP <= '0';
				EN <= '1';
				P <= not clk;
		end case;
	end process;
end clocked_fsm_arch;