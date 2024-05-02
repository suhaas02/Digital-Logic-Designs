/*
module sop_function(
    input a,
    input b,
    input c,
    input d,
    output out
);

// SOP expression: f(a, b, c, d) = SOP(2, 3, 7, 8, 9)
assign out = (a & ~b & c & ~d) | (~a & b & c & ~d) | (a & b & ~c & ~d) | (a & b & c & ~d) | (a & b & ~c & d);

endmodule

*/
/*
module test();
reg a, b, c, d, e;
initial 
begin
	a = 1'bx;
	b = 1'bx;
	c = 1'bx;
	d = 1'bx;
	e = 1'bx;
end
initial 
	begin 
			a = #3 1'b0;
			b <= #4 1'b1;
			c <= #6 1'b0;
			d = #7 1'b1;
			e = #8 1'b0;
			end 
			
initial #50 $finish; 
endmodule 

/**/ 

/*
module test();
reg [1:0]a, b;
initial
begin
a=#10 2;
b=#20 3; 
#10 b<=1;

#20 a=0;
a<= #30 2;
#100 $finish;
end 
endmodule

*/

module main (
  output [1:0] a, b, c, d, e, f
);

  reg [1:0] a, b, c, d, e, f;

  initial begin
    fork
      #2 a = 2'b10;
      #2 b = 2'b10;
      begin 
        #2 c = 2'b10;
        #3 d = 2'b10;
        #4 e = 2'b10;
      end
      #2 f = 2'b10;
    join
  end
initial #20 $finish; 
endmodule
