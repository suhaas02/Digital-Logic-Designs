module full_sub_tb();
reg a, b, bin;
wire bout, diff;

full_sub DUT(a, b, bin, bout, diff);

initial 
	begin
		a = 1'b0;
		b = 1'b0;
		bin = 1'b0;
	end

integer i;
initial 
	begin
		for(i = 0; i < 8; i = i + 1)
		begin
			{a, b, bin} = i;
			#10;
		end
	end

initial $display("a = %b, b = %b, bin = %b, bout = %b, diff = %b", a, b, bin, bout, diff);
initial #100 $finish;
endmodule 
	

