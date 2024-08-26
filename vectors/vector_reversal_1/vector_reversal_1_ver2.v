
module top_module(
    input [7:0] in,
    output [7:0] out
);

    generate
	genvar i;
	for(i=0; i<8;i=i+1) begin
	    assign out[7-i]=in[i];
	end
    endgenerate

endmodule



/*
generate block 을 쓰면 합성 가능하다.
*/

