module divisor_4bits(
    input clk,
    input rst,
    input start,
    input [3:0] dividendo,
    input [3:0] divisor,
    output [3:0] quociente,
    output [3:0] resto,
    output done
);

    // Sinais de estado atual (registradores)
    reg [7:0] temp_dividendo_reg;
    reg [3:0] quociente_reg;
    reg [2:0] contador_reg;
    reg done_reg;

    // Sinais de próximo estado (lógica combinacional)
    wire [7:0] next_temp_dividendo;
    wire [3:0] next_quociente;
    wire [2:0] next_contador;
    wire next_done;

    // Sinais auxiliares para o somador-subtrator
    wire [3:0] sub_out;
    wire borrow_out;

    // -----------------------------------------------------------
    // Lógica Combinacional (Próximo Estado e Saídas)
    // -----------------------------------------------------------

    // Instância do somador-subtrator
    somador_subtrator_4bits sub_inst(
        .a(temp_dividendo_reg[7:4]),
        .b(divisor),
        .sub(1'b1),
        .dout(sub_out),
        .cout_borrow(borrow_out)
    );

    // Lógica para 'next_temp_dividendo'
    assign next_temp_dividendo = (contador_reg < 3'd4) ? (borrow_out ? (temp_dividendo_reg << 1) : {(sub_out), (temp_dividendo_reg[3:0] << 1)}) : temp_dividendo_reg;

    // Lógica para 'next_quociente'
    assign next_quociente = (contador_reg < 3'd4) ? (borrow_out ? (quociente_reg << 1) : ((quociente_reg << 1) | 1'b1)) : quociente_reg;

    // Lógica para 'next_contador'
    assign next_contador = (contador_reg < 3'd4) ? contador_reg + 1 : contador_reg;

    // Lógica para 'next_done' e 'resto' (saídas finais)
    assign next_done = (contador_reg == 3'd4); // Done fica em '1' quando o contador atinge 4
    
    // Saídas finais que dependem do estado (lógica combinacional)
    assign resto = temp_dividendo_reg[7:4];
    assign quociente = quociente_reg;
    assign done = next_done; // Note que 'done' é um wire que segue 'next_done'

    // -----------------------------------------------------------
    // Lógica Sequencial (Atualização dos Registradores)
    // -----------------------------------------------------------
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            temp_dividendo_reg <= 8'b0;
            quociente_reg <= 4'b0;
            contador_reg <= 3'b0;
            done_reg <= 1'b0;
        end else if (start) begin
            temp_dividendo_reg <= {4'b0, dividendo};
            quociente_reg <= 4'b0;
            contador_reg <= 3'b0;
            done_reg <= 1'b0;
        end else begin
            temp_dividendo_reg <= next_temp_dividendo;
            quociente_reg <= next_quociente;
            contador_reg <= next_contador;
            done_reg <= next_done;
        end
    end
    
endmodule