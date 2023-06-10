module cla_16bit_tb();
  reg [15:0]a,b;
  reg c_in;
  wire [15:0] sum;
  wire c_out;
  integer i;

  carry_look_ahead_16bit CLA_16Bit(.a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out));

  initial begin
    a = 16'hfff; 
    b = 16'haaa0;     
    i = 0;
    for(i=0;i<2;i=i+1)
     begin
      c_in = 1'b0;
      #50;
      c_in = ~c_in;
      #50;
      a = a+1'b1;
    end
    $finish;
  end
endmodule
