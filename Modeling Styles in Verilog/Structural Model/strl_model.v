module strl_model(
    input X, Y,
    output F_and,
    output F_or,
    output F_xor,
    output F_not,
    output F_nand,
    output F_nor,
    output F_xnor);
	 
    assign F_and = X&Y;
    assign F_or = X|Y;
    assign F_xor = X^Y;
    assign F_not = ~X;
    assign F_nand = ~(X&Y);
    assign F_nor = ~(X|Y);
    assign F_xnor = ~(X^Y);
	 
endmodule 
