module full_sub(a, b, bin, diff, bout);
input a, b, bin;
output diff, bout;
wire w1, w2, w3;

//instantiting half adder;
half_sub s1 (a, b, w1, w2);
half_sub s2(w1, bin, diff, w3);
or or1(bout, w3, w2);

endmodule 

