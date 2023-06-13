module CSA_tb();

    reg [3:0] A;
    reg [3:0] B;
    reg C_in;
    wire [3:0] S;
    wire C_out;  
    integer i,j;

    CSA_4bit bit4_CSA(.A(A),.B(B),.C_in(C_in),.S(S),.C_out(C_out));

    initial begin

        A = 0;
        B = 0;
        C_in = 0;

      for(i=0;i<16;i=i+1) begin
            for(j=0;j<16;j=j+1) begin
                 A = i;
                 B = j;
                 #10;
            end  
      end

      C_in = 1; 

      for(i=0;i<16;i=i+1) begin
            for(j=0;j<16;j=j+1) begin
                 A = i;
                 B = j;
                 #10;
            end  
      end 

   end
    
endmodule
