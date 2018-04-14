library work;
use work.rr.all;



entity sx2p2 is
	generic(N:natural:=2);	
	port(x: in bit_vector(1 to 6*n+2);
	     y: out bit_vector(1 to 4*n+2));
end sx2p2;

architecture str of sx2p2 is

component sx1
  port(x: in bit_vector(1 to 8);
       z: out bit_vector(1 to 6));
end component;

signal s: bit_vector(1 to 2*n+2);

begin

g4: for i in 1 to n generate


m1: sx1 port map
	(x(1)=>s(2*i),
	 x(2)=>s(2*i-1),
	 x(3)=>x(6*i-3),
	 x(4)=>x(6*i-2),
	 x(5)=>x(6*i-1),
	 x(6)=>x(6*i),
	 x(7)=>x(6*i+1),
	 x(8)=>x(6*i+2),
	 z(1)=>s(2*i+1),
	 z(2)=>s(2*i+2),
	 z(6)=>y(4*i-3),
	 z(5)=>y(4*i-2),
	 z(4)=>y(4*i-1),
	 z(3)=>y(4*i));



end generate g4;

s(1)<=x(1);
s(2)<=x(2);
y(4*n+1)<=s(2*n+2);
y(4*n+2)<=s(2*n+1);


end;
