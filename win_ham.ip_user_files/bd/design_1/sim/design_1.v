//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sun Nov 13 11:22:28 2022
//Host        : DESKTOP-BBGSFV0 running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=27,numReposBlks=27,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (aclk,
    aresetn,
    s_axis_last,
    s_axis_ready,
    s_axis_tdata_im,
    s_axis_tdata_re,
    s_axis_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_RESET aresetn:s_axis_last, CLK_DOMAIN design_1_aclk, FREQ_HZ 10000000, INSERT_VIP 0, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXIS_LAST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXIS_LAST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input s_axis_last;
  output [0:0]s_axis_ready;
  input [15:0]s_axis_tdata_im;
  input [15:0]s_axis_tdata_re;
  input s_axis_tvalid;

  wire Net;
  wire aclk_1;
  wire [15:0]c_counter_binary_0_Q;
  wire [31:0]const_2PI_Div_N_dout;
  wire [31:0]cont_mult_0_46_dout;
  wire [63:0]cordic_0_M_AXIS_DOUT_TDATA;
  wire cordic_0_M_AXIS_DOUT_TLAST;
  wire cordic_0_M_AXIS_DOUT_TREADY;
  wire cordic_0_M_AXIS_DOUT_TVALID;
  wire [31:0]cos_cos_minus_1_M_AXIS_RESULT_TDATA;
  wire cos_cos_minus_1_M_AXIS_RESULT_TREADY;
  wire cos_cos_minus_1_M_AXIS_RESULT_TVALID;
  wire [31:0]cos_cos_mult_2_M_AXIS_RESULT_TDATA;
  wire cos_cos_mult_2_M_AXIS_RESULT_TLAST;
  wire cos_cos_mult_2_M_AXIS_RESULT_TREADY;
  wire cos_cos_mult_2_M_AXIS_RESULT_TVALID;
  wire cos_cos_mult_2_s_axis_a_tready;
  wire cos_cos_mult_2_s_axis_b_tready;
  wire [31:0]f_1_dout;
  wire [31:0]fifo_generator_0_M_AXIS_TDATA;
  wire fifo_generator_0_M_AXIS_TREADY;
  wire fifo_generator_0_M_AXIS_TVALID;
  wire [31:0]fifo_generator_1_M_AXIS_TDATA;
  wire fifo_generator_1_M_AXIS_TREADY;
  wire fifo_generator_1_M_AXIS_TVALID;
  wire [31:0]fix_to_float_im_M_AXIS_RESULT_TDATA;
  wire fix_to_float_im_M_AXIS_RESULT_TREADY;
  wire fix_to_float_im_M_AXIS_RESULT_TVALID;
  wire [31:0]fix_to_float_re_M_AXIS_RESULT_TDATA;
  wire fix_to_float_re_M_AXIS_RESULT_TREADY;
  wire fix_to_float_re_M_AXIS_RESULT_TVALID;
  wire [31:0]fixed_to_float_after_cordic_m_axis_result_tdata;
  wire fixed_to_float_after_cordic_m_axis_result_tlast;
  wire fixed_to_float_after_cordic_m_axis_result_tvalid;
  wire floating_point_0_s_axis_a_tready;
  wire floating_point_0_s_axis_a_tready1;
  wire floating_point_0_s_axis_b_tready;
  wire floating_point_1_s_axis_a_tready;
  wire [31:0]floating_point_2_M_AXIS_RESULT1_TDATA;
  wire floating_point_2_M_AXIS_RESULT1_TREADY;
  wire floating_point_2_M_AXIS_RESULT1_TVALID;
  wire [31:0]floating_point_2_M_AXIS_RESULT_TDATA;
  wire floating_point_2_M_AXIS_RESULT_TREADY;
  wire floating_point_2_M_AXIS_RESULT_TVALID;
  wire [31:0]floating_point_3_m_axis_result_tdata;
  wire floating_point_3_m_axis_result_tvalid;
  wire [31:0]floating_point_4_M_AXIS_RESULT_TDATA;
  wire floating_point_4_M_AXIS_RESULT_TREADY;
  wire floating_point_4_M_AXIS_RESULT_TVALID;
  wire floating_point_5_s_axis_a_tready;
  wire [31:0]floating_point_6_M_AXIS_RESULT_TDATA;
  wire floating_point_6_M_AXIS_RESULT_TLAST;
  wire floating_point_6_M_AXIS_RESULT_TREADY;
  wire floating_point_6_M_AXIS_RESULT_TVALID;
  wire floating_point_8_s_axis_a_tready;
  wire last_1;
  wire [0:0]log_1_dout;
  wire [31:0]mult_cos_cos_m_axis_result_tdata;
  wire mult_cos_cos_m_axis_result_tlast;
  wire mult_cos_cos_m_axis_result_tvalid;
  wire s_axis_a_tvalid_1;
  wire [15:0]s_axis_tdata_im_1;
  wire [15:0]s_axis_tdata_re_1;
  wire [31:0]subtrackt_054_dout;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;

  assign Net = aresetn;
  assign aclk_1 = aclk;
  assign last_1 = s_axis_last;
  assign s_axis_a_tvalid_1 = s_axis_tvalid;
  assign s_axis_ready[0] = util_vector_logic_1_Res;
  assign s_axis_tdata_im_1 = s_axis_tdata_im[15:0];
  assign s_axis_tdata_re_1 = s_axis_tdata_re[15:0];
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CE(util_vector_logic_2_Res),
        .CLK(aclk_1),
        .Q(c_counter_binary_0_Q),
        .SCLR(last_1));
  design_1_xlconstant_0_3 const_PI_Div_N
       (.dout(const_2PI_Div_N_dout));
  design_1_xlconstant_0_2 cont_mult_0_46
       (.dout(cont_mult_0_46_dout));
  design_1_cordic_0_0 cordic_0
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_dout_tdata(cordic_0_M_AXIS_DOUT_TDATA),
        .m_axis_dout_tlast(cordic_0_M_AXIS_DOUT_TLAST),
        .m_axis_dout_tready(cordic_0_M_AXIS_DOUT_TREADY),
        .m_axis_dout_tvalid(cordic_0_M_AXIS_DOUT_TVALID),
        .s_axis_phase_tdata(floating_point_6_M_AXIS_RESULT_TDATA),
        .s_axis_phase_tlast(floating_point_6_M_AXIS_RESULT_TLAST),
        .s_axis_phase_tready(floating_point_6_M_AXIS_RESULT_TREADY),
        .s_axis_phase_tvalid(floating_point_6_M_AXIS_RESULT_TVALID));
  design_1_floating_point_0_3 cos_cos_minus_1
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tdata(cos_cos_minus_1_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(cos_cos_minus_1_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(cos_cos_minus_1_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(cos_cos_mult_2_M_AXIS_RESULT_TDATA),
        .s_axis_a_tlast(cos_cos_mult_2_M_AXIS_RESULT_TLAST),
        .s_axis_a_tready(cos_cos_mult_2_M_AXIS_RESULT_TREADY),
        .s_axis_a_tvalid(cos_cos_mult_2_M_AXIS_RESULT_TVALID),
        .s_axis_b_tdata(f_1_dout),
        .s_axis_b_tvalid(log_1_dout));
  design_1_floating_point_0_2 cos_cos_mult_2
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tdata(cos_cos_mult_2_M_AXIS_RESULT_TDATA),
        .m_axis_result_tlast(cos_cos_mult_2_M_AXIS_RESULT_TLAST),
        .m_axis_result_tready(cos_cos_mult_2_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(cos_cos_mult_2_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(mult_cos_cos_m_axis_result_tdata),
        .s_axis_a_tlast(mult_cos_cos_m_axis_result_tlast),
        .s_axis_a_tready(cos_cos_mult_2_s_axis_a_tready),
        .s_axis_a_tvalid(mult_cos_cos_m_axis_result_tvalid),
        .s_axis_b_tdata(mult_cos_cos_m_axis_result_tdata),
        .s_axis_b_tready(cos_cos_mult_2_s_axis_b_tready),
        .s_axis_b_tvalid(mult_cos_cos_m_axis_result_tvalid));
  design_1_xlconstant_0_4 f_1
       (.dout(f_1_dout));
  design_1_fifo_generator_0_0 fifo_generator_0
       (.m_axis_tdata(fifo_generator_0_M_AXIS_TDATA),
        .m_axis_tready(fifo_generator_0_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_generator_0_M_AXIS_TVALID),
        .s_aclk(aclk_1),
        .s_aresetn(Net),
        .s_axis_tdata(fix_to_float_im_M_AXIS_RESULT_TDATA),
        .s_axis_tlast(1'b0),
        .s_axis_tready(fix_to_float_im_M_AXIS_RESULT_TREADY),
        .s_axis_tvalid(fix_to_float_im_M_AXIS_RESULT_TVALID));
  design_1_fifo_generator_1_0 fifo_generator_1
       (.m_axis_tdata(fifo_generator_1_M_AXIS_TDATA),
        .m_axis_tready(fifo_generator_1_M_AXIS_TREADY),
        .m_axis_tvalid(fifo_generator_1_M_AXIS_TVALID),
        .s_aclk(aclk_1),
        .s_aresetn(Net),
        .s_axis_tdata(fix_to_float_re_M_AXIS_RESULT_TDATA),
        .s_axis_tlast(1'b0),
        .s_axis_tready(fix_to_float_re_M_AXIS_RESULT_TREADY),
        .s_axis_tvalid(fix_to_float_re_M_AXIS_RESULT_TVALID));
  design_1_floating_point_2_1 fix_float_counter
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tdata(floating_point_2_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_2_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_2_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(c_counter_binary_0_Q),
        .s_axis_a_tvalid(s_axis_a_tvalid_1));
  design_1_floating_point_1_0 fix_to_float_im
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tdata(fix_to_float_im_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(fix_to_float_im_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(fix_to_float_im_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(s_axis_tdata_im_1),
        .s_axis_a_tready(floating_point_1_s_axis_a_tready),
        .s_axis_a_tvalid(s_axis_a_tvalid_1));
  design_1_floating_point_0_0 fix_to_float_re
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tdata(fix_to_float_re_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(fix_to_float_re_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(fix_to_float_re_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(s_axis_tdata_re_1),
        .s_axis_a_tready(floating_point_0_s_axis_a_tready),
        .s_axis_a_tvalid(s_axis_a_tvalid_1));
  design_1_floating_point_7_0 fixed_to_float_after_cordic
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tdata(fixed_to_float_after_cordic_m_axis_result_tdata),
        .m_axis_result_tlast(fixed_to_float_after_cordic_m_axis_result_tlast),
        .m_axis_result_tready(util_vector_logic_3_Res),
        .m_axis_result_tvalid(fixed_to_float_after_cordic_m_axis_result_tvalid),
        .s_axis_a_tdata(cordic_0_M_AXIS_DOUT_TDATA[31:0]),
        .s_axis_a_tlast(cordic_0_M_AXIS_DOUT_TLAST),
        .s_axis_a_tready(cordic_0_M_AXIS_DOUT_TREADY),
        .s_axis_a_tvalid(cordic_0_M_AXIS_DOUT_TVALID));
  design_1_floating_point_6_0 float_to_fix_before_cordic
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tdata(floating_point_6_M_AXIS_RESULT_TDATA),
        .m_axis_result_tlast(floating_point_6_M_AXIS_RESULT_TLAST),
        .m_axis_result_tready(floating_point_6_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_6_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(floating_point_4_M_AXIS_RESULT_TDATA),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(floating_point_4_M_AXIS_RESULT_TREADY),
        .s_axis_a_tvalid(floating_point_4_M_AXIS_RESULT_TVALID));
  design_1_floating_point_8_0 im_mult
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tready(log_1_dout),
        .s_axis_a_tdata(floating_point_3_m_axis_result_tdata),
        .s_axis_a_tready(floating_point_8_s_axis_a_tready),
        .s_axis_a_tvalid(floating_point_3_m_axis_result_tvalid),
        .s_axis_b_tdata(fifo_generator_0_M_AXIS_TDATA),
        .s_axis_b_tready(fifo_generator_0_M_AXIS_TREADY),
        .s_axis_b_tvalid(fifo_generator_0_M_AXIS_TVALID));
  design_1_xlconstant_0_0 log_1
       (.dout(log_1_dout));
  design_1_floating_point_2_2 mult_0_46
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tdata(floating_point_2_M_AXIS_RESULT1_TDATA),
        .m_axis_result_tready(floating_point_2_M_AXIS_RESULT1_TREADY),
        .m_axis_result_tvalid(floating_point_2_M_AXIS_RESULT1_TVALID),
        .s_axis_a_tdata(cos_cos_minus_1_M_AXIS_RESULT_TDATA),
        .s_axis_a_tready(cos_cos_minus_1_M_AXIS_RESULT_TREADY),
        .s_axis_a_tvalid(cos_cos_minus_1_M_AXIS_RESULT_TVALID),
        .s_axis_b_tdata(cont_mult_0_46_dout),
        .s_axis_b_tvalid(log_1_dout));
  design_1_floating_point_4_0 mult_2PI_div_N
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tdata(floating_point_4_M_AXIS_RESULT_TDATA),
        .m_axis_result_tready(floating_point_4_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(floating_point_4_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(floating_point_2_M_AXIS_RESULT_TDATA),
        .s_axis_a_tready(floating_point_2_M_AXIS_RESULT_TREADY),
        .s_axis_a_tvalid(floating_point_2_M_AXIS_RESULT_TVALID),
        .s_axis_b_tdata(const_2PI_Div_N_dout),
        .s_axis_b_tvalid(log_1_dout));
  design_1_floating_point_0_1 mult_cos_cos
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tdata(mult_cos_cos_m_axis_result_tdata),
        .m_axis_result_tlast(mult_cos_cos_m_axis_result_tlast),
        .m_axis_result_tready(util_vector_logic_4_Res),
        .m_axis_result_tvalid(mult_cos_cos_m_axis_result_tvalid),
        .s_axis_a_tdata(fixed_to_float_after_cordic_m_axis_result_tdata),
        .s_axis_a_tlast(fixed_to_float_after_cordic_m_axis_result_tlast),
        .s_axis_a_tready(floating_point_0_s_axis_a_tready1),
        .s_axis_a_tvalid(fixed_to_float_after_cordic_m_axis_result_tvalid),
        .s_axis_b_tdata(fixed_to_float_after_cordic_m_axis_result_tdata),
        .s_axis_b_tready(floating_point_0_s_axis_b_tready),
        .s_axis_b_tvalid(fixed_to_float_after_cordic_m_axis_result_tvalid));
  design_1_floating_point_5_0 re_mult
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tready(log_1_dout),
        .s_axis_a_tdata(floating_point_3_m_axis_result_tdata),
        .s_axis_a_tready(floating_point_5_s_axis_a_tready),
        .s_axis_a_tvalid(floating_point_3_m_axis_result_tvalid),
        .s_axis_b_tdata(fifo_generator_1_M_AXIS_TDATA),
        .s_axis_b_tready(fifo_generator_1_M_AXIS_TREADY),
        .s_axis_b_tvalid(fifo_generator_1_M_AXIS_TVALID));
  design_1_xlconstant_0_1 subtrackt_054
       (.dout(subtrackt_054_dout));
  design_1_floating_point_3_3 subtract_0_54
       (.aclk(aclk_1),
        .aresetn(Net),
        .m_axis_result_tdata(floating_point_3_m_axis_result_tdata),
        .m_axis_result_tready(util_vector_logic_0_Res),
        .m_axis_result_tvalid(floating_point_3_m_axis_result_tvalid),
        .s_axis_a_tdata(subtrackt_054_dout),
        .s_axis_a_tvalid(log_1_dout),
        .s_axis_b_tdata(floating_point_2_M_AXIS_RESULT1_TDATA),
        .s_axis_b_tready(floating_point_2_M_AXIS_RESULT1_TREADY),
        .s_axis_b_tvalid(floating_point_2_M_AXIS_RESULT1_TVALID));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(floating_point_5_s_axis_a_tready),
        .Op2(floating_point_8_s_axis_a_tready),
        .Res(util_vector_logic_0_Res));
  design_1_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(floating_point_0_s_axis_a_tready),
        .Op2(floating_point_1_s_axis_a_tready),
        .Res(util_vector_logic_1_Res));
  design_1_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(util_vector_logic_1_Res),
        .Op2(s_axis_a_tvalid_1),
        .Res(util_vector_logic_2_Res));
  design_1_util_vector_logic_3_0 util_vector_logic_3
       (.Op1(floating_point_0_s_axis_b_tready),
        .Op2(floating_point_0_s_axis_a_tready1),
        .Res(util_vector_logic_3_Res));
  design_1_util_vector_logic_4_0 util_vector_logic_4
       (.Op1(cos_cos_mult_2_s_axis_a_tready),
        .Op2(cos_cos_mult_2_s_axis_b_tready),
        .Res(util_vector_logic_4_Res));
endmodule
