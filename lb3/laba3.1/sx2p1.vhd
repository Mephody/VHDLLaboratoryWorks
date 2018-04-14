entity sx2p1 is
	port(x: in bit_vector(1 to 14);
	     y: out bit_vector(1 to 10));
end sx2p1;

architecture str of sx2p1 is

component sx1
  port(x: in bit_vector(1 to 8);
       z: out bit_vector(1 to 6));
end component;

signal s: bit_vector(1 to 2);

begin

m1: sx1 port map
	(x(1)=>x(1),
	 x(2)=>x(2),
	 x(3)=>x(3),
	 x(4)=>x(4),
	 x(5)=>x(5),
	 x(6)=>x(6),
	 x(7)=>x(7),
	 x(8)=>x(8),
	 z(1)=>s(1),
	 z(2)=>s(2),
	 z(3)=>y(4),
	 z(4)=>y(3),
	 z(5)=>y(2),
	 z(6)=>y(1));

m2: sx1 port map
	(x(1)=>s(2),
	 x(2)=>s(1),
	 x(3)=>x(9),
	 x(4)=>x(10),
	 x(5)=>x(11),
	 x(6)=>x(12),
	 x(7)=>x(13),
	 x(8)=>x(14),
	 z(1)=>y(10),
	 z(2)=>y(9),
	 z(3)=>y(8),
	 z(4)=>y(7),
	 z(5)=>y(6),
	 z(6)=>y(5));

end;