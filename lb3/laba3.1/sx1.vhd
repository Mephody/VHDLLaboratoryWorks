entity sx1 is
  port(x: in bit_vector(1 to 8);
       z: out bit_vector(1 to 6));
end sx1;

architecture str of sx1 is

component sum1 
  port(a, b:in bit_vector(1 to 2);
       c: out bit_vector(1 to 3));
end component;

component umn
  port(a, b:in bit_vector(1 to 2);
       c: out bit_vector(1 to 4));
end component;

signal s: bit_vector(1 to 4);

begin
  m1: sum1 port map
        (a(2)=>x(1),
	 a(1)=>x(2),
	 b(1)=>x(4),
	 b(2)=>x(3),
	 c(3)=>s(3),
	 c(2)=>s(2),
	 c(1)=>s(1));
  
  m2: sum1 port map
	(a(2)=>s(2),
	 a(1)=>s(3),
	 b(1)=>x(6),
	 b(2)=>x(5),
	 c(3)=>z(1),
	 c(2)=>z(2),
	 c(1)=>s(4));
       
  m3: umn port map
	(a(2)=>s(1),
	 a(1)=>x(7),
	 b(2)=>s(4),
	 b(1)=>x(8),
	 c(4)=>z(6),
	 c(3)=>z(5),
	 c(2)=>z(4),
	 c(1)=>z(3));
end;