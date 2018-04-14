entity desh is
	port (A1, A2, A3, A4, W0, W1: in bit;
	      D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15: out bit);
end desh;

architecture beh of desh is
begin

D0<= (not W0) and (not W1) and (not A4) and (not A3) and (not A2) and (not A1) after 6 ns;
D1<= (not W0) and (not W1) and (not A4) and (not A3) and (not A2) and A1 after 6 ns;
D2<= (not W0) and (not W1) and (not A4) and (not A3) and A2 and (not A1) after 6 ns;
D3<= (not W0) and (not W1) and (not A4) and (not A3) and A2 and A1 after 6 ns;
D4<= (not W0) and (not W1) and (not A4) and A3 and (not A2) and (not A1) after 6 ns;
D5<= (not W0) and (not W1) and (not A4) and A3 and (not A2) and A1 after 6 ns;
D6<= (not W0) and (not W1) and (not A4) and A3 and A2 and (not A1) after 6 ns;
D7<= (not W0) and (not W1) and (not A4) and A3 and A2 and A1 after 6 ns;
D8<= (not W0) and (not W1) and A4 and (not A3) and (not A2) and (not A1) after 6 ns;
D9<= (not W0) and (not W1) and A4 and (not A3) and (not A2) and A1 after 6 ns;
D10<= (not W0) and (not W1) and A4 and (not A3) and A2 and (not A1) after 6 ns;
D11<= (not W0) and (not W1) and A4 and (not A3) and A2 and A1 after 6 ns;
D12<= (not W0) and (not W1) and A4 and A3 and (not A2) and (not A1) after 6 ns;
D13<= (not W0) and (not W1) and A4 and A3 and (not A2) and A1 after 6 ns;
D14<= (not W0) and (not W1) and A4 and A3 and A2 and (not A1) after 6 ns;
D15<= (not W0) and (not W1) and A4 and A3 and A2 and A1 after 6 ns;

end beh;