module top_module (
	input [7:0] in,
	output [7:0] out
);
	
	assign {out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]} = in;

 /* always @(*) begin	
		for (int i=0; i<8; i=i+1)
			out[i] = in[8-i-1];
	end
 */
  
endmodule
