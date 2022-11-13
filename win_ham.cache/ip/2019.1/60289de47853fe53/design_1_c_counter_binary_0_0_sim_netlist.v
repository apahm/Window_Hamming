// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Nov 10 16:32:41 2022
// Host        : DESKTOP-8UM2N4A running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_13,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN design_1_aclk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 16}" *) output [15:0]Q;

  wire CE;
  wire CLK;
  wire [15:0]Q;
  wire SCLR;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "16" *) 
(* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [15:0]L;
  output THRESH0;
  output [15:0]Q;

  wire \<const1> ;
  wire CE;
  wire CLK;
  wire [15:0]Q;
  wire SCLR;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "16" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_13_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
hkYW+OZm6k9gF5yAUfXGm/n8kfXYD6tjFQYha968Ws0SqrM/NNAjCrrtMG8kIqTbkipnmceefxNr
sB0PtSpUrw==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NEPpD4CxNBVJLV3hg1agn83QnqiCz3YuR89MlVuNyQGERKVJ+uGolFDqHFzBKLQArFTiHBWivkzK
A2DQ42XdOxp30NKOgHjrjgmF+fZMjDs24rn3Ue1INLHwTS5RT84Kih7Jx/7R0dl03/COJq+33l9u
7l+ArdY7mLwqqI9iIjU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cfBwEwc95LpKuxDGqpON2gGac620iHNKrm/QNXYg3/OFA5ZQNdpdhRz4vCTQRVbOg7b1nIox6GR8
TD/cf0JW38RU0NuY+TR6CkFT19NCdy67gR6JTDdXifhr/zTKjOL5gvp0XjT9PSLwwPyDirNX4TMa
9y9X5pf4gEnt0dikHNgySZO+Qpr30MP7n6oAjuxowlf45cfmPqZthYPnIjBSCdQGBPfSF+kZ2F1N
XCDEja5xE4CQshPPodH5njadc6kj7/qp9C4PfKcyNtDug+qsws9UK25Z2IFc8vk6/15HlIkQHkXv
Wq0iHaPLidqh3035FinHyPD/FDnfGGa5Oa2qcg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QmjD3HAHcP+h0RsjR0iH8h2N6drNxei50nfQN9RC8HobMEaARq/6rKjZEhHXMSCStQeCMhyVKRmN
HM7ZrqMf3W0s/8U4QMqp3M1VuYXVjEe2PCIpvtRcMY3JngdSWOydG2dH6dDA16ehxinMKgIr0TjA
PXA+lfyX6yTs1FWrne/6ufrl6ZAPpNG7EDKQ2aHqSm8DEXT1BJYMblBfAjAajwaJmPEu1aDlQeNo
onryTiFJkKP92pcZLCCufZL8ZAJ5uMvZZxiZRsiLd0BnCfOe3rl9AON+q53U+iK11EvAkpIBT+Cc
VYb5NqVAVaqXbQrqo3+YHEW5ft3fM9kZnlFDew==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FkHW107swc8fPv4xOTlQJU6PWERObturlywl6rsGCswc/v367bmQ1Maze/8QdmUPjEYwhAcHKVMu
7U4o3CvYhmrDpYiUQdQQ0B7gAbMZbJ8MFY5jRxn7KYDk+Bi9Ov8092IdW1a51FPWEVPmF4Kn6z4E
DSqpQDL58qieEUnrU2Ltb4GLJc3NrWTLvnbvRtHUUuQWTMZTQ7WqX4iH2dZ/EICpbRjlAF50iMAS
YHuuFTRKXcIFQlKYRyeQV4nyaA5JGbb3RC3N/Q2IZjdSXqQ9EOpmdhttpxReCnsdJiD/pPCtf7ZN
d/TheLy1Va2FZR+p4MozZorVui5/FtcCwKy6aw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NgZm/7Jvy0UZQRVxBVxeZ/odxMd59IlnRFHjM+6Bof6o6u4Qy4u9MOoQ3Sr2paPuGq+B+5EhdcD8
a5WGiurBrPW0qF+L2CoUJsDqz0WonRehZECQynibSUlmctvvMyr790pwb+C78gtW47p8uALYdUCJ
NhcDkV8fE3jFdDEYmfQ=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TxQNdd2WOThZCBZEYNgXxai4jK9AqWD/GRadYnarEfzmLUfcNDUoG7DxVWHCdTVuW8i2qZpouT1H
FUHt76rzZk8vI2tFLfUbKyTaRqik1aYwOCp1ZdqbgqQEDhBRWJjGxcJuxZbSQ2z8IUgiJ0eT148+
nf9UmzvYS1jrIsN/a7K4EjyRNMk0V917y85rxdk7itlisaUw4Cm72z9slByFtALj6/077uPjcK9U
mbWm7PbXk8PT44eQeaJl990wlWvD5/8BZS6AHqjg8520Xs+jftSeB6aNqTiYxfp21FJqmexwo7cG
G3BH/DRHhP7ZIsXHqSaJJFo20Nx9VgpLuF5t2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gAf7g2jAMwy6a0CykLWDJ7eyvijnvfVRg2nbfnGC8Y+CU8aLpCvfn4Ovz7+PDE0TUtuJPb3X0hfD
M/6l1LetC41Xz6SMnJ0n1UcY9bE0b6eEaw50489RJfmkBf8bRqAOxstaf39KjsaXH0RnP7wxGsvb
2yZY3iB9FmA+KTGGYSZyR3I/a54NQ2DtH4ewUNIErKfXV+qoDyJokh8uGNINh96/JHOC26n0/bK8
5X8r4sXeyx7ArNbCIoak2weLzQCm+5l1ODSsNybPKzyuaTvDdQCINoimHk/cLF/wq8aX2srDJb5x
4elzBw/Zbw+S7iO7y+QunJsFpCL6OjEBIjbiLw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mP/uI14mcFLb0TtGBVcAD3zPRrFs/vLQEFnGrCVt7/z/XDNjBHWdxW5nQ15lijZvqGWu5whhXZ0k
4A2DczByaFO6VTn4cheXY1IoJfl2H0Flv1aca0M7NKRSNYGq9i1oVj2LlxZxuq6rYWCck+nLKQry
7rvurkUhGGlsVK2VYLE/DaNFhgWY2jg0sam++5Z86akt0xsEoP2JfkQaN/XjQYY8YdIjGkelGUCw
dWl2HzyErLc1XmIzlaUMTuCJAgO5KGFFIaj3XtIgsrOGD+S4nMGZeqx9LCRNtJ8EUAJLvZ2SSxmZ
zyPTxS+Nkla1AnyVRf/K1VtZ5MMg3dvCeWQJpQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10672)
`pragma protect data_block
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
nIk6i3ZRsm95UwbW+Q==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
