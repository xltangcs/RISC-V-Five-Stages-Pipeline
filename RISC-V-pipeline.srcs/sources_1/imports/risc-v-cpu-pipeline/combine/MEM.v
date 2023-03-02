`ifdef DEBUG
    `include "param.v"
`else
    `include "../param.v"
`endif


module MEM (
    input   wire [`IO_BUS_WIDTH_ADDR - 1: 0]    addr,
    input   wire                                DRAMWE,
    input   wire [1: 0]                         DRAM_EX_TYPE,
    input   wire                                Unsigned,
    input   wire [`IO_BUS_WIDTH_DATA - 1: 0]    bus_rd,
    input   wire [`IO_BUS_WIDTH_DATA - 1: 0]    din,
    input   wire [`IO_BUS_WIDTH_DATA - 1: 0]    bus_rd_WB,
    output  wire [`IO_BUS_WIDTH_ADDR - 1: 0]    bus_addr,
    output  wire [`IO_BUS_WIDTH_DATA - 1: 0]    bus_wd,
    output  wire                                bus_we,
    output  wire [`IO_BUS_WIDTH_CTRL - 1: 0]    bus_ctrl,
    output  wire [`IO_BUS_WIDTH_DATA - 1: 0]    DRAMRd
);

wire TYPE_B, TYPE_H, TYPE_HB;

reg [31: 0] rd_reg;
reg [31: 0] DRAMRd_reg;
reg [31: 0] din_reg;

assign bus_addr = addr;
assign bus_we   = DRAMWE;
assign bus_ctrl = {DRAMWE};
assign bus_wd   = din_reg;
assign DRAMRd   = DRAMRd_reg;

assign TYPE_B    = DRAM_EX_TYPE[`DRAM_EX_B_BIT];
assign TYPE_H    = DRAM_EX_TYPE[`DRAM_EX_H_BIT];
assign TYPE_HB   = TYPE_H | TYPE_B;

/****************************************************************
                        ��ȡ�׶�
*****************************************************************/
// ��д��������
assign DRAMRd  = DRAMRd_reg;

// ���ݵ�λ��ַ������λ
always @(*) begin
    case(addr[1: 0])
        2'b00:
            rd_reg = bus_rd[31: 0];
        2'b01:
            rd_reg = (TYPE_HB) ? {8'b0, bus_rd[31: 8]} : bus_rd[31: 0];
        2'b10:
            rd_reg = (TYPE_HB) ? {16'b0, bus_rd[31: 16]} : bus_rd[31: 0];
        default:
            rd_reg = (TYPE_B) ? {24'b0, bus_rd[31: 24]} : bus_rd[31: 0];
    endcase
end

// �Զ�ȡ���������չ
always @(*) begin
    DRAMRd_reg[7: 0] = rd_reg[7: 0];
    if (TYPE_B) begin
        DRAMRd_reg[31: 8] = (Unsigned) ? {24'b0} : {24{rd_reg[7]}};
    end
    else if (TYPE_H) begin
        DRAMRd_reg[31: 8] = (Unsigned) ? {16'b0, rd_reg[15: 8]} : {{16{rd_reg[15]}}, rd_reg[15: 8]};
    end
    else begin
        DRAMRd_reg[31: 8] = rd_reg[31: 8];
    end
end

/****************************************************************
                        д��׶�
*****************************************************************/

// ���ݵ�λ��ַ��д����������λ
always @(*) begin
    case (addr[1: 0])
        2'b00: begin
            din_reg[7: 0]   = din[7: 0];
            din_reg[15: 8]  = (TYPE_B) ? bus_rd_WB [15: 8] : din[15: 8];
            din_reg[31: 16] = (TYPE_HB) ? bus_rd_WB [31: 16] : din[31: 16];
        end
        2'b01: begin
            din_reg[7: 0]   = bus_rd_WB[7: 0];
            din_reg[15: 8]  = din[7: 0];
            din_reg[23: 16] = (TYPE_B) ? bus_rd_WB [23: 16] : din[15: 8];
            din_reg[31: 24] = (TYPE_HB) ? bus_rd_WB [31: 24] : din[23: 16];
        end
        2'b10: begin
            din_reg[15: 0]  = bus_rd_WB[15: 0];
            din_reg[23: 16] = din[7: 0];
            din_reg[31: 24] = (TYPE_B) ? bus_rd_WB [31: 24] : din[15: 8];
        end
        default: begin
            din_reg[23: 0]  = bus_rd_WB[23: 0];
            din_reg[31: 24] = din[7: 0];
        end
    endcase
end

endmodule