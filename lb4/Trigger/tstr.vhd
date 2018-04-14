library ieee;
use ieee.std_logic_1164.all;

entity tstr is
	port (r, ti, te, c:in std_logic;
		 q:out std_logic);
end;

architecture beh of tstr is

component n
	port (x:in std_logic;
	      y:out std_logic);
end component;

component na
	port (x1, x2:in std_logic;
		 y:out std_logic);
end component;

component noaa
	port (x1, x2, x3, x4:in std_logic;
		 y:out std_logic);
end component;


signal s: std_logic_vector(1 to 9);

begin

m1:n port map(r, s(1));
m2:n port map(te, s(2));
m3:n port map(c, s(8));
m4:n port map(s(8), s(9));
m5:n port map (s(7), q);

m6: na port map(s(1), s(4), s(5));
m7: na port map(s(1), s(6), s(7)); 

m8: noaa port map(s(7), s(2), ti, te, s(3));
m9: noaa port map(s(5), s(9), s(3), s(8), s(4));
m10: noaa port map(s(7), s(8), s(5), s(9), s(6));
 

end;