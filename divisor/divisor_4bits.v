module divisor_4bits(quociente, resto, dividendo, divisor);
	input  [3:0] dividendo;
	input  [3:0] divisor;
	output [3:0] quociente;
	output [3:0] resto;
	
	// Declaração de registradores para armazenar os valores
	reg [3:0] quociente_reg;
	reg [3:0] resto_reg;
	
	// A lógica de divisão é executada em um bloco always_comb
	// Isso garante que a lógica seja re-executada sempre que as entradas mudarem.
	always @(dividendo, divisor) begin
		// Inicializa os registradores
		quociente_reg = 4'b0000;
		resto_reg = dividendo;

		// Evita divisão por zero
		if (divisor == 4'b0000) begin
			// Trate a divisão por zero, por exemplo, setando quociente/resto para zero ou um valor de erro.
			quociente_reg = 4'b0000;
			resto_reg = 4'b0000;
		end else begin
			// Lógica de subtrações sucessivas
			// A divisão é a contagem de quantas vezes o divisor pode ser subtraído do dividendo.
			while (resto_reg >= divisor) begin
				resto_reg = resto_reg - divisor;
				quociente_reg = quociente_reg + 1'b1;
			end
		end
	end
	
	// Conecta os registradores de saída às portas de saída
	assign quociente = quociente_reg;
	assign resto = resto_reg;

	/*wire subtracao, b0;
	reg [3:0] resto_atual;
	
	subtrator_4bits subtr (
		.A(resto),
      .B(divisor),
      .S(resto_atual),
      .Bout(b0)
	);
	
	resto = resto_atual;
	quociente = quociente + 4'b0001;
	
	if ( resto_atual >= divisor ) begin
		subtrator_4bits subtr (
			.A(resto),
			.B(divisor),
			.S(resto_atual),
			.Bout(b0)
		);
	
		resto = resto_atual;
		quociente = quociente + 4'b0001;
		
		if ( resto_atual >= divisor ) begin
			subtrator_4bits subtr (
				.A(resto),
				.B(divisor),
				.S(resto_atual),
				.Bout(b0)
			);
	
			resto = resto_atual;
			quociente = quociente + 4'b0001;
			
			if ( resto_atual >= divisor ) begin
				subtrator_4bits subtr (
					.A(resto),
					.B(divisor),
					.S(resto_atual),
					.Bout(b0)
				);
	
				resto = resto_atual;
				quociente = quociente + 4'b0001;
			end
		end
	end */


endmodule