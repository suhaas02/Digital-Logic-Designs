module bidir_buffer_tb();
//declaring the ports
wire a,b;
reg en;
reg a1, b1;

//instantiation -> Design under test;
bidirectional_buffer DUT(a, b, en);
assign a = en ? a1 : 1'bz;
assign b = ~en ? b1 : 1'bz;
integer i;
//assigning different inputs to check the output behaviour
initial 
	begin
		for(i = 0; i < 8; i = i + 1)
			begin
				{a1, b1, en} = i;
				#10;
			end
	end
	
initial
	$monitor("a = %b, b = %b, enable = %b", a, b, en);

initial #100 $finish;
endmodule 


