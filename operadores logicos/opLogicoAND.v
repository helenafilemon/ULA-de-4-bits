module opLogicoAND(W, X, Y, Z, A, B, C, D, E, F, G, H);
	input A, B, C, D;
	input E, F, G, H;
	output W, X, Y, Z;
	
	and And0(W, A, E);
	and And1(X, B, F);
	and And2(Y, C, G);
	and And3(Z, D, H);
	
endmodule