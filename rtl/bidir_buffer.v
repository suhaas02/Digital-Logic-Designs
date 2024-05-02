module bidirectional_buffer(a, b, en);

inout a, b;
output en;
bufif1 b1(b, a, en);
bufif0 b2(a, b, en);

endmodule 

