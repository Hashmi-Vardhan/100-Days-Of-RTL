module t_using_sr(clk,rst,T,Q,Q_bar);
input clk,rst,T;
output Q,Q_bar;
wire w1,w2;

assign w1 = T & ~Q;
assign w2 = T & Q;

sr_ff SRF(clk,rst,w1,w2,Q,Q_bar);

endmodule

module sr_ff(clk,rst,S,R, q,q_bar);
input clk,rst,S,R;
output reg q;
output q_bar;

always@(posedge clk)
begin
if(!rst) begin
  case({S,R})
    2'b00: q <= q;
  2'b01: q <= 1'b0;
  2'b10: q <= 1'b1;
  2'b11: q <= 1'bx;
  endcase
end
else
q <= 1'b0;
end

assign q_bar = ~q;
endmodule
