module top_module (
	input a,
	input b,
	output out
);

// Create an instance of "mod_a" named "inst1", and connect ports by name:
	mod_a inst1 ( 
		.in1(a), 	
		.in2(b),			
                .out(out)									            );


// Create an instance of "mod_a" named "inst2", and connect ports by position:
//	mod_a inst2 ( a, b, out );
	
endmodule
