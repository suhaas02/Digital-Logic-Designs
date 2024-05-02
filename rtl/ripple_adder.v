/*
module ripple_adder(a, b, cin, s);
input [3:0] a;
input [3:0] b;
input cin;
output [3:0]s;
//input a1, b1, a2, b2, a3, b3, a4, b4, cin;
//output s0, s1, s2, s3;
wire c0, c1, c2, c3;
full_adder f1(a[0], b[0], cin, s[0], c0);
full_adder f2(a[1], b[1], c0, s[1], c1);
full_adder f3(a[2], b[2], c1, s[2], c2);
full_adder f4(a[3], b[3], c2, s[3], c3);
endmodule 

*/
module full_adder_dflow(a_in,
                  b_in,
		  c_in,
		  sum_out,
		  carry_out);
		  
		  
input a_in,b_in,c_in;
output sum_out,carry_out; 

assign sum_out = a_in^b_in^c_in;
assign carry_out= (a_in&b_in) |(b_in&c_in)|(c_in&a_in);
endmodule