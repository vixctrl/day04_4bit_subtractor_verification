`timescale 1ns/1ps

module tb_subtractor_4bit;

    reg  [3:0] A, B;
    reg        Bin;
    wire [3:0] Diff;
    wire       Bout;

    subtractor_4bit dut (.A(A), .B(B), .Bin(Bin), .Diff(Diff), .Bout(Bout));

    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0, tb_subtractor_4bit);

        A = 4'b0101; B = 4'b0011; Bin = 0; #10;
        A = 4'b1001; B = 4'b0101; Bin = 0; #10;
        A = 4'b1100; B = 4'b0110; Bin = 1; #10;
        A = 4'b0010; B = 4'b0100; Bin = 0; #10;

        $finish;
    end

endmodule
