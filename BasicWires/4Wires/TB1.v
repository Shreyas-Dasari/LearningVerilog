`timescale 1ns / 1ps

module TB1;

reg a, b, c;
wire w, x, y, z;

FourWre dut (
    .a(a),
    .b(b),
    .c(c),
    .w(w),
    .x(x),
    .y(y),
    .z(z)
);

    initial begin 
        $dumpfile("dump.vcd");
        $dumpvars(0, TB1);

        a = 1'b0; b = 1'b0; c = 1'b0; #10;
        a = 1'b0; b = 1'b0; c = 1'b1; #10;
        a = 1'b0; b = 1'b1; c = 1'b0; #10;
        a = 1'b1; b = 1'b0; c = 1'b0; #10;
        a = 1'b0; b = 1'b1; c = 1'b1; #10;
        a = 1'b1; b = 1'b1; c = 1'b0; #10;
        a = 1'b1; b = 1'b0; c = 1'b1; #10;
        a = 1'b1; b = 1'b1; c = 1'b1; #10;
        

        $finish;
    end
endmodule