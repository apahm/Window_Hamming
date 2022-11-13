vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_15
vlib riviera/floating_point_v7_1_8
vlib riviera/c_reg_fd_v12_0_6
vlib riviera/xbip_addsub_v3_0_6
vlib riviera/c_addsub_v12_0_13
vlib riviera/c_gate_bit_v12_0_6
vlib riviera/xbip_counter_v3_0_6
vlib riviera/c_counter_binary_v12_0_13
vlib riviera/cordic_v6_0_15
vlib riviera/xlconstant_v1_1_6
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/fifo_generator_v13_2_4

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_15 riviera/mult_gen_v12_0_15
vmap floating_point_v7_1_8 riviera/floating_point_v7_1_8
vmap c_reg_fd_v12_0_6 riviera/c_reg_fd_v12_0_6
vmap xbip_addsub_v3_0_6 riviera/xbip_addsub_v3_0_6
vmap c_addsub_v12_0_13 riviera/c_addsub_v12_0_13
vmap c_gate_bit_v12_0_6 riviera/c_gate_bit_v12_0_6
vmap xbip_counter_v3_0_6 riviera/xbip_counter_v3_0_6
vmap c_counter_binary_v12_0_13 riviera/c_counter_binary_v12_0_13
vmap cordic_v6_0_15 riviera/cordic_v6_0_15
vmap xlconstant_v1_1_6 riviera/xlconstant_v1_1_6
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap fifo_generator_v13_2_4 riviera/fifo_generator_v13_2_4

vlog -work xil_defaultlib  -sv2k12 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_15 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/d4d2/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_8 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/83a3/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_floating_point_0_0/sim/design_1_floating_point_0_0.vhd" \
"../../../bd/design_1/ip/design_1_floating_point_1_0/sim/design_1_floating_point_1_0.vhd" \

vcom -work c_reg_fd_v12_0_6 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/edec/hdl/c_reg_fd_v12_0_vh_rfs.vhd" \

vcom -work xbip_addsub_v3_0_6 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/cfdd/hdl/xbip_addsub_v3_0_vh_rfs.vhd" \

vcom -work c_addsub_v12_0_13 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/cbe4/hdl/c_addsub_v12_0_vh_rfs.vhd" \

vcom -work c_gate_bit_v12_0_6 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/7161/hdl/c_gate_bit_v12_0_vh_rfs.vhd" \

vcom -work xbip_counter_v3_0_6 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/9ac8/hdl/xbip_counter_v3_0_vh_rfs.vhd" \

vcom -work c_counter_binary_v12_0_13 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/23f1/hdl/c_counter_binary_v12_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_c_counter_binary_0_0/sim/design_1_c_counter_binary_0_0.vhd" \
"../../../bd/design_1/ip/design_1_floating_point_2_1/sim/design_1_floating_point_2_1.vhd" \
"../../../bd/design_1/ip/design_1_floating_point_4_0/sim/design_1_floating_point_4_0.vhd" \
"../../../bd/design_1/ip/design_1_floating_point_3_3/sim/design_1_floating_point_3_3.vhd" \

vcom -work cordic_v6_0_15 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/42d6/hdl/cordic_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_cordic_0_0/sim/design_1_cordic_0_0.vhd" \

vlog -work xlconstant_v1_1_6  -v2k5 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_floating_point_6_0/sim/design_1_floating_point_6_0.vhd" \
"../../../bd/design_1/ip/design_1_floating_point_7_0/sim/design_1_floating_point_7_0.vhd" \
"../../../bd/design_1/ip/design_1_floating_point_5_0/sim/design_1_floating_point_5_0.vhd" \
"../../../bd/design_1/ip/design_1_floating_point_8_0/sim/design_1_floating_point_8_0.vhd" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_1/sim/design_1_xlconstant_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_floating_point_2_2/sim/design_1_floating_point_2_2.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_util_vector_logic_1_0/sim/design_1_util_vector_logic_1_0.v" \
"../../../bd/design_1/ip/design_1_util_vector_logic_2_0/sim/design_1_util_vector_logic_2_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_2/sim/design_1_xlconstant_0_2.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_3/sim/design_1_xlconstant_0_3.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 \
"../../../../win_ham.srcs/sources_1/bd/design_1/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_fifo_generator_0_0/sim/design_1_fifo_generator_0_0.v" \
"../../../bd/design_1/ip/design_1_fifo_generator_1_0/sim/design_1_fifo_generator_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_floating_point_0_1/sim/design_1_floating_point_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_util_vector_logic_3_0/sim/design_1_util_vector_logic_3_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_floating_point_0_2/sim/design_1_floating_point_0_2.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_util_vector_logic_4_0/sim/design_1_util_vector_logic_4_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_floating_point_0_3/sim/design_1_floating_point_0_3.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlconstant_0_4/sim/design_1_xlconstant_0_4.v" \

vlog -work xil_defaultlib \
"glbl.v"

