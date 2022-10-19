`timescale 1ns / 1ps
module jktb( );
reg j,k,clk,rst;
wire q,qbar;
jk f1(q,qbar,clk,rst,j,k );
initial
begin
clk=0;
rst=1;
end 
always 
begin
#5 clk=~clk;
#50 rst=~rst;
end
initial 
begin
#10 j=0; k=0;
#10 j=0; k=1;
#10 j=1; k=0;
#10 j=1; k=1;
#100 $stop;
end
endmodule
