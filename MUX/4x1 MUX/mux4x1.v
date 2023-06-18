module mux4x1(input i0,i1,i2,i3,input [1:0]s, output reg y ); 
	always @(*) begin
		case(s)
		2'b00 : y = i0;
		2'b01 : y = i1;
		2'b10 : y = i2;
		2'b11 : y = i3;
		endcase
	end
endmodule 


		
