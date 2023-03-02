`ifdef DEBUG
`include "param.v"
`else
`include "../../param.v"
`endif

module PC(
           input    wire        clk,
           input    wire        rst_n,
           input    wire[`WIDTH_PC - 1: 0] npc,
           output   reg [`WIDTH_PC - 1: 0] pc
       );

/***************************************************************
                        ����������仯
****************************************************************/

always @ (posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        pc <= -4;
    end
    else begin
        pc <= npc;
    end
end

endmodule
