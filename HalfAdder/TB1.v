`timescale 1ns / 1ps

module TB1;

reg a;
reg b;
wire sum;
wire carry;

HalfAdd dut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
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
