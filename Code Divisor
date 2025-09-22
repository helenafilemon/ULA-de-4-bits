module Divisor2(
   input Cin,
   input [3:0] A,
   input [3:0] B,
   output [4:0] S,
   output Erro);

    wire [3:0] nB;

    not (nB[0],B[0]);
    not (nB[1],B[1]);
    not (nB[2],B[2]);
    not (nB[3],B[3]);
    and (Erro, nB[3], nB[2], nB[1], nB[0]);

    Divisor_S0 (.Cin(Cin), .A(A), .B(B), .S0(S[0]));
    Divisor_S1 (.Cin(Cin), .A(A), .B(B), .S1(S[1]));
    Divisor_S2 (.Cin(Cin), .A(A), .B(B), .S2(S[2]));
    Divisor_S3 (.Cin(Cin), .A(A), .B(B), .S3(S[3]));
    Divisor_S4 (.Cin(Cin), .A(A), .B(B), .S4(S[4]));

endmodule

module Divisor_S0 (
   input Cin,
   input [3:0] A,
   input [3:0] B,
   output S0);

   wire nCin;
   wire [3:0] nA;
   wire [3:0] nB;

   not (nCin, Cin);
   not (nA[0], A[0]);
   not (nA[1], A[1]);
   not  (nA[2], A[2]);
   not  (nA[3], A[3]);
   not  (nB[0], B[0]);
   not  (nB[1], B[1]);
   not  (nB[2], B[2]);
   not  (nB[3], B[3]);

   wire t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19,
        t20, t21, t22, t23, t24, t25, t26, t27, t28, t29, t30, t31, t32, t33, t34, t35, t36, t37,
        t38, t39, t40, t41, t42, t43, t44, t45, t46, t47, t48, t49;
            
   and (t1, nCin, A[0], nB[3], nB[2], nB[1], B[0]);
   and (t2, nCin, A[1], nB[3], nB[2], B[1], nB[0]);
   and (t3, A[1], nA[0], nB[3], nB[2], B[1], nB[0]);
   and (t4, nCin, nA[2], A[1], A[0], nB[3], nB[2], B[1]);
   and (t5, nA[3], A[2], nA[1], nA[0], nB[3], nB[2], B[1], B[0]);
   and (t6, A[2], nA[1], nB[3], B[2], nB[1], nB[0]);
   and (t7, A[2], nA[0], nB[3], B[2], nB[1], nB[0]);
   and (t8, nCin, nA[3], A[2], nA[1], A[0], nB[3], nB[2], B[0]);
   and (t9, nA[3], A[2], nA[1], A[0], nB[3], B[2], nB[1]);
   and (t10, nA[3], A[2], A[1], nA[0], nB[3], B[2], nB[1]);
   and (t11, nA[3], A[2], A[1], nB[3], B[2], B[1], nB[0]);
   and (t12, nCin, nA[3], A[2], A[1], A[0], nB[3], B[2]);
   and (t13, nCin, A[2], A[1], A[0], nB[3], B[2], nB[1]);
   and (t14, nCin, A[3], nA[2], nA[1], nB[3], B[2], B[0]);
   and (t15, nCin, A[3], nA[2], nB[3], B[2], B[1]);
   and (t16, A[3], nA[2], nA[1], nB[3], B[2], B[1]);
   and (t17, nCin, A[3], nA[1], nB[3], B[2], B[1], B[0]);
   and (t18, A[3], nA[2], nB[3], B[2], B[1], B[0]);
   and (t19, A[3], nA[1], nA[0], nB[3], B[2], B[1], B[0]);
   and (t20, A[3], nA[2], B[3], nB[2], nB[1], nB[0]);
   and (t21, A[3], nA[2], nA[1], A[0], nB[3], B[1], B[0]);
   and (t22, A[3], nA[2], A[0], B[3], nB[2], nB[1]);
   and (t23, A[3], nA[2], A[1], nA[0], nB[3], B[1]);
   and (t24, nCin, A[3], A[1], B[3], nB[2], nB[1]);
   and (t25, A[3], nA[2], A[1], B[3], nB[2], nB[0]);
   and (t26, nCin, A[3], A[1], A[0], nB[2], B[1]);
   and (t27, A[3], A[2], nA[1], B[3], nB[2]);
   and (t28, A[3], A[2], nA[0], B[3], nB[2]);
   and (t29, A[3], A[2], B[3], B[2], nB[1], nB[0]);
   and (t30, A[3], A[2], nA[1], A[0], B[3], nB[1]);
   and (t31, A[3], A[2], A[1], nA[0], B[3], nB[1]);
   and (t32, A[3], A[2], A[1], B[3], B[1], nB[0]);
   and (t33, A[3], A[2], A[1], A[0], B[3], B[0]);
   and (t34, Cin, nA[0], nB[3], nB[2], nB[1], B[0]);
   and (t35, Cin, nA[1], A[0], nB[3], nB[2], B[1], nB[0]);
   and (t36, Cin, nA[3], nA[2], A[1], nB[3], nB[2], B[1], B[0]);
   and (t37, Cin, nA[2], A[1], A[0], nB[3], B[2], nB[1], nB[0]);
   and (t38, Cin, nA[3], A[2], nB[3], B[2], nB[1], B[0]);
   and (t39, Cin, nA[3], A[2], nA[1], A[0], nB[3], B[2], nB[0]);
   and (t40, Cin, A[2], A[1], nB[3], B[2], nB[1], B[0]);
   and (t41, Cin, nA[3], A[2], A[1], nB[3], B[2], B[1]);
   and (t42, Cin, nA[3], A[2], A[1], A[0], B[3], nB[2], nB[1], nB[0]);
   and (t43, Cin, A[3], nA[2], nA[1], nA[0], nB[3], B[0]);
   and (t44, Cin, A[3], nA[2], B[3], nB[2], nB[1]);
   and (t45, Cin, A[3], nA[2], A[0], B[3], nB[2], nB[0]);
   and (t46, Cin, A[3], nA[2], A[1], B[3], nB[2]);
    and (t47, Cin, A[3], nA[2], A[1], A[0], B[3], nB[1], nB[0]);
   and (t48, Cin, A[3], A[2], B[3], B[2], nB[1]);
   and (t49, Cin, A[3], A[2], nA[1], A[0], B[3], nB[0]);

   or (S0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19,
       t20, t21, t22, t23, t24, t25, t26, t27, t28, t29, t30, t31, t32, t33, t34, t35, t36, t37,
         t38, t39, t40, t41, t42, t43, t44, t45, t46, t47, t48, t49);

