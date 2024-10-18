`timescale 1ns/1ps
module ip_clk_tb();
 reg clk;
 reg rst;
 wire clk_100MHz;
 wire clk_100MHz_pai;
 wire clk_50MHz;
 wire clk_25MHz;

ip_clk_wiz ip2(
   .      clk             (clk             )   ,
   .      rst             (rst             )   ,
   .      clk_100MHz      (clk_100MHz      )   ,
   .      clk_100MHz_pai  (clk_100MHz_pai  )   ,
   .      clk_50MHz       (clk_50MHz       )   ,
   .      clk_25MHz       (clk_25MHz       )   
);
initial begin
	clk = 1'b0;
	rst = 1'b0;
	#200 rst = 1'b1;
	#2500;        
    $stop;
end
always #10 clk = ~clk;

endmodule