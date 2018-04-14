entity conunctor is
	port (A, B: in bit;
	     Y: out bit);
end conunctor;

architecture beh of conunctor is
begin
Y<=not (A and B) after 2 ns;
end beh;
