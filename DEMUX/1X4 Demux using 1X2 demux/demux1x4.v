module demux1x4(input [1:0]s,input d, output [3:0]y);
 wire [2:1]w;
 
demux1x2 dut1(s[0],d,w[2],w[1]);
demux1x2 dut2(s[1],w[1],y[1],y[3]);
demux1x2 dut3(s[1],w[2],y[0],y[2]);
endmodule

module demux1x2(input s,input d, output reg y1,y2);
always @(*)
begin
  if(s) 
    {y2,y1} = {d,1'b0};
  else
    {y2,y1} = {1'b0,d};
end
endmodule