library work;
use work.pack.all;

entity test is
end;

architecture atest of test is
component model
	port(a:in ai;
	     b, c:out ai);
end component;

signal a, b, c: ai;
signal clk:bit:='0';
begin

m1: model port map(a, b, c);

process(clk)
begin
	a(1)<=-5;
	a(2)<=2;
	a(3)<=-2;
	a(4)<=3;
	a(5)<=5;
	a(6)<=7;
	a(7)<=2;
	a(8)<=-6;
	a(9)<=4;
	a(10)<=1;
end process;
clk<='1' after 100 ns;
--a<=c;
end;
