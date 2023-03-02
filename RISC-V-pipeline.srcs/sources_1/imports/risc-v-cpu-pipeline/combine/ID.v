module ID (
           input    wire            clk,
           input    wire            rst_n,
           input    wire [31: 0]    inst,
           input    wire [4: 0]     SextOpe,
           input    wire            RegWe,
           input    wire [31: 0]    RegWd,
           input    wire [4: 0]     RegWr,
           output   wire [31: 0]    rd1,
           output   wire [31: 0]    rd2,
           output   wire [31: 0]    immOut
       );

/***************************************************************
                        ָ��ֽ�
****************************************************************/

wire [4: 0]    rs1;
wire [4: 0]    rs2;
wire [6: 0]    func7;
wire [2: 0]    func3;
wire [6: 0]    opecode;
wire [31: 7]   imm;

assign rs1     = inst[19: 15];
assign rs2     = inst[24: 20];
assign func7   = inst[31: 25];
assign func3   = inst[14: 12];
assign opecode = inst[6: 0];
assign imm     = inst[31: 7];

/***************************************************************
                        �豸����
****************************************************************/


RegFile regFile (
            .clk(clk),
            .rst_n(rst_n),
            .we(RegWe),
            .rs1(rs1),
            .rs2(rs2),
            .wd(RegWd),
            .wr(RegWr),
            .rd1(rd1),
            .rd2(rd2)
        );

ImmGen immGen (
           .imm(imm),
           .SextOpe(SextOpe),
           .out(immOut)
       );



endmodule
