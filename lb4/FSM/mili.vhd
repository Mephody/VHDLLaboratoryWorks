library work;
use work.types.all;

entity mili is
port(z: in mili_in_type;
	clock: in bit;
	w: out mili_out_type;
	next_state1, state1:out T_state);
end;

architecture beh of mili is 
signal state, next_state: T_state;
--signal state, next_state: T_state;
begin
state1<=state;
next_state1<=next_state; 
NS: process (state, z)
	begin
	case state is 
		when a1=> if (z=z1)then next_state <= a4; w<=w4;
			  elsif (z=z2) then next_state <= a4; w<=w5;
			  elsif (z=z3) then next_state <= a1; w<=w2;
			  end if;
		when a2=> if (z=z1) then next_state <= a2; w<=w1;
			  elsif (z=z2) then next_state <= a1; w<=w3;
			  elsif (z=z3) then next_state <= a2; w<=w4;
			  end if;
		when a3=> if (z=z1) then next_state <= a1; w<=w2;
			  elsif (z=z2) then next_state <= a3; w<=w4;
			  elsif (z=z3) then next_state <= a1; w<=w4;
			  end if;
		when a4=> if (z=z1) then next_state <= a4; w<=w4;
			  elsif (z=z2) then next_state <= a3; w<=w3;
			  elsif (z=z3) then next_state <= a4; w<=w1;
			  end if;
	end case;
end process;

clk: process(clock)
	begin
	if (clock'event and clock='1') then
		state<=next_state;
	end if;
end process;

end;


