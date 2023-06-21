module mux2x1_logics_tb();
reg A,B;
wire [6:0]Y;
integer i;

mux2x1_logics MX(A,B,Y);

initial begin
 for(i=0;i<4;i=i+1)
  begin
   {A,B}=i; #20;
  end
end
endmodule
