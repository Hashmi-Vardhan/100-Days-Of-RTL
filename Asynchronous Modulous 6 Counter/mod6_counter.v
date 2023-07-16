module mod6_counter(clk, J,K,Q);
input clk;
input [2:0]J,K;
output [2:0]Q;
wire clr;

assign clr = ~(~Q[0]&Q[1]&Q[2]);
jk_ff JK1(clk,clr,J[0],K[0],Q[0]);
jk_ff JK2(Q[0],clr,J[1],K[1],Q[1]);
jk_ff JK3(Q[1],clr,J[2],K[2],Q[2]);
endmodule


module jk_ff(clk,clr,J,K, q);
input clk,clr,J,K;
output reg q;

always@(negedge clk)
begin
if(clr) begin
  case({J,K})
    2'b00: q <= q;
  2'b01: q <= 1'b0;
  2'b10: q <= 1'b1;
  2'b11: q <= ~q;
  endcase
end
else 
q <= 1'b0;
end

initial begin
q = 1'b1;
end
endmodule


