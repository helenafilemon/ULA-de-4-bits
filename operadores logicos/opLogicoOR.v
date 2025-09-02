module opLogicoOR(W, X, Y, Z, A, B, C, D, E, F, G, H);
	input A, B, C, D;
	input E, F, G, H;
	output W, X, Y, Z;
	
	or Or0(W, A, E);
	or Or1(X, B, F);
	or Or2(Y, C, G);
	or Or3(Z, D, H);
	
endmodule