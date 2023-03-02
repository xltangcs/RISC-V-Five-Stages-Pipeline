`ifdef DEBUG
    `include "param.v"
`else
    `include "../../param.v"
`endif

module InstDivider (
    input   wire [`WIDTH_INST - 1 : 0] inst_in,
    output  wire [`WIDTH_INST - 1 : 0] inst_out
);

/***************************************************************
                        ָ����
****************************************************************/
// Ŀǰֻ�� sb �� sh ��Ҫ���� lw ��Ϊǰ��ָ��

/*
    sb | sh -> [lw x0 same_addr] + (sb | sh)
*/
assign inst_out[`WIDTH_INST - 1 : 0] = {
    inst_in[31: 27], 2'b00, inst_in[11: 7], inst_in[19: 15], inst_in[14], 2'b10, 5'b00000, 7'b0000011
};

endmodule