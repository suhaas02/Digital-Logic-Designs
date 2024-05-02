module mux4to1_decoder_tristate_tb();
reg [3:0] in;
reg [1:0] select;

wire y;
integer i;
mux4to1_decoder_tristate DUT(select, in, y);

initial 
	begin
		for(i = 0; i < 16; i = i + 1)
		begin
			in = i;
		 	select = i;
		 	#10;
		 end
	end
	
initial $monitor("input = %b, select = %b, output = %b", in, select, y);
initial #200 $finish;

endmodule 
