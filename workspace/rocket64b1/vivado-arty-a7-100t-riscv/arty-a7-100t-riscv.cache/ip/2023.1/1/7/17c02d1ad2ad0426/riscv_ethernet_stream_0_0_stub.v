// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue Oct  3 10:30:43 2023
// Host        : alis-F15Plus-2 running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ riscv_ethernet_stream_0_0_stub.v
// Design      : riscv_ethernet_stream_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ethernet_arty_a7_100t,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(reset, clock, tx_axis_tdata, tx_axis_tkeep, 
  tx_axis_tvalid, tx_axis_tready, tx_axis_tlast, tx_axis_tuser, rx_axis_tdata, rx_axis_tkeep, 
  rx_axis_tvalid, rx_axis_tready, rx_axis_tlast, rx_axis_tuser, status_vector, mii_txd, 
  mii_tx_en, mii_rxd, mii_rx_dv, mii_rx_er, mii_crs, mii_col, mii_tx_clk, mii_rx_clk)
/* synthesis syn_black_box black_box_pad_pin="reset,tx_axis_tdata[7:0],tx_axis_tkeep[0:0],tx_axis_tvalid,tx_axis_tready,tx_axis_tlast,tx_axis_tuser,rx_axis_tdata[7:0],rx_axis_tkeep[0:0],rx_axis_tvalid,rx_axis_tready,rx_axis_tlast,rx_axis_tuser,status_vector[15:0],mii_txd[3:0],mii_tx_en,mii_rxd[3:0],mii_rx_dv,mii_rx_er,mii_crs,mii_col,mii_tx_clk" */
/* synthesis syn_force_seq_prim="clock" */
/* synthesis syn_force_seq_prim="mii_rx_clk" */;
  input reset;
  input clock /* synthesis syn_isclock = 1 */;
  input [7:0]tx_axis_tdata;
  input [0:0]tx_axis_tkeep;
  input tx_axis_tvalid;
  output tx_axis_tready;
  input tx_axis_tlast;
  input tx_axis_tuser;
  output [7:0]rx_axis_tdata;
  output [0:0]rx_axis_tkeep;
  output rx_axis_tvalid;
  input rx_axis_tready;
  output rx_axis_tlast;
  output rx_axis_tuser;
  output [15:0]status_vector;
  output [3:0]mii_txd;
  output mii_tx_en;
  input [3:0]mii_rxd;
  input mii_rx_dv;
  input mii_rx_er;
  input mii_crs;
  input mii_col;
  input mii_tx_clk;
  input mii_rx_clk /* synthesis syn_isclock = 1 */;
endmodule
