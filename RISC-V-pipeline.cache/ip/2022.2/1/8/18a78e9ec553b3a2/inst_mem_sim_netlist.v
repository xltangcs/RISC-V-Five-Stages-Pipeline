// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Feb 24 20:04:58 2023
// Host        : DESKTOP-FELKDMR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ inst_mem_sim_netlist.v
// Design      : inst_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "inst_mem,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [13:0]a;
  output [31:0]spo;

  wire [13:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
        .spo(spo),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11840)
`pragma protect data_block
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
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
