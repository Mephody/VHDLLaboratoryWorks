entity umn is
  port(a, b:in bit_vector(1 to 2);
       c: out bit_vector(1 to 4));
end umn;

architecture beh of umn is
begin
  c(4)<=a(2) and a(1) and b(2) and b(1);
  c(3)<=a(2) and b(2) and (a(1) nand b(1));
  c(2)<=(a(2) and b(1) and (b(2) nand (not b(1)))) or (a(1) and b(2) and ((not b(2)) nand b(1)));
  c(1)<=a(1) and b(1);
end;
