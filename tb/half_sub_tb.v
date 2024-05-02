// test bench for half subtractor 

module half_sub_tb();
reg a, b;
wire borrow, diff;
integer i;
half_sub DUT(a, b, diff, borrow);

initial 
	begin
		for(i = 0; i < 4; i = i + 1)
		begin
			{a, b} = i;
			#10;
		end
	end

//now monitor the output 
initial $monitor("a = %b, b = %b, diff = %b, borrow = %b", a, b, diff, borrow);

initial #50 $finish;

endmodule 
