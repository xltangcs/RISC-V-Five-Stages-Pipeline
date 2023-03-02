`ifdef DEBUG
    `include "param.v"
`else
`include "../../param.v"
`endif

module NPC(
           input   wire clk,
           input   wire rst_n,
           input   wire stop_IF,
           input   wire[`WIDTH_PC - 1: 0]       current_pc,
           input   wire[`WIDTH_PC - 1: 0]       branch_pc,
           input   wire[`WIDTH_INST - 1: 0]     inst,
           input   wire                         PCSel,
           input   wire                         risk_Ctrl_delay,
           output  wire[`WIDTH_PC - 1: 0]       npc,
           output  wire                         risk_Ctrl
       );

wire [`WIDTH_PC - 1 : 0] pre_pc;

reg [1: 0] is_jump;

/***************************************************************
                        ��֧Ԥ��
****************************************************************/
wire pre_jump;

BranchPredictor branchPredictor (
                    .clk(clk),
                    .rst_n(rst_n),
                    .inst(inst),
                    .risk_Ctrl_delay(risk_Ctrl_delay),
                    .pc(current_pc),
                    .branch_pc(branch_pc),
                    .pre_pc(pre_pc),
                    .jump(pre_jump)
                );


/***************************************************************
                        ��������������¼
****************************************************************/

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        is_jump[1: 0] <= 0;
    end
    else if (risk_Ctrl) begin // Ԥ�������ռ�¼
        is_jump[1: 0] <= {`PCSEL_PC4, `PCSEL_PC4};
    end
    else begin // Ԥ����ȷ�����¼�¼
        is_jump[1: 0] <= (stop_IF) ? is_jump[1: 0] : {pre_jump, is_jump[1]};
    end
end

/***************************************************************
                        �������������ѡ��
****************************************************************/
// Ԥ���Ƿ���ȷ
assign risk_Ctrl = (PCSel == is_jump[0]) ? 1'b0 : 1'b1;
// �Ƿ���Ҫ����PC
assign npc = (stop_IF) ? current_pc : pre_pc;


endmodule
