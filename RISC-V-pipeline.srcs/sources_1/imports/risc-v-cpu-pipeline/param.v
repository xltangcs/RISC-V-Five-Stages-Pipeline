// `define DEBUG

`ifndef ALU_PARAM
`define ALU_PARAM

/****************************************************************
                        ������������
*****************************************************************/

// ����λ��
`define WIDTH_PC            32
`define WIDTH_INST          32
`define WIDTH_OPENUM        32
`define WIDTH_ALUOUT        32
`define WIDTH_COMPOUT       2
`define WIDTH_COMP_EX_OUT   32
`define WIDTH_DRAMRd        32
`define WIDTH_RegWd         32
`define WIDTH_REGMARK       5

// �����ź�
`define WIDTH_ALUOpe        4
`define WIDTH_ALUOp         3
`define WIDTH_Unsigned      1     
`define WIDTH_DRAM_EX_TYPE  2
`define WIDTH_DRAMWE        1
`define WIDTH_RWSel         2
`define WIDTH_RegWE         1
`define WIDTH_DRAMIN        32
`define WIDTH_PCCTRL        4
`define WIDTH_PCSEL         1



/****************************************************************
                        ����������Basic���г���
*****************************************************************/

// ����
`define UNSIGNED    1'b1
`define SIGNED      1'b0

// ��������
`define ADD     3'b000
`define SUB     3'b010

`define AND     3'b110
`define OR      3'b100
`define XOR     3'b101

`define SLL     3'b001
`define SRL     3'b011
`define SRA     3'b111

// ��������չ����
`define IMM_I   5'b10000
`define IMM_S   5'b01000
`define IMM_B   5'b00100
`define IMM_J   5'b00010
`define IMM_U   5'b00001

// �ȽϽ��
`define COMP_EQ 2'b00
`define COMP_LE 2'b01
`define COMP_GE 2'b10

// ��ȡ�����չ
`define DRAM_EX_W   2'b00
`define DRAM_EX_H   2'b01
`define DRAM_EX_B   2'b11
`define DRAM_EX_B_BIT 0
`define DRAM_EX_H_BIT 1


/****************************************************************
                        ��ϣ�Combine���г���
*****************************************************************/

// PC ��ת����
`define PCSEL_PC4           1'b0    // ˳��ִ��
`define PCSEL_JUMP          1'b1    // ��תִ��

// �Ĵ���д�����
`define REGWE_READ      1'b0    // ����д
`define REGWE_WRITE     1'b1    // ��д

// ALU ������ƣ�COMP�����෴��
`define ASEL_REG        1'b0    // ѡ��Ĵ������� A
`define ASEL_PC         1'b1    // ѡ�� PC ���� A
`define BSEL_REG        1'b0    // ѡ��Ĵ������� B
`define BSEL_IMM        1'b1    // ѡ������������ B
`define ASEL_FORWARDING 1'b1
`define BSEL_FORWARDING 1'b1 

// д�������
`define DRAM_READ       1'b0    // ����д
`define DRAM_WRITE      1'b1    // ��д

// д�ؼĴ���ѡ��
`define REGWD_PC        2'b00   // д�� PC + 4
`define REGWD_COMPOUT   2'b01   // д�رȽϽ��
`define REGWD_ALUOUT    2'b11   // д�� ALU ������
`define REGWD_DRAMRD    2'b10   // д�������ȡ���

// PC��תָ������
`define PCCTRL_B_EQ     2'b00
`define PCCTRL_B_NE     2'b01
`define PCCTRL_B_LT     2'b10
`define PCCTRL_B_GEQ    2'b11
`define PCCTRL_B        2
`define PCCTRL_J        3

/****************************************************************
                        IO�г���
*****************************************************************/

// �ӿ�
`define IO_INTERFACE_NUM    3

// ���߿��
`define IO_BUS_WIDTH_ADDR   32  // ��ַ�߿��
`define IO_BUS_WIDTH_DATA   32  // �����߿��
`define IO_BUS_WIDTH_CTRL   1   // �����߿��

// �������߹涨
`define IO_BUS_CTRL_WE          0

// �������߶�д
`define IO_CTRL_READ       1'b0    // ��д
`define IO_CTRL_WRITE      1'b1    // д

// ��ַƫ��
`define IO_CALL_HIGHERADDR 3
`define IO_CALL_LOWERADDR  2 
`define IO_CALL_WIDTH      `IO_CALL_HIGHERADDR - `IO_CALL_LOWERADDR + 1
`define IO_CALL_CTRL       2'b00    // ����
`define IO_CALL_INOUT      2'b01    // ���ݴ���
`define IO_CALL_STATU      2'b10    // ״̬����

/****************************************************************
                        ��������
*****************************************************************/

`define DEVICE_NUM_LED          16
`define DEVICE_NUM_SWITCH       16
`define DEVICE_NUM_NUMLED       8
`define DEVICE_NUM_NUMLED_EN    8

`endif

