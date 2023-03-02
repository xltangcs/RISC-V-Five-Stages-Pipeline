`ifdef DEBUG
    `include "param.v"
`else
`include "../../param.v"
`endif

module Interface_NUMLED (
           input    wire            clk,
           input    wire            deviceClk,
           input    wire            rst_n,
           input    wire            BG,
           input    wire [`IO_BUS_WIDTH_ADDR - 1: 0]    addr,
           input    wire [`IO_BUS_WIDTH_CTRL - 1: 0]    ctrl,
           inout    wire [`IO_BUS_WIDTH_DATA - 1: 0]    data, // ����������

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

wire clk_input;
wire clk_output;

// ������
wire [`IO_BUS_WIDTH_DATA - 1: 0] data_input; // ���� -> ����
wire [`IO_BUS_WIDTH_DATA - 1: 0] input_data; // ���� -> ����

// �����ź�����
wire ctrl_call;     // ���ʿ����ź�
wire data_call;     // �����������

// �����������
wire input_call;    // ����


/***************************************************************
                        �����߼�
****************************************************************/

// ��д����
//assign input_call  = ((BG == 1'b1) && (ctrl[`IO_BUS_CTRL_WE] == `IO_CTRL_WRITE)) ? 1'b1 : 1'b0;
assign input_call = 1'b1;
/***************************************************************
                        ��ַ����
****************************s************************************/

wire [`IO_CALL_WIDTH - 1: 0] addrOut = addr[`IO_CALL_HIGHERADDR: `IO_CALL_LOWERADDR];

// ��ַƫ������
assign ctrl_call   = (addrOut == `IO_CALL_CTRL) ? 1'b1 : 1'b0;
assign data_call   = (addrOut == `IO_CALL_INOUT) ? 1'b1 : 1'b0;

/***************************************************************
                        ���ݽ��濪��
****************************************************************/
// ��ַ����Ϳ����߼��ڲ���ϣ��������ݽ��濪�ؿ���
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
// ����ת��
InputCtrl_NUMLED ledDisplayCtrl (
                     .clk(clk),
                     .rst_n(rst_n),
                     .num_in(input_data),
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
