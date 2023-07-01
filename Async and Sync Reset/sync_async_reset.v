module sync_async_reset(clk,rst,A,async,sync);
input clk,rst,A;
output reg async,sync;
   
//SYNCHRONOUS RESET
    always@(posedge clk)  
    begin
        if(rst) sync <= 1'b0;
        else sync <= A;
    end

//ASYNCHRONOUS RESET
    always@(posedge clk, posedge rst)
    begin
        if(rst) async <= 1'b0;
        else async <= A;
    end  
    
endmodule
