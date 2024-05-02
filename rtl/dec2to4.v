module dec2to4 (in2[1:0], out4[3:0]);
input [1:0]in2;
output [3:0]out4;
assign out4[0] = ~in2[0] & ~in2[1];
assign out4[1] = in2[0] & ~in2[1];
assign out4[2] = ~in2[0] & in2[1];
assign out4[3] = in2[0] & in2[1];
endmodule 
