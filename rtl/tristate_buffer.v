module tristate_buffer(enable, in, out);
input enable, in;
output out;
assign out = enable ? in : 1'bz;
endmodule 
