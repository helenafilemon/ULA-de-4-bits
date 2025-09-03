module somador_2bits(S1, S2, Cout, A, B, C, D, Cin);
	input A, B;
	input C, D;
	input Cin;
	output S1, S2;
	output Cout;
	
	wire C_ligacao;
	
	Rot2Ckt1 somador1(
		.A(A),
		.B(B),
		.Cin(Cin),
		.S(S1),
		.Cout(C_ligacao)
	);
	
	Rot2Ckt1 somador2(
		.A(C),
		.B(D),
		.Cin(C_ligacao),
		.S(S2),
		.Cout(Cout)
	);
	
endmodule