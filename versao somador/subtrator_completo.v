module subtrator_completo(Diferenca, Bout, A, B, Bin );
	input A;
	input B;
	input Bin;
	output Diferenca;
	output Bout;

	wire w1, w2, w3, w4;

	xor (w1, A, B);
	xor (Diferenca, w1, Bin);

	not (w2, A);
	and (w3, w2, B);
	and (w4, w2, Bin);
	and (w5, B, Bin); 
	or (Bout, w3, w4, w5);

endmodule