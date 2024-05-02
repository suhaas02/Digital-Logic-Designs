module dec2to4_tb();
reg [1:0]in2;
wire [3:0]out4;
integer i;

dec2to4 DUT(in2, out4);
initial 
	begin
		in2[1] = 1'b0;
		in2[0] = 1'b1;
	end

initial 
	begin
		for(i = 0; i < 4; i = i + 1)
			begin
				{in2[1], in2[0]} = i;
				#10;
			end
	end
	
initial #40 $finish;
endmodule 
