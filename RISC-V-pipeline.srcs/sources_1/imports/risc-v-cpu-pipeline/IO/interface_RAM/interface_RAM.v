`ifdef DEBUG
    `include "param.v"
`else
`include "../../param.v"
`endif

/*----------------------------------------------------------------
                ����ӿ�
                ���ӷ�ʽ��ֱ���������޻���
                ״̬�������
-----------------------------------------------------------------*/

module Interface_RAM (
           input    wire            clk,
           input    wire            rst_n,
           input    wire            BG,
           input    wire [`IO_BUS_WIDTH_ADDR - 1: 0]    addr,
           input    wire [`IO_BUS_WIDTH_CTRL - 1: 0]    ctrl,
           inout    wire [`IO_BUS_WIDTH_DATA - 1: 0]    data // ����������
       );
wire clk_input;
wire clk_output;

// ������
wire [`IO_BUS_WIDTH_DATA - 1: 0] data_input; // ���� -> ����
wire [`IO_BUS_WIDTH_DATA - 1: 0] input_data; // ���� -> ����
// �����
wire [`IO_BUS_WIDTH_DATA - 1: 0] data_output; // ���� -> ����
wire [`IO_BUS_WIDTH_DATA - 1: 0] output_data; // ���� -> ����

/***************************************************************
                        �����߼�
****************************************************************/

// �����������
wire input_call;    // ����
wire output_call;   // ���

// ��д����
assign input_call  = ((BG == 1'b1) && (ctrl[`IO_BUS_CTRL_WE] == `IO_CTRL_WRITE)) ? 1'b1 : 1'b0;
assign output_call = ((BG == 1'b1) && (ctrl[`IO_BUS_CTRL_WE] == `IO_CTRL_READ)) ? 1'b1 : 1'b0;

/***************************************************************
                        ���ݽ��濪��
****************************************************************/
// ��ַ����Ϳ����߼��ڲ���ϣ��������ݽ��濪�ؿ���
// data�������
assign data = (output_call) ? output_data :  // ����ͬ�⣬�������
       `IO_BUS_WIDTH_DATA'dz;                // δ����״��
// data�������
assign data_input = data;

/***************************************************************
                        ��������޻���
****************************************************************/

assign clk_input = clk; // ʱ�������ض�ȡ

InputCtrl_RAM inputCtrl (
                  .din(data_input),
                  .din_RAM(input_data)
              );

assign clk_output = clk; // ʱ��������д��

OutputCtrl_RAM outputCtrl (
                   .rd_RAM(data_output),
                   .DRAMRd(output_data)
               );


// ��������
DataMem dRAM (
            .clk(clk),
            .we(input_call),
            .adr(addr[`IO_BUS_WIDTH_ADDR - 1 :0]),
            .din(input_data),
            .rd(data_output)
        );

endmodule
