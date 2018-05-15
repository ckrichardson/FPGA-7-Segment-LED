module gate2 (in_a, in_b, in_c, out);
input wire in_a;
input wire in_b;
input wire in_c;
output wire [6:0] out;
assign out[6] = ((!in_c) | (in_c & ~in_b & ~in_a)); 		// boolean equation for LED segment G
assign out[5] = ~((~in_c | (in_c & in_b & in_a));		// boolean equation for LED segment F 
assign out[4] = ~((~in_c | (in_c & ~in_b & in_a));		// boolean equation for LED segment E
assign out[3] = ((in_c & ~in_b & ~in_a) | (in_a & in_b & in_c));// boolean equation for LED segment D					// boolean equation for LED segment D
assign out[2] = (in_c & ~in_b & in_a);				// boolean equation for LED segment C
assign out[1] = 0;						// boolean equation for LED segment B
assign out[0] = ~((~in_c) | (in_a ^ in_b));			// boolean equation for LED segment A
endmodule