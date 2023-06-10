module cla_4bit_tb();
  reg [3:0]a,b;
  reg c_in;
  wire [3:0] sum;
  wire c_out;
  integer i;

  carry_look_ahead_4bit CLA_4Bit(.a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out));

  initial begin
    a = 4'b1010; 
    b = 4'b0100;     
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