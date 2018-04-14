library ieee;
use ieee.std_logic_1164.all;

entity tfun is
	port (r, ti, te, c:in std_logic;
		 q:out std_logic);
end;

architecture beh of tfun is

begin

p0:process(r, ti, te, c)
begin
	if (r='0') then 
			if (c'event and c='1') then 
					if (te='0') then q<=not ti;
					elsif (te='1') then q<=ti;
					end if;
			end if;
	else q<='0';
	end if;	
end process;

end;


