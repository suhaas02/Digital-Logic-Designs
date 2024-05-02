module priority_encoder_tb();
input reg [7:0]in;
output wire [2:0] out;

integer i;
priority_encoder DUT(in, out);
initial 
	begin
		
