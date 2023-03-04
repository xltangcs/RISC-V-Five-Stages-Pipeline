`include "param.v"

module mini_rv (
           output wire [`IO_BUS_WIDTH_ADDR - 1: 0]  mem_addr,
           output wire [`IO_BUS_WIDTH_CTRL - 1: 0]  mem_ctrl,
           output wire [`IO_BUS_WIDTH_DATA - 1: 0]  mem_wd,
           output wire                              mem_we,
           input  wire [`IO_BUS_WIDTH_DATA - 1: 0]  mem_rd,

           input wire           clk,
           input wire           rst_n

       );
       

// ��ַ�ź�
wire [31: 0]    pc_IF, pc_ID, pc_EX, pc4_EX, pc4_MEM, pc4_WB;
wire [31: 0]    pc_IF_ID;
wire [31: 0]    pc_ID_EX;
wire [31: 0]    pc_EX_MEM;
wire [31: 0]    pc4_MEM_WB;


// ָ��
wire [31: 0]    inst_IF;
wire [31: 0]    inst_ID, inst_ID_INSTDIV;
wire [6: 0]     func7_ID   = inst_ID[31: 25], func7_ID_INSTDIV = inst_ID_INSTDIV[31: 25];
wire [2: 0]     func3_ID   = inst_ID[14: 12], func3_ID_INSTDIV = inst_ID_INSTDIV[14: 12];
wire [6: 0]     opecode_ID = inst_ID[6: 0], opecode_ID_INSTDIV = inst_ID_INSTDIV[6: 0];
wire            TYPE_COMP_ID, TYPE_COMP_ID_INSTDIV;
wire            TYPE_LOAD_ID, TYPE_LOAD_ID_INSTDIV;

// ��ȡд����Ϣ
wire [4: 0]     rs1_ID = inst_ID[19: 15];
wire [4: 0]     rs2_ID = inst_ID[24: 20];
wire [31: 0]    rd1_ID;
wire [31: 0]    rd2_ID;
wire [31: 0]    DRAMRd_MEM, DRAMRd_WB;
wire [31: 0]    RegWd_WB;
wire [4: 0]     RegWr_ID, RegWr_EX, RegWr_MEM, RegWr_WB;

// ������
reg  [31: 0]    Anum_ID, Anum2_ID, Bnum_ID, Bnum2_ID;
wire [31: 0]    Anum_EX, Anum2_EX, Bnum_EX, Bnum2_EX;
reg  [31: 0]    Anum_EX_AfterForwarding, Bnum_EX_AfterForwarding;
reg  [31: 0]    Anum2_EX_AfterForwarding, Bnum2_EX_AfterForwarding;
wire [31: 0]    ALUOut_EX, ALUOut_MEM, ALUOut_MEM_mem, ALUOut_WB;
wire [1: 0]     COMPOut_EX, COMPOut_MEM, COMPOut_WB;
wire [31: 0]    COMPExOut_WB;
wire [31: 0]    immOut_ID;
wire [31: 0]    branch_pc_IF;

// �����ź�
wire risk_Ctrl;
wire stop_IF;
wire stop_ID;

// ǰ���ź�
wire            MUX_A_Forwarding;
wire            MUX_B_Forwarding;
wire [31: 0]    forwardingA;
wire [31: 0]    forwardingB;

// �����ź�
wire [3: 0]     PCCTRL_ID, PCCTRL_ID_INSTDIV, PCCTRL_EX;
wire            RegWe_ID, RegWe_ID_INSTDIV, RegWe_EX, RegWe_MEM, RegWe_WB;
wire            ASel_ID, ASel_ID_INSTDIV, ASel_EX;
wire            BSel_ID, BSel_ID_INSTDIV, BSel_EX;
wire            DRAMWE_ID, DRAMWE_ID_INSTDIV, DRAMWE_EX, DRAMWE_MEM;
wire [1: 0]     RWSel_ID, RWSel_ID_INSTDIV, RWSel_EX, RWSel_MEM, RWSel_WB;
wire [4: 0]     SextOpe_ID, SextOpe_ID_INSTDIV;
wire [2: 0]     ALUop_ID, ALUop_ID_INSTDIV, ALUop_EX;
wire            Unsigned_ID, Unsigned_ID_INSTDIV, Unsigned_EX, Unsigned_MEM;
wire [1: 0]     DRAM_EX_TYPE_ID, DRAM_EX_TYPE_ID_INSTDIV, DRAM_EX_TYPE_EX, DRAM_EX_TYPE_MEM;
wire [31: 0]    DRAMIn_MEM;
wire            inst_div;


`ifdef DEBUG
    reg [4: 0] wbInst;
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            wbInst <= 0;
        end
        else if (stop_IF) begin
            wbInst[4: 0] <= {wbInst[3: 2], 1'b0, wbInst[1: 0]};
        end
        else if (stop_ID) begin
            wbInst[4: 0] <= {wbInst[3: 2], 2'b0, wbInst[0]};
        end
        else begin
            wbInst[4: 0] <= {wbInst[3: 0], 1'b1};
        end
    end
    // ������ CPU �У�wb_have_inst ʼ��Ϊ 1
    assign wb_have_inst = wbInst[4];
    assign wb_pc        = pc4_WB - 4;
    assign wb_ena       = RegWe_WB;
    assign wb_reg       = RegWr_WB;
    assign wb_value     = RegWd_WB;
`endif

/****************************************************************
                        ȡֵ�׶�
*****************************************************************/

IF If (
       .clk(clk),
       .rst_n(rst_n),
       .stop_IF(stop_IF),
       .PCCTRL(PCCTRL_EX),
       .branch_pc(branch_pc_IF),
       .COMPOut(COMPOut_EX),
       .inst(inst_IF),
       .inst_ID(inst_ID),
       .pc(pc_IF),
       .risk_Ctrl(risk_Ctrl)
   );

IF_ID if_id (
          .clk(clk),
          .rst_n(rst_n),
          .stop_IF(stop_IF),
          .pc(pc_IF),
          .inst(inst_IF),
          .pc_o(pc_ID),
          .inst_o(inst_ID)
      );

EX_IF ex_if (
    .clk(clk), 
    .rst_n(rst_n),
    .branch_pc(ALUOut_EX),
    .branch_pc_o(branch_pc_IF)
);

/****************************************************************
                        ����׶�
*****************************************************************/
InstDivider instDivider (
    .inst_in(inst_ID),
    .inst_out(inst_ID_INSTDIV)
);

// ����ģ��
CTRL ctrl (
         .clk(clk),
         .rst_n(rst_n),
         .func7(func7_ID),
         .func3(func3_ID),
         .opecode(opecode_ID),
         .RegWe(RegWe_ID),
         .ASel(ASel_ID),
         .BSel(BSel_ID),
         .DRAMWE(DRAMWE_ID),
         .RWSel(RWSel_ID),
         .SextOpe(SextOpe_ID),
         .DRAM_EX_TYPE(DRAM_EX_TYPE_ID),
         .TYPE_COMP(TYPE_COMP_ID),
         .TYPE_LOAD(TYPE_LOAD_ID),
         .PCCTRL(PCCTRL_ID),
         .inst_div(inst_div),
         .ALUop(ALUop_ID),
         .Unsigned(Unsigned_ID)
     );

CTRL ctrl_INSTDIV (
         .clk(clk),
         .rst_n(rst_n),
         .func7(func7_ID_INSTDIV),
         .func3(func3_ID_INSTDIV),
         .opecode(opecode_ID_INSTDIV),
         .RegWe(RegWe_ID_INSTDIV),
         .ASel(ASel_ID_INSTDIV),
         .BSel(BSel_ID_INSTDIV),
         .DRAMWE(DRAMWE_ID_INSTDIV),
         .RWSel(RWSel_ID_INSTDIV),
         .SextOpe(SextOpe_ID_INSTDIV),
         .DRAM_EX_TYPE(DRAM_EX_TYPE_ID_INSTDIV),
         .TYPE_COMP(TYPE_COMP_ID_INSTDIV),
         .TYPE_LOAD(TYPE_LOAD_ID_INSTDIV),
         .PCCTRL(PCCTRL_ID_INSTDIV),
         .ALUop(ALUop_ID_INSTDIV),
         .Unsigned(Unsigned_ID_INSTDIV)  
);

ID Id (
       .clk(clk),
       .rst_n(rst_n),
       .inst(inst_ID),
       .SextOpe(SextOpe_ID),
       .RegWe(RegWe_WB),
       .RegWd(RegWd_WB),
       .RegWr(RegWr_WB),
       .rd1(rd1_ID),
       .rd2(rd2_ID),
       .immOut(immOut_ID)
   );

ID_EX id_ex (
          .clk(clk),
          .rst_n(rst_n),
          .stop_ID(stop_ID),
          .inst_div(inst_div),
          .pc(pc_ID),
          .ASel(ASel_ID),
          .BSel(BSel_ID),
          .Anum(Anum_ID),
          .Bnum(Bnum_ID),
          .Anum2(Anum2_ID),
          .Bnum2(Bnum2_ID),
          .ALUop(ALUop_ID),
          .Unsigned(Unsigned_ID),
          .DRAM_EX_TYPE(DRAM_EX_TYPE_ID),
          .DRAMWE(DRAMWE_ID),
          .RWSel(RWSel_ID),
          .RegWr(inst_ID[11: 7]),
          .RegWe(RegWe_ID),
          .PCCTRL(PCCTRL_ID),

          .ASel_div(ASel_ID_INSTDIV),
          .BSel_div(BSel_ID_INSTDIV),
          .ALUop_div(ALUop_ID_INSTDIV),
          .Unsigned_div(Unsigned_ID_INSTDIV),
          .DRAM_EX_TYPE_div(DRAM_EX_TYPE_ID_INSTDIV),
          .DRAMWE_div(DRAMWE_ID_INSTDIV),
          .RWSel_div(RWSel_ID_INSTDIV),
          .RegWr_div(inst_ID_INSTDIV[11: 7]),
          .RegWe_div(RegWe_ID_INSTDIV),
          .PCCTRL_div(PCCTRL_ID_INSTDIV),

          .pc_o(pc_EX),
          .ASel_o(ASel_EX),
          .BSel_o(BSel_EX),
          .Anum_o(Anum_EX),
          .Bnum_o(Bnum_EX),
          .Anum2_o(Anum2_EX),
          .Bnum2_o(Bnum2_EX),
          .ALUop_o(ALUop_EX),
          .Unsigned_o(Unsigned_EX),
          .DRAM_EX_TYPE_o(DRAM_EX_TYPE_EX),
          .DRAMWE_o(DRAMWE_EX),
          .RWSel_o(RWSel_EX),
          .RegWr_o(RegWr_EX),
          .RegWe_o(RegWe_EX),
          .PCCTRL_o(PCCTRL_EX)
      );

// ������ѡ��
always @(*) begin
    // A������ѡ��
    Anum_ID  = (ASel_ID == `ASEL_REG) ? rd1_ID : pc_ID;
    Anum2_ID = (ASel_ID == `ASEL_REG) ? pc_ID : rd1_ID;
end

always @(*) begin
    // B������ѡ��
    Bnum_ID  = (BSel_ID == `BSEL_REG) ? rd2_ID : immOut_ID;
    Bnum2_ID = (BSel_ID == `BSEL_REG) ? immOut_ID : rd2_ID;
end

/****************************************************************
                        ִ�н׶�
*****************************************************************/

// ǰ����ѡ��
always @(*) begin
    // A������ѡ��
    if (MUX_A_Forwarding == `ASEL_FORWARDING) begin // ��ǰ��
        Anum_EX_AfterForwarding  = (ASel_EX == `ASEL_REG) ? forwardingA : Anum_EX;
        Anum2_EX_AfterForwarding = (ASel_EX == `ASEL_REG) ? Anum2_EX : forwardingA;
    end
    else begin  // ��ǰ��
        Anum_EX_AfterForwarding  = Anum_EX;
        Anum2_EX_AfterForwarding = Anum2_EX;
    end
end
always @(*) begin
    // A������ѡ��
    if (MUX_B_Forwarding == `BSEL_FORWARDING) begin // ��ǰ��
        Bnum_EX_AfterForwarding  = (BSel_EX == `BSEL_REG) ? forwardingB : Bnum_EX;
        Bnum2_EX_AfterForwarding = (BSel_EX == `BSEL_REG) ? Bnum2_EX : forwardingB;
    end
    else begin  // ��ǰ��
        Bnum_EX_AfterForwarding  = Bnum_EX;
        Bnum2_EX_AfterForwarding = Bnum2_EX;
    end
end


EX Ex (
       .Ain(Anum_EX_AfterForwarding),
       .Bin(Bnum_EX_AfterForwarding),
       .COMPAin(Anum2_EX_AfterForwarding),
       .COMPBin(Bnum2_EX_AfterForwarding),
       .ALUop(ALUop_EX),
       .Unsigned(Unsigned_EX),
       .COMPOut(COMPOut_EX),
       .ALUOut(ALUOut_EX)
   );

assign pc4_EX = pc_EX + 4;


EX_MEM ex_mem (
           .clk(clk),
           .rst_n(rst_n),
           .pc(pc4_EX),
           .DRAM_EX_TYPE(DRAM_EX_TYPE_EX),
           .DRAMWE(DRAMWE_EX),
           .RWSel(RWSel_EX),
           .RegWr(RegWr_EX),
           .RegWe(RegWe_EX),
           .COMPOut(COMPOut_EX),
           .ALUOut(ALUOut_EX),
           .DRAMIn(Bnum2_EX_AfterForwarding), // ���� s ��ָ�������������ӣ����� Bnum2 ���Եõ��Ĵ�������ǰ������
           .Unsigned(Unsigned_EX),

           .pc_o(pc4_MEM),
           .DRAM_EX_TYPE_o(DRAM_EX_TYPE_MEM),
           .DRAMWE_o(DRAMWE_MEM),
           .RWSel_o(RWSel_MEM),
           .RegWr_o(RegWr_MEM),
           .RegWe_o(RegWe_MEM),
           .COMPOut_o(COMPOut_MEM),
           .ALUOut_o(ALUOut_MEM),
           .ALUOut_mem_o(ALUOut_MEM_mem),
           .DRAMIn_o(DRAMIn_MEM),
           .Unsigned_o(Unsigned_MEM)
       );

/****************************************************************
                        �ô�׶�
*****************************************************************/
reg [31: 0] bus_rd_WB;

always @(posedge clk) begin
    bus_rd_WB <= DRAMRd_MEM; // ������ʱ���������ȳ�
end

MEM mem (
    .addr(ALUOut_MEM_mem),
    .DRAMWE(DRAMWE_MEM),
    .DRAM_EX_TYPE(DRAM_EX_TYPE_MEM),
    .Unsigned(Unsigned_MEM),
    .bus_rd(mem_rd),
    .din(DRAMIn_MEM),
    .bus_rd_WB(bus_rd_WB),
    .bus_addr(mem_addr),
    .bus_wd(mem_wd),
    .bus_we(mem_we),
    .bus_ctrl(mem_ctrl),
    .DRAMRd(DRAMRd_MEM)
);

MEM_WB mem_wb (
           .clk(clk),
           .rst_n(rst_n),
           .pc4(pc4_MEM),
           .RWSel(RWSel_MEM),
           .RegWr(RegWr_MEM),
           .RegWe(RegWe_MEM),
           .COMPOut(COMPOut_MEM),
           .ALUOut(ALUOut_MEM),
           .DRAMRd(DRAMRd_MEM),

           .pc4_o(pc4_WB),
           .RWSel_o(RWSel_WB),
           .RegWr_o(RegWr_WB),
           .RegWe_o(RegWe_WB),
           .COMPOut_o(COMPOut_WB),
           .ALUOut_o(ALUOut_WB),
           .DRAMRd_o(DRAMRd_WB)
       );

/****************************************************************
                        д�ؽ׶�
*****************************************************************/

assign COMPExOut_WB = {31'b0, COMPOut_WB[0]};// �ԱȽϽ�����з�����չ

WB Wb (
       .pc4(pc4_WB),
       .COMPExOut(COMPExOut_WB),
       .ALUOut(ALUOut_WB),
       .DRAMRd(DRAMRd_WB),
       .RWSel(RWSel_WB),
       .RegWd(RegWd_WB)
   );


/****************************************************************
                        ǰ�ݺ����⴦��
*****************************************************************/

reg isLoad; // ��Ҫ���� EX �׶ε������ж�
always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        isLoad <= 1'b0;
    end
    else begin
        isLoad <= TYPE_LOAD_ID;
    end
end

reg rd_Type_EX, rd_Type_MEM;
wire [31: 0] rd_EX  = (rd_Type_MEM) ? {31'b0, COMPOut_MEM[0]} : ALUOut_MEM[31: 0];
wire [31: 0] rd_MEM = RegWd_WB[31: 0];

assign rs1_ID      = inst_ID[19: 15];
assign rs2_ID      = inst_ID[24: 20];

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        rd_Type_EX <= 0;
        rd_Type_MEM <= 0;
    end
    else begin
        rd_Type_EX  <= TYPE_COMP_ID;
        rd_Type_MEM <= rd_Type_EX;
    end
end

ForwardingUnit forwardingUnit (
                   .clk(clk),
                   .rst_n(rst_n),
                   .rs1_ID(rs1_ID),
                   .rs2_ID(rs2_ID),
                   .wr_EX(RegWr_EX),
                   .wr_MEM(RegWr_MEM),
                   .we_EX(RegWe_EX),
                   .we_MEM(RegWe_MEM),
                   .rd_EX(rd_EX),
                   .rd_MEM(rd_MEM),
                   .MUX_A_forwarding(MUX_A_Forwarding),
                   .MUX_B_forwarding(MUX_B_Forwarding),
                   .forwardingA(forwardingA),
                   .forwardingB(forwardingB)
               );


ExceptionCTRL exceptionCTRL (
                  .rs1_ID(rs1_ID),
                  .rs2_ID(rs2_ID),
                  .wr_EX(RegWr_EX),
                  .isLoad(isLoad),
                  .inst_div(inst_div),
                  .isRiskCtrl(risk_Ctrl),
                  .stop_IF(stop_IF),
                  .stop_ID(stop_ID)
              );

endmodule
