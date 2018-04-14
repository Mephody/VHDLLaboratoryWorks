entity sum1 is
  port(a, b:in bit_vector(1 to 2);
       c: out bit_vector(1 to 3));
end sum1;

architecture beh of sum1 is
begin
  c(3)<=(b(2) and a(2)) or (b(1) and a(2) and a(1)) or (a(1) and b(2) and b(1));
  c(2)<=(a(2) and not b(2) and not b(1)) or (a(2) and not a(1) and not b(2)) or (not a(2) and a(1) and not b(2) and b(1)) or (a(2) and a(1) and b(2) and b(1)) or (not a(2) and not a(1) and b(2)) or (not a(2) and b(2) and not b(1));
  c(1)<=(a(1) and not b(2) and not b(1)) or (a(2) and not a(1) and b(1)) or (a(1) and b(2) and not b(1)) or (not a(2) and not a(1) and b(1));
end;
