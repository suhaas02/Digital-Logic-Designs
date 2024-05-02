module ripple_adder_tb();
reg [3:0] a;
reg [3:0]b;
wire [3:0] s;
wire c0, c1, c2, c3;
reg cin;
ripple_adder DUT (a, b, cin, s);

initial 
	begin
		a[0] = 1'b0;
		a[1] = 1'b0;
		a[2] = 1'b0;
		a[3] = 1'b0;
		b[0] = 1'b0;
		b[1] = 1'b0;
		b[2] = 1'b0;
		b[3] = 1'b0;
		cin = 1'b0;
	end

integer i;
//now mapping the values;
initial 
	begin
		for(i = 0; i < 16; i = i + 1)
		begin
			{a[3], a[2], a[1], a[0]} = i;
			{b[3], b[2], b[1], b[0]} = i;
			#5;
		end
	end
/*	
initial 
	begin
		$monitor("Input: a4 = %b, a3 = %b, a2 = %b, a1 = %b, b4 = %b, b3 = %b, b2 = %b, b1 = %b, Output: s3 = %b, s2 = %b, s1 = %b, s0 = %b, cin = %b",a4, a3, a2, a1, b4, b3, b2, b1, s3, s2, s1, s0, cin) ;
	end
	*/
initial #100 $finish;
endmodule
