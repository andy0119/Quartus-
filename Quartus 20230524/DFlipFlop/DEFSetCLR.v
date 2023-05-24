module DEFSetCLR(D,CLK,presetN,clearN,Q);
input D,CLK,presetN,clearN;
output reg Q;

always @(posedge CLK or negedge presetN or negedge clearN)
	begin
		if (~presetN) Q<=1'b1;
		else if (~clearN) Q <=1'b0;
		else Q <= D;
		end
endmodule
