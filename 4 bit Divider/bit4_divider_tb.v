module bit4_divider_tb();       
   reg [3:0]A,B;
   wire [3:0]Q,R;
     
   bit4_divider DVD(A,B,Q,R);
   initial
   begin 
     A=4'b1100;  B=4'b10; #50;
     A=4'b1111;  B=4'b10; #50;
     A=4'b1111;  B=4'b11; #50;
     A=4'b1110;  B=4'b111; #50;
     A=4'b1010;  B=4'b100; #50;
     A=4'b1111;  B=4'b1000; #50;

   end 
endmodule