endmodule


module Divisor_S1(
    input Cin,
    input [3:0] A,
    input [3:0] B,
    output S1);
    
    wire nCin;
    wire [3:0] nA;
    wire [3:0] nB;
    wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23;
    
    not (nCin,Cin);
    not (nA[0],A[0]);
    not (nA[1],A[1]);
    not (nA[2],A[2]);
    not (nA[3],A[3]);
    not (nB[0],B[0]);
    not (nB[1],B[1]);
    not (nB[2],B[2]);
    not (nB[3],B[3]);
    
    and (t1,nCin,A[1],nB[3],nB[2],nB[1],B[0]);
    and (t2,A[1],nA[0],nB[3],nB[2],nB[1],B[0]);
    and (t3,nCin,A[2],nB[3],nB[2],B[1],nB[0]);
    and (t4,A[2],nA[1],nB[3],nB[2],B[1],nB[0]);
    and (t5,A[2],nA[0],nB[3],nB[2],B[1],nB[0]);
    and (t6,nA[3],A[2],A[1],nB[3],nB[2],B[1],B[0]);
    and (t7,A[3],nA[2],nA[1],nB[3],nB[2],B[1],B[0]);
    and (t8,A[3],nA[2],nB[3],B[2],nB[1],nB[0]);
    and (t9,nCin,A[3],nA[2],A[1],nB[3],nB[2],B[0]);
    and (t10,A[3],nA[2],A[1],nA[0],nB[3],nB[2],B[0]);
    and (t11,A[3],A[1],nB[3],B[2],nB[1],B[0]);
    and (t12,A[3],A[2],nA[1],nB[3],B[2],nB[1]);
    and (t13,A[3],A[2],nB[3],B[2],B[1],nB[0]);
    and (t14,nCin,A[3],A[2],A[1],nB[3],B[2]);
    and (t15,A[3],A[2],A[1],nA[0],nB[3],B[2]);
    and (t16,Cin,nA[1],A[0],nB[3],nB[2],nB[1],B[0]);
    and (t17,Cin,nA[2],A[1],A[0],nB[3],nB[2],B[1],nB[0]);
    and (t18,Cin,nA[3],A[2],nA[1],A[0],nB[3],nB[2],B[1]);
    and (t19,Cin,nA[3],A[2],A[1],A[0],nB[3],B[2],nB[1],nB[0]);
    and (t20,Cin,A[3],nA[2],A[0],nB[3],B[2],nB[1]);
    and (t21,Cin,A[3],nA[2],A[1],A[0],nB[3],B[2],nB[0]);
    and (t22,Cin,A[3],A[2],A[0],nB[3],B[2],B[1]);
    and (t23,Cin,A[3],A[2],A[1],A[0],B[3],nB[2],nB[1],nB[0]);
    
    or (S1,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t20,t21,t22,t23);
    
