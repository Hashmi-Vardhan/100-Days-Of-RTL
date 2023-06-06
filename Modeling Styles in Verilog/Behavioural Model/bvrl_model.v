module bvrl_model(
    input X, Y,
    output reg F_and,
    output reg F_or,
    output reg F_xor,
    output reg F_not,
    output reg F_nand,
    output reg F_nor,
    output reg F_xnor);
    always@(*)
        begin
            F_and = X&Y;
            F_or = X|Y;
	    F_xor = X^Y;
            F_not = ~X;
            F_nand = ~(X&Y);
            F_nor = ~(X|Y);
            F_xnor = ~(X^Y);
        end 
endmodule 
