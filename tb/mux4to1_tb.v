//test bench for 4:1 using 2:1 mux;
module mux4to1_tb();
reg [3:0]in;
reg [1:0] s;
wire y;
mux4to1 DUT(in, s, y);

integer i;
initial 
	begin
		for(i = 0; i < 64; i = i + 1)
		begin
			{in, s} = i;
			#5;
		end
	end
	
initial #120 $finish;
endmodule 
