module matmul(clk,a,b,c); 
	input clk,a,b; 
	output reg c; 
	reg sum; 
	reg ra[3:0][3:0]; 
	reg rb[3:0][3:0]; 
	reg rc[3:0][3:0]; 
	integer i1,i2,i3,j1,j2,j3,k; 
 
 
	always@(posedge clk) begin
		for(i1=0;i1<=3;i1=i1+1) begin 
			for(j1=0;j1<=3;j1=j1+1) begin 
				ra[i1][j1]=a; 
				rb[i1][j1]=b; 
			end 
		end 
	end
	always@(posedge clk) begin
		for(i2=0;i2<=3;i2=i2+1) begin 
			for(j2=0;j2<=3;j2=j2+1) begin 
				sum=1'b0; 
				for(k=0;k<=3;k=k+1) begin 
					sum=sum^ra[i2][k]*rb[k][j2]; 
				end 
				rc[i2][j2]=sum; 
			end 
		end 
	end
 
	always@(posedge clk) 
		for(i3=0;i3<=3;i3=i3+1) 
			for(j3=0;j3<=3;j3=j3+1) 
				c=rc[i3][j3]; 
endmodule