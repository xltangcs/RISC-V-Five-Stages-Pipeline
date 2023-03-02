// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Feb 24 17:18:56 2023
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11648)
`pragma protect data_block
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
bORdvCYgoCjNutQxCVZUXi0oGXc=
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
