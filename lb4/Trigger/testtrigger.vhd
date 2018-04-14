library ieee;
use ieee.std_logic_1164.all;

entity testtrigger is
end;

architecture atest of testtrigger is

component tfun
	port (r, ti, te, c:in std_logic;
		 q:out std_logic);
end component;

signal r, ti, te, c, q: std_logic;
begin

m1:tfun port map(r=>r, ti=>ti, te=>te, c=>c, q=>q);

r<='1',
   '0' after 200 ns;


--m2: process(c)
--begin
--if (c='u') then c<='0';
--	if (c='0') then c<='1';
--		elsif (c='1')then c<='0';
--		end if;
--	end if;
--wait 50 ns;
--end process;
--c<='0',
--   not c after 50 ns;
c<='0',
	'1' after 50 ns,
	'0' after 100 ns,
	'1' after 150 ns,
	'0' after 200 ns,
	'1' after 250 ns,
	'0' after 300 ns,
	'1' after 350 ns,
	'0' after 400 ns,
	'1' after 450 ns,
	'0' after 500 ns,
	'1' after 550 ns,
	'0' after 600 ns,
	'1' after 650 ns,
	'0' after 700 ns,
	'1' after 750 ns,
	'0' after 800 ns,
	'1' after 850 ns,
	'0' after 900 ns,
	'1' after 950 ns,
	'0' after 1000 ns,
	'1' after 1050 ns,
	'0' after 1100 ns,
	'1' after 1150 ns,
	'0' after 1200 ns,
	'1' after 1250 ns,
	'0' after 1300 ns,
	'1' after 1350 ns,
	'0' after 1400 ns;
te<='0',
    '1' after 400 ns;

ti<='0',
    '1' after 100 ns,
    '0' after 200 ns,
    '1' after 300 ns,
    '0' after 400 ns,
    '1' after 500 ns,
    '0' after 600 ns,
    '1' after 700 ns,
    '0' after 800 ns; 

end;
