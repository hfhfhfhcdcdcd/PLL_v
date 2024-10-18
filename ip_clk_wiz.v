module ip_clk_wiz (
    input            clk                ,
    input            rst              ,
    output           clk_100MHz         ,
    output           clk_100MHz_pai     ,
    output           clk_50MHz          ,
    output           clk_25MHz          
);

wire locked;

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
  clk_wiz_0 c1
   (
    .clk_100MHz     (clk_100MHz),                 // output clk_100MHz
    .clk_100MHz_pai (clk_100MHz_pai),          // output clk_100MHz_pai
    .clk_50MHz      (clk_50MHz),                       // output clk_50MHz
    .clk_25MHz      (clk_25MHz),                       // output clk_25MHz
    .reset          (~rst),                               // input reset
    .locked         (locked),                             // output locked
    .clk_in1        (clk));                           // input clk_in1
// INST_TAG_END ------ End INSTANTIATION Template ---------


endmodule