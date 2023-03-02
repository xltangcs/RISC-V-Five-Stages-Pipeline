`timescale 1ns / 1ps

module top_tb( );

reg                  clk;
reg                  rst;
reg      [15 : 0]    switch;
wire     [15 : 0]    led;
wire     [7 : 0]     led_en;
wire                 led_ca;                     
wire                 led_cb;                     
wire                 led_cc;                     
wire                 led_cd;                     
wire                 led_ce;                     
wire                 led_cf;                     
wire                 led_cg;                     
wire                 led_dp;                     

always #20 clk = ~clk;     //10ns
// 25MHz  40ns 

initial begin
    clk   = 1'b0;
    rst = 1'b0;
    # 1000
    rst = 1'b1;
 // $monitor($realtime,"inst = %h",u_top_simple.CPU.If.inst);
 // $monitor("pc = %h, x3 = %h",u_top.CPU.If.pc, u_top_simple.CPU.Id.regFile.rf[3]);
end



top u_top(
    .clk         (clk),                                               
    .rst         (rst),                                               
    .switch      (switch),                                                     
    .led         (led   ),                                                      
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
