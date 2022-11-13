//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sun Nov 13 11:22:28 2022
//Host        : DESKTOP-BBGSFV0 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (aclk,
    aresetn,
    s_axis_last,
    s_axis_ready,
    s_axis_tdata_im,
    s_axis_tdata_re,
    s_axis_tvalid);
  input aclk;
  input aresetn;
  input s_axis_last;
  output [0:0]s_axis_ready;
  input [15:0]s_axis_tdata_im;
  input [15:0]s_axis_tdata_re;
  input s_axis_tvalid;

  wire aclk;
  wire aresetn;
  wire s_axis_last;
  wire [0:0]s_axis_ready;
  wire [15:0]s_axis_tdata_im;
  wire [15:0]s_axis_tdata_re;
  wire s_axis_tvalid;

  design_1 design_1_i
       (.aclk(aclk),
        .aresetn(aresetn),
        .s_axis_last(s_axis_last),
        .s_axis_ready(s_axis_ready),
        .s_axis_tdata_im(s_axis_tdata_im),
        .s_axis_tdata_re(s_axis_tdata_re),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
