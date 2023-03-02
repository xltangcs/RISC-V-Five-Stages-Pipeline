`ifdef DEBUG
    `include "param.v"
`else
`include "../../param.v"
`endif

module BranchCTRL (
           input wire [`WIDTH_PCCTRL - 1 : 0]   PCCTRL,
           input wire [`WIDTH_COMPOUT - 1 : 0]  COMPOut,
           output reg  [`WIDTH_PCSEL - 1 : 0]   PCSel
       );

wire branch_b    = PCCTRL[`PCCTRL_B];
wire branch_j    = PCCTRL[`PCCTRL_J];

// �ȽϽ��
wire COMP_EQ    = (COMPOut == 2'b00) ? 1'b1 : 1'b0;
wire COMP_NEQ   = ~COMP_EQ;
wire COMP_LE    = (COMPOut == 2'b01) ? 1'b1 : 1'b0;
wire COMP_GE_EQ = ~COMP_LE;

always @ (*) begin
    if (branch_b) begin
        case (PCCTRL[1: 0])
            `PCCTRL_B_EQ: begin // beq
                PCSel = (COMP_EQ) ? `PCSEL_JUMP : `PCSEL_PC4;
            end
            `PCCTRL_B_NE: begin // bne
                PCSel = (COMP_NEQ) ? `PCSEL_JUMP : `PCSEL_PC4;
            end
            `PCCTRL_B_LT: begin // blt / bltu
                PCSel = (COMP_LE) ? `PCSEL_JUMP : `PCSEL_PC4;
            end
            default: begin // bge / bgeu
                PCSel = (COMP_GE_EQ) ? `PCSEL_JUMP : `PCSEL_PC4;
            end
        endcase
    end
    else if (branch_j) begin // Jalr ָ��޷�Ԥ�⣬ֱ�ӿճ�
        PCSel = `PCSEL_JUMP;
    end
    else begin
        PCSel = `PCSEL_PC4;
    end
end


endmodule
