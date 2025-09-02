module subtrator_4bits(Bout, W, X, Y, Z, A, B, C, D, E, F, G, H, Bin);
    input A, B, C, D;
    input E, F, G, H;
    input Bin;
    output W, X, Y, Z;
    output Bout;

    wire b0, b1, b2;

    subtrator_completo sub0 (
        .A(A),
        .B(E),
        .Bin(Bin),
        .Diferenca(W),
        .Bout(b0)
    );

    subtrator_completo sub1 (
        .A(B),
        .B(F),
        .Bin(b0),
        .Diferenca(X),
        .Bout(b1)
    );

    subtrator_completo sub2 (
        .A(C),
        .B(G),
        .Bin(b1),
        .Diferenca(Y),
        .Bout(b2)
    );

    subtrator_completo sub3 (
        .A(D),
        .B(H),
        .Bin(b2),
        .Diferenca(Z),
        .Bout(Bout)
    );

endmodule