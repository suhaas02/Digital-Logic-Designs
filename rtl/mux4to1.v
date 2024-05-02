module mux4to1(i, s, y);
input [3:0] i;
input [1:0] s;
//input i0, i1, i2, i3, s0, s1;
output y;
wire w1, w2;
mux2to1 m1 (s[0],w1, i[0], i[1]);
mux2to1 m2(s[0], w2, i[2], i[3]);
mux2to1 m3(s[1], y, w1, w2);
endmodule 
