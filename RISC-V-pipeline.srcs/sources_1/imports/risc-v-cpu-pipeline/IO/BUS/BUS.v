`ifdef DEBUG
    `include "param.v"
`else
`include "../../param.v"
`endif

module BUS (
           input       wire clk,
           input       wire rst_n,
           input       wire BC, // ���߲�ѯ
           input       wire [`IO_BUS_WIDTH_ADDR - 1: 0] addr,
           input       wire [`IO_BUS_WIDTH_CTRL - 1: 0] ctrl,
           inout       wire [`IO_BUS_WIDTH_DATA - 1: 0] data,

           // �豸��====================================================
           // �����豸�������뿪��
           input    wire [`DEVICE_NUM_SWITCH - 1: 0]        switch,
           // ����豸����LED��
           output   wire [`DEVICE_NUM_LED - 1: 0]           led,
           // ����豸����LED�����
           output   wire [`DEVICE_NUM_NUMLED_EN - 1: 0]     led_en,
           output   wire               led_ca,
           output   wire               led_cb,
           output   wire               led_cc,
           output   wire               led_cd,
           output   wire               led_ce,
           output   wire               led_cf,
           output   wire               led_cg,
           output   wire               led_dp
       );

integer i;

reg [`IO_INTERFACE_NUM - 1: 0]  BG;    // ����ͬ��

/***************************************************************
                        ����ʱ��
****************************************************************/

wire deviceClk;

// 50000 Լ���� 2ms ��һ�� 
DeviceCLK  #(.EXTEND(100)) 
           deviceCLK (
               .clk(clk),
               .rst_n(rst_n),
               .clk_out(deviceClk)
           );

/***************************************************************
                        �豸����
****************************************************************/
reg [`IO_BUS_WIDTH_CTRL - 1: 0] ctrl_input [`IO_INTERFACE_NUM - 1 : 0];

// ������
always @(*) begin
    for (i = 0; i < `IO_INTERFACE_NUM; i = i + 1) begin
        ctrl_input[i][`IO_BUS_WIDTH_CTRL - 1: 0] =  ctrl;
    end
end

// ����ͬ���ź�
always @(*) begin
    if (addr[`IO_BUS_WIDTH_ADDR - 1: 12] == 20'hFFFFF) begin // ����
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
    else begin // ����
        BG = 3'b001;
    end
end

/***************************************************************
                        �豸����
****************************************************************/

Interface_RAM interface_RAM (
                  .clk(clk),
                  .rst_n(rst_n),
                  .BG(BG[0]),
                  .addr(addr),
                  .ctrl(ctrl_input[0]),
                  .data(data)
              );

Interface_NUMLED interface_numled (
                              .clk(clk),
                              .deviceClk(deviceClk),
                              .rst_n(rst_n),
                              .BG(BG[1]),
                              .addr(addr),
                              .ctrl(ctrl_input[1]),
                              .data(data),
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
                          
Interface_LED_SWITCH interface_led_switch (
                         .clk(clk),
                         .deviceClk(deviceClk),
                         .rst_n(rst_n),
                         .BG(BG[2]),
                         .addr(addr),
                         .ctrl(ctrl_input[2]),
                         .data(data),

                         .led(led),
                         .switch(switch)
                     );

endmodule
