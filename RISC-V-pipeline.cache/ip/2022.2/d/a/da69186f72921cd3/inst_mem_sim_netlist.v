// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Feb 24 20:59:01 2023
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11040)
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
