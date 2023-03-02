`ifdef DEBUG
    `include "param.v"
`else
`include "../../param.v"
`endif

module Interface_LED_SWITCH (
           input    wire            clk,
           input    wire            deviceClk,
           input    wire            rst_n,
           input    wire            BG, // ����ͬ���ź�
           input    wire [`IO_BUS_WIDTH_ADDR - 1: 0]    addr,
           input    wire [`IO_BUS_WIDTH_CTRL - 1: 0]    ctrl,
           inout    wire [`IO_BUS_WIDTH_DATA - 1: 0]    data, // ����������

           // �����豸�������뿪��
           input    wire [`DEVICE_NUM_SWITCH - 1: 0]    switch,
           // ����豸����LED��
           output   wire [`DEVICE_NUM_LED - 1: 0]       led
       );

wire clk_input;
wire clk_output;

// ������
wire [`IO_BUS_WIDTH_DATA - 1: 0] data_input; // ���� -> ����
wire [`IO_BUS_WIDTH_DATA - 1: 0] input_data; // ���� -> ����
// �����
wire [`IO_BUS_WIDTH_DATA - 1: 0] data_output; // ���� -> ����
wire [`IO_BUS_WIDTH_DATA - 1: 0] output_data; // ���� -> ����


// �����ź�����
wire ctrl_call;     // ���ʿ����ź�
wire data_call;     // �����������
wire status_call;   // ����״̬

// �����������
wire input_call;    // ����
wire output_call;   // ���


/***************************************************************
                        �����߼�
****************************************************************/

// ��д����
assign input_call  = ((BG == 1'b1) && (ctrl[`IO_BUS_CTRL_WE] == `IO_CTRL_WRITE)) ? 1'b1 : 1'b0;
assign output_call = ((BG == 1'b1) && (ctrl[`IO_BUS_CTRL_WE] == `IO_CTRL_READ)) ? 1'b1 : 1'b0;

/***************************************************************
                        ��ַ����
****************************************************************/
wire [`IO_CALL_WIDTH - 1: 0] addrOut = addr[`IO_CALL_HIGHERADDR: `IO_CALL_LOWERADDR];

// ��ַƫ������
assign ctrl_call   = (addrOut == `IO_CALL_CTRL) ? 1'b1 : 1'b0;
assign data_call   = (addrOut == `IO_CALL_INOUT) ? 1'b1 : 1'b0;

/***************************************************************
                        ���ݽ��濪��
****************************************************************/
// ��ַ����Ϳ����߼��ڲ���ϣ��������ݽ��濪�ؿ���
// data�������
assign data =  (output_call) ? data_output :            // ����ͬ�⣬�������
       `IO_BUS_WIDTH_DATA'dz;                   // δ����״��
// data�������
assign data_input = data;

/***************************************************************
                        ���뵽 ����
****************************************************************/
assign clk_input = clk; // ʱ�������ض�ȡ����

// ���뻺��
Buffer #(.WIDTH(32))
       input_buf (
           .clk(clk_input),
           .rst_n(rst_n),
           .din(data_input),
           .we(input_call),
           .dout(input_data)
       );
InputCtrl_LED ledCtrl (
                  .num_in(input_data),
                  .led(led)
              );

/***************************************************************
                        ����� CPU
****************************************************************/
assign clk_output = clk;

Buffer  #(.WIDTH(32))
        output_buf (
            .clk(clk_output),
            .rst_n(rst_n),
            .we(1'b1),
            .din(output_data),
            .dout(data_output)
        );
OutputCtrl_Switch switchCtrl (
                      .switch(switch),
                      .data(output_data)
                  );

endmodule
