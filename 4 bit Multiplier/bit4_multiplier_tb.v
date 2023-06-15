module bit4_multiplier_tb();       
   reg [3:0]A,B;      
   wire [7:0]Y; 
     
   bit4_multiplier MUL(A,B,Y);
   initial
   begin 
     A=5;  B=11; #50;
     A=7;  B=15; #50;
     A=10; B=12; #50;
     A=13; B=2;  #50;
   end 
endmodule