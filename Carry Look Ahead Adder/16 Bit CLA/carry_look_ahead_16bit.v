module carry_look_ahead_16bit(a,b,c_in,sum,c_out);
  input [15:0]a,b;
  input c_in;
  output [15:0] sum;
  output c_out;
  wire c1,c2,c3;

  carry_look_ahead_4bit CLA1_4Bit(.a(a[3:0]), .b(b[3:0]), .c_in(c_in), .sum(sum[3:0]), .c_out(c1));
  carry_look_ahead_4bit CLA2_4Bit(.a(a[7:4]), .b(b[7:4]), .c_in(c1), .sum(sum[7:4]), .c_out(c2));
  carry_look_ahead_4bit CLA3_4Bit(.a(a[11:8]), .b(b[11:8]), .c_in(c2), .sum(sum[11:8]), .c_out(c3));
  carry_look_ahead_4bit CLA4_4Bit(.a(a[15:12]), .b(b[15:12]), .c_in(c3), .sum(sum[15:12]), .c_out(c_out));

endmodule
