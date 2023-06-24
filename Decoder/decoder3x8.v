module decoder3x8(A,en, Y);
input en;
input [2:0]A;
output reg [7:0]Y;
always@(*)
begin
if(en)
 begin
 Y[0] =  ~A[2] & ~A[1] & ~A[0];
 Y[1] =  ~A[2] & ~A[1] &  A[0];
 Y[2] =  ~A[2] &  A[1] & ~A[0];
 Y[3] =  ~A[2] &  A[1] &  A[0];
 Y[4] =   A[2] & ~A[1] & ~A[0];
 Y[5] =   A[2] & ~A[1] &  A[0];
 Y[6] =   A[2] &  A[1] & ~A[0];
 Y[7] =   A[2] &  A[1] &  A[0];
 end
else
 Y = 8'b0;
end
endmodule
