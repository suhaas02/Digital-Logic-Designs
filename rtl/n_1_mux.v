
module mux (
	
  input [N-1:0] in,
  input [log2(N)-1:0] sel,
  output out
);
	parameter N = 4;
  assign out = in[sel];

endmodule
