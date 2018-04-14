library ieee;
use ieee.std_logic_1164.all;

entity n is
	port (x:in std_logic;
		 y:out std_logic);
end;

architecture beh of n is
begin
y<= not x after 1 ns;
end;
