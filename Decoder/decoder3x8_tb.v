module decoder3x8_tb();
  reg en;
  reg [2:0]A;
  wire [7:0]Y;
  integer i;

decoder3x8 DCD(A,en,Y);
 
initial begin 
    en = 0; A = 3'bxxx;#10;
    for(i=0;i<8;i=i+1) 
     begin
	en=1; A = i; #10;
     end
  end
endmodule