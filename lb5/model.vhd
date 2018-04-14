library work;
use work.pack.all;

entity model is
	port(a:in ai;
	     b, c:out ai);
end;

architecture beh of model is

function sortirovka(in_a: ai) return ai is
variable out_a:ai:=in_a;
variable r: integer;
begin

for i in 1 to n loop

	if (out_a(i)>=0) then
		for j in 1 to n loop
			if (out_a(j)>=0 and out_a(i)<out_a(j)) then	
				r:=out_a(i);
				out_a(i):=out_a(j);
				out_a(j):=r;
			end if;

		end loop;
	end if;

end loop;

return out_a;

end sortirovka; 



procedure sortirovka2
	(signal in_a: in ai;
	 signal outa: out ai) is
variable out_a:ai:=in_a;
variable r: integer;
begin

for i in 1 to n loop

	if (out_a(i)>=0) then
		for j in 1 to n loop
			if (out_a(j)>=0 and out_a(i)<out_a(j)) then	
				r:=out_a(i);
				out_a(i):=out_a(j);
				out_a(j):=r;
			end if;

		end loop;
	end if;

end loop;

outa<=out_a;
end procedure;




begin
b<=sortirovka(a);
sortirovka2(a, c);
end;

