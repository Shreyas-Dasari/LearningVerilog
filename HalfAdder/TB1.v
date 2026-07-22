`timescale 1ns / 1ps

module TB1;

reg a;
reg b;
wire [1:0] out;

top_module dut (
    .a(a),
    .b(b),
    .out(out)
);

    initial begin 
        $dumpfile("dump.vcd");
        $dumpvars(0, TB1);

        a = 1'b0; b = 1'b0; #10;

        a = 1'b1; b = 1'b0; #10;

        a = 1'b0; b = 1'b1; #10;

        a = 1'b1; b = 1'b1; #10;

        $finish;
    end
endmodule 
