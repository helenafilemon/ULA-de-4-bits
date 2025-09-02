module opLogicoXOR(W, X, Y, Z, A, B, C, D, E, F, G, H);
	input A, B, C, D;
	input E, F, G, H;
	output W, X, Y, Z;
	
	xor Xor0(W, A, E);
	xor Xor1(X, B, F);
	xor Xor2(Y, C, G);
	xor Xor3(Z, D, H);
	
endmodule