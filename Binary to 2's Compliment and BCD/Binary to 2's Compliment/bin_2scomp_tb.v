module bin_2scomp_tb();
reg [7:0]a;
wire [8:0] x;

bin_2scomp BNC(a,x);
initial begin  
  a = 8'b00000011;#10;
  a = 8'b01010101;#10;
  a = 8'b00000001;#10;
  a = 8'b11100101;#10;
end
endmodule
