// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue Oct  3 10:15:57 2023
// Host        : alis-F15Plus-2 running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/alis/vivado-risc-v/workspace/rocket64b1/vivado-arty-a7-100t-riscv/arty-a7-100t-riscv.gen/sources_1/bd/riscv/ip/riscv_mem_reset_control_0_0/riscv_mem_reset_control_0_0_stub.v
// Design      : riscv_mem_reset_control_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mem_reset_control,Vivado 2023.1" *)
module riscv_mem_reset_control_0_0(clock, clock_ok, mmcm_locked, calib_complete, 
  ui_clk_sync_rst, sys_reset, mem_reset, aresetn, ui_clk, mem_ok)
/* synthesis syn_black_box black_box_pad_pin="clock_ok,mmcm_locked,calib_complete,ui_clk_sync_rst,sys_reset,mem_reset,aresetn,mem_ok" */
/* synthesis syn_force_seq_prim="clock" */
/* synthesis syn_force_seq_prim="ui_clk" */;
  input clock /* synthesis syn_isclock = 1 */;
  input clock_ok;
  input mmcm_locked;
  input calib_complete;
  input ui_clk_sync_rst;
  input sys_reset;
  output mem_reset;
  output aresetn;
  input ui_clk /* synthesis syn_isclock = 1 */;
  output mem_ok;
endmodule
