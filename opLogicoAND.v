module opLogicoAND(S, A, B);
	input [3:0] A, B;
	output [3:0] S;
	
	and And0(S[0], A[0], B[0]);
	and And1(S[1], A[1], B[1]);
	and And2(S[2], A[2], B[2]);
	and And3(S[3], A[3], B[3]);
	
endmodule
