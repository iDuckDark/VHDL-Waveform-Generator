library ieee;
use ieee.std_logic_1164.all;

entity D_Latch is
	port(
		LP: in std_logic; --ENABLE D LATCH
		d: in real; --DATA
		q: out real --OUTPUT
	);
end entity D_Latch;

architecture D_Latch_Arch of D_Latch is
	signal q_latch: real:=0.0;
begin
	process(LP, d, q_latch)
	begin
		if (LP ='1') then q_latch <= d;
		else q_latch <= q_latch;
		end if;
	end process;
	q<= q_latch;
end architecture D_Latch_Arch;