module sipo(input clk,D,rst,output [3:0]Q);
d_ff DFF1(clk,D,rst,Q[3]);
d_ff DFF2(clk,Q[3],rst,Q[2]);
d_ff DFF3(clk,Q[2],rst,Q[1]);
d_ff DFF4(clk,Q[1],rst,Q[0]);
endmodule

module d_ff(input clk,d,rst, output reg q);
always@(negedge clk) begin
if(rst)
q<=1'b0;
else
q<=d;
end
endmodule

