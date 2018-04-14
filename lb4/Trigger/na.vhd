library ieee;
use ieee.std_logic_1164.all;

entity na is
	port (x1, x2:in std_logic;
		 y:out std_logic);
end;

architecture beh of na is
begin
y<=x1 nand x2 after 2 ns;
end;