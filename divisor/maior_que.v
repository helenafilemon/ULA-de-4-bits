module maior_que(maior, A, B);
	input [3:0] A, B;
	output [3:0] maior;
	
	wire ab3, ba3, aeb3;
	wire ab2, ba2, aeb2;
	wire ab1, ba1, aeb1;
	wire ab0, ba0, aeb0;

	wire ab, ba, aeb;

	/*
	 comparacao dos bits mais significativos (MSB)
	*/
	
	// comparacao do bit 3
	xor Xor3(aeb3, A[3], B[3]);
	not nXor3 (aeb3inv, aeb3);
	and And_ab3 (ab3, A[3], aeb3inv); // A[3] > B[3] quando A[3]=1 e B[3]=0
	and And_ba3 (ba3, B[3], aeb3inv); // B[3] > A[3] quando B[3]=1 e A[3]=0

	// comparacao do bit 2, dependendo do bit 3
	xor Xor2 (aeb2, A[2], B[2]);
	not nXor2 (aeb2inv, aeb2);
	and And_ab2 (ab2, aeb3inv, aeb2inv, A[2]); // A[2] > B[2] se B[3]=A[3] e A[2]=1, B[2]=0
	and And_ba2 (ba2, aeb3inv, aeb2inv, B[2]); // B[2] > A[2] se B[3]=A[3] e B[2]=1, A[2]=0
	
	// comparacao do bit 1
	xor Xor1(aeb1, A[1], B[1]);
	not nXor1 (aeb1inv, aeb1);
	and And_ab1 (ab1, A[1], aeb1inv);
	and And_ba1 (ba1, B[1], aeb1inv);
	
	// comparacao do bit 0
	xor Xor0(aeb0, A[0], B[0]);
	not nXor0 (aeb0inv, aeb0);
	and And_ab0 (ab0, A[0], aeb0inv);
	and And_ba0 (ba0, B[0], aeb0inv);


	// se A > B no bit 3 -> A é o maior
	// se A = B no bit 3, olhar no bit 2, etc
	assign ab = ab3 || (aeb3 && (ab2 || (aeb2 && (ab1 || (aeb1 && ab0)))));
	assign ba = ba3 || (aeb3 && (ba2 || (aeb2 && (ba1 || (aeb1 && ba0)))));

	// abx é A > B no bit x, e aebx é A = B no bit x

	// mux para selecionar a saida
	assign maior = ab ? A : B;

endmodule