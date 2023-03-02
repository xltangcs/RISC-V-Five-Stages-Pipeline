`include "param.v"

module top(
           input    wire clk,
           input    wire rst,
           input    wire [`DEVICE_NUM_SWITCH - 1: 0]        switch,// 输入设备——拨码开关
           output   wire [`DEVICE_NUM_LED - 1: 0]           led,// 输出设备——LED灯
           output   wire [`DEVICE_NUM_NUMLED_EN - 1: 0]     led_en,// 输出设备——LED数码管
           output   wire               led_ca,
           output   wire               led_cb,
           output   wire               led_cc,
           output   wire               led_cd,
           output   wire               led_ce,
           output   wire               led_cf,
           output   wire               led_cg,
           output   wire               led_dp
       );
       

/***************************************************************
                        时钟信号
****************************************************************/

wire clk_out; // 25MHz 40ns

cpuclk cpuClk (
        .clk_in1(clk),
        .locked(locked),
        .clk_out1(clk_out)
);
/***************************************************************
                        复位信号
****************************************************************/

wire rst_n = rst;


/***************************************************************
                        设备连接
****************************************************************/

wire [`IO_BUS_WIDTH_DATA - 1: 0]    mem_wd;
wire [`IO_BUS_WIDTH_DATA - 1: 0]    mem_rd;
wire [`IO_BUS_WIDTH_ADDR - 1: 0]    mem_addr;
wire [`IO_BUS_WIDTH_CTRL - 1: 0]    mem_ctrl;
wire                                mem_we;
wire [`IO_BUS_WIDTH_DATA - 1: 0]    busData;

assign mem_rd  = busData;
assign busData = (mem_we) ? mem_wd : 32'hzzzzzzzz; // 写入时才接入输入

mini_rv mini_rv_u (
            .clk(clk_out),
            .rst_n(rst_n),
            .mem_addr(mem_addr),
            .mem_ctrl(mem_ctrl),
            .mem_wd(mem_wd),
            .mem_rd(mem_rd),
            .mem_we(mem_we)
        );

BUS bus (
        .clk(clk_out),
        .rst_n(rst_n),
        // 设备线连接
        .switch(switch),
        .led(led),
        .led_en(led_en),
        .led_ca(led_ca),
        .led_cb(led_cb),
        .led_cc(led_cc),
        .led_cd(led_cd),
        .led_ce(led_ce),
        .led_cf(led_cf),
        .led_cg(led_cg),
        .led_dp(led_dp),
        .addr(mem_addr),
        .ctrl(mem_ctrl),
        .data(busData)
    );
    
endmodule
