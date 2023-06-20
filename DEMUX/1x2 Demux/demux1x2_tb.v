module demux1x2_tb();
  reg s,d;
  wire y1,y2;
  integer i;
demux1x2 dut(s,d,y1,y2);
  initial begin
    for(i = 0;i<4;i = i+1) begin
      {s,d} = i;
        #10;
    end
  end
endmodule