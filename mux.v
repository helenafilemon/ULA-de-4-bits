/*mux*/
module mux (F, I0, I1, I2, I3, S0, S1);
	input I0, I1, I2, I3, S0, S1;
	output F;
	
	wire not_S0, not_S1;
	
	not(not_S0, S0);
	not(not_S1, S1);
	
	wire and_out0, and_out1, and_out2, and_out3;
	
	and(and_out0, I0, not_S1, not_S0);
	and(and_out1, I1, not_S1, S0);
	and(and_out2, I2, S1, not_S0);
	and(and_out3, I3, S1, S0);
	
	or(F, and_out0, and_out1, and_out2, and_out3);
	
endmodule