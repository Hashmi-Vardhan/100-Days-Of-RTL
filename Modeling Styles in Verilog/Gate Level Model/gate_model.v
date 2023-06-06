module gate_model(
    input X,Y,
    output F1,
    output F2,
    output F3,
    output F4,
    output F5,
    output F6,
    output F7);
    
    and AND_1(F1, X,Y);
    or OR_2(F2, X,Y);
    xor XOR_3(F3, X,Y);
    not NOT_4(F4, X);
    nand NAND_5(F5, X,Y);
    nor NOR_6(F6, X,Y);
    xnor XNOR_7(F7, X,Y);
endmodule 
