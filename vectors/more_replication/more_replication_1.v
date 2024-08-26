module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
    wire [4:0] w1;
    wire [24:0] w2;
    assign w1 = {a, b, c, d, e};
    assign w2 = {~{5{a}}, ~{5{b}},~{5{c}}, ~{5{d}}, ~{5{e}}};
    assign {out[24:20], out[19:15], out[14:10], out[9:5], out[4:0]}= 
    {w2[24:20] ^ w1, w2[19:15] ^w1, w2[14:10]^w1, w2[9:5]^w1, w2[4:0]^w1};

endmodule
