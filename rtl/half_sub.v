//half subtractor 
//
module half_sub (a, b, diff, borrow);
input a, b;
output diff, borrow;

//gate level modelling
//xor(diff, a, b); 
//and(borrow, ~a, b);

//data flow modelling
assign diff = a ^ b;
assign borrow = ~a & b;

endmodule


