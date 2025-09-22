module somadorde4bits (S, Cout, A, B, Crry);
	input [3:0] A, B;
	input Crry;
	output [3:0] S;
	output Cout;
	wire Cin_Cout1, Cin_Cout2, Cin_Cout3;
	SomadorPBL1 bit1(
		.A(A[0]),
		.B(B[0]),
		.Cin(Crry),
		.S(S[0]),
		.Cout(Cin_Cout1),
	);
	SomadorPBL1 bit2(
		.A(A[1]),
		.B(B[1]),
		.Cin(Cin_Cout1),
		.S(S[1]),
		.Cout(Cin_Cout2),
	);
	SomadorPBL1 bit3(
		.A(A[2]),
		.B(B[2]),
		.Cin(Cin_Cout2),
		.S(S[2]),
		.Cout(Cin_Cout3),
	);
	SomadorPBL1 bit4(
		.A(A[3]),
		.B(B[3]),
		.Cin(Cin_Cout3),
		.S(S[3]),
		.Cout(Cout),
	);
endmodule 
