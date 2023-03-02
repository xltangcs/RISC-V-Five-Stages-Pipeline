`ifdef DEBUG
    `include "param.v"
`else
`include "../param.v"
`endif

module ID_EX (
           input wire                          clk,
           input wire                          rst_n,
           input wire                          stop_ID,
           input wire                          inst_div,

           input wire [`WIDTH_PC - 1: 0]            pc,
           input wire                               ASel,
           input wire                               BSel,
           input wire [`WIDTH_OPENUM - 1: 0]        Anum,
           input wire [`WIDTH_OPENUM - 1: 0]        Bnum,
           input wire [`WIDTH_OPENUM - 1: 0]        Anum2,
           input wire [`WIDTH_OPENUM - 1: 0]        Bnum2,
           input wire [`WIDTH_ALUOp - 1: 0]         ALUop,
           input wire [`WIDTH_Unsigned - 1: 0]      Unsigned,
           input wire [`WIDTH_DRAM_EX_TYPE - 1: 0]  DRAM_EX_TYPE,
           input wire [`WIDTH_DRAMWE - 1: 0]        DRAMWE,
           input wire [`WIDTH_RWSel - 1: 0]         RWSel,
           input wire [`WIDTH_REGMARK - 1: 0]       RegWr,
           input wire [`WIDTH_RegWE - 1: 0]         RegWe,
           input wire [`WIDTH_PCCTRL - 1 : 0]       PCCTRL,

           input wire                               ASel_div,
           input wire                               BSel_div,
           input wire [`WIDTH_ALUOp - 1: 0]         ALUop_div,
           input wire [`WIDTH_Unsigned - 1: 0]      Unsigned_div,
           input wire [`WIDTH_DRAM_EX_TYPE - 1: 0]  DRAM_EX_TYPE_div,
           input wire [`WIDTH_DRAMWE - 1: 0]        DRAMWE_div,
           input wire [`WIDTH_RWSel - 1: 0]         RWSel_div,
           input wire [`WIDTH_REGMARK - 1: 0]       RegWr_div,
           input wire [`WIDTH_RegWE - 1: 0]         RegWe_div,
           input wire [`WIDTH_PCCTRL - 1 : 0]       PCCTRL_div,

           output reg [`WIDTH_PC - 1: 0]            pc_o,
           output reg                               ASel_o,
           output reg                               BSel_o,
           output reg [`WIDTH_OPENUM - 1: 0]        Anum_o,
           output reg [`WIDTH_OPENUM - 1: 0]        Bnum_o,
           output reg [`WIDTH_OPENUM - 1: 0]        Anum2_o,
           output reg [`WIDTH_OPENUM - 1: 0]        Bnum2_o,
           output reg [`WIDTH_ALUOp - 1: 0]         ALUop_o,
           output reg [`WIDTH_Unsigned - 1: 0]      Unsigned_o,
           output reg [`WIDTH_DRAM_EX_TYPE - 1: 0]  DRAM_EX_TYPE_o,
           output reg [`WIDTH_DRAMWE - 1: 0]        DRAMWE_o,
           output reg [`WIDTH_RWSel - 1: 0]         RWSel_o,
           output reg [`WIDTH_REGMARK - 1: 0]       RegWr_o,
           output reg [`WIDTH_RegWE - 1: 0]         RegWe_o,
           output reg [`WIDTH_PCCTRL - 1 : 0]       PCCTRL_o
       );

/****************************************************************
                        ���
*****************************************************************/
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        pc_o            [`WIDTH_PC - 1: 0]            <= 0;
        ASel_o                                        <= 0;
        BSel_o                                        <= 0;
        Anum_o          [`WIDTH_OPENUM - 1: 0]        <= 0;
        Bnum_o          [`WIDTH_OPENUM - 1: 0]        <= 0;
        Anum2_o         [`WIDTH_OPENUM - 1: 0]        <= 0;
        Bnum2_o         [`WIDTH_OPENUM - 1: 0]        <= 0;
        ALUop_o         [`WIDTH_ALUOp - 1: 0]         <= 0;
        Unsigned_o      [`WIDTH_Unsigned - 1: 0]      <= 0;
        DRAM_EX_TYPE_o  [`WIDTH_DRAM_EX_TYPE - 1: 0]  <= 0;
        DRAMWE_o        [`WIDTH_DRAMWE - 1: 0]        <= 0;
        RWSel_o         [`WIDTH_RWSel - 1: 0]         <= 0;
        RegWr_o         [`WIDTH_REGMARK - 1: 0]       <= 0;
        RegWe_o         [`WIDTH_RegWE - 1: 0]         <= 0;
        PCCTRL_o        [`WIDTH_PCCTRL - 1 : 0]       <= 0;
    end
    else if (stop_ID) begin
        pc_o            [`WIDTH_PC - 1: 0]            <= 0;
        ASel_o                                        <= 0;
        BSel_o                                        <= 0;
        Anum_o          [`WIDTH_OPENUM - 1: 0]        <= 0;
        Bnum_o          [`WIDTH_OPENUM - 1: 0]        <= 0;
        Anum2_o         [`WIDTH_OPENUM - 1: 0]        <= 0;
        Bnum2_o         [`WIDTH_OPENUM - 1: 0]        <= 0;
        ALUop_o         [`WIDTH_ALUOp - 1: 0]         <= 0;
        Unsigned_o      [`WIDTH_Unsigned - 1: 0]      <= 0;
        DRAM_EX_TYPE_o  [`WIDTH_DRAM_EX_TYPE - 1: 0]  <= 0;
        DRAMWE_o        [`WIDTH_DRAMWE - 1: 0]        <= 0;
        RWSel_o         [`WIDTH_RWSel - 1: 0]         <= 0;
        RegWr_o         [`WIDTH_REGMARK - 1: 0]       <= 0;
        RegWe_o         [`WIDTH_RegWE - 1: 0]         <= 0;
        PCCTRL_o        [`WIDTH_PCCTRL - 1 : 0]       <= 0;
    end
    else if (inst_div) begin
        pc_o          [`WIDTH_PC - 1: 0]            <= pc;
        ASel_o                                      <= ASel_div;
        BSel_o                                      <= BSel_div;
        Anum_o        [`WIDTH_OPENUM - 1: 0]        <= Anum;
        Bnum_o        [`WIDTH_OPENUM - 1: 0]        <= Bnum;
        Anum2_o       [`WIDTH_OPENUM - 1: 0]        <= Anum2;
        Bnum2_o       [`WIDTH_OPENUM - 1: 0]        <= Bnum2;
        ALUop_o       [`WIDTH_ALUOp - 1: 0]         <= ALUop_div;
        Unsigned_o    [`WIDTH_Unsigned - 1: 0]      <= Unsigned_div;
        PCCTRL_o      [`WIDTH_PCCTRL - 1 : 0]       <= PCCTRL_div;
        RWSel_o       [`WIDTH_RWSel - 1: 0]         <= RWSel_div;
        DRAM_EX_TYPE_o[`WIDTH_DRAM_EX_TYPE - 1: 0]  <= DRAM_EX_TYPE_div;
        DRAMWE_o      [`WIDTH_DRAMWE - 1: 0]        <= DRAMWE_div;
        RegWr_o       [`WIDTH_REGMARK - 1: 0]       <= RegWr_div;
        RegWe_o       [`WIDTH_RegWE - 1: 0]         <= RegWe_div;
    end
    else begin
        pc_o          [`WIDTH_PC - 1: 0]            <= pc;
        ASel_o                                      <= ASel;
        BSel_o                                      <= BSel;
        Anum_o        [`WIDTH_OPENUM - 1: 0]        <= Anum;
        Bnum_o        [`WIDTH_OPENUM - 1: 0]        <= Bnum;
        Anum2_o       [`WIDTH_OPENUM - 1: 0]        <= Anum2;
        Bnum2_o       [`WIDTH_OPENUM - 1: 0]        <= Bnum2;
        ALUop_o       [`WIDTH_ALUOp - 1: 0]         <= ALUop;
        Unsigned_o    [`WIDTH_Unsigned - 1: 0]      <= Unsigned;
        PCCTRL_o      [`WIDTH_PCCTRL - 1 : 0]       <= PCCTRL;
        RWSel_o       [`WIDTH_RWSel - 1: 0]         <= RWSel;
        DRAM_EX_TYPE_o[`WIDTH_DRAM_EX_TYPE - 1: 0]  <= DRAM_EX_TYPE;
        DRAMWE_o      [`WIDTH_DRAMWE - 1: 0]        <= DRAMWE;
        RegWr_o       [`WIDTH_REGMARK - 1: 0]       <= RegWr;
        RegWe_o       [`WIDTH_RegWE - 1: 0]         <= RegWe;
    end
end


endmodule
