`ifdef DEBUG
    `include "param.v"
`else
`include "../../param.v"
`endif

module CTRL (
           input   wire        clk,
           input   wire        rst_n,
           input   wire[6: 0]  func7,
           input   wire[2: 0]  func3,
           input   wire[6: 0]  opecode,
           output  reg         RegWe,
           output  reg         ASel,
           output  reg         BSel,
           output  reg         DRAMWE,
           output  reg[1: 0]   RWSel,
           output  wire[4: 0]  SextOpe,
           output  wire[1: 0]  DRAM_EX_TYPE,
           output  wire        TYPE_COMP,
           output  wire        TYPE_LOAD,
           output  reg [`WIDTH_PCCTRL - 1: 0]  PCCTRL,
           output  wire        inst_div,
           output   wire [2: 0]     ALUop,
           output   wire            Unsigned
       );

/***************************************************************
                        ָ������
****************************************************************/

wire r, i, s, b, u, j;
reg  [5: 0] type_reg;

wire TYPE_COMP_R, TYPE_COMP_I;  // �Ƚ�ָ��(R:��Ĵ������ݱȽ� ; I:�����������ݱȽ�)
wire TYPE_JUMP;                 // ��������תָ��
wire TYPE_PC;                   // ��ҪPC�������е�ָ��
wire TYPE_MOVE;                 // ��λָ��
wire TYPE_NOP;                  // ��ָ��

// ָ������
assign {r, i, s, b, u, j} = type_reg[5: 0];

// ������չ����
assign SextOpe     = {i, s, b, j, u};
assign TYPE_COMP   = ({opecode[6], opecode[4: 2]} == 4'b0100 && func3[2:1] == 2'b01) ? 1'b1 : 1'b0;
assign TYPE_COMP_R = (TYPE_COMP & opecode[5]) ? 1'b1 : 1'b0;
assign TYPE_COMP_I = (TYPE_COMP & ~opecode[5]) ? 1'b1 : 1'b0;
assign TYPE_JUMP   = (j || (opecode[6: 2] == 5'b11001)) ? 1'b1 : 1'b0;
assign TYPE_PC     = ((j | b | TYPE_COMP ) == 1'b1 || (opecode[6: 2] == 5'b00101));
assign TYPE_LOAD   = (opecode[6: 2] == 5'b00000) ? 1'b1 : 1'b0;

assign TYPE_NOP    = (opecode[1: 0] == 2'b00) ? 1'b1 : 1'b0;

/***************************************************************
                        ָ�������ж�
****************************************************************/

always @ (*) begin
    case (opecode[6:2])
        5'b01100: begin
            type_reg = 6'b100000; // R ��
        end
        5'b01101: begin
            type_reg = 6'b000010; // U ��
        end
        5'b00101: begin
            type_reg = 6'b000010; // U ��
        end
        5'b11011: begin
            type_reg = 6'b000001; // J ��
        end
        5'b01000: begin
            type_reg = 6'b001000; // S ��
        end
        5'b11000: begin
            type_reg = 6'b000100; // B ��
        end
        default: begin
            type_reg = 6'b010000; // I ��
        end
    endcase
end

/***************************************************************
                        �Ĵ���д�����
****************************************************************/

always @(*) begin
    if (s | b | TYPE_NOP) begin
        RegWe = `REGWE_READ;
    end
    else begin
        RegWe = `REGWE_WRITE;
    end
end

/***************************************************************
                        ALU�ж˿��������
****************************************************************/
// ALU�� A �˿��������
always @(*) begin
    if (TYPE_PC) begin
        ASel = `ASEL_PC;
    end
    else begin
        ASel = `ASEL_REG;
    end
end

// ALU�� B �˿��������
always @(*) begin
    if ((r == 1'b1 && TYPE_COMP_R == 1'b0) || TYPE_COMP_I == 1'b1) begin
        BSel = `BSEL_REG;
    end
    else begin
        BSel = `BSEL_IMM;
    end
end

/***************************************************************
                        д�Ĵ����������
****************************************************************/

always @(*) begin
    if (TYPE_NOP) begin
        RWSel = `REGWD_ALUOUT;
    end
    else if (TYPE_LOAD) begin
        RWSel = `REGWD_DRAMRD; // Load ָ��
    end
    else if (TYPE_COMP) begin
        RWSel = `REGWD_COMPOUT; // �Ƚ�ָ��
    end
    else if (TYPE_JUMP) begin
        RWSel = `REGWD_PC; // ��������תָ��
    end
    else begin
        RWSel = `REGWD_ALUOUT;
    end
end

/***************************************************************
                        д�������
****************************************************************/

always @(*) begin
    if (s) begin
        DRAMWE = `DRAM_WRITE;
    end
    else begin
        DRAMWE = `DRAM_READ;
    end
end

/***************************************************************
                        ���������չ����
****************************************************************/

assign DRAM_EX_TYPE[1: 0] = {
           ((func3[1: 0] == 2'b01) ? 1'b1 : 1'b0),   // lh | sh
           ((func3[1: 0] == 2'b00) ? 1'b1 : 1'b0)    // lb | sb
       };

/***************************************************************
                        ָ����ת����
****************************************************************/

always @(*) begin
    PCCTRL[`PCCTRL_J] = TYPE_JUMP;
    PCCTRL[`PCCTRL_B] = b;
    case (func3)
        3'b000: begin // beq
            PCCTRL[1: 0] = `PCCTRL_B_EQ;
        end
        3'b001: begin // bne
            PCCTRL[1: 0] = `PCCTRL_B_NE;
        end
        3'b100: begin // blt
            PCCTRL[1: 0] = `PCCTRL_B_LT;
        end
        3'b110: begin // bltu
            PCCTRL[1: 0] = `PCCTRL_B_LT;
        end
        default: begin // bge / bgeu
            PCCTRL[1: 0] = `PCCTRL_B_GEQ;
        end
    endcase
end

/***************************************************************
                        ָ���ַ���
****************************************************************/
// ����������ֹͬһָ������ͣ�ٲ�ֶ��
reg counter;

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        counter <= 0;
    end
    else if (counter == 1) begin
        counter <= ~counter;
    end
    else begin
        counter <= inst_div;
    end
end

assign inst_div = (counter) ? 0 : (s & (DRAM_EX_TYPE[0] | DRAM_EX_TYPE[1]));

/***************************************************************
                        �������ͷ���
****************************************************************/

ALUope aluOpe (
           .func7(func7),
           .func3(func3),
           .opecode(opecode),
           .ALUop(ALUop),
           .Unsigned(Unsigned)
       );

endmodule
