
module priority_encoder(in,out, enable);
input [7:0] in;
output [2:0] out;
wire w1, w2, w3;
input enable;
or o1(w1,in[4],in[5],in[6],in[7]);
or o2(w2,in[2],in[3],in[6],in[7]);
or o3(w3,in[1],in[3],in[5],in[7]);

and a1(out[2],w1,en);
and a2(out[1],w2,en);
and a3(out[0],w3,en);
endmodule 

