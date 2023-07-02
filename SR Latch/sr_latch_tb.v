module sr_latch_tb();
reg S, R;     
wire Q, Q_bar;
sr_latch latch(S, R, Q, Q_bar);
initial begin

    S=0; R=1; #10; // RESET
    S=0; R=0; #10; // MEMORY STATE
    
    S=1; R=0; #10; // SET
    S=0; R=0; #10; // MEMORY STATE
    
    S=1; R=1; #10; // INVALID
    S=0; R=0; #10; // MEMORY STATE
    
end
endmodule
