module mux1 (
    input wire a,
    input wire b,
    input wire sel, 
    output wire y
); 

assign y = (sel == 1'b1) ? b : a; 

endmodule