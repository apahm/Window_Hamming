
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1761-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set aclk [ create_bd_port -dir I -type clk aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {aresetn:s_axis_last} \
   CONFIG.FREQ_HZ {10000000} \
 ] $aclk
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set s_axis_last [ create_bd_port -dir I -type rst s_axis_last ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $s_axis_last
  set s_axis_ready [ create_bd_port -dir O -from 0 -to 0 s_axis_ready ]
  set s_axis_tdata_im [ create_bd_port -dir I -from 15 -to 0 s_axis_tdata_im ]
  set s_axis_tdata_re [ create_bd_port -dir I -from 15 -to 0 s_axis_tdata_re ]
  set s_axis_tvalid [ create_bd_port -dir I s_axis_tvalid ]

  # Create instance: c_counter_binary_0, and set properties
  set c_counter_binary_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_counter_binary:12.0 c_counter_binary_0 ]
  set_property -dict [ list \
   CONFIG.CE {true} \
   CONFIG.Load {false} \
   CONFIG.SCLR {true} \
 ] $c_counter_binary_0

  # Create instance: const_PI_Div_N, and set properties
  set const_PI_Div_N [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 const_PI_Div_N ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0x3c49d9b4} \
   CONFIG.CONST_WIDTH {32} \
 ] $const_PI_Div_N

  # Create instance: cont_mult_0_46, and set properties
  set cont_mult_0_46 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 cont_mult_0_46 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0x3eec5c14} \
   CONFIG.CONST_WIDTH {32} \
 ] $cont_mult_0_46

  # Create instance: cordic_0, and set properties
  set cordic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:cordic:6.0 cordic_0 ]
  set_property -dict [ list \
   CONFIG.ARESETN {true} \
   CONFIG.Data_Format {SignedFraction} \
   CONFIG.Functional_Selection {Sin_and_Cos} \
   CONFIG.Input_Width {32} \
   CONFIG.Output_Width {32} \
   CONFIG.flow_control {Blocking} \
   CONFIG.out_tlast_behv {Pass_Phase_TLAST} \
   CONFIG.out_tready {true} \
   CONFIG.phase_has_tlast {true} \
 ] $cordic_0

  # Create instance: cos_cos_minus_1, and set properties
  set cos_cos_minus_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 cos_cos_minus_1 ]
  set_property -dict [ list \
   CONFIG.Add_Sub_Value {Subtract} \
   CONFIG.C_Latency {12} \
   CONFIG.C_Mult_Usage {Full_Usage} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_A_TLAST {true} \
   CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
 ] $cos_cos_minus_1

  # Create instance: cos_cos_mult_2, and set properties
  set cos_cos_mult_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 cos_cos_mult_2 ]
  set_property -dict [ list \
   CONFIG.Add_Sub_Value {Add} \
   CONFIG.C_Latency {12} \
   CONFIG.C_Mult_Usage {Full_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_A_TLAST {true} \
   CONFIG.Operation_Type {Add_Subtract} \
   CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
   CONFIG.Result_Precision_Type {Single} \
 ] $cos_cos_mult_2

  # Create instance: f_1, and set properties
  set f_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 f_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0x3f800000} \
   CONFIG.CONST_WIDTH {32} \
 ] $f_1

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_0 ]
  set_property -dict [ list \
   CONFIG.Clock_Type_AXI {Common_Clock} \
   CONFIG.Empty_Threshold_Assert_Value_axis {254} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_rdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wdch {1022} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Data_Counts_axis {false} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_axis {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_rdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wdch {Common_Clock_Block_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {255} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {256} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_0

  # Create instance: fifo_generator_1, and set properties
  set fifo_generator_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_1 ]
  set_property -dict [ list \
   CONFIG.Empty_Threshold_Assert_Value_axis {254} \
   CONFIG.Empty_Threshold_Assert_Value_rach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wach {14} \
   CONFIG.Empty_Threshold_Assert_Value_wrch {14} \
   CONFIG.Enable_Safety_Circuit {true} \
   CONFIG.Enable_TLAST {true} \
   CONFIG.FIFO_Implementation_rach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wach {Common_Clock_Distributed_RAM} \
   CONFIG.FIFO_Implementation_wrch {Common_Clock_Distributed_RAM} \
   CONFIG.Full_Flags_Reset_Value {1} \
   CONFIG.Full_Threshold_Assert_Value_axis {255} \
   CONFIG.Full_Threshold_Assert_Value_rach {15} \
   CONFIG.Full_Threshold_Assert_Value_wach {15} \
   CONFIG.Full_Threshold_Assert_Value_wrch {15} \
   CONFIG.INTERFACE_TYPE {AXI_STREAM} \
   CONFIG.Input_Depth_axis {256} \
   CONFIG.Reset_Type {Asynchronous_Reset} \
   CONFIG.TDATA_NUM_BYTES {4} \
   CONFIG.TKEEP_WIDTH {4} \
   CONFIG.TSTRB_WIDTH {4} \
   CONFIG.TUSER_WIDTH {0} \
 ] $fifo_generator_1

  # Create instance: fix_float_counter, and set properties
  set fix_float_counter [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 fix_float_counter ]
  set_property -dict [ list \
   CONFIG.A_Precision_Type {Custom} \
   CONFIG.C_A_Exponent_Width {16} \
   CONFIG.C_Accum_Input_Msb {32} \
   CONFIG.C_Accum_Lsb {-31} \
   CONFIG.C_Accum_Msb {32} \
   CONFIG.C_Latency {7} \
   CONFIG.C_Mult_Usage {No_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Operation_Type {Fixed_to_float} \
   CONFIG.Result_Precision_Type {Single} \
 ] $fix_float_counter

  # Create instance: fix_to_float_im, and set properties
  set fix_to_float_im [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 fix_to_float_im ]
  set_property -dict [ list \
   CONFIG.A_Precision_Type {Custom} \
   CONFIG.C_A_Exponent_Width {16} \
   CONFIG.C_Accum_Input_Msb {32} \
   CONFIG.C_Accum_Lsb {-31} \
   CONFIG.C_Accum_Msb {32} \
   CONFIG.C_Latency {7} \
   CONFIG.C_Mult_Usage {No_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Operation_Type {Fixed_to_float} \
   CONFIG.Result_Precision_Type {Single} \
 ] $fix_to_float_im

  # Create instance: fix_to_float_re, and set properties
  set fix_to_float_re [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 fix_to_float_re ]
  set_property -dict [ list \
   CONFIG.A_Precision_Type {Custom} \
   CONFIG.C_A_Exponent_Width {16} \
   CONFIG.C_A_Fraction_Width {0} \
   CONFIG.C_Accum_Input_Msb {32} \
   CONFIG.C_Accum_Lsb {-31} \
   CONFIG.C_Accum_Msb {32} \
   CONFIG.C_Latency {7} \
   CONFIG.C_Mult_Usage {No_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_A_TLAST {false} \
   CONFIG.Operation_Type {Fixed_to_float} \
   CONFIG.RESULT_TLAST_Behv {Null} \
   CONFIG.Result_Precision_Type {Single} \
 ] $fix_to_float_re

  # Create instance: fixed_to_float_after_cordic, and set properties
  set fixed_to_float_after_cordic [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 fixed_to_float_after_cordic ]
  set_property -dict [ list \
   CONFIG.A_Precision_Type {Custom} \
   CONFIG.C_A_Exponent_Width {2} \
   CONFIG.C_A_Fraction_Width {30} \
   CONFIG.C_Accum_Input_Msb {0} \
   CONFIG.C_Accum_Lsb {-1} \
   CONFIG.C_Accum_Msb {32} \
   CONFIG.C_Latency {7} \
   CONFIG.C_Mult_Usage {No_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_A_TLAST {true} \
   CONFIG.Operation_Type {Fixed_to_float} \
   CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
   CONFIG.Result_Precision_Type {Single} \
 ] $fixed_to_float_after_cordic

  # Create instance: float_to_fix_before_cordic, and set properties
  set float_to_fix_before_cordic [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 float_to_fix_before_cordic ]
  set_property -dict [ list \
   CONFIG.C_Latency {7} \
   CONFIG.C_Mult_Usage {No_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {3} \
   CONFIG.C_Result_Fraction_Width {29} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_A_TLAST {true} \
   CONFIG.Operation_Type {Float_to_fixed} \
   CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
   CONFIG.Result_Precision_Type {Custom} \
 ] $float_to_fix_before_cordic

  # Create instance: im_mult, and set properties
  set im_mult [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 im_mult ]
  set_property -dict [ list \
   CONFIG.C_Latency {9} \
   CONFIG.C_Mult_Usage {Full_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Operation_Type {Multiply} \
   CONFIG.Result_Precision_Type {Single} \
 ] $im_mult

  # Create instance: log_1, and set properties
  set log_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 log_1 ]

  # Create instance: mult_0_46, and set properties
  set mult_0_46 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 mult_0_46 ]
  set_property -dict [ list \
   CONFIG.C_Latency {9} \
   CONFIG.C_Mult_Usage {Full_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Operation_Type {Multiply} \
   CONFIG.Result_Precision_Type {Single} \
 ] $mult_0_46

  # Create instance: mult_2PI_div_N, and set properties
  set mult_2PI_div_N [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 mult_2PI_div_N ]
  set_property -dict [ list \
   CONFIG.C_Latency {9} \
   CONFIG.C_Mult_Usage {Full_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Operation_Type {Multiply} \
   CONFIG.Result_Precision_Type {Single} \
 ] $mult_2PI_div_N

  # Create instance: mult_cos_cos, and set properties
  set mult_cos_cos [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 mult_cos_cos ]
  set_property -dict [ list \
   CONFIG.C_Latency {9} \
   CONFIG.C_Mult_Usage {Full_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_A_TLAST {true} \
   CONFIG.Operation_Type {Multiply} \
   CONFIG.RESULT_TLAST_Behv {Pass_A_TLAST} \
   CONFIG.Result_Precision_Type {Single} \
 ] $mult_cos_cos

  # Create instance: re_mult, and set properties
  set re_mult [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 re_mult ]
  set_property -dict [ list \
   CONFIG.C_Latency {9} \
   CONFIG.C_Mult_Usage {Full_Usage} \
   CONFIG.C_Rate {1} \
   CONFIG.C_Result_Exponent_Width {8} \
   CONFIG.C_Result_Fraction_Width {24} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Operation_Type {Multiply} \
   CONFIG.Result_Precision_Type {Single} \
 ] $re_mult

  # Create instance: subtrackt_054, and set properties
  set subtrackt_054 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 subtrackt_054 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0x3f09d1f6} \
   CONFIG.CONST_WIDTH {32} \
 ] $subtrackt_054

  # Create instance: subtract_0_54, and set properties
  set subtract_0_54 [ create_bd_cell -type ip -vlnv xilinx.com:ip:floating_point:7.1 subtract_0_54 ]
  set_property -dict [ list \
   CONFIG.Add_Sub_Value {Subtract} \
   CONFIG.Has_ARESETn {true} \
 ] $subtract_0_54

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_3

  # Create instance: util_vector_logic_4, and set properties
  set util_vector_logic_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_4 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_4

  # Create interface connections
  connect_bd_intf_net -intf_net cordic_0_M_AXIS_DOUT [get_bd_intf_pins cordic_0/M_AXIS_DOUT] [get_bd_intf_pins fixed_to_float_after_cordic/S_AXIS_A]
  connect_bd_intf_net -intf_net cos_cos_minus_1_M_AXIS_RESULT [get_bd_intf_pins cos_cos_minus_1/M_AXIS_RESULT] [get_bd_intf_pins mult_0_46/S_AXIS_A]
  connect_bd_intf_net -intf_net cos_cos_mult_2_M_AXIS_RESULT [get_bd_intf_pins cos_cos_minus_1/S_AXIS_A] [get_bd_intf_pins cos_cos_mult_2/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net fifo_generator_0_M_AXIS [get_bd_intf_pins fifo_generator_0/M_AXIS] [get_bd_intf_pins im_mult/S_AXIS_B]
  connect_bd_intf_net -intf_net fifo_generator_1_M_AXIS [get_bd_intf_pins fifo_generator_1/M_AXIS] [get_bd_intf_pins re_mult/S_AXIS_B]
  connect_bd_intf_net -intf_net fix_to_float_im_M_AXIS_RESULT [get_bd_intf_pins fifo_generator_0/S_AXIS] [get_bd_intf_pins fix_to_float_im/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net fix_to_float_re_M_AXIS_RESULT [get_bd_intf_pins fifo_generator_1/S_AXIS] [get_bd_intf_pins fix_to_float_re/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net floating_point_2_M_AXIS_RESULT [get_bd_intf_pins fix_float_counter/M_AXIS_RESULT] [get_bd_intf_pins mult_2PI_div_N/S_AXIS_A]
  connect_bd_intf_net -intf_net floating_point_2_M_AXIS_RESULT1 [get_bd_intf_pins mult_0_46/M_AXIS_RESULT] [get_bd_intf_pins subtract_0_54/S_AXIS_B]
  connect_bd_intf_net -intf_net floating_point_4_M_AXIS_RESULT [get_bd_intf_pins float_to_fix_before_cordic/S_AXIS_A] [get_bd_intf_pins mult_2PI_div_N/M_AXIS_RESULT]
  connect_bd_intf_net -intf_net floating_point_6_M_AXIS_RESULT [get_bd_intf_pins cordic_0/S_AXIS_PHASE] [get_bd_intf_pins float_to_fix_before_cordic/M_AXIS_RESULT]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports aresetn] [get_bd_pins cordic_0/aresetn] [get_bd_pins cos_cos_minus_1/aresetn] [get_bd_pins cos_cos_mult_2/aresetn] [get_bd_pins fifo_generator_0/s_aresetn] [get_bd_pins fifo_generator_1/s_aresetn] [get_bd_pins fix_float_counter/aresetn] [get_bd_pins fix_to_float_im/aresetn] [get_bd_pins fix_to_float_re/aresetn] [get_bd_pins fixed_to_float_after_cordic/aresetn] [get_bd_pins float_to_fix_before_cordic/aresetn] [get_bd_pins im_mult/aresetn] [get_bd_pins mult_0_46/aresetn] [get_bd_pins mult_2PI_div_N/aresetn] [get_bd_pins mult_cos_cos/aresetn] [get_bd_pins re_mult/aresetn] [get_bd_pins subtract_0_54/aresetn]
  connect_bd_net -net aclk_1 [get_bd_ports aclk] [get_bd_pins c_counter_binary_0/CLK] [get_bd_pins cordic_0/aclk] [get_bd_pins cos_cos_minus_1/aclk] [get_bd_pins cos_cos_mult_2/aclk] [get_bd_pins fifo_generator_0/s_aclk] [get_bd_pins fifo_generator_1/s_aclk] [get_bd_pins fix_float_counter/aclk] [get_bd_pins fix_to_float_im/aclk] [get_bd_pins fix_to_float_re/aclk] [get_bd_pins fixed_to_float_after_cordic/aclk] [get_bd_pins float_to_fix_before_cordic/aclk] [get_bd_pins im_mult/aclk] [get_bd_pins mult_0_46/aclk] [get_bd_pins mult_2PI_div_N/aclk] [get_bd_pins mult_cos_cos/aclk] [get_bd_pins re_mult/aclk] [get_bd_pins subtract_0_54/aclk]
  connect_bd_net -net c_counter_binary_0_Q [get_bd_pins c_counter_binary_0/Q] [get_bd_pins fix_float_counter/s_axis_a_tdata]
  connect_bd_net -net const_2PI_Div_N_dout [get_bd_pins const_PI_Div_N/dout] [get_bd_pins mult_2PI_div_N/s_axis_b_tdata]
  connect_bd_net -net cont_mult_0_46_dout [get_bd_pins cont_mult_0_46/dout] [get_bd_pins mult_0_46/s_axis_b_tdata]
  connect_bd_net -net cos_cos_mult_2_s_axis_a_tready [get_bd_pins cos_cos_mult_2/s_axis_a_tready] [get_bd_pins util_vector_logic_4/Op1]
  connect_bd_net -net cos_cos_mult_2_s_axis_b_tready [get_bd_pins cos_cos_mult_2/s_axis_b_tready] [get_bd_pins util_vector_logic_4/Op2]
  connect_bd_net -net f_1_dout [get_bd_pins cos_cos_minus_1/s_axis_b_tdata] [get_bd_pins f_1/dout]
  connect_bd_net -net fixed_to_float_after_cordic_m_axis_result_tdata [get_bd_pins fixed_to_float_after_cordic/m_axis_result_tdata] [get_bd_pins mult_cos_cos/s_axis_a_tdata] [get_bd_pins mult_cos_cos/s_axis_b_tdata]
  connect_bd_net -net fixed_to_float_after_cordic_m_axis_result_tlast [get_bd_pins fixed_to_float_after_cordic/m_axis_result_tlast] [get_bd_pins mult_cos_cos/s_axis_a_tlast]
  connect_bd_net -net fixed_to_float_after_cordic_m_axis_result_tvalid [get_bd_pins fixed_to_float_after_cordic/m_axis_result_tvalid] [get_bd_pins mult_cos_cos/s_axis_a_tvalid] [get_bd_pins mult_cos_cos/s_axis_b_tvalid]
  connect_bd_net -net floating_point_0_s_axis_a_tready [get_bd_pins fix_to_float_re/s_axis_a_tready] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net floating_point_0_s_axis_a_tready1 [get_bd_pins mult_cos_cos/s_axis_a_tready] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net floating_point_0_s_axis_b_tready [get_bd_pins mult_cos_cos/s_axis_b_tready] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net floating_point_1_s_axis_a_tready [get_bd_pins fix_to_float_im/s_axis_a_tready] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net floating_point_3_m_axis_result_tdata [get_bd_pins im_mult/s_axis_a_tdata] [get_bd_pins re_mult/s_axis_a_tdata] [get_bd_pins subtract_0_54/m_axis_result_tdata]
  connect_bd_net -net floating_point_3_m_axis_result_tvalid [get_bd_pins im_mult/s_axis_a_tvalid] [get_bd_pins re_mult/s_axis_a_tvalid] [get_bd_pins subtract_0_54/m_axis_result_tvalid]
  connect_bd_net -net floating_point_5_s_axis_a_tready [get_bd_pins re_mult/s_axis_a_tready] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net floating_point_8_s_axis_a_tready [get_bd_pins im_mult/s_axis_a_tready] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net last_1 [get_bd_ports s_axis_last] [get_bd_pins c_counter_binary_0/SCLR]
  connect_bd_net -net log_1_dout [get_bd_pins cos_cos_minus_1/s_axis_b_tvalid] [get_bd_pins im_mult/m_axis_result_tready] [get_bd_pins log_1/dout] [get_bd_pins mult_0_46/s_axis_b_tvalid] [get_bd_pins mult_2PI_div_N/s_axis_b_tvalid] [get_bd_pins re_mult/m_axis_result_tready] [get_bd_pins subtract_0_54/s_axis_a_tvalid]
  connect_bd_net -net mult_cos_cos_m_axis_result_tdata [get_bd_pins cos_cos_mult_2/s_axis_a_tdata] [get_bd_pins cos_cos_mult_2/s_axis_b_tdata] [get_bd_pins mult_cos_cos/m_axis_result_tdata]
  connect_bd_net -net mult_cos_cos_m_axis_result_tlast [get_bd_pins cos_cos_mult_2/s_axis_a_tlast] [get_bd_pins mult_cos_cos/m_axis_result_tlast]
  connect_bd_net -net mult_cos_cos_m_axis_result_tvalid [get_bd_pins cos_cos_mult_2/s_axis_a_tvalid] [get_bd_pins cos_cos_mult_2/s_axis_b_tvalid] [get_bd_pins mult_cos_cos/m_axis_result_tvalid]
  connect_bd_net -net s_axis_a_tvalid_1 [get_bd_ports s_axis_tvalid] [get_bd_pins fix_float_counter/s_axis_a_tvalid] [get_bd_pins fix_to_float_im/s_axis_a_tvalid] [get_bd_pins fix_to_float_re/s_axis_a_tvalid] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net s_axis_tdata_im_1 [get_bd_ports s_axis_tdata_im] [get_bd_pins fix_to_float_im/s_axis_a_tdata]
  connect_bd_net -net s_axis_tdata_re_1 [get_bd_ports s_axis_tdata_re] [get_bd_pins fix_to_float_re/s_axis_a_tdata]
  connect_bd_net -net subtrackt_054_dout [get_bd_pins subtrackt_054/dout] [get_bd_pins subtract_0_54/s_axis_a_tdata]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins subtract_0_54/m_axis_result_tready] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_ports s_axis_ready] [get_bd_pins util_vector_logic_1/Res] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins c_counter_binary_0/CE] [get_bd_pins util_vector_logic_2/Res]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins fixed_to_float_after_cordic/m_axis_result_tready] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net util_vector_logic_4_Res [get_bd_pins mult_cos_cos/m_axis_result_tready] [get_bd_pins util_vector_logic_4/Res]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


