--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;



entity test1 is
end test1;

architecture atest of test1 is

component sx2p1
	port(x: in bit_vector(1 to 14);
	     y: out bit_vector(1 to 10));
end component;

signal x:bit_vector(1 to 14);
signal y:bit_vector(1 to 10);

--signal z:std_logic_vector(1 to 14);

--variable i:integer;

begin
p1: sx2p1 port map
	(x(1)=>x(1),
	 x(2)=>x(2),
	 x(3)=>x(3),
	 x(4)=>x(4),
	 x(5)=>x(5),
	 x(6)=>x(6),
	 x(7)=>x(7),
	 x(8)=>x(8),
	 x(9)=>x(9),
	 x(10)=>x(10),
	 x(11)=>x(11),
	 x(12)=>x(12),
	 x(13)=>x(13),
	 x(14)=>x(14),
	 y(1)=>y(1),
	 y(2)=>y(2),
	 y(3)=>y(3),
	 y(4)=>y(4),
	 y(5)=>y(5),
	 y(6)=>y(6),
	 y(7)=>y(7),
	 y(8)=>y(8),
	 y(9)=>y(9),
	 y(10)=>y(10));


x<="00000000000000",
   "00100000000001" after 100 ns,
   "01000000000011" after 200 ns,
   "10000000000101" after 300 ns,
   "01000000001001" after 400 ns,
   "00100000010001" after 500 ns,
   "00010000100001" after 600 ns,
   "00001001000001" after 700 ns,
   "00000110000001" after 800 ns,
   "00000110000001" after 900 ns,
   "00001001000001" after 1000 ns,
   "00010000100001" after 1100 ns,
   "00100000010001" after 1200 ns,
   "01000000001001" after 1300 ns,
   "10000000000101" after 1400 ns,
   "11111111111111" after 1500 ns;

	--z<=to_stdlogicvector(x);
	--z<=std_logic_vector(to_unsigned(to_integer(unsigned(z))+1,14));
	--x<=to_bitvector(z) after 200 ns;


end atest;

