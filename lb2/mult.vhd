entity mult is
	port (C, A1, A2, A3, A4, A5, A6, A7, A8, B1, B2, B3: in bit;
	     Y: out bit);
end mult;

architecture beh of mult is
begin
Y<=not (C and ( ((not B1) and (not B2) and (not B3) and A1) or ((not B1) and (not B2) and B3 and A2) or ((not B1) and B2 and (not B3) and A3) or ((not B1) and B2 and B3 and A4) or (B1 and (not B2) and (not B3) and A5) or (B1 and (not B2) and B3 and A6) or (B1 and B2 and (not B3) and A7) or (B1 and B2 and B3 and A8) )) after 12 ns;
end beh;
