`timescale 1ns / 1ps 

module TB1;

reg a; 
reg b;
reg sel;
wire y; 

mux1 dut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
    
);

    initial begin 
        $dumpfile("dump.vcd");
        $dumpvars(0, TB1);

        sel = 1'b0; // if the selection is 0 then the y/the output will be a
   
        a = 1'b1; b = 1'b0; #10; 
        a = 1'b0; b = 1'b0; #10; 
   
        sel = 1'b1; // if the selection is 1 then the y/the output will be b
    
        a = 1'b0; b = 1'b0; #10;
        a = 1'b0; b = 1'b1; #10;

        $finish;
    end

endmodule 


    
    