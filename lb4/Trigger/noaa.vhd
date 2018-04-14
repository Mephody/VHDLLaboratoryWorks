library ieee;
use ieee.std_logic_1164.all;

entity noaa is
	port (x1, x2, x3, x4:in std_logic;
		 y:out std_logic);
end;

architecture beh of noaa is
begin
y<=((x1 and x2) nor (x3 and x4)) after 4 ns;
end;
