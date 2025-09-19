/*mux*/

module mux (Y, I0, I1, I2, I3, I4, I5, I6, I7, S0, S1, S2);
	input I0, I1, I2, I3, I4, I5, I6, I7;
	input S0, S1, S2;
	output Y;
	
	//seletores negados
	not (not_S0, S0);
	not (not_S1, S1);
	not (not_S2, S2);
	
	// saídas das portas AND
	wire and_out0, and_out1, and_out2, and_out3, and_out4, and_out5, and_out6, and_out7;
	
	// instanciando as 7 portas AND para cada combinação de seletor
	// 000 (I0)
	and And0(and_out0, I0, not_S2, not_S1, not_S0);
	// 001 (I1)
	and And1(and_out1, I1, not_S2, not_S1, S0);
	// 010 (I2)
	and And2(and_out2, I2, not_S2, S1, not_S0);
	// 011 (I3)
	and And3(and_out3, I3, not_S2, S1, S0);
	// 100 (I4)
	and And4(and_out4, I4, S2, not_S1, not_S0);
	// 101 (I5)
	and And5(and_out5, I5, S2, not_S1, S0);
	// 110 (I6)
	and And6(and_out6, I6, S2, S1, not_S0);
	// 111 (I7) 
	and And7(and_out7, I7, S2, S1, S0);
	
	// Instanciando a porta OR final para combinar todas as saídas das portas AND
	or Or0(Y, and_out0, and_out1, and_out2, and_out3, and_out4, and_out5, and_out6, and_out7);
	
endmodule
