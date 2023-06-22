module encoder8x3_tb();
 reg [7:0]A;
 wire [2:0]Y;
 integer j;

 encoder8x3 ENC(A,Y);
 
 initial begin
    for(j=0;j<8;j=j+1)
     begin
      A = 8'b00000001;
      A = A<<j; #10;
     end
 end
endmodule