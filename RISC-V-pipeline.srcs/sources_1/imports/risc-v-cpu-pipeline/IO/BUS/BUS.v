module BUS (
           input       wire                 clk,
           input       wire                 rst_n,
           input       wire                 BC, // 总线查询
           input       wire     [31 : 0]    addr,
           input       wire                 ctrl,
           inout       wire     [31 : 0]    data,
           
           input       wire                 switch,// 输入设备--拨码开关
           output      wire     [7  : 0]    led_en,// 输出设备--LED数码管
           output      wire                 led_ca,
           output      wire                 led_cb,
           output      wire                 led_cc,
           output      wire                 led_cd,
           output      wire                 led_ce,
           output      wire                 led_cf,
           output      wire                 led_cg,
           output      wire                 led_dp
       );

wire    [31 : 0]    data_out;
//wire     [9  : 0]    rd_data_count = 0;
//wire     [9  : 0]    wr_data_count = 0;

integer i;

reg [2 : 0]  BG;    // 总线同意

/***************************************************************
                        外设时钟
****************************************************************/

wire deviceClk;

DeviceCLK  deviceCLK (
               .clk(clk),
               .rst_n(rst_n),
               .switch(switch),
               .clk_out(deviceClk)
           );

/***************************************************************
                        设备控制
****************************************************************/
reg ctrl_input [2 : 0];

// 控制线
always @(*) begin
    for (i = 0; i < 3; i = i + 1) begin
        ctrl_input[i] =  ctrl;
    end
end

// 总线同意信号
always @(*) begin
    if (addr[31 : 12] == 20'hFFFFF) begin // 外设
        case (addr[7: 4])
            4'h0: begin
                BG = 3'b010;
            end
            4'h1: begin
                BG = 3'b010;
            end
            4'h6: begin
                BG = 3'b100;
            end
            4'h7: begin
                BG = 3'b100;
            end
            default: begin
                BG = 3'b000;
            end
        endcase
    end
    else begin // 主存
        BG = 3'b001;
    end
end

/***************************************************************
                        设备连接
****************************************************************/

Interface_RAM interface_RAM (
                  .clk(clk),
                  .rst_n(rst_n),
                  .BG(BG[0]),
                  .addr(addr),
                  .ctrl(ctrl_input[0]),
                  .data(data)
              );

FIFO_data FIFO (
                    .wr_clk(clk),                // input wire wr_clk
                    .rd_clk(clk),                // input wire rd_clk
                    .din(data),                      // input wire [31 : 0] din
                    .wr_en(1'b1),                  // input wire wr_en
                    .rd_en(deviceClk),                  // input wire rd_en
                    .dout(data_out),                    // output wire [31 : 0] dout
                    
                    .rd_data_count(rd_data_count),  // output wire [9 : 0] rd_data_count
                    .wr_data_count(wr_data_count)  // output wire [9 : 0] wr_data_count
);

Interface_NUMLED interface_numled (
                              .clk(clk),
                              .deviceClk(deviceClk),
                              .rst_n(rst_n),
                              .BG(BG[1]),
                              .addr(addr),
                              .ctrl(ctrl_input[1]),
                              .data(data_out),
                              .led_en(led_en),
                              .led_ca(led_ca),
                              .led_cb(led_cb),
                              .led_cc(led_cc),
                              .led_cd(led_cd),
                              .led_ce(led_ce),
                              .led_cf(led_cf),
                              .led_cg(led_cg),
                              .led_dp(led_dp)
                          );

endmodule
