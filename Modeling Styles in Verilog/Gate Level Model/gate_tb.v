module gate_tb;
    reg X,Y;
    wire F1,
    	 F2,
    	 F3,
    	 F4,
    	 F5,
    	 F6,
    	 F7;
         
    gate_model GM(X,Y, F1,F2,F3,F4,F5,F6,F7);
    initial begin
        #10 X= 1'b0; Y= 1'b0;
        #10 X= 1'b0; Y= 1'b1;
        #10 X= 1'b1; Y= 1'b0;
        #10 X= 1'b1; Y= 1'b1;
	#10;
    end
endmodule 
