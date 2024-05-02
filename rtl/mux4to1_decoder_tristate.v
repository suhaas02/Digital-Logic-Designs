module mux4to1_decoder_tristate(select, in, y);
input [1:0] select;
input [3:0] in;
output wor y;
wire [3:0] w;
wire [3:0] tout;

dec2to4 d1(select, w);

//now tristate buffer.
tristate_buffer b3(w[3], in[3], tout[3]);
tristate_buffer b2(w[2], in[2], tout[2]);
tristate_buffer b1(w[1], in[1], tout[1]);
tristate_buffer b0(w[0], in[0], tout[0]); 

assign y = tout[0];
assign y = tout[1];
assign y = tout[2];
assign y = tout[3];

endmodule 
