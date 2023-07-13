module async_4bit_down_counter(clk, J,K,Q,Q_bar);
input clk;
input [3:0]J,K;
output [3:0]Q,Q_bar;

jk_ff JK1(clk,J[0],K[0],Q[0],Q_bar[0]);
jk_ff JK2(Q[0],J[1],K[1],Q[1],Q_bar[1]);
jk_ff JK3(Q[1],J[2],K[2],Q[2],Q_bar[2]);
jk_ff JK4(Q[2],J[3],K[3],Q[3],Q_bar[3]);

endmodule


module jk_ff(clk,J,K, q,q_bar);
input clk,J,K;
output reg q;
output q_bar;

always@(negedge clk)
begin
  case({J,K})
    2'b00: q <= q;
  2'b01: q <= 1'b0;
  2'b10: q <= 1'b1;
  2'b11: q <= ~q;
  endcase
end

initial begin
q = 1'b1;
end
assign q_bar = ~q;
endmodule


