`timescale 1ns / 1ps

module top_tb( );

reg                  clk;
reg                  rst;
reg                  switch;
wire     [7 : 0]     led_en;
wire                 led_ca;                     
wire                 led_cb;                     
wire                 led_cc;                     
wire                 led_cd;                     
wire                 led_ce;                     
wire                 led_cf;                     
wire                 led_cg;                     
wire                 led_dp;                     

always #20 clk = ~clk;
always #20000 switch = ~switch;
initial begin
    clk         = 1'b0;
    rst         = 1'b0;
    switch      = 1'b0;
    # 1000
    rst         = 1'b1;
  
    
end


top u_top(
    .clk         (clk),                                               
    .rst         (rst),                                               
    .switch      (switch),                                                                                                     
    .led_en      (led_en),      
    .led_ca      (led_ca),                           
    .led_cb      (led_cb),                           
    .led_cc      (led_cc),                           
    .led_cd      (led_cd),                           
    .led_ce      (led_ce),                           
    .led_cf      (led_cf),                           
    .led_cg      (led_cg),                           
    .led_dp      (led_dp)                            
 );

endmodule
