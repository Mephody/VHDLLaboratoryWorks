library work;
use work.types.all;

entity test is
end;

architecture atest of test is

component mili
    port(z: in mili_in_type;
	       clock: in bit;
	       w: out mili_out_type;
	       next_state1, state1:out T_state);
end component;

signal z: mili_in_type;
signal clock: bit;
signal w: mili_out_type;
signal next_state1, state1: T_state;

begin
  
m1: mili port map
  (z=>z, clock=>clock, w=>w, next_state1=>next_state1, state1=>state1);
  
z<=z1,
   z2 after 100 ns,
   z3 after 200 ns,
   z2 after 300 ns,
   z3 after 400 ns,
   z1 after 500 ns,
   z2 after 600 ns,
   z2 after 700 ns;

clock<=not clock after 50 ns;  
  
end;
