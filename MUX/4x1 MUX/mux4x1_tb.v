module mux4x1_tb();
  reg i0,i1,i2,i3;
  reg [1:0]s;
  wire y;
  integer i;
  mux4x1 MX41(i0,i1,i2,i3,s,y);
  initial begin
    for(i=0;i<64;i=i+1)
      begin
        {s,i0,i1,i2,i3} = i;
        #10;
      end
  end
endmodule
