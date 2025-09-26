	module opLogicoXOR(S, A, B);
	input [3:0] A, B;
	output [3:0] S;
	
	xor Xor0(S[0], A[0], B[0]);
	xor Xor1(S[1], A[1], B[1]);
	xor Xor2(S[2], A[2], B[2]);
	xor Xor3(S[3], A[3], B[3]);
	
endmodule
