module somadorde4bits (S, T, U, V, Cout, A, B, C, D, E, F, G, H);
	input A,B,C,D,E,F,G,H;
	output S,T,U,V,Cout;
	wire Cin_Cout1, Cin_Cout2, Cin_Cout3;
	SomadorPBL1 bit1(
		.A(A),
		.B(B),
		.Cin(1'b0),
		.S(S),
		.Cout(Cin_Cout1),
	);
	SomadorPBL1 bit2(
		.A(C),
		.B(D),
		.Cin(Cin_Cout1),
		.S(T),
		.Cout(Cin_Cout2),
	);
	SomadorPBL1 bit3(
		.A(E),
		.B(F),
		.Cin(Cin_Cout2),
		.S(U),
		.Cout(Cin_Cout3),
	);
	SomadorPBL1 bit4(
		.A(G),
		.B(H),
		.Cin(Cin_Cout3),
		.S(V),
		.Cout(Cout),
	);
endmodule 