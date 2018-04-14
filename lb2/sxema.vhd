entity sxema is
	port(A1, A2, A3, A4, W0, W1, B1, B2, B3, B4: in bit;
	     F: out bit);
end sxema;

architecture str of sxema is

component desh 
	port (A1, A2, A3, A4, W0, W1: in bit;
	      D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15: out bit);
end component;

component mult
	port (C, A1, A2, A3, A4, A5, A6, A7, A8, B1, B2, B3: in bit;
	      Y: out bit);
end component;

component conunctor
	port (A, B:in bit;
	      Y: out bit);
end component;

signal s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18: bit;

begin 

desh1: desh port map
	(A1=>A1,
	 A2=>A2,
	 A3=>A3,
	 A4=>A4,
	 W0=>W0,
	 W1=>W1,
	 D0=>s0,
	 D2=>s2,
	 D3=>s3,
	 D4=>s4,
	 D5=>s5,
	 D6=>s6,
	 D7=>s7,
	 D8=>s8,
	 D9=>s9,
	 D10=>s10,
	 D11=>s11,
	 D12=>s12,
	 D13=>s13,
	 D14=>s14,
	 D15=>s15);

mult1: mult port map
	(C=>s16,
	 A1=>s0,
	 A2=>s1,
	 A3=>s2,
	 A4=>s3,

	 A5=>s4,
	 A6=>s5,
	 A7=>s6,
	 A8=>s7,
	 
	 B1=>B1,
	 B2=>B2,
	 B3=>B3,

	 y=>s17);

mult2: mult port map
	(C=>B4,
	 A1=>s8,
	 A2=>s9,
	 A3=>s10,
	 A4=>s11,

	 A5=>s12,
	 A6=>s13,
	 A7=>s14,
	 A8=>s15,

	 B1=>B1,
	 B2=>B2,
	 B3=>B3,

	 y=>s18);

ncon1: conunctor port map
	(A=>B4,
	 B=>B4,
	 Y=>s16);

ncon2: conunctor port map
	(A=>s17,
	 B=>s18,
	 Y=>F);
end str;