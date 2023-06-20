module demux1x2(input s,input d, output reg y1,y2);
always @(*)
begin
  if(s) 
    {y2,y1} = {d,1'b0};
  else
    {y2,y1} = {1'b0,d};
end
endmodule