`ifdef DEBUG
    `include "param.v"
`else
    `include "../../param.v"
`endif

module BHT (
    input   wire                        clk,
    input   wire                        rst_n,
    input   wire                        isNeeded,   // �Ƿ���Ҫ�������Ƿ���Ҫ��ת���飬ͨ������Ϊ�Ƿ�Ϊ B ��ָ��
    input   wire[`WIDTH_PC - 1: 0]      pc,         // ����ǰ���жϵ� PC
    input   wire                        isWrong,    // �Ƿ���ȷ���Ǿ����жϺ�Ľ��
    input   wire[`WIDTH_PC - 1 : 0]     branch_pc,  // ��������õ���׼ȷ���
    output  wire                        isHit,      // �Ƿ����У������Ԥ���Ƿ���Ч
    output  reg                         isJump,     // �Ƿ���Ҫ��ת
    output  wire[`WIDTH_PC - 1 : 0]     pre_pc      // ����Ԥ��� PC
);

integer   i;

`define   STATUS_JUMP       2'b00
`define   STATUS_WEAK_JUMP  2'b01
`define   STATUS_WEAK_NORM  2'b11
`define   STATUS_NORM       2'b10


/***************************************************************
                        BHT������
****************************************************************/
/*------------/-------------/-------------/--------------/
/   isAvail   /    Statu    /     Tag     /    History   /      
/-------------/-------------/-------------/-------------*/
/*---- 1 -----/----- 2 -----/----- 7 -----/ ---- 30 ----*/

`define ISAVAIL_BIT 39
`define STATUS_BIT  38
`define TAG_BIT     36
`define HISTORY_BIT 29

`define ISAVAIL_WIDTH 1
`define STATUS_WIDTH  2
`define TAG_WIDTH     7
`define HISTORY_WIDTH 30
`define BHT_WIDTH     40

// ָ�Χ��14λ��ʾ���� 7 λ�� Tag ���жϣ��� 7 λѡ��Ĵ����飬�� 128 ��
reg [`BHT_WIDTH - 1: 0] PCtable [127: 0];

// д�������
wire [6: 0] branch_blockChoice           = branch_pc[8 : 2];
wire [`TAG_WIDTH - 1: 0] branch_blockTag = branch_pc[15: 9];

/***************************************************************
                        BHT��д��
****************************************************************/
reg [1: 0] isNeededWrite;
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        isNeededWrite <= 0;
    end
    else begin
        isNeededWrite[1: 0] <= {isNeededWrite[0], isNeeded};
    end
end

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        for (i = 0; i < 128; i = i + 1) begin
            // ��λֻ��Ҫ����Чλ�� 0
            PCtable[i][`ISAVAIL_BIT -: `ISAVAIL_WIDTH] <= 0;
            PCtable[i][`STATUS_BIT -: `STATUS_WIDTH]   <= `STATUS_WEAK_NORM;
        end   
    end
    else if (isNeededWrite[1]) begin
        PCtable[$unsigned(branch_blockChoice[6: 0])][`ISAVAIL_BIT -: `ISAVAIL_WIDTH] <= 1'b1;
        PCtable[$unsigned(branch_blockChoice[6: 0])][`TAG_BIT -: `TAG_WIDTH]         <= branch_blockTag;
        PCtable[$unsigned(branch_blockChoice[6: 0])][`HISTORY_BIT -: `HISTORY_WIDTH] <= branch_pc[31 -: `HISTORY_WIDTH];

        // ״̬ת��
        case (PCtable[$unsigned(branch_blockChoice[6: 0])][`STATUS_BIT -: `STATUS_WIDTH])
            `STATUS_JUMP: begin
                PCtable[$unsigned(branch_blockChoice[6: 0])][`STATUS_BIT -: `STATUS_WIDTH] <=
                (isWrong) ? `STATUS_WEAK_JUMP : `STATUS_JUMP;
            end
            `STATUS_WEAK_JUMP: begin
                PCtable[$unsigned(branch_blockChoice[6: 0])][`STATUS_BIT -: `STATUS_WIDTH] <= 
                (isWrong) ? `STATUS_WEAK_NORM : `STATUS_JUMP;
            end
            `STATUS_WEAK_NORM: begin
                PCtable[$unsigned(branch_blockChoice[6: 0])][`STATUS_BIT -: `STATUS_WIDTH] <= 
                (isWrong) ? `STATUS_WEAK_JUMP : `STATUS_NORM;
            end
            `STATUS_NORM: begin
                PCtable[$unsigned(branch_blockChoice[6: 0])][`STATUS_BIT -: `STATUS_WIDTH] <= 
                (isWrong) ? `STATUS_WEAK_NORM : `STATUS_NORM;
            end
        endcase
    end
end

/***************************************************************
                        BHT������߼�
****************************************************************/
wire [6: 0]                     blockChoice = pc[8 : 2];
wire [`TAG_WIDTH - 1: 0]        blockTag    = pc[15: 9];
wire [`BHT_WIDTH - 1: 0]        blockChoosed         = PCtable[$unsigned(blockChoice[6: 0])][`BHT_WIDTH - 1: 0];
wire [`ISAVAIL_WIDTH - 1: 0]    blockChoosed_isAvail = blockChoosed[`ISAVAIL_BIT -: `ISAVAIL_WIDTH];
wire [`TAG_WIDTH - 1: 0]        blockChoosed_Tag     = blockChoosed[`TAG_BIT -: `TAG_WIDTH];
wire [`STATUS_WIDTH - 1: 0]     blockChoosed_Status  = blockChoosed[`STATUS_BIT -: `STATUS_WIDTH];
wire [`HISTORY_WIDTH - 1: 0]    blockChoosed_History = blockChoosed[`HISTORY_BIT -: `HISTORY_WIDTH];

// �Ƿ����� ���� �Ƿ���Ҫ
assign isHit = (isNeeded && blockChoosed_isAvail && blockChoosed_Tag == blockTag) ? 1'b1 : 1'b0;
// �ó�Ԥ��ֵ
assign pre_pc = {blockChoosed_History, 2'b0};
// �Ƿ���Ҫ��ת
always @(*) begin
    case (blockChoosed_Status)
        `STATUS_JUMP: begin
            isJump = 1;
        end
        `STATUS_WEAK_JUMP: begin
            isJump = 1;
        end
        `STATUS_WEAK_NORM: begin
            isJump = 0;
        end
        `STATUS_NORM: begin
            isJump = 0;
        end
    endcase
end



endmodule