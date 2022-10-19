`timescale 1ns / 1ps
module jk(q,qbar,clk,rst,j,k );
input j,k,clk,rst;
output reg q,qbar;
initial
begin
q=0;
qbar=1;
end
always@(posedge clk)
begin
if (rst==1)
q=0;
else if (j==0 && k==0)
begin
q<=q;
qbar<=~q;
end 
else if (j==0 && k==1)
begin
q<=0;
qbar<=1;
end 
else if (j==1 && k==1)
begin
q<=1;
qbar<=0;
end 
else if (j==1 && k==1)
begin
q<=~q;
qbar<=q;
end 
end

endmodule
