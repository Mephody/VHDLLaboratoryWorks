entity test is
end test;

architecture atest of test is

component sxema
	port(A1, A2, A3, A4, W0, W1, B1, B2, B3, B4: in bit;
	     F, F1: out bit);
end component;

signal A1, A2, A3, A4, W0, W1, B1, B2, B3, B4, F, F1:bit;

begin
p1: sxema port map
	(A1=>A1, 
	 A2=>A2, 
	 A3=>A3, 
	 A4=>A4, 
	 W0=>W0, 
	 W1=>W1, 
	 B1=>B1, 
	 B2=>B2, 
	 B3=>B3, 
	 B4=>B4, 
	 F=>F);

W0<='0';
W1<='0';
    A1<='0',
        '1' after 800 ns;
        
    A2<='0',
        '1' after 400 ns,
        '0' after 800 ns,
        '1' after 1200 ns;
    
    A3<='0',
        '1' after 200 ns,
        '0' after 400 ns,
        '1' after 600 ns,
        '0' after 800 ns,
        '1' after 1000 ns,
        '0' after 1200 ns,
        '1' after 1400 ns;

    A4<='0',
	'1' after 100 ns,
	'0' after 200 ns,
	'1' after 300 ns,
	'0' after 400 ns,
	'1' after 500 ns,
	'0' after 600 ns,
	'1' after 700 ns,
	'0' after 800 ns,
	'1' after 900 ns,
	'0' after 1000 ns,
	'1' after 1100 ns,
	'0' after 1200 ns,
	'1' after 1300 ns,
	'0' after 1400 ns,
	'1' after 1500 ns;


B1<='0';
B2<='1';
B3<='1';
B4<='1';

end atest;
