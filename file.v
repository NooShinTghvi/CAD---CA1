module matrix(input clk,rst,start,N,M,data, output done,overflow);
	
	
	//reg [31:0] ram [0:1023]; //2 ^ 10 = 1024
	//parameter [M-1:0] mtxArr1 [0:N-1];
	//parameter [M-1:0] mtxArr1 [N-1:0];
	reg [11 : 0] a = {1'd11,1'd10,1'd9,1'd8,1'd7,1'd6,1'd5,1'd4,1'd3,1'd2,1'd1,1'd0};
	reg [ 7 : 0] b;
	initial begin
		b  = a [7:0];
	end
 
endmodule