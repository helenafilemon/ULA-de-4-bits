module somador_4bits(S1, S2, S3, S4, Cout, A, B, C, D, E, F, G, H, Cin);
	input A, B, C, D;
	input E, F, G, H;
	input Cin;
	output S1, S2, S3, S4;
	output Cout;
	
	wire C_conexao;
	
	somador_2bits somador3(
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.Cin(Cin),
		.S1(S1),
		.S2(S2),
		.Cout(C_ligacao)
	);
	
	somador_2bits somador4(
		.A(E),
		.B(F),
		.C(G),
		.D(H),
		.Cin(C_ligacao),
		.S1(S3),
		.S2(S4),
		.Cout(Cout)
	);
	
endmodule