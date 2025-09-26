module subtrator_4bits(S, Bout, A, B);
    input [3:0] A, B;
    output [3:0] S;
    output Bout;

    wire b0, b1, b2;

    subtrator_completo sub0 (
        .A(B[0]),
        .B(A[0]),
        .Bin(1'b0),
        .Diferenca(S[0]),
        .Bout(b0)
    );

    subtrator_completo sub1 (
        .A(B[1]),
        .B(A[1]),
        .Bin(b0),
        .Diferenca(S[1]),
        .Bout(b1)
    );

    subtrator_completo sub2 (
        .A(B[2]),
        .B(A[2]),
        .Bin(b1),
        .Diferenca(S[2]),
        .Bout(b2)
    );

    subtrator_completo sub3 (
        .A(B[3]),
        .B(A[3]),
        .Bin(b2),
        .Diferenca(S[3]),
        .Bout(Bout)
    );

endmodule
