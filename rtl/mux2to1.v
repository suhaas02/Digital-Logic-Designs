module mux2to1(s,y, d0, d1);
input s, d0, d1;
output y;
assign y = s ? d1 : d0;
endmodule 
