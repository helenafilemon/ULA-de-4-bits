module opLogicoOR(S, A, B);
	input [3:0] A, B;
	output [3:0] S;
	
	or Or0(S[0], A[0], B[0]);
	or Or1(S[1], A[1], B[1]);
	or Or2(S[2], A[2], B[2]);
	or Or3(S[3], A[3], B[3]);
	
endmodule