endmodule


module Divisor_S2(
    input Cin,
    input [3:0] A,
    input [3:0] B,
    output S2);

    wire nCin;
    wire [3:0] nA;
    wire [3:0] nB;
    wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12;

    not (nCin,Cin);
    not (nA[0],A[0]);
    not (nA[1],A[1]);
    not (nA[2],A[2]);
    not (nA[3],A[3]);
    not (nB[0],B[0]);
    not (nB[1],B[1]);
    not (nB[2],B[2]);
    not (nB[3],B[3]);

    and (t1,nCin,A[2],nB[3],nB[2],nB[1],B[0]);
    and (t2,A[2],nA[1],nB[3],nB[2],nB[1],B[0]);
    and (t3,A[2],nA[0],nB[3],nB[2],nB[1],B[0]);
    and (t4,nCin,A[3],nB[3],nB[2],B[1],nB[0]);
    and (t5,A[3],nA[2],nB[3],nB[2],B[1],nB[0]);
    and (t6,A[3],nA[1],nB[3],nB[2],B[1],nB[0]);
    and (t7,A[3],nA[0],nB[3],nB[2],B[1],nB[0]);
    and (t8,A[3],A[2],nB[3],nB[2],B[1],B[0]);
    and (t9,Cin,nA[2],A[1],A[0],nB[3],nB[2],nB[1],B[0]);
    and (t10,Cin,nA[3],A[2],A[1],A[0],nB[3],nB[2],B[1],nB[0]);
    and (t11,Cin,A[3],nA[2],A[1],A[0],nB[3],nB[2],B[1]);
    and (t12,Cin,A[3],A[2],A[1],A[0],nB[3],B[2],nB[1],nB[0]);

    or (S2,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12);

endmodule


module Divisor_S3(
    input Cin,
    input [3:0] A,
    input [3:0] B,
    output S3);

    wire nCin;
    wire [3:0] nA;
    wire [3:0] nB;
    wire t1,t2,t3,t4,t5,t6;

    not (nCin,Cin);
    not (nA[0],A[0]);
    not (nA[1],A[1]);
    not (nA[2],A[2]);
    not (nA[3],A[3]);
    not (nB[0],B[0]);
    not (nB[1],B[1]);
    not (nB[2],B[2]);
    not (nB[3],B[3]);

    and (t1,nCin,A[3],nB[3],nB[2],nB[1],B[0]);
    and (t2,A[3],nA[2],nB[3],nB[2],nB[1],B[0]);
    and (t3,A[3],nA[1],nB[3],nB[2],nB[1],B[0]);
    and (t4,A[3],nA[0],nB[3],nB[2],nB[1],B[0]);
    and (t5,Cin,nA[3],A[2],A[1],A[0],nB[3],nB[2],nB[1],B[0]);
    and (t6,Cin,A[3],A[2],A[1],A[0],nB[3],nB[2],B[1],nB[0]);

    or (S3,t1,t2,t3,t4,t5,t6);

endmodule


module Divisor_S4(input Cin,
    input [3:0] A,
    input [3:0] B,
    output S4);

    wire [3:0] nB;

    not (nB[0],B[0]);
    not (nB[1],B[1]);
    not (nB[2],B[2]);
    not (nB[3],B[3]);

    and (S4, Cin, A[3], A[2], A[1], A[0], nB[3], nB[2], nB[1], B[0]);

endmodule

