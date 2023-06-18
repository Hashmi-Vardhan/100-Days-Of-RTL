module mux2x1_tb();
    reg s,i0,i1;
    wire y;
    integer i;
  mux2x1 MX1(s,i0,i1,y);
  initial begin
    for(i=0;i<8;i=i+1)
      begin
        {s,i0,i1} = i;
        #10;
      end
  end
endmodule