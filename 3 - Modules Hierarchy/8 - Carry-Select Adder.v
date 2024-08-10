module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] cout,cout1;
    wire [15:0] sum1,sum2;
    
    add16 adder1(a[15:0],b[15:0],0,sum[15:0],cout);
    add16 add_sel0(a[31:16],b[31:16],0,sum1,cout1);
    add16 add_sel1(a[31:16],b[31:16],1,sum2,cout1);
                     
    always @(cout or sum1 or sum2)begin
        case(cout)
            0 : sum[31:16] = sum1;
            1 : sum[31:16] = sum2;
        endcase
    end

endmodule
