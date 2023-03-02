// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Feb 24 15:11:07 2023
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
  assign spo[26:23] = \^spo [26:23];
  assign spo[22] = \<const0> ;
  assign spo[21:20] = \^spo [21:20];
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10672)
`pragma protect data_block
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
i7cPapHncYJV6FENCQ==
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
