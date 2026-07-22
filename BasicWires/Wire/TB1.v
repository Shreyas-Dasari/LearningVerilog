`timescale 1ns / 1ps

module TB1;

reg in;
wire out;

wre dut (
    .in(in),
    .out(out)
);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, TB1);

        in = 1'b0; #10;
        in = 1'b1; #10;

        $finish;
    end
endmodule