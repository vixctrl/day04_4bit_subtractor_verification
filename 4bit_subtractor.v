module full_subtractor (
    input A, B, Bin,
    output Diff, Bout
);
    assign Diff = A ^ B ^ Bin;
    assign Bout = (~A & B) | (Bin & ~A) | (Bin & B);
endmodule

module subtractor_4bit (
    input  [3:0] A, B,
    input        Bin,
    output [3:0] Diff,
    output       Bout
);

    wire b1, b2, b3;

    full_subtractor FS0 (A[0], B[0], Bin,  Diff[0], b1);
    full_subtractor FS1 (A[1], B[1], b1,   Diff[1], b2);
    full_subtractor FS2 (A[2], B[2], b2,   Diff[2], b3);
    full_subtractor FS3 (A[3], B[3], b3,   Diff[3], Bout);

endmodule
