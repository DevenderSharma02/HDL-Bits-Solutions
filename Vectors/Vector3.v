module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );

      // Intermediate 32-bit vector
    wire [31:0] intermediate;

    // Concatenate inputs and add two 1 bits at the end
    assign intermediate = {a, b, c, d, e, f, 2'b11};

    // Split the intermediate vector into four 8-bit output vectors
    assign w = intermediate[31:24];
    assign x = intermediate[23:16];
    assign y = intermediate[15:8];
    assign z = intermediate[7:0];
  
endmodule
