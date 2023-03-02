// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Feb 24 20:59:02 2023
// Host        : DESKTOP-FELKDMR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Desktop/RISC-V-pipeline/RISC-V-pipeline.gen/sources_1/ip/inst_mem/inst_mem_sim_netlist.v
// Design      : inst_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_mem,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module inst_mem
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [13:0]a;
  wire [30:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [31:3]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \<const0> ;
  assign spo[30:28] = \^spo [30:28];
  assign spo[27] = \<const0> ;
  assign spo[26:20] = \^spo [26:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \^spo [18];
  assign spo[17] = \<const0> ;
  assign spo[16:7] = \^spo [16:7];
  assign spo[6] = \<const0> ;
  assign spo[5:4] = \^spo [5:4];
  assign spo[3] = \<const0> ;
  assign spo[2:0] = \^spo [2:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "14" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16384" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "inst_mem.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  inst_mem_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[31],\^spo }),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M9ERyrMNmk2Jjyg6ZCGYQpTqx5C+74+ICn/vAQ5KoRuxJNbql8tHJjFcOe3FAJX14Nokq4wtfvZP
2sPXAs/eYYzjjbnt4nx8oZRRPy0XyDpvba/qxyqBSxjChIoPMDwpXnxi+chZJU5N1zCNt9FZPAep
nLCjMCkQTlKbP3cUJIY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FBAg02qOh8M8uZkNvwWHoY3ELncwvHjjgL2y2qLN7xuxxaPQj3LdyD/IETTPdSjNCB/rhpJxbT1y
U5fbF28Hkp+bzDuxeTWPX251wMhiEmdm4jhyMl2z+GRf2Z6VJ4bVM5bieaJvsbjuyQ9Az6TDmueI
14citDEbyRCyJD9EiVckdS2mZcTl37oVFebKnIeJGmNjOc2XrcM84JVJIG5iv3ryS2hAG9/84hEr
u3DYC+xS2w5swJXVSf0zV+w8xZulS3PTPLELIM8O+SEFdHetZKnrgG1aJ7V5xu0RniGAsyVwVbgu
M1jPqNLyU+9kyETKfG9jcGEIM2I2gUfmOvRs+g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TYvdYOtu2OcY/hp0LCFlgwGgJeLJ5MSBDPjuyI3760LiXtklDVs7CUFlvRRXMgAzbHlMXbiHp/Xl
cvmN035ayt8D8gPWRXxnbQf3kRlW6EIFwFMZ1inL9b5f47gsuvCP6MaKiTg0W7+/ZeHbM4jHXvRe
b8HXvQvK5kVwtayEwt0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GkcGg32vdV7ZS9x4Uw9v3hZEcxD5hMmQXUqa6shDPbzqUGIxrKpTOb9W4Sgi8rq+qw7QpAZp2JW/
MkYAH1WikFlf+XWG57y55EFV7oRoKQDh2Yz0sZEwVhwTGwSAqfnjrmPITofdG5eiey1ySGprEKsT
mqWAV+ZN7TkQkKup0Ukf1O+8giYKT/7UibTRqG/CT9dgU/4atPgYh2QjNMVrsAH/uzDxh7stQMYe
nkjZBkpLWOq7mxEXTKVtYAD/8G5qCJELRcvCuUKYz4Une1wDj+L/vwRK3IAdWKQ+/5mvj0q5XEm7
IKu5HYvalbySwRWzaB00uobXZorNhfwSv45jHg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JnT3Bfv/DUBx2mIm4+jpmHjzhKoX4mNpcc/lgscv3iYrJw8Uble396hMwPsVZ+kkAsmYtegNCiTG
Z7kqnoNeWHv+Grdizsq0QM9S2KJ5EoZhjelE+3Cii/ztNHf7Y3c0nBPnioUQ5YmWk7vgoQl3SJ3d
vwD3G0c+fGJBRpi14hTJOB2wtu4EeWcJ1f+01LjKINeucLlwacjnN0tElyRgCNKfsRDAQiMqwKqg
XCleeNY0cyLXGI30pXMpnbLizYlNKgVD6DSeNaby0dhW4phR0a+9xteo8l8eRVzTO+VSOcYSy8rU
6Uj2y0Up19vcq91C+/YeHlh24VwNI2TJeUEDwQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AWr8D+IaT/X0jMJSrwmWnhWOjt0+8oyULINYaH7QGBLgqKCVtf8rqo68R3/TZ8gTkN73fZOx0QCU
3WEp7Ga1gUsqEgy+2zGlncYhOzx62FJm4Pm7S6LbE1qdg3/9Pp55JLaf1ouYlZccQJ+yawj0HgL4
zR0T347Zg2aIFxQZ28icCuJbxAZsZgAT30scXsTMMvXlQQ9NI21OjirKgHRn3dldIjpkL+BrVBkQ
Q7MMiTBhpCn/c+WXk4H9BPc3vMrVoh6r5oo+e1858Hk7osyxNI9zuACaGwdAatsW756kQBMsQoUj
TmJksSfucjrHVSuLFffpztOARH3LXrhZcCZdoQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fPVwMHnHe1L8weZTnbBxjlAabwZZnO4DZSHaO7tHGHAw6U+w+7Rc3BwfQXtiTyGXP15rvoLhvVpo
i1Tzs4zrV1X8vlWrxhS6XA2VO4RFkpCjmnHpvdgnW9mpk7w90QOEZIWZQST/o15t0wDT/kv4J36r
Ho59mVFCGQQSSYx0209u6sG2rNpJ5HtWMM+tDEDHUArucrBmPOoZSq0VSQsTHtjJQxr3U5fv9l6q
aEBWkjnLJ6zqLkt12B3q7V3iFORPpz6XNMqA6wzArzWirzgTCw3CduiSAgbNgoGmV4eNrVb2DfOT
5V4ni19GigMG1fHCD9dNPWGiRCWpY6iiN6iE1w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NkQB16Pku9sdGFuAkY+DjFhWzKYvb26AsK/VO1//MS5ztnK+V9d/0K8nVee9kGDNC4zorSd1NjRc
Jkj/JJm1k/9QiQQwOSB/94zKWUyVH2Rvw3UOuaTu9pWRQsIdmPNwXBKCOF5L17HHGaNqYzvHF7YY
REIp6VR4HcyLq2beYXn09Mq0f84obUr7+CMgh8i1SaLa/ydMPS9xsm1i0NFB3qcEC0dDq6xklwsX
s198UBI5mBJTEUKi38eytWXzQPFTmqdlD3Qn4CgstxSdoLrFHchISqt+L62U4xU6aVyYXmVaeebF
I1F3MAXQZwZwGETW7RW9t/+3pJtkjPfPtdnqu/Sg+zP+vLjSV/NcONctKnTj86/z+TTehoSH8ccr
BsjV0PhAtR3+RTr3VGkKJoUNeE8yFQIHlES8UamuSNMh5XrbmcbFx22MZ9gLOa350ytm1N124jNF
V860l5gGbt/8NcGf8I3EVPrYblJ5ZLGsZkVg1cKBMUys1yMm6Ci2Mruc

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JDELzo7luYHcwIl8sAAMR3hvm1tr+ZaD3VKTvYj1uwYFwuIPCkUfjVi8OMAgp3Hh/R1wDZSeoY7T
xpO0sKF9MsovKwwArnByLL8zZflfJIe5AmC+jE5a8qUxydp4liMdOypRTLu6U6EUYUwSj6VOR0Uj
deCoQCr/gVZ2GdNKF5sKZsGXZSvx1Wag70BiGs69qhgUvVVlpbqpNRSB0DR/2IuSKCHhkucLXiTk
zVS7zC7GiyNYE6l/Yu5Ov25Cl+lY5cMZkqKvIFm90UiTBNYk4No5ofXnH/E0rNcbydv0BvWDmgKt
NXVratbi0ztKLb27z2lw5ZZzXCihB41kx4VjqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11008)
`pragma protect data_block
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
CpSYYH3mTQ==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
