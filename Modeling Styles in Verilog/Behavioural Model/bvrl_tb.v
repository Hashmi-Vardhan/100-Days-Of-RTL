module bvrl_tb;
    reg X, Y;
    wire F_and,
	 F_or,
	 F_xor,
	 F_not,
	 F_nand,
	 F_nor,
	 F_xnor;
         
    bvrl_model BM(X, Y, F_and,F_or,F_xor,F_not,F_nand,F_nor,F_xnor);
    initial begin
        #10 X= 1'b0; Y= 1'b0;
        #10 X= 1'b0; Y= 1'b1;
        #10 X= 1'b1; Y= 1'b0;
        #10 X= 1'b1; Y= 1'b1;
	#10;
    end
endmodule
