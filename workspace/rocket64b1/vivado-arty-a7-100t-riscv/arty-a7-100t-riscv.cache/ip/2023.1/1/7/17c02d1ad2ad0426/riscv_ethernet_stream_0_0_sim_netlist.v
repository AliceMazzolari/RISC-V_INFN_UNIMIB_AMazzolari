// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Tue Oct  3 10:30:43 2023
// Host        : alis-F15Plus-2 running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ riscv_ethernet_stream_0_0_sim_netlist.v
// Design      : riscv_ethernet_stream_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_async_fifo
   (m_rst_sync1_reg_reg_0,
    m_rst_sync3_reg_reg_0,
    \m_axis_tvalid_pipe_reg_reg[1]_0 ,
    m_terminate_frame_reg_reg_0,
    \FSM_onehot_state_reg_reg[6] ,
    \m_axis_pipe_reg_reg[0]_0 ,
    mem_reg_1_0,
    D,
    \m_axis_tvalid_pipe_reg_reg[1]_1 ,
    tx_axis_tready,
    tx_clk,
    Q,
    clock,
    reset,
    tx_fifo_axis_tready,
    \FSM_onehot_state_reg_reg[7] ,
    s_axis,
    tx_axis_tvalid,
    mem_reg_1_1,
    clear);
  output m_rst_sync1_reg_reg_0;
  output m_rst_sync3_reg_reg_0;
  output \m_axis_tvalid_pipe_reg_reg[1]_0 ;
  output m_terminate_frame_reg_reg_0;
  output \FSM_onehot_state_reg_reg[6] ;
  output [8:0]\m_axis_pipe_reg_reg[0]_0 ;
  output mem_reg_1_0;
  output [1:0]D;
  output \m_axis_tvalid_pipe_reg_reg[1]_1 ;
  output tx_axis_tready;
  input tx_clk;
  input [0:0]Q;
  input clock;
  input reset;
  input tx_fifo_axis_tready;
  input [2:0]\FSM_onehot_state_reg_reg[7] ;
  input [9:0]s_axis;
  input tx_axis_tvalid;
  input mem_reg_1_1;
  input clear;

  wire [1:0]D;
  wire \FSM_onehot_state_reg_reg[6] ;
  wire [2:0]\FSM_onehot_state_reg_reg[7] ;
  wire [0:0]Q;
  wire clear;
  wire clock;
  wire drop_frame_reg_i_1_n_0;
  wire drop_frame_reg_i_2_n_0;
  wire drop_frame_reg_i_3_n_0;
  wire drop_frame_reg_i_4_n_0;
  wire drop_frame_reg_reg_n_0;
  wire empty;
  wire empty_carry__0_i_1_n_0;
  wire empty_carry_i_1_n_0;
  wire empty_carry_i_2_n_0;
  wire empty_carry_i_3_n_0;
  wire empty_carry_i_4_n_0;
  wire empty_carry_n_0;
  wire empty_carry_n_1;
  wire empty_carry_n_2;
  wire empty_carry_n_3;
  wire full_cur;
  wire full_cur_carry__0_i_1_n_0;
  wire full_cur_carry_i_1_n_0;
  wire full_cur_carry_i_2_n_0;
  wire full_cur_carry_i_3_n_0;
  wire full_cur_carry_i_4_n_0;
  wire full_cur_carry_n_0;
  wire full_cur_carry_n_1;
  wire full_cur_carry_n_2;
  wire full_cur_carry_n_3;
  wire full_wr;
  wire full_wr_carry__0_i_1_n_0;
  wire full_wr_carry_i_1_n_0;
  wire full_wr_carry_i_2_n_0;
  wire full_wr_carry_i_3_n_0;
  wire full_wr_carry_i_4_n_0;
  wire full_wr_carry_n_0;
  wire full_wr_carry_n_1;
  wire full_wr_carry_n_2;
  wire full_wr_carry_n_3;
  wire [9:9]m_axis;
  wire [8:0]\m_axis_pipe_reg_reg[0]_0 ;
  wire m_axis_tvalid_pipe_reg0;
  wire \m_axis_tvalid_pipe_reg[0]_i_1_n_0 ;
  wire \m_axis_tvalid_pipe_reg[1]_i_1_n_0 ;
  wire \m_axis_tvalid_pipe_reg_reg[1]_0 ;
  wire \m_axis_tvalid_pipe_reg_reg[1]_1 ;
  wire \m_axis_tvalid_pipe_reg_reg_n_0_[0] ;
  wire m_drop_frame_reg_i_1_n_0;
  wire m_drop_frame_reg_reg_n_0;
  wire m_frame_reg;
  wire m_frame_reg_i_1_n_0;
  wire m_rst_sync1_reg_reg_0;
  wire m_rst_sync2_reg;
  wire m_rst_sync3_reg_reg_0;
  wire m_terminate_frame_reg_i_1_n_0;
  wire m_terminate_frame_reg_reg_0;
  wire mem_reg_0_i_2_n_0;
  wire mem_reg_1_0;
  wire mem_reg_1_1;
  wire overflow_reg126_out;
  wire [12:0]p_1_in;
  wire p_8_in;
  wire [12:0]rd_ptr_gray_reg;
  wire [11:1]rd_ptr_gray_reg0;
  wire \rd_ptr_gray_reg[0]_i_1_n_0 ;
  wire [12:0]rd_ptr_gray_sync1_reg;
  wire [12:0]rd_ptr_gray_sync2_reg;
  wire rd_ptr_reg;
  wire [12:0]rd_ptr_reg0;
  wire \rd_ptr_reg[0]_i_2_n_0 ;
  wire [12:0]rd_ptr_reg_reg;
  wire \rd_ptr_reg_reg[0]_i_1_n_0 ;
  wire \rd_ptr_reg_reg[0]_i_1_n_1 ;
  wire \rd_ptr_reg_reg[0]_i_1_n_2 ;
  wire \rd_ptr_reg_reg[0]_i_1_n_3 ;
  wire \rd_ptr_reg_reg[0]_i_1_n_4 ;
  wire \rd_ptr_reg_reg[0]_i_1_n_5 ;
  wire \rd_ptr_reg_reg[0]_i_1_n_6 ;
  wire \rd_ptr_reg_reg[0]_i_1_n_7 ;
  wire \rd_ptr_reg_reg[12]_i_1_n_7 ;
  wire \rd_ptr_reg_reg[4]_i_1_n_0 ;
  wire \rd_ptr_reg_reg[4]_i_1_n_1 ;
  wire \rd_ptr_reg_reg[4]_i_1_n_2 ;
  wire \rd_ptr_reg_reg[4]_i_1_n_3 ;
  wire \rd_ptr_reg_reg[4]_i_1_n_4 ;
  wire \rd_ptr_reg_reg[4]_i_1_n_5 ;
  wire \rd_ptr_reg_reg[4]_i_1_n_6 ;
  wire \rd_ptr_reg_reg[4]_i_1_n_7 ;
  wire \rd_ptr_reg_reg[8]_i_1_n_0 ;
  wire \rd_ptr_reg_reg[8]_i_1_n_1 ;
  wire \rd_ptr_reg_reg[8]_i_1_n_2 ;
  wire \rd_ptr_reg_reg[8]_i_1_n_3 ;
  wire \rd_ptr_reg_reg[8]_i_1_n_4 ;
  wire \rd_ptr_reg_reg[8]_i_1_n_5 ;
  wire \rd_ptr_reg_reg[8]_i_1_n_6 ;
  wire \rd_ptr_reg_reg[8]_i_1_n_7 ;
  wire [11:0]rd_ptr_reg_reg_rep;
  wire \rd_ptr_reg_reg_rep[11]_i_3_n_1 ;
  wire \rd_ptr_reg_reg_rep[11]_i_3_n_2 ;
  wire \rd_ptr_reg_reg_rep[11]_i_3_n_3 ;
  wire \rd_ptr_reg_reg_rep[4]_i_1_n_0 ;
  wire \rd_ptr_reg_reg_rep[4]_i_1_n_1 ;
  wire \rd_ptr_reg_reg_rep[4]_i_1_n_2 ;
  wire \rd_ptr_reg_reg_rep[4]_i_1_n_3 ;
  wire \rd_ptr_reg_reg_rep[8]_i_1_n_0 ;
  wire \rd_ptr_reg_reg_rep[8]_i_1_n_1 ;
  wire \rd_ptr_reg_reg_rep[8]_i_1_n_2 ;
  wire \rd_ptr_reg_reg_rep[8]_i_1_n_3 ;
  wire reset;
  wire [9:0]s_axis;
  wire s_frame_reg;
  wire s_frame_reg_i_1_n_0;
  wire s_rst_sync1_reg;
  wire s_rst_sync2_reg;
  wire s_rst_sync3_reg;
  wire tx_axis_tready;
  wire tx_axis_tvalid;
  wire tx_clk;
  wire tx_fifo_axis_tready;
  wire [11:0]wr_ptr_cur_gray_reg;
  wire [11:0]wr_ptr_cur_gray_reg1;
  wire \wr_ptr_cur_gray_reg[0]_i_1_n_0 ;
  wire \wr_ptr_cur_gray_reg[10]_i_1_n_0 ;
  wire \wr_ptr_cur_gray_reg[11]_i_1_n_0 ;
  wire \wr_ptr_cur_gray_reg[11]_i_2_n_0 ;
  wire \wr_ptr_cur_gray_reg[1]_i_1_n_0 ;
  wire \wr_ptr_cur_gray_reg[2]_i_1_n_0 ;
  wire \wr_ptr_cur_gray_reg[3]_i_1_n_0 ;
  wire \wr_ptr_cur_gray_reg[4]_i_1_n_0 ;
  wire \wr_ptr_cur_gray_reg[5]_i_1_n_0 ;
  wire \wr_ptr_cur_gray_reg[6]_i_1_n_0 ;
  wire \wr_ptr_cur_gray_reg[7]_i_1_n_0 ;
  wire \wr_ptr_cur_gray_reg[8]_i_1_n_0 ;
  wire \wr_ptr_cur_gray_reg[9]_i_1_n_0 ;
  wire [12:0]wr_ptr_cur_reg;
  wire \wr_ptr_cur_reg[0]_i_1_n_0 ;
  wire \wr_ptr_cur_reg[10]_i_1_n_0 ;
  wire \wr_ptr_cur_reg[11]_i_3_n_0 ;
  wire \wr_ptr_cur_reg[12]_i_1_n_0 ;
  wire \wr_ptr_cur_reg[1]_i_1_n_0 ;
  wire \wr_ptr_cur_reg[2]_i_1_n_0 ;
  wire \wr_ptr_cur_reg[3]_i_1_n_0 ;
  wire \wr_ptr_cur_reg[4]_i_1_n_0 ;
  wire \wr_ptr_cur_reg[5]_i_1_n_0 ;
  wire \wr_ptr_cur_reg[6]_i_1_n_0 ;
  wire \wr_ptr_cur_reg[7]_i_1_n_0 ;
  wire \wr_ptr_cur_reg[8]_i_1_n_0 ;
  wire \wr_ptr_cur_reg[9]_i_1_n_0 ;
  wire wr_ptr_cur_reg__0;
  wire \wr_ptr_cur_reg_reg[4]_i_2_n_0 ;
  wire \wr_ptr_cur_reg_reg[4]_i_2_n_1 ;
  wire \wr_ptr_cur_reg_reg[4]_i_2_n_2 ;
  wire \wr_ptr_cur_reg_reg[4]_i_2_n_3 ;
  wire \wr_ptr_cur_reg_reg[8]_i_2_n_0 ;
  wire \wr_ptr_cur_reg_reg[8]_i_2_n_1 ;
  wire \wr_ptr_cur_reg_reg[8]_i_2_n_2 ;
  wire \wr_ptr_cur_reg_reg[8]_i_2_n_3 ;
  wire [12:0]wr_ptr_gray_reg;
  wire \wr_ptr_gray_reg[12]_i_3_n_0 ;
  wire wr_ptr_gray_reg_0;
  wire \wr_ptr_gray_reg_reg[12]_i_2_n_1 ;
  wire \wr_ptr_gray_reg_reg[12]_i_2_n_2 ;
  wire \wr_ptr_gray_reg_reg[12]_i_2_n_3 ;
  wire [12:0]wr_ptr_gray_sync1_reg;
  wire wr_ptr_gray_sync1_reg0;
  wire [12:0]wr_ptr_reg;
  wire \wr_ptr_reg[12]_i_1_n_0 ;
  wire \wr_ptr_reg_reg_n_0_[0] ;
  wire [12:0]wr_ptr_sync_gray_reg;
  wire [11:0]wr_ptr_sync_gray_reg0;
  wire [12:12]wr_ptr_sync_gray_reg10_in;
  wire [11:1]wr_ptr_sync_gray_reg10_in__0;
  wire \wr_ptr_sync_gray_reg[12]_i_1_n_0 ;
  wire \wr_ptr_sync_gray_reg[12]_i_3_n_0 ;
  wire \wr_ptr_sync_gray_reg[12]_i_4_n_0 ;
  wire wr_ptr_update_ack_sync1_reg;
  wire wr_ptr_update_ack_sync2_reg;
  wire wr_ptr_update_reg;
  wire wr_ptr_update_reg_i_1_n_0;
  wire wr_ptr_update_sync1_reg;
  wire wr_ptr_update_sync2_reg;
  wire wr_ptr_update_sync3_reg;
  wire wr_ptr_update_valid_reg;
  wire wr_ptr_update_valid_reg13_out;
  wire wr_ptr_update_valid_reg_i_1_n_0;
  wire wr_ptr_update_valid_reg_i_2_n_0;
  wire wr_ptr_update_valid_reg_i_3_n_0;
  wire [3:0]NLW_empty_carry_O_UNCONNECTED;
  wire [3:1]NLW_empty_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_empty_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_full_cur_carry_O_UNCONNECTED;
  wire [3:1]NLW_full_cur_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_full_cur_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_full_wr_carry_O_UNCONNECTED;
  wire [3:1]NLW_full_wr_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_full_wr_carry__0_O_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire [15:0]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [15:1]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [3:0]\NLW_rd_ptr_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_rd_ptr_reg_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_rd_ptr_reg_reg_rep[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_wr_ptr_gray_reg_reg[12]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_onehot_state_reg[0]_i_2__0 
       (.I0(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I1(\m_axis_pipe_reg_reg[0]_0 [8]),
        .I2(m_terminate_frame_reg_reg_0),
        .O(\m_axis_tvalid_pipe_reg_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \FSM_onehot_state_reg[3]_i_1 
       (.I0(m_axis),
        .I1(m_terminate_frame_reg_reg_0),
        .I2(\m_axis_pipe_reg_reg[0]_0 [8]),
        .I3(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I4(\FSM_onehot_state_reg_reg[7] [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h10FF10F0)) 
    \FSM_onehot_state_reg[6]_i_1 
       (.I0(\m_axis_pipe_reg_reg[0]_0 [8]),
        .I1(m_terminate_frame_reg_reg_0),
        .I2(\FSM_onehot_state_reg_reg[7] [1]),
        .I3(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I4(\FSM_onehot_state_reg_reg[7] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hC0C08000)) 
    \FSM_onehot_state_reg[7]_i_2 
       (.I0(m_axis),
        .I1(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I2(\FSM_onehot_state_reg_reg[7] [0]),
        .I3(\m_axis_pipe_reg_reg[0]_0 [8]),
        .I4(m_terminate_frame_reg_reg_0),
        .O(mem_reg_1_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h0000777F)) 
    \FSM_onehot_state_reg[7]_i_5 
       (.I0(\FSM_onehot_state_reg_reg[7] [1]),
        .I1(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I2(\m_axis_pipe_reg_reg[0]_0 [8]),
        .I3(m_terminate_frame_reg_reg_0),
        .I4(\FSM_onehot_state_reg_reg[7] [2]),
        .O(\FSM_onehot_state_reg_reg[6] ));
  LUT5 #(
    .INIT(32'h45400000)) 
    drop_frame_reg_i_1
       (.I0(reset),
        .I1(drop_frame_reg_i_2_n_0),
        .I2(drop_frame_reg_i_3_n_0),
        .I3(drop_frame_reg_reg_n_0),
        .I4(drop_frame_reg_i_4_n_0),
        .O(drop_frame_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCCCFFFFCCCCCCF5)) 
    drop_frame_reg_i_2
       (.I0(s_axis[8]),
        .I1(s_frame_reg),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(\wr_ptr_gray_reg[12]_i_3_n_0 ),
        .I5(full_wr),
        .O(drop_frame_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAFFAA00AA0CAA00)) 
    drop_frame_reg_i_3
       (.I0(s_frame_reg),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_cur),
        .I3(s_rst_sync3_reg),
        .I4(tx_axis_tvalid),
        .I5(full_wr),
        .O(drop_frame_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'hF5FFF5FFFFFFF7FF)) 
    drop_frame_reg_i_4
       (.I0(s_axis[8]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(s_rst_sync3_reg),
        .I3(tx_axis_tvalid),
        .I4(full_cur),
        .I5(full_wr),
        .O(drop_frame_reg_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    drop_frame_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(drop_frame_reg_i_1_n_0),
        .Q(drop_frame_reg_reg_n_0),
        .R(1'b0));
  CARRY4 empty_carry
       (.CI(1'b0),
        .CO({empty_carry_n_0,empty_carry_n_1,empty_carry_n_2,empty_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_empty_carry_O_UNCONNECTED[3:0]),
        .S({empty_carry_i_1_n_0,empty_carry_i_2_n_0,empty_carry_i_3_n_0,empty_carry_i_4_n_0}));
  CARRY4 empty_carry__0
       (.CI(empty_carry_n_0),
        .CO({NLW_empty_carry__0_CO_UNCONNECTED[3:1],empty}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_empty_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,empty_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    empty_carry__0_i_1
       (.I0(wr_ptr_gray_sync1_reg[12]),
        .I1(rd_ptr_gray_reg[12]),
        .O(empty_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_carry_i_1
       (.I0(rd_ptr_gray_reg[9]),
        .I1(wr_ptr_gray_sync1_reg[9]),
        .I2(rd_ptr_gray_reg[10]),
        .I3(wr_ptr_gray_sync1_reg[10]),
        .I4(wr_ptr_gray_sync1_reg[11]),
        .I5(rd_ptr_gray_reg[11]),
        .O(empty_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_carry_i_2
       (.I0(rd_ptr_gray_reg[6]),
        .I1(wr_ptr_gray_sync1_reg[6]),
        .I2(rd_ptr_gray_reg[7]),
        .I3(wr_ptr_gray_sync1_reg[7]),
        .I4(wr_ptr_gray_sync1_reg[8]),
        .I5(rd_ptr_gray_reg[8]),
        .O(empty_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_carry_i_3
       (.I0(rd_ptr_gray_reg[3]),
        .I1(wr_ptr_gray_sync1_reg[3]),
        .I2(rd_ptr_gray_reg[4]),
        .I3(wr_ptr_gray_sync1_reg[4]),
        .I4(wr_ptr_gray_sync1_reg[5]),
        .I5(rd_ptr_gray_reg[5]),
        .O(empty_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_carry_i_4
       (.I0(rd_ptr_gray_reg[0]),
        .I1(wr_ptr_gray_sync1_reg[0]),
        .I2(rd_ptr_gray_reg[1]),
        .I3(wr_ptr_gray_sync1_reg[1]),
        .I4(wr_ptr_gray_sync1_reg[2]),
        .I5(rd_ptr_gray_reg[2]),
        .O(empty_carry_i_4_n_0));
  CARRY4 full_cur_carry
       (.CI(1'b0),
        .CO({full_cur_carry_n_0,full_cur_carry_n_1,full_cur_carry_n_2,full_cur_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full_cur_carry_O_UNCONNECTED[3:0]),
        .S({full_cur_carry_i_1_n_0,full_cur_carry_i_2_n_0,full_cur_carry_i_3_n_0,full_cur_carry_i_4_n_0}));
  CARRY4 full_cur_carry__0
       (.CI(full_cur_carry_n_0),
        .CO({NLW_full_cur_carry__0_CO_UNCONNECTED[3:1],full_cur}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full_cur_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,full_cur_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    full_cur_carry__0_i_1
       (.I0(rd_ptr_gray_sync2_reg[12]),
        .I1(wr_ptr_cur_reg[12]),
        .O(full_cur_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    full_cur_carry_i_1
       (.I0(rd_ptr_gray_sync2_reg[11]),
        .I1(wr_ptr_cur_gray_reg[11]),
        .I2(rd_ptr_gray_sync2_reg[10]),
        .I3(wr_ptr_cur_gray_reg[10]),
        .I4(wr_ptr_cur_gray_reg[9]),
        .I5(rd_ptr_gray_sync2_reg[9]),
        .O(full_cur_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_cur_carry_i_2
       (.I0(rd_ptr_gray_sync2_reg[8]),
        .I1(wr_ptr_cur_gray_reg[8]),
        .I2(rd_ptr_gray_sync2_reg[7]),
        .I3(wr_ptr_cur_gray_reg[7]),
        .I4(wr_ptr_cur_gray_reg[6]),
        .I5(rd_ptr_gray_sync2_reg[6]),
        .O(full_cur_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_cur_carry_i_3
       (.I0(rd_ptr_gray_sync2_reg[5]),
        .I1(wr_ptr_cur_gray_reg[5]),
        .I2(rd_ptr_gray_sync2_reg[4]),
        .I3(wr_ptr_cur_gray_reg[4]),
        .I4(wr_ptr_cur_gray_reg[3]),
        .I5(rd_ptr_gray_sync2_reg[3]),
        .O(full_cur_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_cur_carry_i_4
       (.I0(rd_ptr_gray_sync2_reg[2]),
        .I1(wr_ptr_cur_gray_reg[2]),
        .I2(rd_ptr_gray_sync2_reg[1]),
        .I3(wr_ptr_cur_gray_reg[1]),
        .I4(wr_ptr_cur_gray_reg[0]),
        .I5(rd_ptr_gray_sync2_reg[0]),
        .O(full_cur_carry_i_4_n_0));
  CARRY4 full_wr_carry
       (.CI(1'b0),
        .CO({full_wr_carry_n_0,full_wr_carry_n_1,full_wr_carry_n_2,full_wr_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full_wr_carry_O_UNCONNECTED[3:0]),
        .S({full_wr_carry_i_1_n_0,full_wr_carry_i_2_n_0,full_wr_carry_i_3_n_0,full_wr_carry_i_4_n_0}));
  CARRY4 full_wr_carry__0
       (.CI(full_wr_carry_n_0),
        .CO({NLW_full_wr_carry__0_CO_UNCONNECTED[3:1],full_wr}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full_wr_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,full_wr_carry__0_i_1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    full_wr_carry__0_i_1
       (.I0(wr_ptr_cur_reg[12]),
        .I1(wr_ptr_cur_gray_reg1[11]),
        .O(full_wr_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_wr_carry_i_1
       (.I0(wr_ptr_cur_reg[11]),
        .I1(wr_ptr_cur_gray_reg1[10]),
        .I2(wr_ptr_cur_reg[10]),
        .I3(wr_ptr_cur_gray_reg1[9]),
        .I4(wr_ptr_cur_gray_reg1[8]),
        .I5(wr_ptr_cur_reg[9]),
        .O(full_wr_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_wr_carry_i_2
       (.I0(wr_ptr_cur_reg[8]),
        .I1(wr_ptr_cur_gray_reg1[7]),
        .I2(wr_ptr_cur_reg[7]),
        .I3(wr_ptr_cur_gray_reg1[6]),
        .I4(wr_ptr_cur_gray_reg1[5]),
        .I5(wr_ptr_cur_reg[6]),
        .O(full_wr_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_wr_carry_i_3
       (.I0(wr_ptr_cur_reg[5]),
        .I1(wr_ptr_cur_gray_reg1[4]),
        .I2(wr_ptr_cur_reg[4]),
        .I3(wr_ptr_cur_gray_reg1[3]),
        .I4(wr_ptr_cur_gray_reg1[2]),
        .I5(wr_ptr_cur_reg[3]),
        .O(full_wr_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_wr_carry_i_4
       (.I0(wr_ptr_cur_reg[2]),
        .I1(wr_ptr_cur_gray_reg1[1]),
        .I2(wr_ptr_cur_reg[1]),
        .I3(wr_ptr_cur_gray_reg1[0]),
        .I4(\wr_ptr_reg_reg_n_0_[0] ),
        .I5(wr_ptr_cur_reg[0]),
        .O(full_wr_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000000000FF20)) 
    \m_axis_tvalid_pipe_reg[0]_i_1 
       (.I0(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I1(tx_fifo_axis_tready),
        .I2(\m_axis_tvalid_pipe_reg_reg_n_0_[0] ),
        .I3(rd_ptr_reg),
        .I4(m_rst_sync3_reg_reg_0),
        .I5(Q),
        .O(\m_axis_tvalid_pipe_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \m_axis_tvalid_pipe_reg[1]_i_1 
       (.I0(\m_axis_tvalid_pipe_reg_reg_n_0_[0] ),
        .I1(m_drop_frame_reg_reg_n_0),
        .I2(tx_fifo_axis_tready),
        .I3(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .O(\m_axis_tvalid_pipe_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tvalid_pipe_reg_reg[0] 
       (.C(tx_clk),
        .CE(1'b1),
        .D(\m_axis_tvalid_pipe_reg[0]_i_1_n_0 ),
        .Q(\m_axis_tvalid_pipe_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tvalid_pipe_reg_reg[1] 
       (.C(tx_clk),
        .CE(1'b1),
        .D(\m_axis_tvalid_pipe_reg[1]_i_1_n_0 ),
        .Q(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .R(Q));
  LUT6 #(
    .INIT(64'h5555555500300000)) 
    m_drop_frame_reg_i_1
       (.I0(m_axis_tvalid_pipe_reg0),
        .I1(\m_axis_tvalid_pipe_reg_reg[1]_1 ),
        .I2(m_frame_reg),
        .I3(m_terminate_frame_reg_reg_0),
        .I4(m_rst_sync3_reg_reg_0),
        .I5(m_drop_frame_reg_reg_n_0),
        .O(m_drop_frame_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    m_drop_frame_reg_i_2
       (.I0(m_drop_frame_reg_reg_n_0),
        .I1(tx_fifo_axis_tready),
        .I2(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .O(m_axis_tvalid_pipe_reg0));
  FDRE #(
    .INIT(1'b0)) 
    m_drop_frame_reg_reg
       (.C(tx_clk),
        .CE(1'b1),
        .D(m_drop_frame_reg_i_1_n_0),
        .Q(m_drop_frame_reg_reg_n_0),
        .R(Q));
  LUT6 #(
    .INIT(64'h0404045454545454)) 
    m_frame_reg_i_1
       (.I0(Q),
        .I1(m_frame_reg),
        .I2(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I3(\m_axis_pipe_reg_reg[0]_0 [8]),
        .I4(m_terminate_frame_reg_reg_0),
        .I5(tx_fifo_axis_tready),
        .O(m_frame_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_frame_reg_reg
       (.C(tx_clk),
        .CE(1'b1),
        .D(m_frame_reg_i_1_n_0),
        .Q(m_frame_reg),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    m_rst_sync1_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(m_rst_sync1_reg_reg_0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    m_rst_sync2_reg_reg
       (.C(tx_clk),
        .CE(1'b1),
        .D(m_rst_sync1_reg_reg_0),
        .Q(m_rst_sync2_reg),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    m_rst_sync3_reg_reg
       (.C(tx_clk),
        .CE(1'b1),
        .D(m_rst_sync2_reg),
        .Q(m_rst_sync3_reg_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF3D0)) 
    m_terminate_frame_reg_i_1
       (.I0(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I1(tx_fifo_axis_tready),
        .I2(m_drop_frame_reg_reg_n_0),
        .I3(m_terminate_frame_reg_reg_0),
        .O(m_terminate_frame_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_terminate_frame_reg_reg
       (.C(tx_clk),
        .CE(1'b1),
        .D(m_terminate_frame_reg_i_1_n_0),
        .Q(m_terminate_frame_reg_reg_0),
        .R(Q));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "40960" *) 
  (* RTL_RAM_NAME = "inst/eth_mac_inst/tx_fifo/fifo_inst/mem_reg_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,wr_ptr_cur_reg[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_reg_reg_rep,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(clock),
        .CLKBWRCLK(tx_clk),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:8],\m_axis_pipe_reg_reg[0]_0 [7:0]}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],\m_axis_pipe_reg_reg[0]_0 [8]}),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(p_8_in),
        .ENBWREN(mem_reg_0_i_2_n_0),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(mem_reg_1_1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({overflow_reg126_out,overflow_reg126_out,overflow_reg126_out,overflow_reg126_out}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h1)) 
    mem_reg_0_i_1
       (.I0(drop_frame_reg_reg_n_0),
        .I1(full_wr),
        .O(p_8_in));
  LUT3 #(
    .INIT(8'hDF)) 
    mem_reg_0_i_2
       (.I0(\m_axis_tvalid_pipe_reg_reg_n_0_[0] ),
        .I1(tx_fifo_axis_tready),
        .I2(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .O(mem_reg_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h0B00)) 
    mem_reg_0_i_4
       (.I0(full_wr),
        .I1(full_cur),
        .I2(s_rst_sync3_reg),
        .I3(tx_axis_tvalid),
        .O(overflow_reg126_out));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "40960" *) 
  (* RTL_RAM_NAME = "inst/eth_mac_inst/tx_fifo/fifo_inst/mem_reg_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    mem_reg_1
       (.ADDRARDADDR({wr_ptr_cur_reg[11:0],1'b1,1'b1}),
        .ADDRBWRADDR({rd_ptr_reg_reg_rep,1'b1,1'b1}),
        .CLKARDCLK(clock),
        .CLKBWRCLK(tx_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[15:1],m_axis}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(p_8_in),
        .ENBWREN(mem_reg_0_i_2_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(mem_reg_1_1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({overflow_reg126_out,overflow_reg126_out}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \rd_ptr_gray_reg[0]_i_1 
       (.I0(rd_ptr_reg_reg[0]),
        .I1(rd_ptr_reg0[1]),
        .O(\rd_ptr_gray_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[10]_i_1 
       (.I0(rd_ptr_reg0[10]),
        .I1(rd_ptr_reg0[11]),
        .O(rd_ptr_gray_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[11]_i_1 
       (.I0(rd_ptr_reg0[11]),
        .I1(rd_ptr_reg0[12]),
        .O(rd_ptr_gray_reg0[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[1]_i_1 
       (.I0(rd_ptr_reg0[1]),
        .I1(rd_ptr_reg0[2]),
        .O(rd_ptr_gray_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[2]_i_1 
       (.I0(rd_ptr_reg0[2]),
        .I1(rd_ptr_reg0[3]),
        .O(rd_ptr_gray_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[3]_i_1 
       (.I0(rd_ptr_reg0[3]),
        .I1(rd_ptr_reg0[4]),
        .O(rd_ptr_gray_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[4]_i_1 
       (.I0(rd_ptr_reg0[4]),
        .I1(rd_ptr_reg0[5]),
        .O(rd_ptr_gray_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[5]_i_1 
       (.I0(rd_ptr_reg0[5]),
        .I1(rd_ptr_reg0[6]),
        .O(rd_ptr_gray_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[6]_i_1 
       (.I0(rd_ptr_reg0[6]),
        .I1(rd_ptr_reg0[7]),
        .O(rd_ptr_gray_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[7]_i_1 
       (.I0(rd_ptr_reg0[7]),
        .I1(rd_ptr_reg0[8]),
        .O(rd_ptr_gray_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[8]_i_1 
       (.I0(rd_ptr_reg0[8]),
        .I1(rd_ptr_reg0[9]),
        .O(rd_ptr_gray_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[9]_i_1 
       (.I0(rd_ptr_reg0[9]),
        .I1(rd_ptr_reg0[10]),
        .O(rd_ptr_gray_reg0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[0] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_gray_reg[0]_i_1_n_0 ),
        .Q(rd_ptr_gray_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[10] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_gray_reg0[10]),
        .Q(rd_ptr_gray_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[11] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_gray_reg0[11]),
        .Q(rd_ptr_gray_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[12] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[12]),
        .Q(rd_ptr_gray_reg[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[1] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_gray_reg0[1]),
        .Q(rd_ptr_gray_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[2] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_gray_reg0[2]),
        .Q(rd_ptr_gray_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[3] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_gray_reg0[3]),
        .Q(rd_ptr_gray_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[4] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_gray_reg0[4]),
        .Q(rd_ptr_gray_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[5] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_gray_reg0[5]),
        .Q(rd_ptr_gray_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[6] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_gray_reg0[6]),
        .Q(rd_ptr_gray_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[7] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_gray_reg0[7]),
        .Q(rd_ptr_gray_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[8] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_gray_reg0[8]),
        .Q(rd_ptr_gray_reg[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[9] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_gray_reg0[9]),
        .Q(rd_ptr_gray_reg[9]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[0]),
        .Q(rd_ptr_gray_sync1_reg[0]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[10]),
        .Q(rd_ptr_gray_sync1_reg[10]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[11]),
        .Q(rd_ptr_gray_sync1_reg[11]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[12]),
        .Q(rd_ptr_gray_sync1_reg[12]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[1]),
        .Q(rd_ptr_gray_sync1_reg[1]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[2]),
        .Q(rd_ptr_gray_sync1_reg[2]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[3]),
        .Q(rd_ptr_gray_sync1_reg[3]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[4]),
        .Q(rd_ptr_gray_sync1_reg[4]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[5]),
        .Q(rd_ptr_gray_sync1_reg[5]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[6]),
        .Q(rd_ptr_gray_sync1_reg[6]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[7]),
        .Q(rd_ptr_gray_sync1_reg[7]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[8]),
        .Q(rd_ptr_gray_sync1_reg[8]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_reg[9]),
        .Q(rd_ptr_gray_sync1_reg[9]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[0]),
        .Q(rd_ptr_gray_sync2_reg[0]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[10]),
        .Q(rd_ptr_gray_sync2_reg[10]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[11] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[11]),
        .Q(rd_ptr_gray_sync2_reg[11]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[12] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[12]),
        .Q(rd_ptr_gray_sync2_reg[12]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[1]),
        .Q(rd_ptr_gray_sync2_reg[1]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[2]),
        .Q(rd_ptr_gray_sync2_reg[2]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[3]),
        .Q(rd_ptr_gray_sync2_reg[3]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[4]),
        .Q(rd_ptr_gray_sync2_reg[4]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[5]),
        .Q(rd_ptr_gray_sync2_reg[5]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[6]),
        .Q(rd_ptr_gray_sync2_reg[6]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[7]),
        .Q(rd_ptr_gray_sync2_reg[7]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[8]),
        .Q(rd_ptr_gray_sync2_reg[8]),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(rd_ptr_gray_sync1_reg[9]),
        .Q(rd_ptr_gray_sync2_reg[9]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr_reg[0]_i_2 
       (.I0(rd_ptr_reg_reg[0]),
        .O(\rd_ptr_reg[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[0] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[0]_i_1_n_7 ),
        .Q(rd_ptr_reg_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_ptr_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\rd_ptr_reg_reg[0]_i_1_n_0 ,\rd_ptr_reg_reg[0]_i_1_n_1 ,\rd_ptr_reg_reg[0]_i_1_n_2 ,\rd_ptr_reg_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rd_ptr_reg_reg[0]_i_1_n_4 ,\rd_ptr_reg_reg[0]_i_1_n_5 ,\rd_ptr_reg_reg[0]_i_1_n_6 ,\rd_ptr_reg_reg[0]_i_1_n_7 }),
        .S({rd_ptr_reg_reg[3:1],\rd_ptr_reg[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[10] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[8]_i_1_n_5 ),
        .Q(rd_ptr_reg_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[11] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[8]_i_1_n_4 ),
        .Q(rd_ptr_reg_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[12] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[12]_i_1_n_7 ),
        .Q(rd_ptr_reg_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_ptr_reg_reg[12]_i_1 
       (.CI(\rd_ptr_reg_reg[8]_i_1_n_0 ),
        .CO(\NLW_rd_ptr_reg_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_ptr_reg_reg[12]_i_1_O_UNCONNECTED [3:1],\rd_ptr_reg_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,rd_ptr_reg_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[1] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[0]_i_1_n_6 ),
        .Q(rd_ptr_reg_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[2] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[0]_i_1_n_5 ),
        .Q(rd_ptr_reg_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[3] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[0]_i_1_n_4 ),
        .Q(rd_ptr_reg_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[4] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[4]_i_1_n_7 ),
        .Q(rd_ptr_reg_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_ptr_reg_reg[4]_i_1 
       (.CI(\rd_ptr_reg_reg[0]_i_1_n_0 ),
        .CO({\rd_ptr_reg_reg[4]_i_1_n_0 ,\rd_ptr_reg_reg[4]_i_1_n_1 ,\rd_ptr_reg_reg[4]_i_1_n_2 ,\rd_ptr_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_ptr_reg_reg[4]_i_1_n_4 ,\rd_ptr_reg_reg[4]_i_1_n_5 ,\rd_ptr_reg_reg[4]_i_1_n_6 ,\rd_ptr_reg_reg[4]_i_1_n_7 }),
        .S(rd_ptr_reg_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[5] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[4]_i_1_n_6 ),
        .Q(rd_ptr_reg_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[6] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[4]_i_1_n_5 ),
        .Q(rd_ptr_reg_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[7] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[4]_i_1_n_4 ),
        .Q(rd_ptr_reg_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[8] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[8]_i_1_n_7 ),
        .Q(rd_ptr_reg_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_ptr_reg_reg[8]_i_1 
       (.CI(\rd_ptr_reg_reg[4]_i_1_n_0 ),
        .CO({\rd_ptr_reg_reg[8]_i_1_n_0 ,\rd_ptr_reg_reg[8]_i_1_n_1 ,\rd_ptr_reg_reg[8]_i_1_n_2 ,\rd_ptr_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_ptr_reg_reg[8]_i_1_n_4 ,\rd_ptr_reg_reg[8]_i_1_n_5 ,\rd_ptr_reg_reg[8]_i_1_n_6 ,\rd_ptr_reg_reg[8]_i_1_n_7 }),
        .S(rd_ptr_reg_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[9] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(\rd_ptr_reg_reg[8]_i_1_n_6 ),
        .Q(rd_ptr_reg_reg[9]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[0] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[0]),
        .Q(rd_ptr_reg_reg_rep[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[10] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[10]),
        .Q(rd_ptr_reg_reg_rep[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[11] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[11]),
        .Q(rd_ptr_reg_reg_rep[11]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rd_ptr_reg_reg_rep[11]_i_3 
       (.CI(\rd_ptr_reg_reg_rep[8]_i_1_n_0 ),
        .CO({\NLW_rd_ptr_reg_reg_rep[11]_i_3_CO_UNCONNECTED [3],\rd_ptr_reg_reg_rep[11]_i_3_n_1 ,\rd_ptr_reg_reg_rep[11]_i_3_n_2 ,\rd_ptr_reg_reg_rep[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rd_ptr_reg0[12:9]),
        .S(rd_ptr_reg_reg[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[1] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[1]),
        .Q(rd_ptr_reg_reg_rep[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[2] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[2]),
        .Q(rd_ptr_reg_reg_rep[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[3] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[3]),
        .Q(rd_ptr_reg_reg_rep[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[4] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[4]),
        .Q(rd_ptr_reg_reg_rep[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rd_ptr_reg_reg_rep[4]_i_1 
       (.CI(1'b0),
        .CO({\rd_ptr_reg_reg_rep[4]_i_1_n_0 ,\rd_ptr_reg_reg_rep[4]_i_1_n_1 ,\rd_ptr_reg_reg_rep[4]_i_1_n_2 ,\rd_ptr_reg_reg_rep[4]_i_1_n_3 }),
        .CYINIT(rd_ptr_reg_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rd_ptr_reg0[4:1]),
        .S(rd_ptr_reg_reg[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[5] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[5]),
        .Q(rd_ptr_reg_reg_rep[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[6] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[6]),
        .Q(rd_ptr_reg_reg_rep[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[7] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[7]),
        .Q(rd_ptr_reg_reg_rep[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[8] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[8]),
        .Q(rd_ptr_reg_reg_rep[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rd_ptr_reg_reg_rep[8]_i_1 
       (.CI(\rd_ptr_reg_reg_rep[4]_i_1_n_0 ),
        .CO({\rd_ptr_reg_reg_rep[8]_i_1_n_0 ,\rd_ptr_reg_reg_rep[8]_i_1_n_1 ,\rd_ptr_reg_reg_rep[8]_i_1_n_2 ,\rd_ptr_reg_reg_rep[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rd_ptr_reg0[8:5]),
        .S(rd_ptr_reg_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[9] 
       (.C(tx_clk),
        .CE(rd_ptr_reg),
        .D(rd_ptr_reg0[9]),
        .Q(rd_ptr_reg_reg_rep[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr_reg_rep[0]_i_1 
       (.I0(rd_ptr_reg_reg[0]),
        .O(rd_ptr_reg0[0]));
  LUT6 #(
    .INIT(64'h00000000000000DF)) 
    \rd_ptr_reg_rep[11]_i_2 
       (.I0(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I1(tx_fifo_axis_tready),
        .I2(\m_axis_tvalid_pipe_reg_reg_n_0_[0] ),
        .I3(m_rst_sync3_reg_reg_0),
        .I4(m_drop_frame_reg_reg_n_0),
        .I5(empty),
        .O(rd_ptr_reg));
  LUT6 #(
    .INIT(64'hFF75FFFF00450000)) 
    s_frame_reg_i_1
       (.I0(s_axis[8]),
        .I1(full_wr),
        .I2(full_cur),
        .I3(s_rst_sync3_reg),
        .I4(tx_axis_tvalid),
        .I5(s_frame_reg),
        .O(s_frame_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_frame_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(s_frame_reg_i_1_n_0),
        .Q(s_frame_reg),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    s_rst_sync1_reg_reg
       (.C(tx_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(Q),
        .Q(s_rst_sync1_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    s_rst_sync2_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(s_rst_sync1_reg),
        .Q(s_rst_sync2_reg),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    s_rst_sync3_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(s_rst_sync2_reg),
        .Q(s_rst_sync3_reg),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h31)) 
    tx_axis_tready_INST_0
       (.I0(full_cur),
        .I1(s_rst_sync3_reg),
        .I2(full_wr),
        .O(tx_axis_tready));
  LUT5 #(
    .INIT(32'h09F9F909)) 
    \wr_ptr_cur_gray_reg[0]_i_1 
       (.I0(wr_ptr_cur_reg[0]),
        .I1(wr_ptr_sync_gray_reg10_in__0[1]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[0]),
        .I4(\wr_ptr_reg_reg_n_0_[0] ),
        .O(\wr_ptr_cur_gray_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[10]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[11]),
        .I1(wr_ptr_sync_gray_reg10_in__0[10]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[10]),
        .I4(wr_ptr_cur_gray_reg1[9]),
        .O(\wr_ptr_cur_gray_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[11]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in),
        .I1(wr_ptr_sync_gray_reg10_in__0[11]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[11]),
        .I4(wr_ptr_cur_gray_reg1[10]),
        .O(\wr_ptr_cur_gray_reg[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \wr_ptr_cur_gray_reg[11]_i_2 
       (.I0(drop_frame_reg_reg_n_0),
        .I1(full_wr),
        .I2(s_axis[9]),
        .I3(s_axis[8]),
        .O(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[1]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[2]),
        .I1(wr_ptr_sync_gray_reg10_in__0[1]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[1]),
        .I4(wr_ptr_cur_gray_reg1[0]),
        .O(\wr_ptr_cur_gray_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[2]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[3]),
        .I1(wr_ptr_sync_gray_reg10_in__0[2]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[2]),
        .I4(wr_ptr_cur_gray_reg1[1]),
        .O(\wr_ptr_cur_gray_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[3]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[4]),
        .I1(wr_ptr_sync_gray_reg10_in__0[3]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[3]),
        .I4(wr_ptr_cur_gray_reg1[2]),
        .O(\wr_ptr_cur_gray_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[4]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[5]),
        .I1(wr_ptr_sync_gray_reg10_in__0[4]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[4]),
        .I4(wr_ptr_cur_gray_reg1[3]),
        .O(\wr_ptr_cur_gray_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[5]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[6]),
        .I1(wr_ptr_sync_gray_reg10_in__0[5]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[5]),
        .I4(wr_ptr_cur_gray_reg1[4]),
        .O(\wr_ptr_cur_gray_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[6]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[7]),
        .I1(wr_ptr_sync_gray_reg10_in__0[6]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[6]),
        .I4(wr_ptr_cur_gray_reg1[5]),
        .O(\wr_ptr_cur_gray_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[7]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[8]),
        .I1(wr_ptr_sync_gray_reg10_in__0[7]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[7]),
        .I4(wr_ptr_cur_gray_reg1[6]),
        .O(\wr_ptr_cur_gray_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[8]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[9]),
        .I1(wr_ptr_sync_gray_reg10_in__0[8]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[8]),
        .I4(wr_ptr_cur_gray_reg1[7]),
        .O(\wr_ptr_cur_gray_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[9]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[10]),
        .I1(wr_ptr_sync_gray_reg10_in__0[9]),
        .I2(\wr_ptr_cur_gray_reg[11]_i_2_n_0 ),
        .I3(wr_ptr_cur_gray_reg1[9]),
        .I4(wr_ptr_cur_gray_reg1[8]),
        .O(\wr_ptr_cur_gray_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[0] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[0]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[0]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[10] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[10]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[10]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[11] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[11]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[11]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[1] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[1]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[1]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[2] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[2]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[2]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[3] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[3]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[3]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[4] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[4]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[4]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[5] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[5]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[5]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[6] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[6]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[6]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[7] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[7]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[7]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[8] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[8]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[8]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[9] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_gray_reg[9]_i_1_n_0 ),
        .Q(wr_ptr_cur_gray_reg[9]),
        .R(wr_ptr_gray_reg_0));
  LUT6 #(
    .INIT(64'hAAA8A8A8AAABABAB)) 
    \wr_ptr_cur_reg[0]_i_1 
       (.I0(\wr_ptr_reg_reg_n_0_[0] ),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_cur_reg[0]),
        .O(\wr_ptr_cur_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[10]_i_1 
       (.I0(wr_ptr_cur_gray_reg1[9]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in__0[10]),
        .O(\wr_ptr_cur_reg[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \wr_ptr_cur_reg[11]_i_1 
       (.I0(s_rst_sync3_reg),
        .I1(reset),
        .O(wr_ptr_gray_reg_0));
  LUT5 #(
    .INIT(32'hC0CD0000)) 
    \wr_ptr_cur_reg[11]_i_2 
       (.I0(drop_frame_reg_reg_n_0),
        .I1(s_axis[8]),
        .I2(full_wr),
        .I3(full_cur),
        .I4(tx_axis_tvalid),
        .O(wr_ptr_cur_reg__0));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[11]_i_3 
       (.I0(wr_ptr_cur_gray_reg1[10]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in__0[11]),
        .O(\wr_ptr_cur_reg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[12]_i_1 
       (.I0(wr_ptr_cur_gray_reg1[11]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in),
        .O(\wr_ptr_cur_reg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[1]_i_1 
       (.I0(wr_ptr_cur_gray_reg1[0]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in__0[1]),
        .O(\wr_ptr_cur_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[2]_i_1 
       (.I0(wr_ptr_cur_gray_reg1[1]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in__0[2]),
        .O(\wr_ptr_cur_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[3]_i_1 
       (.I0(wr_ptr_cur_gray_reg1[2]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in__0[3]),
        .O(\wr_ptr_cur_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[4]_i_1 
       (.I0(wr_ptr_cur_gray_reg1[3]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in__0[4]),
        .O(\wr_ptr_cur_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[5]_i_1 
       (.I0(wr_ptr_cur_gray_reg1[4]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in__0[5]),
        .O(\wr_ptr_cur_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[6]_i_1 
       (.I0(wr_ptr_cur_gray_reg1[5]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in__0[6]),
        .O(\wr_ptr_cur_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[7]_i_1 
       (.I0(wr_ptr_cur_gray_reg1[6]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in__0[7]),
        .O(\wr_ptr_cur_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[8]_i_1 
       (.I0(wr_ptr_cur_gray_reg1[7]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in__0[8]),
        .O(\wr_ptr_cur_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABABABAAA8A8A8)) 
    \wr_ptr_cur_reg[9]_i_1 
       (.I0(wr_ptr_cur_gray_reg1[8]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[9]),
        .I4(s_axis[8]),
        .I5(wr_ptr_sync_gray_reg10_in__0[9]),
        .O(\wr_ptr_cur_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[0] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[0]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[0]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[10] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[10]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[10]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[11] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[11]_i_3_n_0 ),
        .Q(wr_ptr_cur_reg[11]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[12] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[12]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[12]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[1] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[1]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[1]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[2] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[2]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[2]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[3] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[3]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[3]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[4] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[4]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[4]),
        .R(wr_ptr_gray_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_ptr_cur_reg_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\wr_ptr_cur_reg_reg[4]_i_2_n_0 ,\wr_ptr_cur_reg_reg[4]_i_2_n_1 ,\wr_ptr_cur_reg_reg[4]_i_2_n_2 ,\wr_ptr_cur_reg_reg[4]_i_2_n_3 }),
        .CYINIT(wr_ptr_cur_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(wr_ptr_sync_gray_reg10_in__0[4:1]),
        .S(wr_ptr_cur_reg[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[5] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[5]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[5]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[6] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[6]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[6]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[7] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[7]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[7]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[8] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[8]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[8]),
        .R(wr_ptr_gray_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_ptr_cur_reg_reg[8]_i_2 
       (.CI(\wr_ptr_cur_reg_reg[4]_i_2_n_0 ),
        .CO({\wr_ptr_cur_reg_reg[8]_i_2_n_0 ,\wr_ptr_cur_reg_reg[8]_i_2_n_1 ,\wr_ptr_cur_reg_reg[8]_i_2_n_2 ,\wr_ptr_cur_reg_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(wr_ptr_sync_gray_reg10_in__0[8:5]),
        .S(wr_ptr_cur_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[9] 
       (.C(clock),
        .CE(wr_ptr_cur_reg__0),
        .D(\wr_ptr_cur_reg[9]_i_1_n_0 ),
        .Q(wr_ptr_cur_reg[9]),
        .R(wr_ptr_gray_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wr_ptr_gray_reg[0]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[1]),
        .I1(wr_ptr_cur_reg[0]),
        .O(wr_ptr_sync_gray_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[10]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[10]),
        .I1(wr_ptr_sync_gray_reg10_in__0[11]),
        .O(wr_ptr_sync_gray_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[11]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[11]),
        .I1(wr_ptr_sync_gray_reg10_in),
        .O(wr_ptr_sync_gray_reg0[11]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \wr_ptr_gray_reg[12]_i_1 
       (.I0(s_axis[9]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[8]),
        .I4(full_cur),
        .I5(\wr_ptr_gray_reg[12]_i_3_n_0 ),
        .O(wr_ptr_update_valid_reg13_out));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wr_ptr_gray_reg[12]_i_3 
       (.I0(s_rst_sync3_reg),
        .I1(tx_axis_tvalid),
        .O(\wr_ptr_gray_reg[12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[1]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[1]),
        .I1(wr_ptr_sync_gray_reg10_in__0[2]),
        .O(wr_ptr_sync_gray_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[2]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[2]),
        .I1(wr_ptr_sync_gray_reg10_in__0[3]),
        .O(wr_ptr_sync_gray_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[3]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[3]),
        .I1(wr_ptr_sync_gray_reg10_in__0[4]),
        .O(wr_ptr_sync_gray_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[4]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[4]),
        .I1(wr_ptr_sync_gray_reg10_in__0[5]),
        .O(wr_ptr_sync_gray_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[5]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[5]),
        .I1(wr_ptr_sync_gray_reg10_in__0[6]),
        .O(wr_ptr_sync_gray_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[6]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[6]),
        .I1(wr_ptr_sync_gray_reg10_in__0[7]),
        .O(wr_ptr_sync_gray_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[7]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[7]),
        .I1(wr_ptr_sync_gray_reg10_in__0[8]),
        .O(wr_ptr_sync_gray_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[8]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[8]),
        .I1(wr_ptr_sync_gray_reg10_in__0[9]),
        .O(wr_ptr_sync_gray_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[9]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[9]),
        .I1(wr_ptr_sync_gray_reg10_in__0[10]),
        .O(wr_ptr_sync_gray_reg0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[0] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[0]),
        .Q(wr_ptr_gray_reg[0]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[10] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[10]),
        .Q(wr_ptr_gray_reg[10]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[11] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[11]),
        .Q(wr_ptr_gray_reg[11]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[12] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg10_in),
        .Q(wr_ptr_gray_reg[12]),
        .R(wr_ptr_gray_reg_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_ptr_gray_reg_reg[12]_i_2 
       (.CI(\wr_ptr_cur_reg_reg[8]_i_2_n_0 ),
        .CO({\NLW_wr_ptr_gray_reg_reg[12]_i_2_CO_UNCONNECTED [3],\wr_ptr_gray_reg_reg[12]_i_2_n_1 ,\wr_ptr_gray_reg_reg[12]_i_2_n_2 ,\wr_ptr_gray_reg_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({wr_ptr_sync_gray_reg10_in,wr_ptr_sync_gray_reg10_in__0[11:9]}),
        .S(wr_ptr_cur_reg[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[1] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[1]),
        .Q(wr_ptr_gray_reg[1]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[2] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[2]),
        .Q(wr_ptr_gray_reg[2]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[3] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[3]),
        .Q(wr_ptr_gray_reg[3]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[4] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[4]),
        .Q(wr_ptr_gray_reg[4]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[5] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[5]),
        .Q(wr_ptr_gray_reg[5]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[6] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[6]),
        .Q(wr_ptr_gray_reg[6]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[7] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[7]),
        .Q(wr_ptr_gray_reg[7]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[8] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[8]),
        .Q(wr_ptr_gray_reg[8]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[9] 
       (.C(clock),
        .CE(wr_ptr_update_valid_reg13_out),
        .D(wr_ptr_sync_gray_reg0[9]),
        .Q(wr_ptr_gray_reg[9]),
        .R(wr_ptr_gray_reg_0));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_sync1_reg[12]_i_1 
       (.I0(wr_ptr_update_sync3_reg),
        .I1(wr_ptr_update_sync2_reg),
        .O(wr_ptr_gray_sync1_reg0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[0] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[0]),
        .Q(wr_ptr_gray_sync1_reg[0]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[10] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[10]),
        .Q(wr_ptr_gray_sync1_reg[10]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[11] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[11]),
        .Q(wr_ptr_gray_sync1_reg[11]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[12] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[12]),
        .Q(wr_ptr_gray_sync1_reg[12]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[1] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[1]),
        .Q(wr_ptr_gray_sync1_reg[1]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[2] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[2]),
        .Q(wr_ptr_gray_sync1_reg[2]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[3] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[3]),
        .Q(wr_ptr_gray_sync1_reg[3]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[4] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[4]),
        .Q(wr_ptr_gray_sync1_reg[4]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[5] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[5]),
        .Q(wr_ptr_gray_sync1_reg[5]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[6] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[6]),
        .Q(wr_ptr_gray_sync1_reg[6]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[7] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[7]),
        .Q(wr_ptr_gray_sync1_reg[7]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[8] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[8]),
        .Q(wr_ptr_gray_sync1_reg[8]),
        .R(clear));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[9] 
       (.C(tx_clk),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(wr_ptr_sync_gray_reg[9]),
        .Q(wr_ptr_gray_sync1_reg[9]),
        .R(clear));
  LUT3 #(
    .INIT(8'hD1)) 
    \wr_ptr_reg[0]_i_1 
       (.I0(wr_ptr_cur_reg[0]),
        .I1(s_axis[9]),
        .I2(\wr_ptr_reg_reg_n_0_[0] ),
        .O(wr_ptr_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[10]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[10]),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[9]),
        .O(wr_ptr_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[11]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[11]),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[10]),
        .O(wr_ptr_reg[11]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \wr_ptr_reg[12]_i_1 
       (.I0(s_axis[8]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(tx_axis_tvalid),
        .O(\wr_ptr_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[12]_i_2 
       (.I0(wr_ptr_sync_gray_reg10_in),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[11]),
        .O(wr_ptr_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[1]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[1]),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[0]),
        .O(wr_ptr_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[2]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[2]),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[1]),
        .O(wr_ptr_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[3]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[3]),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[2]),
        .O(wr_ptr_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[4]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[4]),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[3]),
        .O(wr_ptr_reg[4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[5]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[5]),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[4]),
        .O(wr_ptr_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[6]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[6]),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[5]),
        .O(wr_ptr_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[7]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[7]),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[6]),
        .O(wr_ptr_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[8]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[8]),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[7]),
        .O(wr_ptr_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \wr_ptr_reg[9]_i_1 
       (.I0(wr_ptr_sync_gray_reg10_in__0[9]),
        .I1(s_axis[9]),
        .I2(wr_ptr_cur_gray_reg1[8]),
        .O(wr_ptr_reg[9]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[0] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[0]),
        .Q(\wr_ptr_reg_reg_n_0_[0] ),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[10] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[10]),
        .Q(wr_ptr_cur_gray_reg1[9]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[11] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[11]),
        .Q(wr_ptr_cur_gray_reg1[10]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[12] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[12]),
        .Q(wr_ptr_cur_gray_reg1[11]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[1] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[1]),
        .Q(wr_ptr_cur_gray_reg1[0]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[2] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[2]),
        .Q(wr_ptr_cur_gray_reg1[1]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[3] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[3]),
        .Q(wr_ptr_cur_gray_reg1[2]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[4] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[4]),
        .Q(wr_ptr_cur_gray_reg1[3]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[5] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[5]),
        .Q(wr_ptr_cur_gray_reg1[4]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[6] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[6]),
        .Q(wr_ptr_cur_gray_reg1[5]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[7] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[7]),
        .Q(wr_ptr_cur_gray_reg1[6]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[8] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[8]),
        .Q(wr_ptr_cur_gray_reg1[7]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[9] 
       (.C(clock),
        .CE(\wr_ptr_reg[12]_i_1_n_0 ),
        .D(wr_ptr_reg[9]),
        .Q(wr_ptr_cur_gray_reg1[8]),
        .R(wr_ptr_gray_reg_0));
  LUT5 #(
    .INIT(32'hABA8A8AB)) 
    \wr_ptr_sync_gray_reg[0]_i_1 
       (.I0(wr_ptr_gray_reg[0]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[1]),
        .I4(wr_ptr_cur_reg[0]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hA8ABABA8)) 
    \wr_ptr_sync_gray_reg[10]_i_1 
       (.I0(wr_ptr_gray_reg[10]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[10]),
        .I4(wr_ptr_sync_gray_reg10_in__0[11]),
        .O(p_1_in[10]));
  LUT5 #(
    .INIT(32'hA8ABABA8)) 
    \wr_ptr_sync_gray_reg[11]_i_1 
       (.I0(wr_ptr_gray_reg[11]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[11]),
        .I4(wr_ptr_sync_gray_reg10_in),
        .O(p_1_in[11]));
  LUT5 #(
    .INIT(32'h909090FF)) 
    \wr_ptr_sync_gray_reg[12]_i_1 
       (.I0(wr_ptr_update_reg),
        .I1(wr_ptr_update_ack_sync2_reg),
        .I2(wr_ptr_update_valid_reg),
        .I3(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I4(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .O(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hABAAA8AA)) 
    \wr_ptr_sync_gray_reg[12]_i_2 
       (.I0(wr_ptr_gray_reg[12]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(full_cur),
        .I3(tx_axis_tvalid),
        .I4(wr_ptr_sync_gray_reg10_in),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \wr_ptr_sync_gray_reg[12]_i_3 
       (.I0(tx_axis_tvalid),
        .I1(s_rst_sync3_reg),
        .I2(full_cur),
        .O(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFEFF)) 
    \wr_ptr_sync_gray_reg[12]_i_4 
       (.I0(s_axis[9]),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .I3(s_axis[8]),
        .I4(wr_ptr_update_ack_sync2_reg),
        .I5(wr_ptr_update_reg),
        .O(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA8ABABA8)) 
    \wr_ptr_sync_gray_reg[1]_i_1 
       (.I0(wr_ptr_gray_reg[1]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[1]),
        .I4(wr_ptr_sync_gray_reg10_in__0[2]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hA8ABABA8)) 
    \wr_ptr_sync_gray_reg[2]_i_1 
       (.I0(wr_ptr_gray_reg[2]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[2]),
        .I4(wr_ptr_sync_gray_reg10_in__0[3]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hA8ABABA8)) 
    \wr_ptr_sync_gray_reg[3]_i_1 
       (.I0(wr_ptr_gray_reg[3]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[3]),
        .I4(wr_ptr_sync_gray_reg10_in__0[4]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hA8ABABA8)) 
    \wr_ptr_sync_gray_reg[4]_i_1 
       (.I0(wr_ptr_gray_reg[4]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[4]),
        .I4(wr_ptr_sync_gray_reg10_in__0[5]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hA8ABABA8)) 
    \wr_ptr_sync_gray_reg[5]_i_1 
       (.I0(wr_ptr_gray_reg[5]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[5]),
        .I4(wr_ptr_sync_gray_reg10_in__0[6]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hA8ABABA8)) 
    \wr_ptr_sync_gray_reg[6]_i_1 
       (.I0(wr_ptr_gray_reg[6]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[6]),
        .I4(wr_ptr_sync_gray_reg10_in__0[7]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hA8ABABA8)) 
    \wr_ptr_sync_gray_reg[7]_i_1 
       (.I0(wr_ptr_gray_reg[7]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[7]),
        .I4(wr_ptr_sync_gray_reg10_in__0[8]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hA8ABABA8)) 
    \wr_ptr_sync_gray_reg[8]_i_1 
       (.I0(wr_ptr_gray_reg[8]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[8]),
        .I4(wr_ptr_sync_gray_reg10_in__0[9]),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'hA8ABABA8)) 
    \wr_ptr_sync_gray_reg[9]_i_1 
       (.I0(wr_ptr_gray_reg[9]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I2(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I3(wr_ptr_sync_gray_reg10_in__0[9]),
        .I4(wr_ptr_sync_gray_reg10_in__0[10]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[0] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(wr_ptr_sync_gray_reg[0]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[10] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(wr_ptr_sync_gray_reg[10]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[11] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(wr_ptr_sync_gray_reg[11]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[12] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(wr_ptr_sync_gray_reg[12]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[1] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(wr_ptr_sync_gray_reg[1]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[2] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(wr_ptr_sync_gray_reg[2]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[3] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(wr_ptr_sync_gray_reg[3]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[4] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(wr_ptr_sync_gray_reg[4]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[5] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(wr_ptr_sync_gray_reg[5]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[6] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(wr_ptr_sync_gray_reg[6]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[7] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(wr_ptr_sync_gray_reg[7]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[8] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(wr_ptr_sync_gray_reg[8]),
        .R(wr_ptr_gray_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[9] 
       (.C(clock),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(wr_ptr_sync_gray_reg[9]),
        .R(wr_ptr_gray_reg_0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_ack_sync1_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(wr_ptr_update_sync3_reg),
        .Q(wr_ptr_update_ack_sync1_reg),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_ack_sync2_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(wr_ptr_update_ack_sync1_reg),
        .Q(wr_ptr_update_ack_sync2_reg),
        .R(reset));
  LUT6 #(
    .INIT(64'h000000000EFF00F1)) 
    wr_ptr_update_reg_i_1
       (.I0(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3_n_0 ),
        .I2(wr_ptr_update_valid_reg),
        .I3(wr_ptr_update_ack_sync2_reg),
        .I4(wr_ptr_update_reg),
        .I5(wr_ptr_gray_reg_0),
        .O(wr_ptr_update_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(wr_ptr_update_reg_i_1_n_0),
        .Q(wr_ptr_update_reg),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_sync1_reg_reg
       (.C(tx_clk),
        .CE(1'b1),
        .D(wr_ptr_update_reg),
        .Q(wr_ptr_update_sync1_reg),
        .R(Q));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_sync2_reg_reg
       (.C(tx_clk),
        .CE(1'b1),
        .D(wr_ptr_update_sync1_reg),
        .Q(wr_ptr_update_sync2_reg),
        .R(Q));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_sync3_reg_reg
       (.C(tx_clk),
        .CE(1'b1),
        .D(wr_ptr_update_sync2_reg),
        .Q(wr_ptr_update_sync3_reg),
        .R(Q));
  LUT6 #(
    .INIT(64'h5150515051500000)) 
    wr_ptr_update_valid_reg_i_1
       (.I0(wr_ptr_gray_reg_0),
        .I1(wr_ptr_update_valid_reg_i_2_n_0),
        .I2(wr_ptr_update_valid_reg13_out),
        .I3(wr_ptr_update_valid_reg),
        .I4(\wr_ptr_sync_gray_reg[12]_i_4_n_0 ),
        .I5(wr_ptr_update_valid_reg_i_3_n_0),
        .O(wr_ptr_update_valid_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    wr_ptr_update_valid_reg_i_2
       (.I0(wr_ptr_update_valid_reg),
        .I1(wr_ptr_update_ack_sync2_reg),
        .I2(wr_ptr_update_reg),
        .O(wr_ptr_update_valid_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'hB)) 
    wr_ptr_update_valid_reg_i_3
       (.I0(full_cur),
        .I1(tx_axis_tvalid),
        .O(wr_ptr_update_valid_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_valid_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(wr_ptr_update_valid_reg_i_1_n_0),
        .Q(wr_ptr_update_valid_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_async_fifo" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_async_fifo__parameterized0
   (s_rst_sync3_reg_reg_0,
    \m_axis_tvalid_pipe_reg_reg[1]_0 ,
    s_frame_reg,
    rx_axis_tlast,
    rx_axis_tuser,
    drop_frame_reg_reg_0,
    drop_frame_reg_reg_1,
    rx_axis_tdata,
    s_rst_sync2_reg_reg_0,
    rx_clk,
    SR,
    clock,
    reset,
    wr_ptr_gray_reg,
    drop_frame_reg,
    drop_frame_reg_reg_2,
    rx_axis_tready,
    \wr_ptr_sync_gray_reg_reg[0]_0 ,
    rx_fifo_axis_tvalid,
    s_axis,
    WEA);
  output s_rst_sync3_reg_reg_0;
  output \m_axis_tvalid_pipe_reg_reg[1]_0 ;
  output s_frame_reg;
  output rx_axis_tlast;
  output rx_axis_tuser;
  output drop_frame_reg_reg_0;
  output drop_frame_reg_reg_1;
  output [7:0]rx_axis_tdata;
  input s_rst_sync2_reg_reg_0;
  input rx_clk;
  input [0:0]SR;
  input clock;
  input reset;
  input wr_ptr_gray_reg;
  input drop_frame_reg;
  input drop_frame_reg_reg_2;
  input rx_axis_tready;
  input \wr_ptr_sync_gray_reg_reg[0]_0 ;
  input rx_fifo_axis_tvalid;
  input [9:0]s_axis;
  input [0:0]WEA;

  wire [0:0]SR;
  wire [0:0]WEA;
  wire clock;
  wire drop_frame_reg;
  wire drop_frame_reg_reg_0;
  wire drop_frame_reg_reg_1;
  wire drop_frame_reg_reg_2;
  wire drop_frame_reg_reg_n_0;
  wire empty;
  wire empty_carry__0_i_1__0_n_0;
  wire empty_carry_i_1__0_n_0;
  wire empty_carry_i_2__0_n_0;
  wire empty_carry_i_3__0_n_0;
  wire empty_carry_i_4__0_n_0;
  wire empty_carry_n_0;
  wire empty_carry_n_1;
  wire empty_carry_n_2;
  wire empty_carry_n_3;
  wire full_cur;
  wire full_cur_carry__0_i_1__0_n_0;
  wire full_cur_carry_i_1__0_n_0;
  wire full_cur_carry_i_2__0_n_0;
  wire full_cur_carry_i_3__0_n_0;
  wire full_cur_carry_i_4__0_n_0;
  wire full_cur_carry_n_0;
  wire full_cur_carry_n_1;
  wire full_cur_carry_n_2;
  wire full_cur_carry_n_3;
  wire full_wr;
  wire full_wr_carry__0_i_1__0_n_0;
  wire full_wr_carry_i_1__0_n_0;
  wire full_wr_carry_i_2__0_n_0;
  wire full_wr_carry_i_3__0_n_0;
  wire full_wr_carry_i_4__0_n_0;
  wire full_wr_carry_n_0;
  wire full_wr_carry_n_1;
  wire full_wr_carry_n_2;
  wire full_wr_carry_n_3;
  wire \m_axis_tvalid_pipe_reg[0]_i_1__0_n_0 ;
  wire \m_axis_tvalid_pipe_reg[1]_i_1__0_n_0 ;
  wire \m_axis_tvalid_pipe_reg_reg[1]_0 ;
  wire m_drop_frame_reg;
  wire m_drop_frame_reg_i_1_n_0;
  wire m_drop_frame_reg_reg_n_0;
  wire m_frame_reg;
  wire m_frame_reg_i_1__0_n_0;
  wire m_rst_sync1_reg;
  wire m_rst_sync2_reg_reg_n_0;
  wire m_rst_sync3_reg;
  wire m_terminate_frame_reg;
  wire m_terminate_frame_reg_i_1__0_n_0;
  wire mem_reg_0_i_2__0_n_0;
  wire mem_reg_0_i_3__0_n_0;
  wire mem_reg_1_n_31;
  wire p_0_in;
  wire [1:1]p_1_in;
  wire p_2_in;
  wire rd_ptr_gray_reg;
  wire [11:1]rd_ptr_gray_reg0;
  wire \rd_ptr_gray_reg[0]_i_1__0_n_0 ;
  wire \rd_ptr_gray_reg_reg_n_0_[0] ;
  wire \rd_ptr_gray_reg_reg_n_0_[10] ;
  wire \rd_ptr_gray_reg_reg_n_0_[11] ;
  wire \rd_ptr_gray_reg_reg_n_0_[12] ;
  wire \rd_ptr_gray_reg_reg_n_0_[1] ;
  wire \rd_ptr_gray_reg_reg_n_0_[2] ;
  wire \rd_ptr_gray_reg_reg_n_0_[3] ;
  wire \rd_ptr_gray_reg_reg_n_0_[4] ;
  wire \rd_ptr_gray_reg_reg_n_0_[5] ;
  wire \rd_ptr_gray_reg_reg_n_0_[6] ;
  wire \rd_ptr_gray_reg_reg_n_0_[7] ;
  wire \rd_ptr_gray_reg_reg_n_0_[8] ;
  wire \rd_ptr_gray_reg_reg_n_0_[9] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[0] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[10] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[11] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[12] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[1] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[2] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[3] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[4] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[5] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[6] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[7] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[8] ;
  wire \rd_ptr_gray_sync1_reg_reg_n_0_[9] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[0] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[10] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[11] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[12] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[1] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[2] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[3] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[4] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[5] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[6] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[7] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[8] ;
  wire \rd_ptr_gray_sync2_reg_reg_n_0_[9] ;
  wire [12:0]rd_ptr_reg0;
  wire \rd_ptr_reg[0]_i_2__0_n_0 ;
  wire [12:0]rd_ptr_reg_reg;
  wire \rd_ptr_reg_reg[0]_i_1__0_n_0 ;
  wire \rd_ptr_reg_reg[0]_i_1__0_n_1 ;
  wire \rd_ptr_reg_reg[0]_i_1__0_n_2 ;
  wire \rd_ptr_reg_reg[0]_i_1__0_n_3 ;
  wire \rd_ptr_reg_reg[0]_i_1__0_n_4 ;
  wire \rd_ptr_reg_reg[0]_i_1__0_n_5 ;
  wire \rd_ptr_reg_reg[0]_i_1__0_n_6 ;
  wire \rd_ptr_reg_reg[0]_i_1__0_n_7 ;
  wire \rd_ptr_reg_reg[12]_i_1__0_n_7 ;
  wire \rd_ptr_reg_reg[4]_i_1__0_n_0 ;
  wire \rd_ptr_reg_reg[4]_i_1__0_n_1 ;
  wire \rd_ptr_reg_reg[4]_i_1__0_n_2 ;
  wire \rd_ptr_reg_reg[4]_i_1__0_n_3 ;
  wire \rd_ptr_reg_reg[4]_i_1__0_n_4 ;
  wire \rd_ptr_reg_reg[4]_i_1__0_n_5 ;
  wire \rd_ptr_reg_reg[4]_i_1__0_n_6 ;
  wire \rd_ptr_reg_reg[4]_i_1__0_n_7 ;
  wire \rd_ptr_reg_reg[8]_i_1__0_n_0 ;
  wire \rd_ptr_reg_reg[8]_i_1__0_n_1 ;
  wire \rd_ptr_reg_reg[8]_i_1__0_n_2 ;
  wire \rd_ptr_reg_reg[8]_i_1__0_n_3 ;
  wire \rd_ptr_reg_reg[8]_i_1__0_n_4 ;
  wire \rd_ptr_reg_reg[8]_i_1__0_n_5 ;
  wire \rd_ptr_reg_reg[8]_i_1__0_n_6 ;
  wire \rd_ptr_reg_reg[8]_i_1__0_n_7 ;
  wire [11:0]rd_ptr_reg_reg_rep;
  wire \rd_ptr_reg_reg_rep[11]_i_3__0_n_1 ;
  wire \rd_ptr_reg_reg_rep[11]_i_3__0_n_2 ;
  wire \rd_ptr_reg_reg_rep[11]_i_3__0_n_3 ;
  wire \rd_ptr_reg_reg_rep[4]_i_1__0_n_0 ;
  wire \rd_ptr_reg_reg_rep[4]_i_1__0_n_1 ;
  wire \rd_ptr_reg_reg_rep[4]_i_1__0_n_2 ;
  wire \rd_ptr_reg_reg_rep[4]_i_1__0_n_3 ;
  wire \rd_ptr_reg_reg_rep[8]_i_1__0_n_0 ;
  wire \rd_ptr_reg_reg_rep[8]_i_1__0_n_1 ;
  wire \rd_ptr_reg_reg_rep[8]_i_1__0_n_2 ;
  wire \rd_ptr_reg_reg_rep[8]_i_1__0_n_3 ;
  wire \rd_ptr_reg_rep[11]_i_2__0_n_0 ;
  wire reset;
  wire [7:0]rx_axis_tdata;
  wire rx_axis_tlast;
  wire rx_axis_tready;
  wire rx_axis_tuser;
  wire rx_clk;
  wire rx_fifo_axis_tvalid;
  wire [9:0]s_axis;
  wire s_frame_reg;
  wire s_rst_sync2_reg_reg_0;
  wire s_rst_sync2_reg_reg_n_0;
  wire s_rst_sync3_reg_reg_0;
  wire [11:0]wr_ptr_cur_gray_reg1;
  wire \wr_ptr_cur_gray_reg[0]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg[10]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg[11]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg[12]_i_2_n_0 ;
  wire \wr_ptr_cur_gray_reg[1]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg[2]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg[3]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg[4]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg[5]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg[6]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg[7]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg[8]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg[9]_i_1__0_n_0 ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[0] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[10] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[11] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[12] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[1] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[2] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[3] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[4] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[5] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[6] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[7] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[8] ;
  wire \wr_ptr_cur_gray_reg_reg_n_0_[9] ;
  wire wr_ptr_cur_reg;
  wire \wr_ptr_cur_reg[0]_i_2_n_0 ;
  wire \wr_ptr_cur_reg[0]_i_3_n_0 ;
  wire \wr_ptr_cur_reg[0]_i_4_n_0 ;
  wire \wr_ptr_cur_reg[0]_i_5_n_0 ;
  wire \wr_ptr_cur_reg[0]_i_6_n_0 ;
  wire \wr_ptr_cur_reg[12]_i_2_n_0 ;
  wire \wr_ptr_cur_reg[4]_i_2_n_0 ;
  wire \wr_ptr_cur_reg[4]_i_3_n_0 ;
  wire \wr_ptr_cur_reg[4]_i_4_n_0 ;
  wire \wr_ptr_cur_reg[4]_i_5_n_0 ;
  wire \wr_ptr_cur_reg[8]_i_2_n_0 ;
  wire \wr_ptr_cur_reg[8]_i_3_n_0 ;
  wire \wr_ptr_cur_reg[8]_i_4_n_0 ;
  wire \wr_ptr_cur_reg[8]_i_5_n_0 ;
  wire [11:0]wr_ptr_cur_reg_reg;
  wire \wr_ptr_cur_reg_reg[0]_i_1_n_0 ;
  wire \wr_ptr_cur_reg_reg[0]_i_1_n_1 ;
  wire \wr_ptr_cur_reg_reg[0]_i_1_n_2 ;
  wire \wr_ptr_cur_reg_reg[0]_i_1_n_3 ;
  wire \wr_ptr_cur_reg_reg[0]_i_1_n_4 ;
  wire \wr_ptr_cur_reg_reg[0]_i_1_n_5 ;
  wire \wr_ptr_cur_reg_reg[0]_i_1_n_6 ;
  wire \wr_ptr_cur_reg_reg[0]_i_1_n_7 ;
  wire \wr_ptr_cur_reg_reg[12]_i_1_n_7 ;
  wire \wr_ptr_cur_reg_reg[4]_i_1_n_0 ;
  wire \wr_ptr_cur_reg_reg[4]_i_1_n_1 ;
  wire \wr_ptr_cur_reg_reg[4]_i_1_n_2 ;
  wire \wr_ptr_cur_reg_reg[4]_i_1_n_3 ;
  wire \wr_ptr_cur_reg_reg[4]_i_1_n_4 ;
  wire \wr_ptr_cur_reg_reg[4]_i_1_n_5 ;
  wire \wr_ptr_cur_reg_reg[4]_i_1_n_6 ;
  wire \wr_ptr_cur_reg_reg[4]_i_1_n_7 ;
  wire \wr_ptr_cur_reg_reg[8]_i_1_n_0 ;
  wire \wr_ptr_cur_reg_reg[8]_i_1_n_1 ;
  wire \wr_ptr_cur_reg_reg[8]_i_1_n_2 ;
  wire \wr_ptr_cur_reg_reg[8]_i_1_n_3 ;
  wire \wr_ptr_cur_reg_reg[8]_i_1_n_4 ;
  wire \wr_ptr_cur_reg_reg[8]_i_1_n_5 ;
  wire \wr_ptr_cur_reg_reg[8]_i_1_n_6 ;
  wire \wr_ptr_cur_reg_reg[8]_i_1_n_7 ;
  wire [12:12]wr_ptr_cur_reg_reg__0;
  wire wr_ptr_gray_reg;
  wire \wr_ptr_gray_reg_reg_n_0_[0] ;
  wire \wr_ptr_gray_reg_reg_n_0_[10] ;
  wire \wr_ptr_gray_reg_reg_n_0_[11] ;
  wire \wr_ptr_gray_reg_reg_n_0_[1] ;
  wire \wr_ptr_gray_reg_reg_n_0_[2] ;
  wire \wr_ptr_gray_reg_reg_n_0_[3] ;
  wire \wr_ptr_gray_reg_reg_n_0_[4] ;
  wire \wr_ptr_gray_reg_reg_n_0_[5] ;
  wire \wr_ptr_gray_reg_reg_n_0_[6] ;
  wire \wr_ptr_gray_reg_reg_n_0_[7] ;
  wire \wr_ptr_gray_reg_reg_n_0_[8] ;
  wire \wr_ptr_gray_reg_reg_n_0_[9] ;
  wire wr_ptr_gray_sync1_reg0;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[0] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[10] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[11] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[12] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[1] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[2] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[3] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[4] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[5] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[6] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[7] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[8] ;
  wire \wr_ptr_gray_sync1_reg_reg_n_0_[9] ;
  wire wr_ptr_reg;
  wire \wr_ptr_reg_reg[11]_i_3_n_1 ;
  wire \wr_ptr_reg_reg[11]_i_3_n_2 ;
  wire \wr_ptr_reg_reg[11]_i_3_n_3 ;
  wire \wr_ptr_reg_reg[4]_i_1_n_0 ;
  wire \wr_ptr_reg_reg[4]_i_1_n_1 ;
  wire \wr_ptr_reg_reg[4]_i_1_n_2 ;
  wire \wr_ptr_reg_reg[4]_i_1_n_3 ;
  wire \wr_ptr_reg_reg[8]_i_1_n_0 ;
  wire \wr_ptr_reg_reg[8]_i_1_n_1 ;
  wire \wr_ptr_reg_reg[8]_i_1_n_2 ;
  wire \wr_ptr_reg_reg[8]_i_1_n_3 ;
  wire \wr_ptr_reg_reg_n_0_[0] ;
  wire [11:0]wr_ptr_sync_gray_reg0;
  wire [12:0]wr_ptr_sync_gray_reg10_in;
  wire \wr_ptr_sync_gray_reg[0]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[10]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[11]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[12]_i_2__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[1]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[2]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[3]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[4]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[5]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[6]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[7]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[8]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg[9]_i_1__0_n_0 ;
  wire \wr_ptr_sync_gray_reg_reg[0]_0 ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[0] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[10] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[11] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[12] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[1] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[2] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[3] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[4] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[5] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[6] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[7] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[8] ;
  wire \wr_ptr_sync_gray_reg_reg_n_0_[9] ;
  wire wr_ptr_update_ack_sync1_reg_reg_n_0;
  wire wr_ptr_update_ack_sync2_reg_reg_n_0;
  wire wr_ptr_update_reg_i_1__0_n_0;
  wire wr_ptr_update_reg_reg_n_0;
  wire wr_ptr_update_sync1_reg_reg_n_0;
  wire wr_ptr_update_sync2_reg;
  wire wr_ptr_update_sync3_reg;
  wire wr_ptr_update_valid_reg;
  wire wr_ptr_update_valid_reg_i_1__0_n_0;
  wire wr_ptr_update_valid_reg_i_2__0_n_0;
  wire [3:0]NLW_empty_carry_O_UNCONNECTED;
  wire [3:1]NLW_empty_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_empty_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_full_cur_carry_O_UNCONNECTED;
  wire [3:1]NLW_full_cur_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_full_cur_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_full_wr_carry_O_UNCONNECTED;
  wire [3:1]NLW_full_wr_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_full_wr_carry__0_O_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_SBITERR_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_DOADO_UNCONNECTED;
  wire [31:8]NLW_mem_reg_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_DOPADOP_UNCONNECTED;
  wire [3:1]NLW_mem_reg_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_RDADDRECC_UNCONNECTED;
  wire [15:0]NLW_mem_reg_1_DOADO_UNCONNECTED;
  wire [15:1]NLW_mem_reg_1_DOBDO_UNCONNECTED;
  wire [1:0]NLW_mem_reg_1_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_mem_reg_1_DOPBDOP_UNCONNECTED;
  wire [3:0]\NLW_rd_ptr_reg_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_rd_ptr_reg_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:3]\NLW_rd_ptr_reg_reg_rep[11]_i_3__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_wr_ptr_cur_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wr_ptr_cur_reg_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wr_ptr_reg_reg[11]_i_3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFAFAFAFAFFFCF0F0)) 
    drop_frame_reg_i_2__0
       (.I0(drop_frame_reg),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(rx_fifo_axis_tvalid),
        .I5(s_rst_sync3_reg_reg_0),
        .O(drop_frame_reg_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    drop_frame_reg_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(drop_frame_reg_reg_2),
        .Q(drop_frame_reg_reg_n_0),
        .R(1'b0));
  CARRY4 empty_carry
       (.CI(1'b0),
        .CO({empty_carry_n_0,empty_carry_n_1,empty_carry_n_2,empty_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_empty_carry_O_UNCONNECTED[3:0]),
        .S({empty_carry_i_1__0_n_0,empty_carry_i_2__0_n_0,empty_carry_i_3__0_n_0,empty_carry_i_4__0_n_0}));
  CARRY4 empty_carry__0
       (.CI(empty_carry_n_0),
        .CO({NLW_empty_carry__0_CO_UNCONNECTED[3:1],empty}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_empty_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,empty_carry__0_i_1__0_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    empty_carry__0_i_1__0
       (.I0(\wr_ptr_gray_sync1_reg_reg_n_0_[12] ),
        .I1(\rd_ptr_gray_reg_reg_n_0_[12] ),
        .O(empty_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_carry_i_1__0
       (.I0(\wr_ptr_gray_sync1_reg_reg_n_0_[11] ),
        .I1(\rd_ptr_gray_reg_reg_n_0_[11] ),
        .I2(\wr_ptr_gray_sync1_reg_reg_n_0_[10] ),
        .I3(\rd_ptr_gray_reg_reg_n_0_[10] ),
        .I4(\rd_ptr_gray_reg_reg_n_0_[9] ),
        .I5(\wr_ptr_gray_sync1_reg_reg_n_0_[9] ),
        .O(empty_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_carry_i_2__0
       (.I0(\wr_ptr_gray_sync1_reg_reg_n_0_[8] ),
        .I1(\rd_ptr_gray_reg_reg_n_0_[8] ),
        .I2(\wr_ptr_gray_sync1_reg_reg_n_0_[7] ),
        .I3(\rd_ptr_gray_reg_reg_n_0_[7] ),
        .I4(\rd_ptr_gray_reg_reg_n_0_[6] ),
        .I5(\wr_ptr_gray_sync1_reg_reg_n_0_[6] ),
        .O(empty_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_carry_i_3__0
       (.I0(\wr_ptr_gray_sync1_reg_reg_n_0_[5] ),
        .I1(\rd_ptr_gray_reg_reg_n_0_[5] ),
        .I2(\wr_ptr_gray_sync1_reg_reg_n_0_[4] ),
        .I3(\rd_ptr_gray_reg_reg_n_0_[4] ),
        .I4(\rd_ptr_gray_reg_reg_n_0_[3] ),
        .I5(\wr_ptr_gray_sync1_reg_reg_n_0_[3] ),
        .O(empty_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    empty_carry_i_4__0
       (.I0(\wr_ptr_gray_sync1_reg_reg_n_0_[2] ),
        .I1(\rd_ptr_gray_reg_reg_n_0_[2] ),
        .I2(\wr_ptr_gray_sync1_reg_reg_n_0_[1] ),
        .I3(\rd_ptr_gray_reg_reg_n_0_[1] ),
        .I4(\rd_ptr_gray_reg_reg_n_0_[0] ),
        .I5(\wr_ptr_gray_sync1_reg_reg_n_0_[0] ),
        .O(empty_carry_i_4__0_n_0));
  CARRY4 full_cur_carry
       (.CI(1'b0),
        .CO({full_cur_carry_n_0,full_cur_carry_n_1,full_cur_carry_n_2,full_cur_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full_cur_carry_O_UNCONNECTED[3:0]),
        .S({full_cur_carry_i_1__0_n_0,full_cur_carry_i_2__0_n_0,full_cur_carry_i_3__0_n_0,full_cur_carry_i_4__0_n_0}));
  CARRY4 full_cur_carry__0
       (.CI(full_cur_carry_n_0),
        .CO({NLW_full_cur_carry__0_CO_UNCONNECTED[3:1],full_cur}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full_cur_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,full_cur_carry__0_i_1__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    full_cur_carry__0_i_1__0
       (.I0(\rd_ptr_gray_sync2_reg_reg_n_0_[12] ),
        .I1(\wr_ptr_cur_gray_reg_reg_n_0_[12] ),
        .O(full_cur_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    full_cur_carry_i_1__0
       (.I0(\wr_ptr_cur_gray_reg_reg_n_0_[10] ),
        .I1(\rd_ptr_gray_sync2_reg_reg_n_0_[10] ),
        .I2(\wr_ptr_cur_gray_reg_reg_n_0_[9] ),
        .I3(\rd_ptr_gray_sync2_reg_reg_n_0_[9] ),
        .I4(\wr_ptr_cur_gray_reg_reg_n_0_[11] ),
        .I5(\rd_ptr_gray_sync2_reg_reg_n_0_[11] ),
        .O(full_cur_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_cur_carry_i_2__0
       (.I0(\wr_ptr_cur_gray_reg_reg_n_0_[7] ),
        .I1(\rd_ptr_gray_sync2_reg_reg_n_0_[7] ),
        .I2(\wr_ptr_cur_gray_reg_reg_n_0_[6] ),
        .I3(\rd_ptr_gray_sync2_reg_reg_n_0_[6] ),
        .I4(\rd_ptr_gray_sync2_reg_reg_n_0_[8] ),
        .I5(\wr_ptr_cur_gray_reg_reg_n_0_[8] ),
        .O(full_cur_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_cur_carry_i_3__0
       (.I0(\wr_ptr_cur_gray_reg_reg_n_0_[4] ),
        .I1(\rd_ptr_gray_sync2_reg_reg_n_0_[4] ),
        .I2(\wr_ptr_cur_gray_reg_reg_n_0_[3] ),
        .I3(\rd_ptr_gray_sync2_reg_reg_n_0_[3] ),
        .I4(\rd_ptr_gray_sync2_reg_reg_n_0_[5] ),
        .I5(\wr_ptr_cur_gray_reg_reg_n_0_[5] ),
        .O(full_cur_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_cur_carry_i_4__0
       (.I0(\wr_ptr_cur_gray_reg_reg_n_0_[1] ),
        .I1(\rd_ptr_gray_sync2_reg_reg_n_0_[1] ),
        .I2(\wr_ptr_cur_gray_reg_reg_n_0_[0] ),
        .I3(\rd_ptr_gray_sync2_reg_reg_n_0_[0] ),
        .I4(\rd_ptr_gray_sync2_reg_reg_n_0_[2] ),
        .I5(\wr_ptr_cur_gray_reg_reg_n_0_[2] ),
        .O(full_cur_carry_i_4__0_n_0));
  CARRY4 full_wr_carry
       (.CI(1'b0),
        .CO({full_wr_carry_n_0,full_wr_carry_n_1,full_wr_carry_n_2,full_wr_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full_wr_carry_O_UNCONNECTED[3:0]),
        .S({full_wr_carry_i_1__0_n_0,full_wr_carry_i_2__0_n_0,full_wr_carry_i_3__0_n_0,full_wr_carry_i_4__0_n_0}));
  CARRY4 full_wr_carry__0
       (.CI(full_wr_carry_n_0),
        .CO({NLW_full_wr_carry__0_CO_UNCONNECTED[3:1],full_wr}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_full_wr_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,full_wr_carry__0_i_1__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    full_wr_carry__0_i_1__0
       (.I0(wr_ptr_cur_reg_reg__0),
        .I1(wr_ptr_cur_gray_reg1[11]),
        .O(full_wr_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_wr_carry_i_1__0
       (.I0(wr_ptr_cur_gray_reg1[9]),
        .I1(wr_ptr_cur_reg_reg[10]),
        .I2(wr_ptr_cur_gray_reg1[8]),
        .I3(wr_ptr_cur_reg_reg[9]),
        .I4(wr_ptr_cur_reg_reg[11]),
        .I5(wr_ptr_cur_gray_reg1[10]),
        .O(full_wr_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_wr_carry_i_2__0
       (.I0(wr_ptr_cur_gray_reg1[6]),
        .I1(wr_ptr_cur_reg_reg[7]),
        .I2(wr_ptr_cur_gray_reg1[5]),
        .I3(wr_ptr_cur_reg_reg[6]),
        .I4(wr_ptr_cur_reg_reg[8]),
        .I5(wr_ptr_cur_gray_reg1[7]),
        .O(full_wr_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_wr_carry_i_3__0
       (.I0(wr_ptr_cur_gray_reg1[3]),
        .I1(wr_ptr_cur_reg_reg[4]),
        .I2(wr_ptr_cur_gray_reg1[2]),
        .I3(wr_ptr_cur_reg_reg[3]),
        .I4(wr_ptr_cur_reg_reg[5]),
        .I5(wr_ptr_cur_gray_reg1[4]),
        .O(full_wr_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    full_wr_carry_i_4__0
       (.I0(wr_ptr_cur_gray_reg1[0]),
        .I1(wr_ptr_cur_reg_reg[1]),
        .I2(\wr_ptr_reg_reg_n_0_[0] ),
        .I3(wr_ptr_cur_reg_reg[0]),
        .I4(wr_ptr_cur_reg_reg[2]),
        .I5(wr_ptr_cur_gray_reg1[1]),
        .O(full_wr_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h1111111100100000)) 
    \m_axis_tvalid_pipe_reg[0]_i_1__0 
       (.I0(reset),
        .I1(m_rst_sync3_reg),
        .I2(p_1_in),
        .I3(rx_axis_tready),
        .I4(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I5(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .O(\m_axis_tvalid_pipe_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hEFEE)) 
    \m_axis_tvalid_pipe_reg[1]_i_1__0 
       (.I0(p_1_in),
        .I1(m_drop_frame_reg_reg_n_0),
        .I2(rx_axis_tready),
        .I3(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .O(\m_axis_tvalid_pipe_reg[1]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tvalid_pipe_reg_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(\m_axis_tvalid_pipe_reg[0]_i_1__0_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tvalid_pipe_reg_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(\m_axis_tvalid_pipe_reg[1]_i_1__0_n_0 ),
        .Q(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .R(reset));
  LUT4 #(
    .INIT(16'hFF20)) 
    m_drop_frame_reg_i_1
       (.I0(m_drop_frame_reg_reg_n_0),
        .I1(rx_axis_tready),
        .I2(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I3(m_drop_frame_reg),
        .O(m_drop_frame_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000002000200020)) 
    m_drop_frame_reg_i_2__0
       (.I0(m_rst_sync3_reg),
        .I1(m_terminate_frame_reg),
        .I2(m_frame_reg),
        .I3(m_drop_frame_reg_reg_n_0),
        .I4(p_0_in),
        .I5(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .O(m_drop_frame_reg));
  FDRE #(
    .INIT(1'b0)) 
    m_drop_frame_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(m_drop_frame_reg_i_1_n_0),
        .Q(m_drop_frame_reg_reg_n_0),
        .R(reset));
  LUT6 #(
    .INIT(64'h0005444455554444)) 
    m_frame_reg_i_1__0
       (.I0(reset),
        .I1(m_frame_reg),
        .I2(p_0_in),
        .I3(m_terminate_frame_reg),
        .I4(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I5(rx_axis_tready),
        .O(m_frame_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_frame_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(m_frame_reg_i_1__0_n_0),
        .Q(m_frame_reg),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDPE #(
    .INIT(1'b1)) 
    m_rst_sync1_reg_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(m_rst_sync1_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    m_rst_sync2_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(m_rst_sync1_reg),
        .Q(m_rst_sync2_reg_reg_n_0),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    m_rst_sync3_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(m_rst_sync2_reg_reg_n_0),
        .Q(m_rst_sync3_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hCFC4)) 
    m_terminate_frame_reg_i_1__0
       (.I0(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I1(m_drop_frame_reg_reg_n_0),
        .I2(rx_axis_tready),
        .I3(m_terminate_frame_reg),
        .O(m_terminate_frame_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_terminate_frame_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(m_terminate_frame_reg_i_1__0_n_0),
        .Q(m_terminate_frame_reg),
        .R(reset));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "40960" *) 
  (* RTL_RAM_NAME = "inst/eth_mac_inst/rx_fifo/fifo_inst/mem_reg_0" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    mem_reg_0
       (.ADDRARDADDR({1'b1,wr_ptr_cur_reg_reg,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,rd_ptr_reg_reg_rep,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(rx_clk),
        .CLKBWRCLK(clock),
        .DBITERR(NLW_mem_reg_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,s_axis[8]}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b1}),
        .DOADO(NLW_mem_reg_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO({NLW_mem_reg_0_DOBDO_UNCONNECTED[31:8],rx_axis_tdata}),
        .DOPADOP(NLW_mem_reg_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP({NLW_mem_reg_0_DOPBDOP_UNCONNECTED[3:1],p_0_in}),
        .ECCPARITY(NLW_mem_reg_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(p_2_in),
        .ENBWREN(mem_reg_0_i_2__0_n_0),
        .INJECTDBITERR(NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(mem_reg_0_i_3__0_n_0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_SBITERR_UNCONNECTED),
        .WEA({WEA,WEA,WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h01)) 
    mem_reg_0_i_1__0
       (.I0(full_cur),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_wr),
        .O(p_2_in));
  LUT3 #(
    .INIT(8'hDF)) 
    mem_reg_0_i_2__0
       (.I0(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .I1(rx_axis_tready),
        .I2(p_1_in),
        .O(mem_reg_0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    mem_reg_0_i_3__0
       (.I0(rx_axis_tready),
        .I1(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .O(mem_reg_0_i_3__0_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "40960" *) 
  (* RTL_RAM_NAME = "inst/eth_mac_inst/rx_fifo/fifo_inst/mem_reg_1" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(1),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
    mem_reg_1
       (.ADDRARDADDR({wr_ptr_cur_reg_reg,1'b1,1'b1}),
        .ADDRBWRADDR({rd_ptr_reg_reg_rep,1'b1,1'b1}),
        .CLKARDCLK(rx_clk),
        .CLKBWRCLK(clock),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axis[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO(NLW_mem_reg_1_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_mem_reg_1_DOBDO_UNCONNECTED[15:1],mem_reg_1_n_31}),
        .DOPADOP(NLW_mem_reg_1_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_mem_reg_1_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(p_2_in),
        .ENBWREN(mem_reg_0_i_2__0_n_0),
        .REGCEAREGCE(1'b0),
        .REGCEB(mem_reg_0_i_3__0_n_0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,WEA}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \rd_ptr_gray_reg[0]_i_1__0 
       (.I0(rd_ptr_reg0[1]),
        .I1(rd_ptr_reg_reg[0]),
        .O(\rd_ptr_gray_reg[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[10]_i_1__0 
       (.I0(rd_ptr_reg0[11]),
        .I1(rd_ptr_reg0[10]),
        .O(rd_ptr_gray_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[11]_i_1__0 
       (.I0(rd_ptr_reg0[12]),
        .I1(rd_ptr_reg0[11]),
        .O(rd_ptr_gray_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[1]_i_1__0 
       (.I0(rd_ptr_reg0[2]),
        .I1(rd_ptr_reg0[1]),
        .O(rd_ptr_gray_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[2]_i_1__0 
       (.I0(rd_ptr_reg0[3]),
        .I1(rd_ptr_reg0[2]),
        .O(rd_ptr_gray_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[3]_i_1__0 
       (.I0(rd_ptr_reg0[4]),
        .I1(rd_ptr_reg0[3]),
        .O(rd_ptr_gray_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[4]_i_1__0 
       (.I0(rd_ptr_reg0[5]),
        .I1(rd_ptr_reg0[4]),
        .O(rd_ptr_gray_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[5]_i_1__0 
       (.I0(rd_ptr_reg0[6]),
        .I1(rd_ptr_reg0[5]),
        .O(rd_ptr_gray_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[6]_i_1__0 
       (.I0(rd_ptr_reg0[7]),
        .I1(rd_ptr_reg0[6]),
        .O(rd_ptr_gray_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[7]_i_1__0 
       (.I0(rd_ptr_reg0[8]),
        .I1(rd_ptr_reg0[7]),
        .O(rd_ptr_gray_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[8]_i_1__0 
       (.I0(rd_ptr_reg0[9]),
        .I1(rd_ptr_reg0[8]),
        .O(rd_ptr_gray_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_ptr_gray_reg[9]_i_1__0 
       (.I0(rd_ptr_reg0[10]),
        .I1(rd_ptr_reg0[9]),
        .O(rd_ptr_gray_reg0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[0] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_gray_reg[0]_i_1__0_n_0 ),
        .Q(\rd_ptr_gray_reg_reg_n_0_[0] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[10] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_gray_reg0[10]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[10] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[11] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_gray_reg0[11]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[11] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[12] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[12]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[12] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[1] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_gray_reg0[1]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[1] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[2] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_gray_reg0[2]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[2] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[3] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_gray_reg0[3]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[3] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[4] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_gray_reg0[4]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[4] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[5] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_gray_reg0[5]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[5] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[6] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_gray_reg0[6]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[6] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[7] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_gray_reg0[7]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[7] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[8] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_gray_reg0[8]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[8] ),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_reg_reg[9] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_gray_reg0[9]),
        .Q(\rd_ptr_gray_reg_reg_n_0_[9] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[0] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[0] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[10] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[10] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[10] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[11] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[11] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[11] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[12] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[12] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[12] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[1] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[1] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[2] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[2] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[3] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[3] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[4] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[4] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[5] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[5] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[6] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[6] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[7] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[7] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[8] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[8] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync1_reg_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_reg_reg_n_0_[9] ),
        .Q(\rd_ptr_gray_sync1_reg_reg_n_0_[9] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[0] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[0] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[0] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[10] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[10] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[10] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[11] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[11] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[11] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[12] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[12] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[12] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[1] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[1] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[1] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[2] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[2] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[2] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[3] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[3] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[3] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[4] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[4] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[4] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[5] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[5] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[5] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[6] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[6] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[6] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[7] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[7] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[7] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[8] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[8] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[8] ),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_gray_sync2_reg_reg[9] 
       (.C(rx_clk),
        .CE(1'b1),
        .D(\rd_ptr_gray_sync1_reg_reg_n_0_[9] ),
        .Q(\rd_ptr_gray_sync2_reg_reg_n_0_[9] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr_reg[0]_i_2__0 
       (.I0(rd_ptr_reg_reg[0]),
        .O(\rd_ptr_reg[0]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[0] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[0]_i_1__0_n_7 ),
        .Q(rd_ptr_reg_reg[0]),
        .R(rd_ptr_gray_reg));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_ptr_reg_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\rd_ptr_reg_reg[0]_i_1__0_n_0 ,\rd_ptr_reg_reg[0]_i_1__0_n_1 ,\rd_ptr_reg_reg[0]_i_1__0_n_2 ,\rd_ptr_reg_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\rd_ptr_reg_reg[0]_i_1__0_n_4 ,\rd_ptr_reg_reg[0]_i_1__0_n_5 ,\rd_ptr_reg_reg[0]_i_1__0_n_6 ,\rd_ptr_reg_reg[0]_i_1__0_n_7 }),
        .S({rd_ptr_reg_reg[3:1],\rd_ptr_reg[0]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[10] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[8]_i_1__0_n_5 ),
        .Q(rd_ptr_reg_reg[10]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[11] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[8]_i_1__0_n_4 ),
        .Q(rd_ptr_reg_reg[11]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[12] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[12]_i_1__0_n_7 ),
        .Q(rd_ptr_reg_reg[12]),
        .R(rd_ptr_gray_reg));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_ptr_reg_reg[12]_i_1__0 
       (.CI(\rd_ptr_reg_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_rd_ptr_reg_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rd_ptr_reg_reg[12]_i_1__0_O_UNCONNECTED [3:1],\rd_ptr_reg_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,rd_ptr_reg_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[1] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[0]_i_1__0_n_6 ),
        .Q(rd_ptr_reg_reg[1]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[2] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[0]_i_1__0_n_5 ),
        .Q(rd_ptr_reg_reg[2]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[3] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[0]_i_1__0_n_4 ),
        .Q(rd_ptr_reg_reg[3]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[4] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[4]_i_1__0_n_7 ),
        .Q(rd_ptr_reg_reg[4]),
        .R(rd_ptr_gray_reg));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_ptr_reg_reg[4]_i_1__0 
       (.CI(\rd_ptr_reg_reg[0]_i_1__0_n_0 ),
        .CO({\rd_ptr_reg_reg[4]_i_1__0_n_0 ,\rd_ptr_reg_reg[4]_i_1__0_n_1 ,\rd_ptr_reg_reg[4]_i_1__0_n_2 ,\rd_ptr_reg_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_ptr_reg_reg[4]_i_1__0_n_4 ,\rd_ptr_reg_reg[4]_i_1__0_n_5 ,\rd_ptr_reg_reg[4]_i_1__0_n_6 ,\rd_ptr_reg_reg[4]_i_1__0_n_7 }),
        .S(rd_ptr_reg_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[5] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[4]_i_1__0_n_6 ),
        .Q(rd_ptr_reg_reg[5]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[6] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[4]_i_1__0_n_5 ),
        .Q(rd_ptr_reg_reg[6]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[7] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[4]_i_1__0_n_4 ),
        .Q(rd_ptr_reg_reg[7]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[8] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[8]_i_1__0_n_7 ),
        .Q(rd_ptr_reg_reg[8]),
        .R(rd_ptr_gray_reg));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \rd_ptr_reg_reg[8]_i_1__0 
       (.CI(\rd_ptr_reg_reg[4]_i_1__0_n_0 ),
        .CO({\rd_ptr_reg_reg[8]_i_1__0_n_0 ,\rd_ptr_reg_reg[8]_i_1__0_n_1 ,\rd_ptr_reg_reg[8]_i_1__0_n_2 ,\rd_ptr_reg_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\rd_ptr_reg_reg[8]_i_1__0_n_4 ,\rd_ptr_reg_reg[8]_i_1__0_n_5 ,\rd_ptr_reg_reg[8]_i_1__0_n_6 ,\rd_ptr_reg_reg[8]_i_1__0_n_7 }),
        .S(rd_ptr_reg_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg[9] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(\rd_ptr_reg_reg[8]_i_1__0_n_6 ),
        .Q(rd_ptr_reg_reg[9]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[0] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[0]),
        .Q(rd_ptr_reg_reg_rep[0]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[10] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[10]),
        .Q(rd_ptr_reg_reg_rep[10]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[11] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[11]),
        .Q(rd_ptr_reg_reg_rep[11]),
        .R(rd_ptr_gray_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rd_ptr_reg_reg_rep[11]_i_3__0 
       (.CI(\rd_ptr_reg_reg_rep[8]_i_1__0_n_0 ),
        .CO({\NLW_rd_ptr_reg_reg_rep[11]_i_3__0_CO_UNCONNECTED [3],\rd_ptr_reg_reg_rep[11]_i_3__0_n_1 ,\rd_ptr_reg_reg_rep[11]_i_3__0_n_2 ,\rd_ptr_reg_reg_rep[11]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rd_ptr_reg0[12:9]),
        .S(rd_ptr_reg_reg[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[1] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[1]),
        .Q(rd_ptr_reg_reg_rep[1]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[2] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[2]),
        .Q(rd_ptr_reg_reg_rep[2]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[3] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[3]),
        .Q(rd_ptr_reg_reg_rep[3]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[4] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[4]),
        .Q(rd_ptr_reg_reg_rep[4]),
        .R(rd_ptr_gray_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rd_ptr_reg_reg_rep[4]_i_1__0 
       (.CI(1'b0),
        .CO({\rd_ptr_reg_reg_rep[4]_i_1__0_n_0 ,\rd_ptr_reg_reg_rep[4]_i_1__0_n_1 ,\rd_ptr_reg_reg_rep[4]_i_1__0_n_2 ,\rd_ptr_reg_reg_rep[4]_i_1__0_n_3 }),
        .CYINIT(rd_ptr_reg_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rd_ptr_reg0[4:1]),
        .S(rd_ptr_reg_reg[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[5] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[5]),
        .Q(rd_ptr_reg_reg_rep[5]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[6] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[6]),
        .Q(rd_ptr_reg_reg_rep[6]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[7] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[7]),
        .Q(rd_ptr_reg_reg_rep[7]),
        .R(rd_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[8] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[8]),
        .Q(rd_ptr_reg_reg_rep[8]),
        .R(rd_ptr_gray_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \rd_ptr_reg_reg_rep[8]_i_1__0 
       (.CI(\rd_ptr_reg_reg_rep[4]_i_1__0_n_0 ),
        .CO({\rd_ptr_reg_reg_rep[8]_i_1__0_n_0 ,\rd_ptr_reg_reg_rep[8]_i_1__0_n_1 ,\rd_ptr_reg_reg_rep[8]_i_1__0_n_2 ,\rd_ptr_reg_reg_rep[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rd_ptr_reg0[8:5]),
        .S(rd_ptr_reg_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_ptr_reg_reg_rep[9] 
       (.C(clock),
        .CE(\rd_ptr_reg_rep[11]_i_2__0_n_0 ),
        .D(rd_ptr_reg0[9]),
        .Q(rd_ptr_reg_reg_rep[9]),
        .R(rd_ptr_gray_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_ptr_reg_rep[0]_i_1__0 
       (.I0(rd_ptr_reg_reg[0]),
        .O(rd_ptr_reg0[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \rd_ptr_reg_rep[11]_i_1__0 
       (.I0(reset),
        .I1(m_rst_sync3_reg),
        .O(rd_ptr_gray_reg));
  LUT6 #(
    .INIT(64'h0101000101010101)) 
    \rd_ptr_reg_rep[11]_i_2__0 
       (.I0(empty),
        .I1(m_drop_frame_reg_reg_n_0),
        .I2(m_rst_sync3_reg),
        .I3(p_1_in),
        .I4(rx_axis_tready),
        .I5(\m_axis_tvalid_pipe_reg_reg[1]_0 ),
        .O(\rd_ptr_reg_rep[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_axis_tlast_INST_0
       (.I0(p_0_in),
        .I1(m_terminate_frame_reg),
        .O(rx_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hE)) 
    rx_axis_tuser_INST_0
       (.I0(m_terminate_frame_reg),
        .I1(mem_reg_1_n_31),
        .O(rx_axis_tuser));
  FDRE #(
    .INIT(1'b0)) 
    s_frame_reg_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(drop_frame_reg),
        .Q(s_frame_reg),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    s_rst_sync2_reg_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(s_rst_sync2_reg_reg_0),
        .Q(s_rst_sync2_reg_reg_n_0),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    s_rst_sync3_reg_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(s_rst_sync2_reg_reg_n_0),
        .Q(s_rst_sync3_reg_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h09F9F909)) 
    \wr_ptr_cur_gray_reg[0]_i_1__0 
       (.I0(wr_ptr_cur_reg_reg[0]),
        .I1(wr_ptr_sync_gray_reg10_in[1]),
        .I2(drop_frame_reg_reg_0),
        .I3(\wr_ptr_reg_reg_n_0_[0] ),
        .I4(wr_ptr_cur_gray_reg1[0]),
        .O(\wr_ptr_cur_gray_reg[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[10]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[10]),
        .I1(wr_ptr_sync_gray_reg10_in[11]),
        .I2(drop_frame_reg_reg_0),
        .I3(wr_ptr_cur_gray_reg1[9]),
        .I4(wr_ptr_cur_gray_reg1[10]),
        .O(\wr_ptr_cur_gray_reg[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[11]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[11]),
        .I1(wr_ptr_sync_gray_reg10_in[12]),
        .I2(drop_frame_reg_reg_0),
        .I3(wr_ptr_cur_gray_reg1[10]),
        .I4(wr_ptr_cur_gray_reg1[11]),
        .O(\wr_ptr_cur_gray_reg[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \wr_ptr_cur_gray_reg[11]_i_2__0 
       (.I0(full_wr),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_cur),
        .O(drop_frame_reg_reg_0));
  LUT5 #(
    .INIT(32'hFF000100)) 
    \wr_ptr_cur_gray_reg[12]_i_1 
       (.I0(full_wr),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_cur),
        .I3(rx_fifo_axis_tvalid),
        .I4(s_axis[8]),
        .O(wr_ptr_cur_reg));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_gray_reg[12]_i_2 
       (.I0(wr_ptr_cur_gray_reg1[11]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_sync_gray_reg10_in[12]),
        .O(\wr_ptr_cur_gray_reg[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[1]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[1]),
        .I1(wr_ptr_sync_gray_reg10_in[2]),
        .I2(drop_frame_reg_reg_0),
        .I3(wr_ptr_cur_gray_reg1[0]),
        .I4(wr_ptr_cur_gray_reg1[1]),
        .O(\wr_ptr_cur_gray_reg[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[2]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[2]),
        .I1(wr_ptr_sync_gray_reg10_in[3]),
        .I2(drop_frame_reg_reg_0),
        .I3(wr_ptr_cur_gray_reg1[1]),
        .I4(wr_ptr_cur_gray_reg1[2]),
        .O(\wr_ptr_cur_gray_reg[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[3]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[3]),
        .I1(wr_ptr_sync_gray_reg10_in[4]),
        .I2(drop_frame_reg_reg_0),
        .I3(wr_ptr_cur_gray_reg1[2]),
        .I4(wr_ptr_cur_gray_reg1[3]),
        .O(\wr_ptr_cur_gray_reg[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[4]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[4]),
        .I1(wr_ptr_sync_gray_reg10_in[5]),
        .I2(drop_frame_reg_reg_0),
        .I3(wr_ptr_cur_gray_reg1[3]),
        .I4(wr_ptr_cur_gray_reg1[4]),
        .O(\wr_ptr_cur_gray_reg[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[5]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[5]),
        .I1(wr_ptr_sync_gray_reg10_in[6]),
        .I2(drop_frame_reg_reg_0),
        .I3(wr_ptr_cur_gray_reg1[4]),
        .I4(wr_ptr_cur_gray_reg1[5]),
        .O(\wr_ptr_cur_gray_reg[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[6]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[6]),
        .I1(wr_ptr_sync_gray_reg10_in[7]),
        .I2(drop_frame_reg_reg_0),
        .I3(wr_ptr_cur_gray_reg1[5]),
        .I4(wr_ptr_cur_gray_reg1[6]),
        .O(\wr_ptr_cur_gray_reg[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[7]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[7]),
        .I1(wr_ptr_sync_gray_reg10_in[8]),
        .I2(drop_frame_reg_reg_0),
        .I3(wr_ptr_cur_gray_reg1[6]),
        .I4(wr_ptr_cur_gray_reg1[7]),
        .O(\wr_ptr_cur_gray_reg[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[8]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[8]),
        .I1(wr_ptr_sync_gray_reg10_in[9]),
        .I2(drop_frame_reg_reg_0),
        .I3(wr_ptr_cur_gray_reg1[7]),
        .I4(wr_ptr_cur_gray_reg1[8]),
        .O(\wr_ptr_cur_gray_reg[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h06F6F606)) 
    \wr_ptr_cur_gray_reg[9]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[9]),
        .I1(wr_ptr_sync_gray_reg10_in[10]),
        .I2(drop_frame_reg_reg_0),
        .I3(wr_ptr_cur_gray_reg1[8]),
        .I4(wr_ptr_cur_gray_reg1[9]),
        .O(\wr_ptr_cur_gray_reg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[0] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[0]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[0] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[10] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[10]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[10] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[11] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[11]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[11] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[12] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[12]_i_2_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[12] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[1] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[1]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[1] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[2] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[2]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[2] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[3] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[3]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[3] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[4] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[4]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[4] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[5] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[5]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[5] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[6] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[6]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[6] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[7] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[7]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[7] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[8] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[8]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[8] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_gray_reg_reg[9] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_gray_reg[9]_i_1__0_n_0 ),
        .Q(\wr_ptr_cur_gray_reg_reg_n_0_[9] ),
        .R(wr_ptr_gray_reg));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[0]_i_2 
       (.I0(\wr_ptr_reg_reg_n_0_[0] ),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[0]),
        .O(\wr_ptr_cur_reg[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[0]_i_3 
       (.I0(wr_ptr_cur_gray_reg1[2]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[3]),
        .O(\wr_ptr_cur_reg[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[0]_i_4 
       (.I0(wr_ptr_cur_gray_reg1[1]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[2]),
        .O(\wr_ptr_cur_reg[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[0]_i_5 
       (.I0(wr_ptr_cur_gray_reg1[0]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[1]),
        .O(\wr_ptr_cur_reg[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCCCCCCC5)) 
    \wr_ptr_cur_reg[0]_i_6 
       (.I0(wr_ptr_cur_reg_reg[0]),
        .I1(\wr_ptr_reg_reg_n_0_[0] ),
        .I2(full_cur),
        .I3(drop_frame_reg_reg_n_0),
        .I4(full_wr),
        .O(\wr_ptr_cur_reg[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[12]_i_2 
       (.I0(wr_ptr_cur_gray_reg1[11]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg__0),
        .O(\wr_ptr_cur_reg[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[4]_i_2 
       (.I0(wr_ptr_cur_gray_reg1[6]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[7]),
        .O(\wr_ptr_cur_reg[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[4]_i_3 
       (.I0(wr_ptr_cur_gray_reg1[5]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[6]),
        .O(\wr_ptr_cur_reg[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[4]_i_4 
       (.I0(wr_ptr_cur_gray_reg1[4]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[5]),
        .O(\wr_ptr_cur_reg[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[4]_i_5 
       (.I0(wr_ptr_cur_gray_reg1[3]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[4]),
        .O(\wr_ptr_cur_reg[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[8]_i_2 
       (.I0(wr_ptr_cur_gray_reg1[10]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[11]),
        .O(\wr_ptr_cur_reg[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[8]_i_3 
       (.I0(wr_ptr_cur_gray_reg1[9]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[10]),
        .O(\wr_ptr_cur_reg[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[8]_i_4 
       (.I0(wr_ptr_cur_gray_reg1[8]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[9]),
        .O(\wr_ptr_cur_reg[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \wr_ptr_cur_reg[8]_i_5 
       (.I0(wr_ptr_cur_gray_reg1[7]),
        .I1(full_wr),
        .I2(drop_frame_reg_reg_n_0),
        .I3(full_cur),
        .I4(wr_ptr_cur_reg_reg[8]),
        .O(\wr_ptr_cur_reg[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[0] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[0]_i_1_n_7 ),
        .Q(wr_ptr_cur_reg_reg[0]),
        .R(wr_ptr_gray_reg));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wr_ptr_cur_reg_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\wr_ptr_cur_reg_reg[0]_i_1_n_0 ,\wr_ptr_cur_reg_reg[0]_i_1_n_1 ,\wr_ptr_cur_reg_reg[0]_i_1_n_2 ,\wr_ptr_cur_reg_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\wr_ptr_cur_reg[0]_i_2_n_0 }),
        .O({\wr_ptr_cur_reg_reg[0]_i_1_n_4 ,\wr_ptr_cur_reg_reg[0]_i_1_n_5 ,\wr_ptr_cur_reg_reg[0]_i_1_n_6 ,\wr_ptr_cur_reg_reg[0]_i_1_n_7 }),
        .S({\wr_ptr_cur_reg[0]_i_3_n_0 ,\wr_ptr_cur_reg[0]_i_4_n_0 ,\wr_ptr_cur_reg[0]_i_5_n_0 ,\wr_ptr_cur_reg[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[10] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[8]_i_1_n_5 ),
        .Q(wr_ptr_cur_reg_reg[10]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[11] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[8]_i_1_n_4 ),
        .Q(wr_ptr_cur_reg_reg[11]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[12] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[12]_i_1_n_7 ),
        .Q(wr_ptr_cur_reg_reg__0),
        .R(wr_ptr_gray_reg));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wr_ptr_cur_reg_reg[12]_i_1 
       (.CI(\wr_ptr_cur_reg_reg[8]_i_1_n_0 ),
        .CO(\NLW_wr_ptr_cur_reg_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wr_ptr_cur_reg_reg[12]_i_1_O_UNCONNECTED [3:1],\wr_ptr_cur_reg_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\wr_ptr_cur_reg[12]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[1] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[0]_i_1_n_6 ),
        .Q(wr_ptr_cur_reg_reg[1]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[2] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[0]_i_1_n_5 ),
        .Q(wr_ptr_cur_reg_reg[2]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[3] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[0]_i_1_n_4 ),
        .Q(wr_ptr_cur_reg_reg[3]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[4] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[4]_i_1_n_7 ),
        .Q(wr_ptr_cur_reg_reg[4]),
        .R(wr_ptr_gray_reg));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wr_ptr_cur_reg_reg[4]_i_1 
       (.CI(\wr_ptr_cur_reg_reg[0]_i_1_n_0 ),
        .CO({\wr_ptr_cur_reg_reg[4]_i_1_n_0 ,\wr_ptr_cur_reg_reg[4]_i_1_n_1 ,\wr_ptr_cur_reg_reg[4]_i_1_n_2 ,\wr_ptr_cur_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_ptr_cur_reg_reg[4]_i_1_n_4 ,\wr_ptr_cur_reg_reg[4]_i_1_n_5 ,\wr_ptr_cur_reg_reg[4]_i_1_n_6 ,\wr_ptr_cur_reg_reg[4]_i_1_n_7 }),
        .S({\wr_ptr_cur_reg[4]_i_2_n_0 ,\wr_ptr_cur_reg[4]_i_3_n_0 ,\wr_ptr_cur_reg[4]_i_4_n_0 ,\wr_ptr_cur_reg[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[5] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[4]_i_1_n_6 ),
        .Q(wr_ptr_cur_reg_reg[5]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[6] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[4]_i_1_n_5 ),
        .Q(wr_ptr_cur_reg_reg[6]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[7] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[4]_i_1_n_4 ),
        .Q(wr_ptr_cur_reg_reg[7]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[8] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[8]_i_1_n_7 ),
        .Q(wr_ptr_cur_reg_reg[8]),
        .R(wr_ptr_gray_reg));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \wr_ptr_cur_reg_reg[8]_i_1 
       (.CI(\wr_ptr_cur_reg_reg[4]_i_1_n_0 ),
        .CO({\wr_ptr_cur_reg_reg[8]_i_1_n_0 ,\wr_ptr_cur_reg_reg[8]_i_1_n_1 ,\wr_ptr_cur_reg_reg[8]_i_1_n_2 ,\wr_ptr_cur_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wr_ptr_cur_reg_reg[8]_i_1_n_4 ,\wr_ptr_cur_reg_reg[8]_i_1_n_5 ,\wr_ptr_cur_reg_reg[8]_i_1_n_6 ,\wr_ptr_cur_reg_reg[8]_i_1_n_7 }),
        .S({\wr_ptr_cur_reg[8]_i_2_n_0 ,\wr_ptr_cur_reg[8]_i_3_n_0 ,\wr_ptr_cur_reg[8]_i_4_n_0 ,\wr_ptr_cur_reg[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_cur_reg_reg[9] 
       (.C(rx_clk),
        .CE(wr_ptr_cur_reg),
        .D(\wr_ptr_cur_reg_reg[8]_i_1_n_6 ),
        .Q(wr_ptr_cur_reg_reg[9]),
        .R(wr_ptr_gray_reg));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wr_ptr_gray_reg[0]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[1]),
        .I1(wr_ptr_cur_reg_reg[0]),
        .O(wr_ptr_sync_gray_reg0[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[10]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[11]),
        .I1(wr_ptr_sync_gray_reg10_in[10]),
        .O(wr_ptr_sync_gray_reg0[10]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[11]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[12]),
        .I1(wr_ptr_sync_gray_reg10_in[11]),
        .O(wr_ptr_sync_gray_reg0[11]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[1]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[2]),
        .I1(wr_ptr_sync_gray_reg10_in[1]),
        .O(wr_ptr_sync_gray_reg0[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[2]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[3]),
        .I1(wr_ptr_sync_gray_reg10_in[2]),
        .O(wr_ptr_sync_gray_reg0[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[3]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[4]),
        .I1(wr_ptr_sync_gray_reg10_in[3]),
        .O(wr_ptr_sync_gray_reg0[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[4]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[5]),
        .I1(wr_ptr_sync_gray_reg10_in[4]),
        .O(wr_ptr_sync_gray_reg0[4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[5]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[6]),
        .I1(wr_ptr_sync_gray_reg10_in[5]),
        .O(wr_ptr_sync_gray_reg0[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[6]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[7]),
        .I1(wr_ptr_sync_gray_reg10_in[6]),
        .O(wr_ptr_sync_gray_reg0[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[7]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[8]),
        .I1(wr_ptr_sync_gray_reg10_in[7]),
        .O(wr_ptr_sync_gray_reg0[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[8]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[9]),
        .I1(wr_ptr_sync_gray_reg10_in[8]),
        .O(wr_ptr_sync_gray_reg0[8]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_reg[9]_i_1__0 
       (.I0(wr_ptr_sync_gray_reg10_in[10]),
        .I1(wr_ptr_sync_gray_reg10_in[9]),
        .O(wr_ptr_sync_gray_reg0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[0] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[0]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[0] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[10] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[10]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[10] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[11] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[11]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[11] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[1] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[1]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[1] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[2] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[2]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[2] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[3] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[3]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[3] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[4] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[4]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[4] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[5] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[5]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[5] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[6] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[6]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[6] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[7] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[7]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[7] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[8] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[8]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[8] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_reg_reg[9] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg0[9]),
        .Q(\wr_ptr_gray_reg_reg_n_0_[9] ),
        .R(wr_ptr_gray_reg));
  LUT2 #(
    .INIT(4'h6)) 
    \wr_ptr_gray_sync1_reg[12]_i_1__0 
       (.I0(wr_ptr_update_sync3_reg),
        .I1(wr_ptr_update_sync2_reg),
        .O(wr_ptr_gray_sync1_reg0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[0] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[0] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[0] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[10] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[10] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[10] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[11] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[11] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[11] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[12] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[12] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[12] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[1] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[1] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[1] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[2] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[2] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[2] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[3] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[3] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[3] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[4] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[4] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[4] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[5] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[5] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[5] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[6] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[6] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[6] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[7] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[7] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[7] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[8] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[8] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[8] ),
        .R(rd_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_gray_sync1_reg_reg[9] 
       (.C(clock),
        .CE(wr_ptr_gray_sync1_reg0),
        .D(\wr_ptr_sync_gray_reg_reg_n_0_[9] ),
        .Q(\wr_ptr_gray_sync1_reg_reg_n_0_[9] ),
        .R(rd_ptr_gray_reg));
  LUT1 #(
    .INIT(2'h1)) 
    \wr_ptr_reg[0]_i_1__0 
       (.I0(wr_ptr_cur_reg_reg[0]),
        .O(wr_ptr_sync_gray_reg10_in[0]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \wr_ptr_reg[11]_i_2 
       (.I0(full_wr),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_cur),
        .I3(s_axis[8]),
        .I4(rx_fifo_axis_tvalid),
        .O(wr_ptr_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[0] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[0]),
        .Q(\wr_ptr_reg_reg_n_0_[0] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[10] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[10]),
        .Q(wr_ptr_cur_gray_reg1[9]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[11] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[11]),
        .Q(wr_ptr_cur_gray_reg1[10]),
        .R(wr_ptr_gray_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_ptr_reg_reg[11]_i_3 
       (.CI(\wr_ptr_reg_reg[8]_i_1_n_0 ),
        .CO({\NLW_wr_ptr_reg_reg[11]_i_3_CO_UNCONNECTED [3],\wr_ptr_reg_reg[11]_i_3_n_1 ,\wr_ptr_reg_reg[11]_i_3_n_2 ,\wr_ptr_reg_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(wr_ptr_sync_gray_reg10_in[12:9]),
        .S({wr_ptr_cur_reg_reg__0,wr_ptr_cur_reg_reg[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[12] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[12]),
        .Q(wr_ptr_cur_gray_reg1[11]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[1] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[1]),
        .Q(wr_ptr_cur_gray_reg1[0]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[2] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[2]),
        .Q(wr_ptr_cur_gray_reg1[1]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[3] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[3]),
        .Q(wr_ptr_cur_gray_reg1[2]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[4] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[4]),
        .Q(wr_ptr_cur_gray_reg1[3]),
        .R(wr_ptr_gray_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_ptr_reg_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\wr_ptr_reg_reg[4]_i_1_n_0 ,\wr_ptr_reg_reg[4]_i_1_n_1 ,\wr_ptr_reg_reg[4]_i_1_n_2 ,\wr_ptr_reg_reg[4]_i_1_n_3 }),
        .CYINIT(wr_ptr_cur_reg_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(wr_ptr_sync_gray_reg10_in[4:1]),
        .S(wr_ptr_cur_reg_reg[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[5] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[5]),
        .Q(wr_ptr_cur_gray_reg1[4]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[6] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[6]),
        .Q(wr_ptr_cur_gray_reg1[5]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[7] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[7]),
        .Q(wr_ptr_cur_gray_reg1[6]),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[8] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[8]),
        .Q(wr_ptr_cur_gray_reg1[7]),
        .R(wr_ptr_gray_reg));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \wr_ptr_reg_reg[8]_i_1 
       (.CI(\wr_ptr_reg_reg[4]_i_1_n_0 ),
        .CO({\wr_ptr_reg_reg[8]_i_1_n_0 ,\wr_ptr_reg_reg[8]_i_1_n_1 ,\wr_ptr_reg_reg[8]_i_1_n_2 ,\wr_ptr_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(wr_ptr_sync_gray_reg10_in[8:5]),
        .S(wr_ptr_cur_reg_reg[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_reg_reg[9] 
       (.C(rx_clk),
        .CE(wr_ptr_reg),
        .D(wr_ptr_sync_gray_reg10_in[9]),
        .Q(wr_ptr_cur_gray_reg1[8]),
        .R(wr_ptr_gray_reg));
  LUT4 #(
    .INIT(16'hB88B)) 
    \wr_ptr_sync_gray_reg[0]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[0] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[1]),
        .I3(wr_ptr_cur_reg_reg[0]),
        .O(\wr_ptr_sync_gray_reg[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \wr_ptr_sync_gray_reg[10]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[10] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[11]),
        .I3(wr_ptr_sync_gray_reg10_in[10]),
        .O(\wr_ptr_sync_gray_reg[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \wr_ptr_sync_gray_reg[11]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[11] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[12]),
        .I3(wr_ptr_sync_gray_reg10_in[11]),
        .O(\wr_ptr_sync_gray_reg[11]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h90FF)) 
    \wr_ptr_sync_gray_reg[12]_i_1__0 
       (.I0(wr_ptr_update_ack_sync2_reg_reg_n_0),
        .I1(wr_ptr_update_reg_reg_n_0),
        .I2(wr_ptr_update_valid_reg),
        .I3(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .O(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wr_ptr_sync_gray_reg[12]_i_2__0 
       (.I0(wr_ptr_cur_gray_reg1[11]),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[12]),
        .O(\wr_ptr_sync_gray_reg[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFE)) 
    \wr_ptr_sync_gray_reg[12]_i_3__0 
       (.I0(full_wr),
        .I1(drop_frame_reg_reg_n_0),
        .I2(full_cur),
        .I3(\wr_ptr_sync_gray_reg_reg[0]_0 ),
        .I4(wr_ptr_update_reg_reg_n_0),
        .I5(wr_ptr_update_ack_sync2_reg_reg_n_0),
        .O(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \wr_ptr_sync_gray_reg[1]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[1] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[2]),
        .I3(wr_ptr_sync_gray_reg10_in[1]),
        .O(\wr_ptr_sync_gray_reg[1]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \wr_ptr_sync_gray_reg[2]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[2] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[3]),
        .I3(wr_ptr_sync_gray_reg10_in[2]),
        .O(\wr_ptr_sync_gray_reg[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \wr_ptr_sync_gray_reg[3]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[3] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[4]),
        .I3(wr_ptr_sync_gray_reg10_in[3]),
        .O(\wr_ptr_sync_gray_reg[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \wr_ptr_sync_gray_reg[4]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[4] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[5]),
        .I3(wr_ptr_sync_gray_reg10_in[4]),
        .O(\wr_ptr_sync_gray_reg[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \wr_ptr_sync_gray_reg[5]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[5] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[6]),
        .I3(wr_ptr_sync_gray_reg10_in[5]),
        .O(\wr_ptr_sync_gray_reg[5]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \wr_ptr_sync_gray_reg[6]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[6] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[7]),
        .I3(wr_ptr_sync_gray_reg10_in[6]),
        .O(\wr_ptr_sync_gray_reg[6]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \wr_ptr_sync_gray_reg[7]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[7] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[8]),
        .I3(wr_ptr_sync_gray_reg10_in[7]),
        .O(\wr_ptr_sync_gray_reg[7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \wr_ptr_sync_gray_reg[8]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[8] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[9]),
        .I3(wr_ptr_sync_gray_reg10_in[8]),
        .O(\wr_ptr_sync_gray_reg[8]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \wr_ptr_sync_gray_reg[9]_i_1__0 
       (.I0(\wr_ptr_gray_reg_reg_n_0_[9] ),
        .I1(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I2(wr_ptr_sync_gray_reg10_in[10]),
        .I3(wr_ptr_sync_gray_reg10_in[9]),
        .O(\wr_ptr_sync_gray_reg[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[0] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[0]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[0] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[10] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[10]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[10] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[11] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[11]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[11] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[12] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[12]_i_2__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[12] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[1] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[1]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[1] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[2] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[2]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[2] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[3] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[3]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[3] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[4] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[4]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[4] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[5] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[5]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[5] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[6] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[6]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[6] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[7] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[7]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[7] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[8] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[8]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[8] ),
        .R(wr_ptr_gray_reg));
  FDRE #(
    .INIT(1'b0)) 
    \wr_ptr_sync_gray_reg_reg[9] 
       (.C(rx_clk),
        .CE(\wr_ptr_sync_gray_reg[12]_i_1__0_n_0 ),
        .D(\wr_ptr_sync_gray_reg[9]_i_1__0_n_0 ),
        .Q(\wr_ptr_sync_gray_reg_reg_n_0_[9] ),
        .R(wr_ptr_gray_reg));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_ack_sync1_reg_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(wr_ptr_update_sync3_reg),
        .Q(wr_ptr_update_ack_sync1_reg_reg_n_0),
        .R(SR));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_ack_sync2_reg_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(wr_ptr_update_ack_sync1_reg_reg_n_0),
        .Q(wr_ptr_update_ack_sync2_reg_reg_n_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000000020FD)) 
    wr_ptr_update_reg_i_1__0
       (.I0(\wr_ptr_sync_gray_reg[12]_i_3__0_n_0 ),
        .I1(wr_ptr_update_valid_reg),
        .I2(wr_ptr_update_reg_reg_n_0),
        .I3(wr_ptr_update_ack_sync2_reg_reg_n_0),
        .I4(s_rst_sync3_reg_reg_0),
        .I5(SR),
        .O(wr_ptr_update_reg_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_reg_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(wr_ptr_update_reg_i_1__0_n_0),
        .Q(wr_ptr_update_reg_reg_n_0),
        .R(1'b0));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_sync1_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(wr_ptr_update_reg_reg_n_0),
        .Q(wr_ptr_update_sync1_reg_reg_n_0),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_sync2_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(wr_ptr_update_sync1_reg_reg_n_0),
        .Q(wr_ptr_update_sync2_reg),
        .R(reset));
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_sync3_reg_reg
       (.C(clock),
        .CE(1'b1),
        .D(wr_ptr_update_sync2_reg),
        .Q(wr_ptr_update_sync3_reg),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000000000000BB0)) 
    wr_ptr_update_valid_reg_i_1__0
       (.I0(wr_ptr_update_valid_reg),
        .I1(wr_ptr_update_valid_reg_i_2__0_n_0),
        .I2(wr_ptr_update_reg_reg_n_0),
        .I3(wr_ptr_update_ack_sync2_reg_reg_n_0),
        .I4(SR),
        .I5(s_rst_sync3_reg_reg_0),
        .O(wr_ptr_update_valid_reg_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    wr_ptr_update_valid_reg_i_2__0
       (.I0(rx_fifo_axis_tvalid),
        .I1(s_rst_sync3_reg_reg_0),
        .I2(s_axis[8]),
        .I3(full_cur),
        .I4(drop_frame_reg_reg_n_0),
        .I5(full_wr),
        .O(wr_ptr_update_valid_reg_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_ptr_update_valid_reg_reg
       (.C(rx_clk),
        .CE(1'b1),
        .D(wr_ptr_update_valid_reg_i_1__0_n_0),
        .Q(wr_ptr_update_valid_reg),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_async_fifo_adapter
   (m_rst_sync1_reg_reg,
    m_rst_sync3_reg,
    tx_fifo_axis_tvalid,
    m_terminate_frame_reg,
    \FSM_onehot_state_reg_reg[6] ,
    \m_axis_pipe_reg_reg[0]_0 ,
    mem_reg_1,
    D,
    \m_axis_tvalid_pipe_reg_reg[1] ,
    tx_axis_tready,
    tx_clk,
    Q,
    clock,
    reset,
    tx_fifo_axis_tready,
    \FSM_onehot_state_reg_reg[7] ,
    s_axis,
    tx_axis_tvalid,
    mem_reg_1_0,
    clear);
  output m_rst_sync1_reg_reg;
  output m_rst_sync3_reg;
  output tx_fifo_axis_tvalid;
  output m_terminate_frame_reg;
  output \FSM_onehot_state_reg_reg[6] ;
  output [8:0]\m_axis_pipe_reg_reg[0]_0 ;
  output mem_reg_1;
  output [1:0]D;
  output \m_axis_tvalid_pipe_reg_reg[1] ;
  output tx_axis_tready;
  input tx_clk;
  input [0:0]Q;
  input clock;
  input reset;
  input tx_fifo_axis_tready;
  input [2:0]\FSM_onehot_state_reg_reg[7] ;
  input [9:0]s_axis;
  input tx_axis_tvalid;
  input mem_reg_1_0;
  input clear;

  wire [1:0]D;
  wire \FSM_onehot_state_reg_reg[6] ;
  wire [2:0]\FSM_onehot_state_reg_reg[7] ;
  wire [0:0]Q;
  wire clear;
  wire clock;
  wire [8:0]\m_axis_pipe_reg_reg[0]_0 ;
  wire \m_axis_tvalid_pipe_reg_reg[1] ;
  wire m_rst_sync1_reg_reg;
  wire m_rst_sync3_reg;
  wire m_terminate_frame_reg;
  wire mem_reg_1;
  wire mem_reg_1_0;
  wire reset;
  wire [9:0]s_axis;
  wire tx_axis_tready;
  wire tx_axis_tvalid;
  wire tx_clk;
  wire tx_fifo_axis_tready;
  wire tx_fifo_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_async_fifo fifo_inst
       (.D(D),
        .\FSM_onehot_state_reg_reg[6] (\FSM_onehot_state_reg_reg[6] ),
        .\FSM_onehot_state_reg_reg[7] (\FSM_onehot_state_reg_reg[7] ),
        .Q(Q),
        .clear(clear),
        .clock(clock),
        .\m_axis_pipe_reg_reg[0]_0 (\m_axis_pipe_reg_reg[0]_0 ),
        .\m_axis_tvalid_pipe_reg_reg[1]_0 (tx_fifo_axis_tvalid),
        .\m_axis_tvalid_pipe_reg_reg[1]_1 (\m_axis_tvalid_pipe_reg_reg[1] ),
        .m_rst_sync1_reg_reg_0(m_rst_sync1_reg_reg),
        .m_rst_sync3_reg_reg_0(m_rst_sync3_reg),
        .m_terminate_frame_reg_reg_0(m_terminate_frame_reg),
        .mem_reg_1_0(mem_reg_1),
        .mem_reg_1_1(mem_reg_1_0),
        .reset(reset),
        .s_axis(s_axis),
        .tx_axis_tready(tx_axis_tready),
        .tx_axis_tvalid(tx_axis_tvalid),
        .tx_clk(tx_clk),
        .tx_fifo_axis_tready(tx_fifo_axis_tready));
endmodule

(* ORIG_REF_NAME = "axis_async_fifo_adapter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_async_fifo_adapter__parameterized0
   (s_rst_sync3_reg,
    \m_axis_tvalid_pipe_reg_reg[1] ,
    s_frame_reg,
    rx_axis_tlast,
    rx_axis_tuser,
    overflow_reg1__0,
    drop_frame_reg_reg,
    rx_axis_tdata,
    s_rst_sync2_reg_reg,
    rx_clk,
    SR,
    clock,
    reset,
    wr_ptr_gray_reg,
    drop_frame_reg,
    drop_frame_reg_reg_0,
    rx_axis_tready,
    \wr_ptr_sync_gray_reg_reg[0] ,
    rx_fifo_axis_tvalid,
    rx_fifo_axis_tlast,
    s_axis,
    WEA);
  output s_rst_sync3_reg;
  output \m_axis_tvalid_pipe_reg_reg[1] ;
  output s_frame_reg;
  output rx_axis_tlast;
  output rx_axis_tuser;
  output overflow_reg1__0;
  output drop_frame_reg_reg;
  output [7:0]rx_axis_tdata;
  input s_rst_sync2_reg_reg;
  input rx_clk;
  input [0:0]SR;
  input clock;
  input reset;
  input wr_ptr_gray_reg;
  input drop_frame_reg;
  input drop_frame_reg_reg_0;
  input rx_axis_tready;
  input \wr_ptr_sync_gray_reg_reg[0] ;
  input rx_fifo_axis_tvalid;
  input rx_fifo_axis_tlast;
  input [8:0]s_axis;
  input [0:0]WEA;

  wire [0:0]SR;
  wire [0:0]WEA;
  wire clock;
  wire drop_frame_reg;
  wire drop_frame_reg_reg;
  wire drop_frame_reg_reg_0;
  wire \m_axis_tvalid_pipe_reg_reg[1] ;
  wire overflow_reg1__0;
  wire reset;
  wire [7:0]rx_axis_tdata;
  wire rx_axis_tlast;
  wire rx_axis_tready;
  wire rx_axis_tuser;
  wire rx_clk;
  wire rx_fifo_axis_tlast;
  wire rx_fifo_axis_tvalid;
  wire [8:0]s_axis;
  wire s_frame_reg;
  wire s_rst_sync2_reg_reg;
  wire s_rst_sync3_reg;
  wire wr_ptr_gray_reg;
  wire \wr_ptr_sync_gray_reg_reg[0] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_async_fifo__parameterized0 fifo_inst
       (.SR(SR),
        .WEA(WEA),
        .clock(clock),
        .drop_frame_reg(drop_frame_reg),
        .drop_frame_reg_reg_0(overflow_reg1__0),
        .drop_frame_reg_reg_1(drop_frame_reg_reg),
        .drop_frame_reg_reg_2(drop_frame_reg_reg_0),
        .\m_axis_tvalid_pipe_reg_reg[1]_0 (\m_axis_tvalid_pipe_reg_reg[1] ),
        .reset(reset),
        .rx_axis_tdata(rx_axis_tdata),
        .rx_axis_tlast(rx_axis_tlast),
        .rx_axis_tready(rx_axis_tready),
        .rx_axis_tuser(rx_axis_tuser),
        .rx_clk(rx_clk),
        .rx_fifo_axis_tvalid(rx_fifo_axis_tvalid),
        .s_axis({s_axis[8],rx_fifo_axis_tlast,s_axis[7:0]}),
        .s_frame_reg(s_frame_reg),
        .s_rst_sync2_reg_reg_0(s_rst_sync2_reg_reg),
        .s_rst_sync3_reg_reg_0(s_rst_sync3_reg),
        .wr_ptr_gray_reg(wr_ptr_gray_reg),
        .\wr_ptr_sync_gray_reg_reg[0]_0 (\wr_ptr_sync_gray_reg_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_gmii_rx
   (gmii_rx_dv_d0,
    gmii_rx_dv_d1_reg_0,
    m_axis_tlast_reg_reg_0,
    s_axis,
    m_axis_tvalid_reg_reg_0,
    \rx_rst_reg_reg[0] ,
    m_axis_tlast_reg_reg_1,
    WEA,
    drop_frame_reg,
    Q,
    \FSM_onehot_state_reg_reg[0]_0 ,
    CLK,
    gmii_rx_dv_d00,
    gmii_rx_dv_d20,
    mii_locked_reg_0,
    \gmii_rxd_d0_reg[7]_0 ,
    drop_frame_reg_reg,
    overflow_reg1__0,
    s_rst_sync3_reg,
    s_frame_reg);
  output gmii_rx_dv_d0;
  output gmii_rx_dv_d1_reg_0;
  output m_axis_tlast_reg_reg_0;
  output [8:0]s_axis;
  output m_axis_tvalid_reg_reg_0;
  output \rx_rst_reg_reg[0] ;
  output m_axis_tlast_reg_reg_1;
  output [0:0]WEA;
  output drop_frame_reg;
  output [0:0]Q;
  input [0:0]\FSM_onehot_state_reg_reg[0]_0 ;
  input CLK;
  input gmii_rx_dv_d00;
  input gmii_rx_dv_d20;
  input mii_locked_reg_0;
  input [5:0]\gmii_rxd_d0_reg[7]_0 ;
  input drop_frame_reg_reg;
  input overflow_reg1__0;
  input s_rst_sync3_reg;
  input s_frame_reg;

  wire CLK;
  wire \FSM_onehot_state_reg[1]_i_3_n_0 ;
  wire [0:0]\FSM_onehot_state_reg_reg[0]_0 ;
  wire [0:0]Q;
  wire [0:0]WEA;
  wire [31:0]crc_next;
  wire [31:0]crc_state;
  wire drop_frame_reg;
  wire drop_frame_reg_reg;
  wire eth_crc_8_n_32;
  wire eth_crc_8_n_33;
  wire eth_crc_8_n_34;
  wire eth_crc_8_n_35;
  wire gmii_rx_dv_d0;
  wire gmii_rx_dv_d00;
  wire gmii_rx_dv_d0_i_1_n_0;
  wire gmii_rx_dv_d1_reg_0;
  wire gmii_rx_dv_d2;
  wire gmii_rx_dv_d20;
  wire gmii_rx_dv_d3;
  wire gmii_rx_dv_d30;
  wire gmii_rx_dv_d4;
  wire gmii_rx_dv_d40;
  wire gmii_rx_er_d0;
  wire gmii_rx_er_d01_out;
  wire gmii_rx_er_d1;
  wire gmii_rx_er_d2;
  wire gmii_rx_er_d3;
  wire gmii_rx_er_d4_reg_n_0;
  wire [3:0]gmii_rxd_d0;
  wire [5:0]\gmii_rxd_d0_reg[7]_0 ;
  wire [7:0]gmii_rxd_d1;
  wire [7:0]gmii_rxd_d2;
  wire [7:0]gmii_rxd_d3;
  wire \gmii_rxd_d4_reg_n_0_[0] ;
  wire \gmii_rxd_d4_reg_n_0_[1] ;
  wire \gmii_rxd_d4_reg_n_0_[2] ;
  wire \gmii_rxd_d4_reg_n_0_[3] ;
  wire \gmii_rxd_d4_reg_n_0_[4] ;
  wire \gmii_rxd_d4_reg_n_0_[5] ;
  wire \gmii_rxd_d4_reg_n_0_[6] ;
  wire \gmii_rxd_d4_reg_n_0_[7] ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire \m_axis_tdata_reg[0]_i_1_n_0 ;
  wire \m_axis_tdata_reg[1]_i_1_n_0 ;
  wire \m_axis_tdata_reg[2]_i_1_n_0 ;
  wire \m_axis_tdata_reg[3]_i_1_n_0 ;
  wire \m_axis_tdata_reg[4]_i_1_n_0 ;
  wire \m_axis_tdata_reg[5]_i_1_n_0 ;
  wire \m_axis_tdata_reg[6]_i_1_n_0 ;
  wire \m_axis_tdata_reg[7]_i_2_n_0 ;
  wire m_axis_tlast_next;
  wire m_axis_tlast_reg_reg_0;
  wire m_axis_tlast_reg_reg_1;
  wire m_axis_tuser_next1;
  wire \m_axis_tuser_next1_inferred__0/i__carry__0_n_0 ;
  wire \m_axis_tuser_next1_inferred__0/i__carry__0_n_1 ;
  wire \m_axis_tuser_next1_inferred__0/i__carry__0_n_2 ;
  wire \m_axis_tuser_next1_inferred__0/i__carry__0_n_3 ;
  wire \m_axis_tuser_next1_inferred__0/i__carry__1_n_2 ;
  wire \m_axis_tuser_next1_inferred__0/i__carry__1_n_3 ;
  wire \m_axis_tuser_next1_inferred__0/i__carry_n_0 ;
  wire \m_axis_tuser_next1_inferred__0/i__carry_n_1 ;
  wire \m_axis_tuser_next1_inferred__0/i__carry_n_2 ;
  wire \m_axis_tuser_next1_inferred__0/i__carry_n_3 ;
  wire m_axis_tuser_next4_out;
  wire m_axis_tuser_reg_i_2_n_0;
  wire m_axis_tvalid_reg_i_1_n_0;
  wire m_axis_tvalid_reg_reg_0;
  wire mii_locked_i_1_n_0;
  wire mii_locked_reg_0;
  wire mii_locked_reg_n_0;
  wire mii_odd;
  wire mii_odd_i_1_n_0;
  wire overflow_reg1__0;
  wire [2:0]p_0_in;
  wire reset_crc;
  wire reset_crc7_out;
  wire \rx_rst_reg_reg[0] ;
  wire [8:0]s_axis;
  wire s_frame_reg;
  wire s_rst_sync3_reg;
  wire state_next0__8;
  wire state_next116_out__0;
  wire state_next2;
  wire [2:0]state_next__0;
  wire [2:2]state_reg;
  wire update_crc;
  wire [3:0]\NLW_m_axis_tuser_next1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_m_axis_tuser_next1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_m_axis_tuser_next1_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_m_axis_tuser_next1_inferred__0/i__carry__1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h2232FFFF22322232)) 
    \FSM_onehot_state_reg[0]_i_1 
       (.I0(state_reg),
        .I1(\gmii_rxd_d0_reg[7]_0 [1]),
        .I2(update_crc),
        .I3(state_next116_out__0),
        .I4(state_next0__8),
        .I5(reset_crc),
        .O(state_next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state_reg[0]_i_2 
       (.I0(gmii_rx_er_d4_reg_n_0),
        .I1(gmii_rx_dv_d4),
        .O(state_next116_out__0));
  LUT6 #(
    .INIT(64'hFFFF700070007000)) 
    \FSM_onehot_state_reg[1]_i_1 
       (.I0(gmii_rx_dv_d4),
        .I1(gmii_rx_er_d4_reg_n_0),
        .I2(\gmii_rxd_d0_reg[7]_0 [1]),
        .I3(update_crc),
        .I4(reset_crc),
        .I5(state_next0__8),
        .O(state_next__0[1]));
  LUT5 #(
    .INIT(32'h00000800)) 
    \FSM_onehot_state_reg[1]_i_2 
       (.I0(\FSM_onehot_state_reg[1]_i_3_n_0 ),
        .I1(\gmii_rxd_d4_reg_n_0_[2] ),
        .I2(\gmii_rxd_d4_reg_n_0_[3] ),
        .I3(\gmii_rxd_d4_reg_n_0_[0] ),
        .I4(\gmii_rxd_d4_reg_n_0_[1] ),
        .O(state_next0__8));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \FSM_onehot_state_reg[1]_i_3 
       (.I0(\gmii_rxd_d4_reg_n_0_[4] ),
        .I1(\gmii_rxd_d4_reg_n_0_[5] ),
        .I2(\gmii_rxd_d4_reg_n_0_[6] ),
        .I3(\gmii_rxd_d4_reg_n_0_[7] ),
        .I4(gmii_rx_er_d4_reg_n_0),
        .I5(gmii_rx_dv_d4),
        .O(\FSM_onehot_state_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hF8888888)) 
    \FSM_onehot_state_reg[2]_i_1 
       (.I0(\gmii_rxd_d0_reg[7]_0 [1]),
        .I1(state_reg),
        .I2(gmii_rx_er_d4_reg_n_0),
        .I3(gmii_rx_dv_d4),
        .I4(update_crc),
        .O(state_next__0[2]));
  (* FSM_ENCODED_STATES = "STATE_PAYLOAD:010,STATE_WAIT_LAST:100,STATE_IDLE:001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg_reg[0] 
       (.C(CLK),
        .CE(mii_odd),
        .D(state_next__0[0]),
        .Q(reset_crc),
        .S(\FSM_onehot_state_reg_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "STATE_PAYLOAD:010,STATE_WAIT_LAST:100,STATE_IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[1] 
       (.C(CLK),
        .CE(mii_odd),
        .D(state_next__0[1]),
        .Q(update_crc),
        .R(\FSM_onehot_state_reg_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "STATE_PAYLOAD:010,STATE_WAIT_LAST:100,STATE_IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[2] 
       (.C(CLK),
        .CE(mii_odd),
        .D(state_next__0[2]),
        .Q(state_reg),
        .R(\FSM_onehot_state_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \crc_state[31]_i_1 
       (.I0(mii_odd),
        .I1(reset_crc),
        .O(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[0] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[0]),
        .Q(crc_state[0]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[10] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[10]),
        .Q(crc_state[10]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[11] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[11]),
        .Q(crc_state[11]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[12] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[12]),
        .Q(crc_state[12]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[13] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[13]),
        .Q(crc_state[13]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[14] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[14]),
        .Q(crc_state[14]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[15] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[15]),
        .Q(crc_state[15]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[16] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[16]),
        .Q(crc_state[16]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[17] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[17]),
        .Q(crc_state[17]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[18] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[18]),
        .Q(crc_state[18]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[19] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[19]),
        .Q(crc_state[19]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[1] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[1]),
        .Q(crc_state[1]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[20] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[20]),
        .Q(crc_state[20]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[21] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[21]),
        .Q(crc_state[21]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[22] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[22]),
        .Q(crc_state[22]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[23] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[23]),
        .Q(crc_state[23]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[24] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[24]),
        .Q(crc_state[24]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[25] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[25]),
        .Q(crc_state[25]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[26] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[26]),
        .Q(crc_state[26]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[27] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[27]),
        .Q(crc_state[27]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[28] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[28]),
        .Q(crc_state[28]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[29] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[29]),
        .Q(crc_state[29]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[2] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[2]),
        .Q(crc_state[2]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[30] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[30]),
        .Q(crc_state[30]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[31] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[31]),
        .Q(crc_state[31]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[3] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[3]),
        .Q(crc_state[3]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[4] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[4]),
        .Q(crc_state[4]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[5] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[5]),
        .Q(crc_state[5]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[6] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[6]),
        .Q(crc_state[6]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[7] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[7]),
        .Q(crc_state[7]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[8] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[8]),
        .Q(crc_state[8]),
        .S(reset_crc7_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[9] 
       (.C(CLK),
        .CE(m_axis_tvalid_reg_i_1_n_0),
        .D(crc_next[9]),
        .Q(crc_state[9]),
        .S(reset_crc7_out));
  LUT6 #(
    .INIT(64'h4444044444444444)) 
    drop_frame_reg_i_1__0
       (.I0(\FSM_onehot_state_reg_reg[0]_0 ),
        .I1(drop_frame_reg_reg),
        .I2(overflow_reg1__0),
        .I3(m_axis_tlast_reg_reg_0),
        .I4(s_rst_sync3_reg),
        .I5(m_axis_tvalid_reg_reg_0),
        .O(\rx_rst_reg_reg[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfsr_0 eth_crc_8
       (.D(crc_next),
        .Q(crc_state),
        .\crc_state_reg[0] (eth_crc_8_n_35),
        .\crc_state_reg[1] (eth_crc_8_n_32),
        .\crc_state_reg[31] ({\gmii_rxd_d4_reg_n_0_[7] ,\gmii_rxd_d4_reg_n_0_[6] ,\gmii_rxd_d4_reg_n_0_[5] ,\gmii_rxd_d4_reg_n_0_[4] ,\gmii_rxd_d4_reg_n_0_[3] ,\gmii_rxd_d4_reg_n_0_[2] ,\gmii_rxd_d4_reg_n_0_[1] ,\gmii_rxd_d4_reg_n_0_[0] }),
        .\crc_state_reg[6] (eth_crc_8_n_34),
        .\gmii_rxd_d4_reg[7] (eth_crc_8_n_33));
  LUT3 #(
    .INIT(8'hB0)) 
    gmii_rx_dv_d0_i_1
       (.I0(gmii_rx_dv_d0),
        .I1(mii_odd),
        .I2(\gmii_rxd_d0_reg[7]_0 [1]),
        .O(gmii_rx_dv_d0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_dv_d0_reg
       (.C(CLK),
        .CE(1'b1),
        .D(gmii_rx_dv_d0_i_1_n_0),
        .Q(gmii_rx_dv_d0),
        .R(\FSM_onehot_state_reg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_dv_d1_reg
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rx_dv_d00),
        .Q(gmii_rx_dv_d1_reg_0),
        .R(\FSM_onehot_state_reg_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_dv_d2_reg
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rx_dv_d20),
        .Q(gmii_rx_dv_d2),
        .R(\FSM_onehot_state_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gmii_rx_dv_d3_i_1
       (.I0(gmii_rx_dv_d2),
        .I1(\gmii_rxd_d0_reg[7]_0 [1]),
        .O(gmii_rx_dv_d30));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_dv_d3_reg
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rx_dv_d30),
        .Q(gmii_rx_dv_d3),
        .R(\FSM_onehot_state_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gmii_rx_dv_d4_i_1
       (.I0(gmii_rx_dv_d3),
        .I1(\gmii_rxd_d0_reg[7]_0 [1]),
        .O(gmii_rx_dv_d40));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_dv_d4_reg
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rx_dv_d40),
        .Q(gmii_rx_dv_d4),
        .R(\FSM_onehot_state_reg_reg[0]_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    gmii_rx_er_d0_i_1
       (.I0(gmii_rx_er_d0),
        .I1(mii_odd),
        .I2(\gmii_rxd_d0_reg[7]_0 [0]),
        .O(gmii_rx_er_d01_out));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_er_d0_reg
       (.C(CLK),
        .CE(1'b1),
        .D(gmii_rx_er_d01_out),
        .Q(gmii_rx_er_d0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_er_d1_reg
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rx_er_d0),
        .Q(gmii_rx_er_d1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_er_d2_reg
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rx_er_d1),
        .Q(gmii_rx_er_d2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_er_d3_reg
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rx_er_d2),
        .Q(gmii_rx_er_d3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    gmii_rx_er_d4_reg
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rx_er_d3),
        .Q(gmii_rx_er_d4_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d0_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(gmii_rxd_d0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d0_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(gmii_rxd_d0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d0_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(gmii_rxd_d0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d0_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(Q),
        .Q(gmii_rxd_d0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d0_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gmii_rxd_d0_reg[7]_0 [2]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d0_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gmii_rxd_d0_reg[7]_0 [3]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d0_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gmii_rxd_d0_reg[7]_0 [4]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d0_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\gmii_rxd_d0_reg[7]_0 [5]),
        .Q(Q),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d1_reg[0] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d0[0]),
        .Q(gmii_rxd_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d1_reg[1] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d0[1]),
        .Q(gmii_rxd_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d1_reg[2] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d0[2]),
        .Q(gmii_rxd_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d1_reg[3] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d0[3]),
        .Q(gmii_rxd_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d1_reg[4] 
       (.C(CLK),
        .CE(mii_odd),
        .D(p_0_in[0]),
        .Q(gmii_rxd_d1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d1_reg[5] 
       (.C(CLK),
        .CE(mii_odd),
        .D(p_0_in[1]),
        .Q(gmii_rxd_d1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d1_reg[6] 
       (.C(CLK),
        .CE(mii_odd),
        .D(p_0_in[2]),
        .Q(gmii_rxd_d1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d1_reg[7] 
       (.C(CLK),
        .CE(mii_odd),
        .D(Q),
        .Q(gmii_rxd_d1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d2_reg[0] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d1[0]),
        .Q(gmii_rxd_d2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d2_reg[1] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d1[1]),
        .Q(gmii_rxd_d2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d2_reg[2] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d1[2]),
        .Q(gmii_rxd_d2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d2_reg[3] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d1[3]),
        .Q(gmii_rxd_d2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d2_reg[4] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d1[4]),
        .Q(gmii_rxd_d2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d2_reg[5] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d1[5]),
        .Q(gmii_rxd_d2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d2_reg[6] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d1[6]),
        .Q(gmii_rxd_d2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d2_reg[7] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d1[7]),
        .Q(gmii_rxd_d2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d3_reg[0] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d2[0]),
        .Q(gmii_rxd_d3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d3_reg[1] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d2[1]),
        .Q(gmii_rxd_d3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d3_reg[2] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d2[2]),
        .Q(gmii_rxd_d3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d3_reg[3] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d2[3]),
        .Q(gmii_rxd_d3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d3_reg[4] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d2[4]),
        .Q(gmii_rxd_d3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d3_reg[5] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d2[5]),
        .Q(gmii_rxd_d3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d3_reg[6] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d2[6]),
        .Q(gmii_rxd_d3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d3_reg[7] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d2[7]),
        .Q(gmii_rxd_d3[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d4_reg[0] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d3[0]),
        .Q(\gmii_rxd_d4_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d4_reg[1] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d3[1]),
        .Q(\gmii_rxd_d4_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d4_reg[2] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d3[2]),
        .Q(\gmii_rxd_d4_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d4_reg[3] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d3[3]),
        .Q(\gmii_rxd_d4_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d4_reg[4] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d3[4]),
        .Q(\gmii_rxd_d4_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d4_reg[5] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d3[5]),
        .Q(\gmii_rxd_d4_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d4_reg[6] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d3[6]),
        .Q(\gmii_rxd_d4_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_rxd_d4_reg[7] 
       (.C(CLK),
        .CE(mii_odd),
        .D(gmii_rxd_d3[7]),
        .Q(\gmii_rxd_d4_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    i__carry__0_i_1
       (.I0(crc_next[22]),
        .I1(gmii_rxd_d1[6]),
        .I2(crc_next[21]),
        .I3(gmii_rxd_d1[5]),
        .I4(gmii_rxd_d1[7]),
        .I5(crc_next[23]),
        .O(i__carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    i__carry__0_i_2
       (.I0(crc_next[19]),
        .I1(gmii_rxd_d1[3]),
        .I2(crc_next[18]),
        .I3(gmii_rxd_d1[2]),
        .I4(gmii_rxd_d1[4]),
        .I5(crc_next[20]),
        .O(i__carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    i__carry__0_i_3
       (.I0(crc_next[16]),
        .I1(gmii_rxd_d1[0]),
        .I2(crc_next[15]),
        .I3(gmii_rxd_d2[7]),
        .I4(gmii_rxd_d1[1]),
        .I5(crc_next[17]),
        .O(i__carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    i__carry__0_i_4
       (.I0(crc_next[13]),
        .I1(gmii_rxd_d2[5]),
        .I2(crc_next[12]),
        .I3(gmii_rxd_d2[4]),
        .I4(gmii_rxd_d2[6]),
        .I5(crc_next[14]),
        .O(i__carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h8421481212482184)) 
    i__carry__1_i_1
       (.I0(eth_crc_8_n_35),
        .I1(eth_crc_8_n_32),
        .I2(eth_crc_8_n_34),
        .I3(eth_crc_8_n_33),
        .I4(p_0_in[2]),
        .I5(Q),
        .O(i__carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    i__carry__1_i_2
       (.I0(crc_next[28]),
        .I1(p_0_in[0]),
        .I2(crc_next[27]),
        .I3(gmii_rxd_d0[3]),
        .I4(p_0_in[1]),
        .I5(crc_next[29]),
        .O(i__carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    i__carry__1_i_3
       (.I0(crc_next[25]),
        .I1(gmii_rxd_d0[1]),
        .I2(crc_next[24]),
        .I3(gmii_rxd_d0[0]),
        .I4(gmii_rxd_d0[2]),
        .I5(crc_next[26]),
        .O(i__carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    i__carry_i_1
       (.I0(crc_next[10]),
        .I1(gmii_rxd_d2[2]),
        .I2(crc_next[9]),
        .I3(gmii_rxd_d2[1]),
        .I4(gmii_rxd_d2[3]),
        .I5(crc_next[11]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    i__carry_i_2
       (.I0(crc_next[7]),
        .I1(gmii_rxd_d3[7]),
        .I2(crc_next[6]),
        .I3(gmii_rxd_d3[6]),
        .I4(gmii_rxd_d2[0]),
        .I5(crc_next[8]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    i__carry_i_3
       (.I0(crc_next[4]),
        .I1(gmii_rxd_d3[4]),
        .I2(crc_next[3]),
        .I3(gmii_rxd_d3[3]),
        .I4(gmii_rxd_d3[5]),
        .I5(crc_next[5]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000066006600000)) 
    i__carry_i_4
       (.I0(crc_next[1]),
        .I1(gmii_rxd_d3[1]),
        .I2(crc_next[0]),
        .I3(gmii_rxd_d3[0]),
        .I4(gmii_rxd_d3[2]),
        .I5(crc_next[2]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata_reg[0]_i_1 
       (.I0(update_crc),
        .I1(\gmii_rxd_d4_reg_n_0_[0] ),
        .O(\m_axis_tdata_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata_reg[1]_i_1 
       (.I0(update_crc),
        .I1(\gmii_rxd_d4_reg_n_0_[1] ),
        .O(\m_axis_tdata_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata_reg[2]_i_1 
       (.I0(update_crc),
        .I1(\gmii_rxd_d4_reg_n_0_[2] ),
        .O(\m_axis_tdata_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata_reg[3]_i_1 
       (.I0(update_crc),
        .I1(\gmii_rxd_d4_reg_n_0_[3] ),
        .O(\m_axis_tdata_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata_reg[4]_i_1 
       (.I0(update_crc),
        .I1(\gmii_rxd_d4_reg_n_0_[4] ),
        .O(\m_axis_tdata_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata_reg[5]_i_1 
       (.I0(update_crc),
        .I1(\gmii_rxd_d4_reg_n_0_[5] ),
        .O(\m_axis_tdata_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata_reg[6]_i_1 
       (.I0(update_crc),
        .I1(\gmii_rxd_d4_reg_n_0_[6] ),
        .O(\m_axis_tdata_reg[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata_reg[7]_i_1 
       (.I0(mii_odd),
        .O(state_next2));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata_reg[7]_i_2 
       (.I0(update_crc),
        .I1(\gmii_rxd_d4_reg_n_0_[7] ),
        .O(\m_axis_tdata_reg[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_axis_tdata_reg[0]_i_1_n_0 ),
        .Q(s_axis[0]),
        .R(state_next2));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_axis_tdata_reg[1]_i_1_n_0 ),
        .Q(s_axis[1]),
        .R(state_next2));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_axis_tdata_reg[2]_i_1_n_0 ),
        .Q(s_axis[2]),
        .R(state_next2));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_axis_tdata_reg[3]_i_1_n_0 ),
        .Q(s_axis[3]),
        .R(state_next2));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_axis_tdata_reg[4]_i_1_n_0 ),
        .Q(s_axis[4]),
        .R(state_next2));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_axis_tdata_reg[5]_i_1_n_0 ),
        .Q(s_axis[5]),
        .R(state_next2));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_axis_tdata_reg[6]_i_1_n_0 ),
        .Q(s_axis[6]),
        .R(state_next2));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .Q(s_axis[7]),
        .R(state_next2));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hD500)) 
    m_axis_tlast_reg_i_1
       (.I0(\gmii_rxd_d0_reg[7]_0 [1]),
        .I1(gmii_rx_er_d4_reg_n_0),
        .I2(gmii_rx_dv_d4),
        .I3(update_crc),
        .O(m_axis_tlast_next));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_tlast_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(m_axis_tlast_next),
        .Q(m_axis_tlast_reg_reg_0),
        .R(state_next2));
  CARRY4 \m_axis_tuser_next1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\m_axis_tuser_next1_inferred__0/i__carry_n_0 ,\m_axis_tuser_next1_inferred__0/i__carry_n_1 ,\m_axis_tuser_next1_inferred__0/i__carry_n_2 ,\m_axis_tuser_next1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_m_axis_tuser_next1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \m_axis_tuser_next1_inferred__0/i__carry__0 
       (.CI(\m_axis_tuser_next1_inferred__0/i__carry_n_0 ),
        .CO({\m_axis_tuser_next1_inferred__0/i__carry__0_n_0 ,\m_axis_tuser_next1_inferred__0/i__carry__0_n_1 ,\m_axis_tuser_next1_inferred__0/i__carry__0_n_2 ,\m_axis_tuser_next1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_m_axis_tuser_next1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \m_axis_tuser_next1_inferred__0/i__carry__1 
       (.CI(\m_axis_tuser_next1_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_m_axis_tuser_next1_inferred__0/i__carry__1_CO_UNCONNECTED [3],m_axis_tuser_next1,\m_axis_tuser_next1_inferred__0/i__carry__1_n_2 ,\m_axis_tuser_next1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_m_axis_tuser_next1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  LUT5 #(
    .INIT(32'h88888000)) 
    m_axis_tuser_reg_i_1
       (.I0(mii_odd),
        .I1(update_crc),
        .I2(gmii_rx_er_d4_reg_n_0),
        .I3(gmii_rx_dv_d4),
        .I4(m_axis_tuser_reg_i_2_n_0),
        .O(m_axis_tuser_next4_out));
  LUT6 #(
    .INIT(64'h00000000FFFEFFFF)) 
    m_axis_tuser_reg_i_2
       (.I0(gmii_rx_er_d2),
        .I1(gmii_rx_er_d1),
        .I2(gmii_rx_er_d3),
        .I3(gmii_rx_er_d0),
        .I4(m_axis_tuser_next1),
        .I5(\gmii_rxd_d0_reg[7]_0 [1]),
        .O(m_axis_tuser_reg_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_tuser_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(m_axis_tuser_next4_out),
        .Q(s_axis[8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tvalid_reg_i_1
       (.I0(mii_odd),
        .I1(update_crc),
        .O(m_axis_tvalid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_tvalid_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(m_axis_tvalid_reg_i_1_n_0),
        .Q(m_axis_tvalid_reg_reg_0),
        .R(\FSM_onehot_state_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    mem_reg_0_i_4__0
       (.I0(m_axis_tvalid_reg_reg_0),
        .I1(s_rst_sync3_reg),
        .O(WEA));
  LUT6 #(
    .INIT(64'hFFFF000000800080)) 
    mii_locked_i_1
       (.I0(mii_locked_reg_0),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(\gmii_rxd_d0_reg[7]_0 [1]),
        .I5(mii_locked_reg_n_0),
        .O(mii_locked_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mii_locked_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mii_locked_i_1_n_0),
        .Q(mii_locked_reg_n_0),
        .R(\FSM_onehot_state_reg_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00000080FFFFFFFF)) 
    mii_odd_i_1
       (.I0(mii_locked_reg_0),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .I4(mii_locked_reg_n_0),
        .I5(mii_odd),
        .O(mii_odd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mii_odd_reg
       (.C(CLK),
        .CE(1'b1),
        .D(mii_odd_i_1_n_0),
        .Q(mii_odd),
        .R(\FSM_onehot_state_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF704)) 
    s_frame_reg_i_1__0
       (.I0(m_axis_tlast_reg_reg_0),
        .I1(m_axis_tvalid_reg_reg_0),
        .I2(s_rst_sync3_reg),
        .I3(s_frame_reg),
        .O(drop_frame_reg));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \wr_ptr_sync_gray_reg[12]_i_4__0 
       (.I0(m_axis_tlast_reg_reg_0),
        .I1(s_rst_sync3_reg),
        .I2(m_axis_tvalid_reg_reg_0),
        .O(m_axis_tlast_reg_reg_1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_gmii_tx
   (gmii_tx_en_reg,
    s_axis_tready_reg_reg_0,
    \FSM_onehot_state_reg_reg[7]_0 ,
    s_axis_tready_reg_reg_1,
    \gmii_txd_reg_reg[3]_0 ,
    Q,
    \FSM_onehot_state_reg_reg[0]_0 ,
    tx_fifo_axis_tvalid,
    \FSM_onehot_state_reg_reg[0]_1 ,
    \FSM_onehot_state_reg_reg[7]_1 ,
    \FSM_onehot_state_reg_reg[7]_2 ,
    m_terminate_frame_reg,
    \m_axis_pipe_reg_reg[0]_0 ,
    D);
  output gmii_tx_en_reg;
  output s_axis_tready_reg_reg_0;
  output [2:0]\FSM_onehot_state_reg_reg[7]_0 ;
  output s_axis_tready_reg_reg_1;
  output [3:0]\gmii_txd_reg_reg[3]_0 ;
  input [0:0]Q;
  input \FSM_onehot_state_reg_reg[0]_0 ;
  input tx_fifo_axis_tvalid;
  input \FSM_onehot_state_reg_reg[0]_1 ;
  input \FSM_onehot_state_reg_reg[7]_1 ;
  input \FSM_onehot_state_reg_reg[7]_2 ;
  input m_terminate_frame_reg;
  input [8:0]\m_axis_pipe_reg_reg[0]_0 ;
  input [1:0]D;

  wire [1:0]D;
  wire \FSM_onehot_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_onehot_state_reg[0]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_onehot_state_reg[1]_i_2__0_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_1__0_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[4]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[5]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[5]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[5]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[7]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[7]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[7]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_reg[0]_0 ;
  wire \FSM_onehot_state_reg_reg[0]_1 ;
  wire [2:0]\FSM_onehot_state_reg_reg[7]_0 ;
  wire \FSM_onehot_state_reg_reg[7]_1 ;
  wire \FSM_onehot_state_reg_reg[7]_2 ;
  wire \FSM_onehot_state_reg_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_reg_n_0_[5] ;
  wire [0:0]Q;
  wire [31:0]crc_next;
  wire [31:0]crc_state;
  wire \crc_state[31]_i_1__0_n_0 ;
  wire [5:0]frame_min_count_reg;
  wire \frame_min_count_reg[0]_i_1_n_0 ;
  wire \frame_min_count_reg[1]_i_1_n_0 ;
  wire \frame_min_count_reg[2]_i_1_n_0 ;
  wire \frame_min_count_reg[3]_i_1_n_0 ;
  wire \frame_min_count_reg[4]_i_1_n_0 ;
  wire \frame_min_count_reg[4]_i_2_n_0 ;
  wire \frame_min_count_reg[4]_i_3_n_0 ;
  wire \frame_min_count_reg[5]_i_1_n_0 ;
  wire \frame_min_count_reg[5]_i_2_n_0 ;
  wire \frame_min_count_reg[5]_i_3_n_0 ;
  wire [7:0]frame_ptr_reg;
  wire \frame_ptr_reg[0]_i_1_n_0 ;
  wire \frame_ptr_reg[1]_i_1_n_0 ;
  wire \frame_ptr_reg[2]_i_1_n_0 ;
  wire \frame_ptr_reg[3]_i_1_n_0 ;
  wire \frame_ptr_reg[4]_i_1_n_0 ;
  wire \frame_ptr_reg[4]_i_2_n_0 ;
  wire \frame_ptr_reg[5]_i_1_n_0 ;
  wire \frame_ptr_reg[5]_i_2_n_0 ;
  wire \frame_ptr_reg[6]_i_1_n_0 ;
  wire \frame_ptr_reg[6]_i_2_n_0 ;
  wire \frame_ptr_reg[7]_i_1_n_0 ;
  wire \frame_ptr_reg[7]_i_2_n_0 ;
  wire \frame_ptr_reg[7]_i_3_n_0 ;
  wire \frame_ptr_reg[7]_i_4_n_0 ;
  wire \frame_ptr_reg[7]_i_5_n_0 ;
  wire \frame_ptr_reg[7]_i_6_n_0 ;
  wire \frame_ptr_reg[7]_i_7_n_0 ;
  wire gmii_tx_en_next;
  wire gmii_tx_en_reg;
  wire [7:4]gmii_txd_next;
  wire \gmii_txd_reg[0]_i_1_n_0 ;
  wire \gmii_txd_reg[0]_i_2_n_0 ;
  wire \gmii_txd_reg[0]_i_3_n_0 ;
  wire \gmii_txd_reg[1]_i_1_n_0 ;
  wire \gmii_txd_reg[1]_i_2_n_0 ;
  wire \gmii_txd_reg[2]_i_1_n_0 ;
  wire \gmii_txd_reg[2]_i_2_n_0 ;
  wire \gmii_txd_reg[2]_i_3_n_0 ;
  wire \gmii_txd_reg[3]_i_1_n_0 ;
  wire \gmii_txd_reg[3]_i_2_n_0 ;
  wire [3:0]\gmii_txd_reg_reg[3]_0 ;
  wire [8:0]\m_axis_pipe_reg_reg[0]_0 ;
  wire m_terminate_frame_reg;
  wire [3:0]mii_msn_reg;
  wire \mii_msn_reg[0]_i_2_n_0 ;
  wire \mii_msn_reg[1]_i_2_n_0 ;
  wire \mii_msn_reg[2]_i_2_n_0 ;
  wire \mii_msn_reg[2]_i_3_n_0 ;
  wire \mii_msn_reg[3]_i_2_n_0 ;
  wire \mii_msn_reg[3]_i_3_n_0 ;
  wire mii_odd_reg_inv_i_1_n_0;
  wire p_0_in;
  wire s_axis_tready_reg_i_1_n_0;
  wire s_axis_tready_reg_i_2_n_0;
  wire s_axis_tready_reg_i_3_n_0;
  wire s_axis_tready_reg_reg_0;
  wire s_axis_tready_reg_reg_1;
  wire [7:0]s_tdata_reg;
  wire \s_tdata_reg[7]_i_1_n_0 ;
  wire \s_tdata_reg[7]_i_2_n_0 ;
  wire \s_tdata_reg[7]_i_3_n_0 ;
  wire tx_fifo_axis_tvalid;
  wire update_crc1_out;

  LUT6 #(
    .INIT(64'hFFFFF44444444444)) 
    \FSM_onehot_state_reg[0]_i_1__0 
       (.I0(tx_fifo_axis_tvalid),
        .I1(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_reg[7]_0 [1]),
        .I3(\FSM_onehot_state_reg_reg[0]_1 ),
        .I4(\FSM_onehot_state_reg_reg[7]_0 [2]),
        .I5(\FSM_onehot_state_reg[0]_i_3_n_0 ),
        .O(\FSM_onehot_state_reg[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFA888)) 
    \FSM_onehot_state_reg[0]_i_3 
       (.I0(frame_ptr_reg[3]),
        .I1(frame_ptr_reg[2]),
        .I2(frame_ptr_reg[0]),
        .I3(frame_ptr_reg[1]),
        .I4(\FSM_onehot_state_reg[7]_i_4_n_0 ),
        .O(\FSM_onehot_state_reg[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state_reg[1]_i_1__0 
       (.I0(tx_fifo_axis_tvalid),
        .I1(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg[1]_i_2__0_n_0 ),
        .O(\FSM_onehot_state_reg[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8AAAAAAAAAAA)) 
    \FSM_onehot_state_reg[1]_i_2__0 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg[7]_i_4_n_0 ),
        .I2(frame_ptr_reg[1]),
        .I3(frame_ptr_reg[2]),
        .I4(frame_ptr_reg[3]),
        .I5(frame_ptr_reg[0]),
        .O(\FSM_onehot_state_reg[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h444444444444F444)) 
    \FSM_onehot_state_reg[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I1(frame_ptr_reg[0]),
        .I2(tx_fifo_axis_tvalid),
        .I3(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I4(m_terminate_frame_reg),
        .I5(\m_axis_pipe_reg_reg[0]_0 [8]),
        .O(\FSM_onehot_state_reg[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    \FSM_onehot_state_reg[2]_i_2 
       (.I0(frame_ptr_reg[3]),
        .I1(frame_ptr_reg[2]),
        .I2(frame_ptr_reg[1]),
        .I3(\FSM_onehot_state_reg[7]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .O(\FSM_onehot_state_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \FSM_onehot_state_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg[5]_i_2_n_0 ),
        .O(\FSM_onehot_state_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h545454FF54FF54FF)) 
    \FSM_onehot_state_reg[5]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I4(frame_ptr_reg[1]),
        .I5(frame_ptr_reg[0]),
        .O(\FSM_onehot_state_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state_reg[5]_i_2 
       (.I0(frame_min_count_reg[5]),
        .I1(frame_min_count_reg[3]),
        .I2(frame_min_count_reg[1]),
        .I3(frame_min_count_reg[0]),
        .I4(frame_min_count_reg[2]),
        .I5(frame_min_count_reg[4]),
        .O(\FSM_onehot_state_reg[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_state_reg[5]_i_3 
       (.I0(\FSM_onehot_state_reg[7]_i_4_n_0 ),
        .I1(frame_ptr_reg[3]),
        .I2(\FSM_onehot_state_reg_reg_n_0_[5] ),
        .I3(frame_ptr_reg[2]),
        .O(\FSM_onehot_state_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEECEEECEFEFEFEFF)) 
    \FSM_onehot_state_reg[7]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_reg[7]_1 ),
        .I2(\FSM_onehot_state_reg[7]_i_3_n_0 ),
        .I3(frame_ptr_reg[3]),
        .I4(\FSM_onehot_state_reg[7]_i_4_n_0 ),
        .I5(\FSM_onehot_state_reg_reg[7]_2 ),
        .O(\FSM_onehot_state_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \FSM_onehot_state_reg[7]_i_3 
       (.I0(frame_ptr_reg[4]),
        .I1(frame_ptr_reg[5]),
        .I2(frame_ptr_reg[6]),
        .I3(frame_ptr_reg[7]),
        .I4(\frame_ptr_reg[4]_i_2_n_0 ),
        .I5(frame_ptr_reg[2]),
        .O(\FSM_onehot_state_reg[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state_reg[7]_i_4 
       (.I0(frame_ptr_reg[7]),
        .I1(frame_ptr_reg[6]),
        .I2(frame_ptr_reg[5]),
        .I3(frame_ptr_reg[4]),
        .O(\FSM_onehot_state_reg[7]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg_reg[0] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(\FSM_onehot_state_reg[0]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .S(Q));
  (* FSM_ENCODED_STATES = "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[1] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(\FSM_onehot_state_reg[1]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .R(Q));
  (* FSM_ENCODED_STATES = "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[2] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(\FSM_onehot_state_reg[2]_i_1__0_n_0 ),
        .Q(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .R(Q));
  (* FSM_ENCODED_STATES = "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[3] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(D[0]),
        .Q(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .R(Q));
  (* FSM_ENCODED_STATES = "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[4] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(\FSM_onehot_state_reg[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .R(Q));
  (* FSM_ENCODED_STATES = "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[5] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(\FSM_onehot_state_reg[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[5] ),
        .R(Q));
  (* FSM_ENCODED_STATES = "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[6] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(D[1]),
        .Q(\FSM_onehot_state_reg_reg[7]_0 [1]),
        .R(Q));
  (* FSM_ENCODED_STATES = "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[7] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(\FSM_onehot_state_reg[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg[7]_0 [2]),
        .R(Q));
  LUT3 #(
    .INIT(8'hA8)) 
    \crc_state[31]_i_1__0 
       (.I0(p_0_in),
        .I1(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .O(\crc_state[31]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \crc_state[31]_i_2 
       (.I0(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I3(p_0_in),
        .O(update_crc1_out));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[0] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[0]),
        .Q(crc_state[0]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[10] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[10]),
        .Q(crc_state[10]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[11] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[11]),
        .Q(crc_state[11]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[12] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[12]),
        .Q(crc_state[12]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[13] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[13]),
        .Q(crc_state[13]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[14] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[14]),
        .Q(crc_state[14]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[15] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[15]),
        .Q(crc_state[15]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[16] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[16]),
        .Q(crc_state[16]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[17] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[17]),
        .Q(crc_state[17]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[18] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[18]),
        .Q(crc_state[18]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[19] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[19]),
        .Q(crc_state[19]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[1] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[1]),
        .Q(crc_state[1]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[20] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[20]),
        .Q(crc_state[20]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[21] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[21]),
        .Q(crc_state[21]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[22] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[22]),
        .Q(crc_state[22]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[23] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[23]),
        .Q(crc_state[23]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[24] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[24]),
        .Q(crc_state[24]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[25] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[25]),
        .Q(crc_state[25]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[26] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[26]),
        .Q(crc_state[26]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[27] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[27]),
        .Q(crc_state[27]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[28] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[28]),
        .Q(crc_state[28]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[29] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[29]),
        .Q(crc_state[29]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[2] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[2]),
        .Q(crc_state[2]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[30] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[30]),
        .Q(crc_state[30]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[31] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[31]),
        .Q(crc_state[31]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[3] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[3]),
        .Q(crc_state[3]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[4] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[4]),
        .Q(crc_state[4]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[5] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[5]),
        .Q(crc_state[5]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[6] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[6]),
        .Q(crc_state[6]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[7] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[7]),
        .Q(crc_state[7]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[8] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[8]),
        .Q(crc_state[8]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \crc_state_reg[9] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(update_crc1_out),
        .D(crc_next[9]),
        .Q(crc_state[9]),
        .S(\crc_state[31]_i_1__0_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfsr eth_crc_8
       (.D(crc_next),
        .Q(crc_state),
        .s_tdata_reg(s_tdata_reg));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hAAAAFFFE)) 
    \frame_min_count_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I2(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I4(frame_min_count_reg[0]),
        .O(\frame_min_count_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAAAAAAAFFFE)) 
    \frame_min_count_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I2(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I4(frame_min_count_reg[0]),
        .I5(frame_min_count_reg[1]),
        .O(\frame_min_count_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFF000E0000)) 
    \frame_min_count_reg[2]_i_1 
       (.I0(\mii_msn_reg[3]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I2(frame_min_count_reg[1]),
        .I3(frame_min_count_reg[0]),
        .I4(\frame_min_count_reg[5]_i_1_n_0 ),
        .I5(frame_min_count_reg[2]),
        .O(\frame_min_count_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEE00000000E)) 
    \frame_min_count_reg[3]_i_1 
       (.I0(\mii_msn_reg[3]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I2(frame_min_count_reg[2]),
        .I3(frame_min_count_reg[0]),
        .I4(frame_min_count_reg[1]),
        .I5(frame_min_count_reg[3]),
        .O(\frame_min_count_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \frame_min_count_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(\frame_min_count_reg[5]_i_1_n_0 ),
        .O(\frame_min_count_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000002)) 
    \frame_min_count_reg[4]_i_2 
       (.I0(\frame_min_count_reg[4]_i_3_n_0 ),
        .I1(frame_min_count_reg[3]),
        .I2(frame_min_count_reg[1]),
        .I3(frame_min_count_reg[0]),
        .I4(frame_min_count_reg[2]),
        .I5(frame_min_count_reg[4]),
        .O(\frame_min_count_reg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \frame_min_count_reg[4]_i_3 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .O(\frame_min_count_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE0000AAAA0000)) 
    \frame_min_count_reg[5]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I2(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I4(p_0_in),
        .I5(\FSM_onehot_state_reg[5]_i_2_n_0 ),
        .O(\frame_min_count_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFFFEFFFEAAAA)) 
    \frame_min_count_reg[5]_i_2 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I2(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I4(\frame_min_count_reg[5]_i_3_n_0 ),
        .I5(frame_min_count_reg[5]),
        .O(\frame_min_count_reg[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \frame_min_count_reg[5]_i_3 
       (.I0(frame_min_count_reg[4]),
        .I1(frame_min_count_reg[2]),
        .I2(frame_min_count_reg[0]),
        .I3(frame_min_count_reg[1]),
        .I4(frame_min_count_reg[3]),
        .O(\frame_min_count_reg[5]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_min_count_reg_reg[0] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_min_count_reg[5]_i_1_n_0 ),
        .D(\frame_min_count_reg[0]_i_1_n_0 ),
        .Q(frame_min_count_reg[0]),
        .S(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \frame_min_count_reg_reg[1] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_min_count_reg[5]_i_1_n_0 ),
        .D(\frame_min_count_reg[1]_i_1_n_0 ),
        .Q(frame_min_count_reg[1]),
        .S(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_min_count_reg_reg[2] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(1'b1),
        .D(\frame_min_count_reg[2]_i_1_n_0 ),
        .Q(frame_min_count_reg[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \frame_min_count_reg_reg[3] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_min_count_reg[5]_i_1_n_0 ),
        .D(\frame_min_count_reg[3]_i_1_n_0 ),
        .Q(frame_min_count_reg[3]),
        .S(\frame_min_count_reg[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_min_count_reg_reg[4] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_min_count_reg[5]_i_1_n_0 ),
        .D(\frame_min_count_reg[4]_i_2_n_0 ),
        .Q(frame_min_count_reg[4]),
        .S(\frame_min_count_reg[4]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_min_count_reg_reg[5] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_min_count_reg[5]_i_1_n_0 ),
        .D(\frame_min_count_reg[5]_i_2_n_0 ),
        .Q(frame_min_count_reg[5]),
        .S(1'b0));
  LUT6 #(
    .INIT(64'hAAAAFFFFEFFF0000)) 
    \frame_ptr_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I2(\frame_ptr_reg[7]_i_5_n_0 ),
        .I3(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I4(\frame_ptr_reg[7]_i_2_n_0 ),
        .I5(frame_ptr_reg[0]),
        .O(\frame_ptr_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAFBFBAA)) 
    \frame_ptr_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I1(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I2(\frame_ptr_reg[7]_i_6_n_0 ),
        .I3(frame_ptr_reg[1]),
        .I4(frame_ptr_reg[0]),
        .O(\frame_ptr_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hAEEEEAAA)) 
    \frame_ptr_reg[2]_i_1 
       (.I0(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I1(\frame_ptr_reg[7]_i_6_n_0 ),
        .I2(frame_ptr_reg[1]),
        .I3(frame_ptr_reg[0]),
        .I4(frame_ptr_reg[2]),
        .O(\frame_ptr_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0DDDCDDDC0000000)) 
    \frame_ptr_reg[3]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I1(\frame_ptr_reg[7]_i_6_n_0 ),
        .I2(frame_ptr_reg[0]),
        .I3(frame_ptr_reg[1]),
        .I4(frame_ptr_reg[2]),
        .I5(frame_ptr_reg[3]),
        .O(\frame_ptr_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDD0CDDCC00C00000)) 
    \frame_ptr_reg[4]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I1(\frame_ptr_reg[7]_i_6_n_0 ),
        .I2(frame_ptr_reg[2]),
        .I3(\frame_ptr_reg[4]_i_2_n_0 ),
        .I4(frame_ptr_reg[3]),
        .I5(frame_ptr_reg[4]),
        .O(\frame_ptr_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \frame_ptr_reg[4]_i_2 
       (.I0(frame_ptr_reg[1]),
        .I1(frame_ptr_reg[0]),
        .O(\frame_ptr_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0700000000FF07)) 
    \frame_ptr_reg[5]_i_1 
       (.I0(frame_ptr_reg[0]),
        .I1(frame_ptr_reg[1]),
        .I2(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I3(\frame_ptr_reg[7]_i_6_n_0 ),
        .I4(\frame_ptr_reg[5]_i_2_n_0 ),
        .I5(frame_ptr_reg[5]),
        .O(\frame_ptr_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \frame_ptr_reg[5]_i_2 
       (.I0(frame_ptr_reg[3]),
        .I1(frame_ptr_reg[0]),
        .I2(frame_ptr_reg[1]),
        .I3(frame_ptr_reg[2]),
        .I4(frame_ptr_reg[4]),
        .O(\frame_ptr_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF07FF070000)) 
    \frame_ptr_reg[6]_i_1 
       (.I0(frame_ptr_reg[0]),
        .I1(frame_ptr_reg[1]),
        .I2(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I3(\frame_ptr_reg[7]_i_6_n_0 ),
        .I4(\frame_ptr_reg[6]_i_2_n_0 ),
        .I5(frame_ptr_reg[6]),
        .O(\frame_ptr_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \frame_ptr_reg[6]_i_2 
       (.I0(frame_ptr_reg[5]),
        .I1(frame_ptr_reg[4]),
        .I2(frame_ptr_reg[2]),
        .I3(frame_ptr_reg[1]),
        .I4(frame_ptr_reg[0]),
        .I5(frame_ptr_reg[3]),
        .O(\frame_ptr_reg[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \frame_ptr_reg[7]_i_1 
       (.I0(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I1(\frame_ptr_reg[7]_i_2_n_0 ),
        .O(\frame_ptr_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8AAAA)) 
    \frame_ptr_reg[7]_i_2 
       (.I0(p_0_in),
        .I1(\frame_ptr_reg[7]_i_4_n_0 ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I4(\frame_ptr_reg[7]_i_5_n_0 ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[5] ),
        .O(\frame_ptr_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000ABBBABBB0000)) 
    \frame_ptr_reg[7]_i_3 
       (.I0(\frame_ptr_reg[7]_i_6_n_0 ),
        .I1(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I2(frame_ptr_reg[1]),
        .I3(frame_ptr_reg[0]),
        .I4(frame_ptr_reg[7]),
        .I5(\frame_ptr_reg[7]_i_7_n_0 ),
        .O(\frame_ptr_reg[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \frame_ptr_reg[7]_i_4 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg[5]_i_2_n_0 ),
        .O(\frame_ptr_reg[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \frame_ptr_reg[7]_i_5 
       (.I0(\FSM_onehot_state_reg_reg[7]_0 [2]),
        .I1(\FSM_onehot_state_reg_reg[7]_0 [1]),
        .O(\frame_ptr_reg[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \frame_ptr_reg[7]_i_6 
       (.I0(\FSM_onehot_state_reg[1]_i_2__0_n_0 ),
        .I1(\FSM_onehot_state_reg_reg[7]_0 [1]),
        .I2(\FSM_onehot_state_reg_reg[7]_0 [2]),
        .O(\frame_ptr_reg[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \frame_ptr_reg[7]_i_7 
       (.I0(frame_ptr_reg[3]),
        .I1(\frame_ptr_reg[4]_i_2_n_0 ),
        .I2(frame_ptr_reg[2]),
        .I3(frame_ptr_reg[4]),
        .I4(frame_ptr_reg[5]),
        .I5(frame_ptr_reg[6]),
        .O(\frame_ptr_reg[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_ptr_reg_reg[0] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(1'b1),
        .D(\frame_ptr_reg[0]_i_1_n_0 ),
        .Q(frame_ptr_reg[0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \frame_ptr_reg_reg[1] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_ptr_reg[7]_i_2_n_0 ),
        .D(\frame_ptr_reg[1]_i_1_n_0 ),
        .Q(frame_ptr_reg[1]),
        .S(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \frame_ptr_reg_reg[2] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_ptr_reg[7]_i_2_n_0 ),
        .D(\frame_ptr_reg[2]_i_1_n_0 ),
        .Q(frame_ptr_reg[2]),
        .S(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \frame_ptr_reg_reg[3] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_ptr_reg[7]_i_2_n_0 ),
        .D(\frame_ptr_reg[3]_i_1_n_0 ),
        .Q(frame_ptr_reg[3]),
        .S(\frame_ptr_reg[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_ptr_reg_reg[4] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_ptr_reg[7]_i_2_n_0 ),
        .D(\frame_ptr_reg[4]_i_1_n_0 ),
        .Q(frame_ptr_reg[4]),
        .S(\frame_ptr_reg[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_ptr_reg_reg[5] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_ptr_reg[7]_i_2_n_0 ),
        .D(\frame_ptr_reg[5]_i_1_n_0 ),
        .Q(frame_ptr_reg[5]),
        .S(\frame_ptr_reg[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_ptr_reg_reg[6] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_ptr_reg[7]_i_2_n_0 ),
        .D(\frame_ptr_reg[6]_i_1_n_0 ),
        .Q(frame_ptr_reg[6]),
        .S(\frame_ptr_reg[7]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \frame_ptr_reg_reg[7] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\frame_ptr_reg[7]_i_2_n_0 ),
        .D(\frame_ptr_reg[7]_i_3_n_0 ),
        .Q(frame_ptr_reg[7]),
        .S(\frame_ptr_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    gmii_tx_en_reg_i_1
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(tx_fifo_axis_tvalid),
        .I2(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I4(\mii_msn_reg[3]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[5] ),
        .O(gmii_tx_en_next));
  FDRE #(
    .INIT(1'b0)) 
    gmii_tx_en_reg_reg
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(gmii_tx_en_next),
        .Q(gmii_tx_en_reg),
        .R(Q));
  LUT5 #(
    .INIT(32'hAEAEAE00)) 
    \gmii_txd_reg[0]_i_1 
       (.I0(\gmii_txd_reg[0]_i_2_n_0 ),
        .I1(\gmii_txd_reg[0]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I3(mii_msn_reg[0]),
        .I4(p_0_in),
        .O(\gmii_txd_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAFFEAFFEAFF)) 
    \gmii_txd_reg[0]_i_2 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(tx_fifo_axis_tvalid),
        .I2(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I3(p_0_in),
        .I4(\mii_msn_reg[3]_i_3_n_0 ),
        .I5(s_tdata_reg[0]),
        .O(\gmii_txd_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5533000F5533FF0F)) 
    \gmii_txd_reg[0]_i_3 
       (.I0(crc_state[24]),
        .I1(crc_state[16]),
        .I2(crc_state[0]),
        .I3(frame_ptr_reg[0]),
        .I4(frame_ptr_reg[1]),
        .I5(crc_state[8]),
        .O(\gmii_txd_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE222E222E222EEEE)) 
    \gmii_txd_reg[1]_i_1 
       (.I0(mii_msn_reg[1]),
        .I1(p_0_in),
        .I2(\mii_msn_reg[3]_i_3_n_0 ),
        .I3(s_tdata_reg[1]),
        .I4(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I5(\gmii_txd_reg[1]_i_2_n_0 ),
        .O(\gmii_txd_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFF0CCAA00F0CC)) 
    \gmii_txd_reg[1]_i_2 
       (.I0(crc_state[25]),
        .I1(crc_state[1]),
        .I2(crc_state[17]),
        .I3(frame_ptr_reg[1]),
        .I4(frame_ptr_reg[0]),
        .I5(crc_state[9]),
        .O(\gmii_txd_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE0E0E0EE)) 
    \gmii_txd_reg[2]_i_1 
       (.I0(p_0_in),
        .I1(mii_msn_reg[2]),
        .I2(\gmii_txd_reg[2]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I4(\gmii_txd_reg[2]_i_3_n_0 ),
        .O(\gmii_txd_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8FFFFFFFF)) 
    \gmii_txd_reg[2]_i_2 
       (.I0(\mii_msn_reg[3]_i_3_n_0 ),
        .I1(s_tdata_reg[2]),
        .I2(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I3(tx_fifo_axis_tvalid),
        .I4(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I5(p_0_in),
        .O(\gmii_txd_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAF0FFCCAAF000)) 
    \gmii_txd_reg[2]_i_3 
       (.I0(crc_state[18]),
        .I1(crc_state[26]),
        .I2(crc_state[10]),
        .I3(frame_ptr_reg[0]),
        .I4(frame_ptr_reg[1]),
        .I5(crc_state[2]),
        .O(\gmii_txd_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE222E222E222EEEE)) 
    \gmii_txd_reg[3]_i_1 
       (.I0(mii_msn_reg[3]),
        .I1(p_0_in),
        .I2(\mii_msn_reg[3]_i_3_n_0 ),
        .I3(s_tdata_reg[3]),
        .I4(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I5(\gmii_txd_reg[3]_i_2_n_0 ),
        .O(\gmii_txd_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \gmii_txd_reg[3]_i_2 
       (.I0(crc_state[11]),
        .I1(crc_state[3]),
        .I2(crc_state[27]),
        .I3(frame_ptr_reg[0]),
        .I4(frame_ptr_reg[1]),
        .I5(crc_state[19]),
        .O(\gmii_txd_reg[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_reg_reg[0] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(1'b1),
        .D(\gmii_txd_reg[0]_i_1_n_0 ),
        .Q(\gmii_txd_reg_reg[3]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_reg_reg[1] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(1'b1),
        .D(\gmii_txd_reg[1]_i_1_n_0 ),
        .Q(\gmii_txd_reg_reg[3]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_reg_reg[2] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(1'b1),
        .D(\gmii_txd_reg[2]_i_1_n_0 ),
        .Q(\gmii_txd_reg_reg[3]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gmii_txd_reg_reg[3] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(1'b1),
        .D(\gmii_txd_reg[3]_i_1_n_0 ),
        .Q(\gmii_txd_reg_reg[3]_0 [3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hB)) 
    mem_reg_0_i_3
       (.I0(s_axis_tready_reg_reg_0),
        .I1(tx_fifo_axis_tvalid),
        .O(s_axis_tready_reg_reg_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4F444)) 
    \mii_msn_reg[0]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I1(\mii_msn_reg[0]_i_2_n_0 ),
        .I2(s_tdata_reg[4]),
        .I3(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I5(\mii_msn_reg[2]_i_3_n_0 ),
        .O(gmii_txd_next[4]));
  LUT6 #(
    .INIT(64'h00330F55FF330F55)) 
    \mii_msn_reg[0]_i_2 
       (.I0(crc_state[4]),
        .I1(crc_state[12]),
        .I2(crc_state[20]),
        .I3(frame_ptr_reg[1]),
        .I4(frame_ptr_reg[0]),
        .I5(crc_state[28]),
        .O(\mii_msn_reg[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \mii_msn_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I1(\mii_msn_reg[1]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I3(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I4(s_tdata_reg[5]),
        .O(gmii_txd_next[5]));
  LUT6 #(
    .INIT(64'h00550F33FF550F33)) 
    \mii_msn_reg[1]_i_2 
       (.I0(crc_state[13]),
        .I1(crc_state[5]),
        .I2(crc_state[21]),
        .I3(frame_ptr_reg[1]),
        .I4(frame_ptr_reg[0]),
        .I5(crc_state[29]),
        .O(\mii_msn_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4F444)) 
    \mii_msn_reg[2]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I1(\mii_msn_reg[2]_i_2_n_0 ),
        .I2(s_tdata_reg[6]),
        .I3(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I5(\mii_msn_reg[2]_i_3_n_0 ),
        .O(gmii_txd_next[6]));
  LUT6 #(
    .INIT(64'h00550F33FF550F33)) 
    \mii_msn_reg[2]_i_2 
       (.I0(crc_state[14]),
        .I1(crc_state[6]),
        .I2(crc_state[22]),
        .I3(frame_ptr_reg[1]),
        .I4(frame_ptr_reg[0]),
        .I5(crc_state[30]),
        .O(\mii_msn_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \mii_msn_reg[2]_i_3 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(tx_fifo_axis_tvalid),
        .I2(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .O(\mii_msn_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \mii_msn_reg[3]_i_1 
       (.I0(\FSM_onehot_state_reg[5]_i_3_n_0 ),
        .I1(\mii_msn_reg[3]_i_2_n_0 ),
        .I2(frame_ptr_reg[0]),
        .I3(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I4(s_tdata_reg[7]),
        .I5(\mii_msn_reg[3]_i_3_n_0 ),
        .O(gmii_txd_next[7]));
  LUT6 #(
    .INIT(64'h00330F55FF330F55)) 
    \mii_msn_reg[3]_i_2 
       (.I0(crc_state[7]),
        .I1(crc_state[15]),
        .I2(crc_state[23]),
        .I3(frame_ptr_reg[1]),
        .I4(frame_ptr_reg[0]),
        .I5(crc_state[31]),
        .O(\mii_msn_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \mii_msn_reg[3]_i_3 
       (.I0(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .O(\mii_msn_reg[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mii_msn_reg_reg[0] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(gmii_txd_next[4]),
        .Q(mii_msn_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mii_msn_reg_reg[1] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(gmii_txd_next[5]),
        .Q(mii_msn_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mii_msn_reg_reg[2] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(gmii_txd_next[6]),
        .Q(mii_msn_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \mii_msn_reg_reg[3] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(p_0_in),
        .D(gmii_txd_next[7]),
        .Q(mii_msn_reg[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    mii_odd_reg_inv_i_1
       (.I0(p_0_in),
        .I1(\mii_msn_reg[2]_i_3_n_0 ),
        .I2(\frame_min_count_reg[4]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_reg[7]_0 [2]),
        .I5(\FSM_onehot_state_reg_reg[7]_0 [1]),
        .O(mii_odd_reg_inv_i_1_n_0));
  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    mii_odd_reg_reg_inv
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(1'b1),
        .D(mii_odd_reg_inv_i_1_n_0),
        .Q(p_0_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000888A8880)) 
    s_axis_tready_reg_i_1
       (.I0(p_0_in),
        .I1(s_axis_tready_reg_i_2_n_0),
        .I2(\frame_ptr_reg[7]_i_6_n_0 ),
        .I3(s_axis_tready_reg_i_3_n_0),
        .I4(s_axis_tready_reg_reg_0),
        .I5(Q),
        .O(s_axis_tready_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h11FF11F1FFFF11F1)) 
    s_axis_tready_reg_i_2
       (.I0(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I1(frame_ptr_reg[0]),
        .I2(\FSM_onehot_state_reg_reg[7]_0 [1]),
        .I3(\FSM_onehot_state_reg_reg[0]_1 ),
        .I4(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I5(s_axis_tready_reg_reg_0),
        .O(s_axis_tready_reg_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    s_axis_tready_reg_i_3
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I4(\FSM_onehot_state_reg_reg_n_0_[5] ),
        .O(s_axis_tready_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axis_tready_reg_reg
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(1'b1),
        .D(s_axis_tready_reg_i_1_n_0),
        .Q(s_axis_tready_reg_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1111100000000000)) 
    \s_tdata_reg[7]_i_1 
       (.I0(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg[5]_i_2_n_0 ),
        .I3(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I4(\s_tdata_reg[7]_i_3_n_0 ),
        .I5(p_0_in),
        .O(\s_tdata_reg[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hA888)) 
    \s_tdata_reg[7]_i_2 
       (.I0(p_0_in),
        .I1(\s_tdata_reg[7]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[3] ),
        .I3(\FSM_onehot_state_reg[5]_i_2_n_0 ),
        .O(\s_tdata_reg[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF31)) 
    \s_tdata_reg[7]_i_3 
       (.I0(frame_ptr_reg[0]),
        .I1(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I2(s_axis_tready_reg_reg_0),
        .I3(\FSM_onehot_state_reg_reg[7]_0 [0]),
        .I4(\FSM_onehot_state_reg_reg_n_0_[4] ),
        .O(\s_tdata_reg[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tdata_reg_reg[0] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\s_tdata_reg[7]_i_2_n_0 ),
        .D(\m_axis_pipe_reg_reg[0]_0 [0]),
        .Q(s_tdata_reg[0]),
        .R(\s_tdata_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tdata_reg_reg[1] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\s_tdata_reg[7]_i_2_n_0 ),
        .D(\m_axis_pipe_reg_reg[0]_0 [1]),
        .Q(s_tdata_reg[1]),
        .R(\s_tdata_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tdata_reg_reg[2] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\s_tdata_reg[7]_i_2_n_0 ),
        .D(\m_axis_pipe_reg_reg[0]_0 [2]),
        .Q(s_tdata_reg[2]),
        .R(\s_tdata_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tdata_reg_reg[3] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\s_tdata_reg[7]_i_2_n_0 ),
        .D(\m_axis_pipe_reg_reg[0]_0 [3]),
        .Q(s_tdata_reg[3]),
        .R(\s_tdata_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tdata_reg_reg[4] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\s_tdata_reg[7]_i_2_n_0 ),
        .D(\m_axis_pipe_reg_reg[0]_0 [4]),
        .Q(s_tdata_reg[4]),
        .R(\s_tdata_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tdata_reg_reg[5] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\s_tdata_reg[7]_i_2_n_0 ),
        .D(\m_axis_pipe_reg_reg[0]_0 [5]),
        .Q(s_tdata_reg[5]),
        .R(\s_tdata_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tdata_reg_reg[6] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\s_tdata_reg[7]_i_2_n_0 ),
        .D(\m_axis_pipe_reg_reg[0]_0 [6]),
        .Q(s_tdata_reg[6]),
        .R(\s_tdata_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_tdata_reg_reg[7] 
       (.C(\FSM_onehot_state_reg_reg[0]_0 ),
        .CE(\s_tdata_reg[7]_i_2_n_0 ),
        .D(\m_axis_pipe_reg_reg[0]_0 [7]),
        .Q(s_tdata_reg[7]),
        .R(\s_tdata_reg[7]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_mac_1g
   (gmii_tx_en_reg,
    gmii_rx_dv_d0,
    gmii_rx_dv_d1_reg,
    m_axis_tlast_reg_reg,
    s_axis,
    m_axis_tvalid_reg_reg,
    s_axis_tready_reg_reg,
    \FSM_onehot_state_reg_reg[7] ,
    \gmii_rxd_d0_reg[7] ,
    s_axis_tready_reg_reg_0,
    \rx_rst_reg_reg[0] ,
    m_axis_tlast_reg_reg_0,
    WEA,
    drop_frame_reg,
    \gmii_txd_reg_reg[3] ,
    Q,
    \FSM_onehot_state_reg_reg[0] ,
    \FSM_onehot_state_reg_reg[0]_0 ,
    CLK,
    gmii_rx_dv_d00,
    gmii_rx_dv_d20,
    mii_locked_reg,
    \gmii_rxd_d0_reg[7]_0 ,
    tx_fifo_axis_tvalid,
    \FSM_onehot_state_reg_reg[0]_1 ,
    \FSM_onehot_state_reg_reg[7]_0 ,
    \FSM_onehot_state_reg_reg[7]_1 ,
    m_terminate_frame_reg,
    \m_axis_pipe_reg_reg[0]_0 ,
    drop_frame_reg_reg,
    overflow_reg1__0,
    s_rst_sync3_reg,
    s_frame_reg,
    D);
  output gmii_tx_en_reg;
  output gmii_rx_dv_d0;
  output gmii_rx_dv_d1_reg;
  output m_axis_tlast_reg_reg;
  output [8:0]s_axis;
  output m_axis_tvalid_reg_reg;
  output s_axis_tready_reg_reg;
  output [2:0]\FSM_onehot_state_reg_reg[7] ;
  output [0:0]\gmii_rxd_d0_reg[7] ;
  output s_axis_tready_reg_reg_0;
  output \rx_rst_reg_reg[0] ;
  output m_axis_tlast_reg_reg_0;
  output [0:0]WEA;
  output drop_frame_reg;
  output [3:0]\gmii_txd_reg_reg[3] ;
  input [0:0]Q;
  input \FSM_onehot_state_reg_reg[0] ;
  input [0:0]\FSM_onehot_state_reg_reg[0]_0 ;
  input CLK;
  input gmii_rx_dv_d00;
  input gmii_rx_dv_d20;
  input mii_locked_reg;
  input [5:0]\gmii_rxd_d0_reg[7]_0 ;
  input tx_fifo_axis_tvalid;
  input \FSM_onehot_state_reg_reg[0]_1 ;
  input \FSM_onehot_state_reg_reg[7]_0 ;
  input \FSM_onehot_state_reg_reg[7]_1 ;
  input m_terminate_frame_reg;
  input [8:0]\m_axis_pipe_reg_reg[0]_0 ;
  input drop_frame_reg_reg;
  input overflow_reg1__0;
  input s_rst_sync3_reg;
  input s_frame_reg;
  input [1:0]D;

  wire CLK;
  wire [1:0]D;
  wire \FSM_onehot_state_reg_reg[0] ;
  wire [0:0]\FSM_onehot_state_reg_reg[0]_0 ;
  wire \FSM_onehot_state_reg_reg[0]_1 ;
  wire [2:0]\FSM_onehot_state_reg_reg[7] ;
  wire \FSM_onehot_state_reg_reg[7]_0 ;
  wire \FSM_onehot_state_reg_reg[7]_1 ;
  wire [0:0]Q;
  wire [0:0]WEA;
  wire drop_frame_reg;
  wire drop_frame_reg_reg;
  wire gmii_rx_dv_d0;
  wire gmii_rx_dv_d00;
  wire gmii_rx_dv_d1_reg;
  wire gmii_rx_dv_d20;
  wire [0:0]\gmii_rxd_d0_reg[7] ;
  wire [5:0]\gmii_rxd_d0_reg[7]_0 ;
  wire gmii_tx_en_reg;
  wire [3:0]\gmii_txd_reg_reg[3] ;
  wire [8:0]\m_axis_pipe_reg_reg[0]_0 ;
  wire m_axis_tlast_reg_reg;
  wire m_axis_tlast_reg_reg_0;
  wire m_axis_tvalid_reg_reg;
  wire m_terminate_frame_reg;
  wire mii_locked_reg;
  wire overflow_reg1__0;
  wire \rx_rst_reg_reg[0] ;
  wire [8:0]s_axis;
  wire s_axis_tready_reg_reg;
  wire s_axis_tready_reg_reg_0;
  wire s_frame_reg;
  wire s_rst_sync3_reg;
  wire tx_fifo_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_gmii_rx axis_gmii_rx_inst
       (.CLK(CLK),
        .\FSM_onehot_state_reg_reg[0]_0 (\FSM_onehot_state_reg_reg[0]_0 ),
        .Q(\gmii_rxd_d0_reg[7] ),
        .WEA(WEA),
        .drop_frame_reg(drop_frame_reg),
        .drop_frame_reg_reg(drop_frame_reg_reg),
        .gmii_rx_dv_d0(gmii_rx_dv_d0),
        .gmii_rx_dv_d00(gmii_rx_dv_d00),
        .gmii_rx_dv_d1_reg_0(gmii_rx_dv_d1_reg),
        .gmii_rx_dv_d20(gmii_rx_dv_d20),
        .\gmii_rxd_d0_reg[7]_0 (\gmii_rxd_d0_reg[7]_0 ),
        .m_axis_tlast_reg_reg_0(m_axis_tlast_reg_reg),
        .m_axis_tlast_reg_reg_1(m_axis_tlast_reg_reg_0),
        .m_axis_tvalid_reg_reg_0(m_axis_tvalid_reg_reg),
        .mii_locked_reg_0(mii_locked_reg),
        .overflow_reg1__0(overflow_reg1__0),
        .\rx_rst_reg_reg[0] (\rx_rst_reg_reg[0] ),
        .s_axis(s_axis),
        .s_frame_reg(s_frame_reg),
        .s_rst_sync3_reg(s_rst_sync3_reg));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_gmii_tx axis_gmii_tx_inst
       (.D(D),
        .\FSM_onehot_state_reg_reg[0]_0 (\FSM_onehot_state_reg_reg[0] ),
        .\FSM_onehot_state_reg_reg[0]_1 (\FSM_onehot_state_reg_reg[0]_1 ),
        .\FSM_onehot_state_reg_reg[7]_0 (\FSM_onehot_state_reg_reg[7] ),
        .\FSM_onehot_state_reg_reg[7]_1 (\FSM_onehot_state_reg_reg[7]_0 ),
        .\FSM_onehot_state_reg_reg[7]_2 (\FSM_onehot_state_reg_reg[7]_1 ),
        .Q(Q),
        .gmii_tx_en_reg(gmii_tx_en_reg),
        .\gmii_txd_reg_reg[3]_0 (\gmii_txd_reg_reg[3] ),
        .\m_axis_pipe_reg_reg[0]_0 (\m_axis_pipe_reg_reg[0]_0 ),
        .m_terminate_frame_reg(m_terminate_frame_reg),
        .s_axis_tready_reg_reg_0(s_axis_tready_reg_reg),
        .s_axis_tready_reg_reg_1(s_axis_tready_reg_reg_0),
        .tx_fifo_axis_tvalid(tx_fifo_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_mac_mii
   (rx_clk,
    tx_clk,
    Q,
    mii_tx_en,
    \rx_rst_reg_reg[0] ,
    rx_fifo_axis_tlast,
    s_axis,
    rx_fifo_axis_tvalid,
    tx_fifo_axis_tready,
    \FSM_onehot_state_reg_reg[7] ,
    clear,
    s_axis_tready_reg_reg,
    \rx_rst_reg_reg[0]_0 ,
    m_axis_tlast_reg_reg,
    WEA,
    wr_ptr_gray_reg,
    drop_frame_reg,
    mii_txd,
    mii_rx_clk,
    mii_tx_clk,
    tx_fifo_axis_tvalid,
    \FSM_onehot_state_reg_reg[0] ,
    \FSM_onehot_state_reg_reg[7]_0 ,
    \FSM_onehot_state_reg_reg[7]_1 ,
    m_terminate_frame_reg,
    \m_axis_pipe_reg_reg[0]_0 ,
    m_rst_sync3_reg,
    drop_frame_reg_reg,
    overflow_reg1__0,
    s_rst_sync3_reg,
    s_frame_reg,
    D,
    \output_q_reg_reg[5] ,
    reset);
  output rx_clk;
  output tx_clk;
  output [0:0]Q;
  output mii_tx_en;
  output [0:0]\rx_rst_reg_reg[0] ;
  output rx_fifo_axis_tlast;
  output [8:0]s_axis;
  output rx_fifo_axis_tvalid;
  output tx_fifo_axis_tready;
  output [2:0]\FSM_onehot_state_reg_reg[7] ;
  output clear;
  output s_axis_tready_reg_reg;
  output \rx_rst_reg_reg[0]_0 ;
  output m_axis_tlast_reg_reg;
  output [0:0]WEA;
  output wr_ptr_gray_reg;
  output drop_frame_reg;
  output [3:0]mii_txd;
  input mii_rx_clk;
  input mii_tx_clk;
  input tx_fifo_axis_tvalid;
  input \FSM_onehot_state_reg_reg[0] ;
  input \FSM_onehot_state_reg_reg[7]_0 ;
  input \FSM_onehot_state_reg_reg[7]_1 ;
  input m_terminate_frame_reg;
  input [8:0]\m_axis_pipe_reg_reg[0]_0 ;
  input m_rst_sync3_reg;
  input drop_frame_reg_reg;
  input overflow_reg1__0;
  input s_rst_sync3_reg;
  input s_frame_reg;
  input [1:0]D;
  input [5:0]\output_q_reg_reg[5] ;
  input reset;

  wire [1:0]D;
  wire \FSM_onehot_state_reg_reg[0] ;
  wire [2:0]\FSM_onehot_state_reg_reg[7] ;
  wire \FSM_onehot_state_reg_reg[7]_0 ;
  wire \FSM_onehot_state_reg_reg[7]_1 ;
  wire [0:0]Q;
  wire [0:0]WEA;
  wire \axis_gmii_rx_inst/gmii_rx_dv_d0 ;
  wire \axis_gmii_rx_inst/gmii_rx_dv_d00 ;
  wire \axis_gmii_rx_inst/gmii_rx_dv_d20 ;
  wire [3:3]\axis_gmii_rx_inst/p_0_in ;
  wire clear;
  wire drop_frame_reg;
  wire drop_frame_reg_reg;
  wire eth_mac_1g_inst_n_2;
  wire gmii_tx_en_reg;
  wire [3:0]gmii_txd_reg;
  wire [8:0]\m_axis_pipe_reg_reg[0]_0 ;
  wire m_axis_tlast_reg_reg;
  wire m_rst_sync3_reg;
  wire m_terminate_frame_reg;
  wire mac_mii_rx_dv;
  wire mac_mii_rx_er;
  wire [3:0]mac_mii_rxd;
  wire mii_phy_if_inst_n_7;
  wire mii_rx_clk;
  wire mii_tx_clk;
  wire mii_tx_en;
  wire [3:0]mii_txd;
  wire [5:0]\output_q_reg_reg[5] ;
  wire overflow_reg1__0;
  wire reset;
  wire rx_clk;
  wire rx_fifo_axis_tlast;
  wire rx_fifo_axis_tvalid;
  wire [0:0]\rx_rst_reg_reg[0] ;
  wire \rx_rst_reg_reg[0]_0 ;
  wire [8:0]s_axis;
  wire s_axis_tready_reg_reg;
  wire s_frame_reg;
  wire s_rst_sync3_reg;
  wire tx_clk;
  wire tx_fifo_axis_tready;
  wire tx_fifo_axis_tvalid;
  wire wr_ptr_gray_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_mac_1g eth_mac_1g_inst
       (.CLK(rx_clk),
        .D(D),
        .\FSM_onehot_state_reg_reg[0] (tx_clk),
        .\FSM_onehot_state_reg_reg[0]_0 (\rx_rst_reg_reg[0] ),
        .\FSM_onehot_state_reg_reg[0]_1 (\FSM_onehot_state_reg_reg[0] ),
        .\FSM_onehot_state_reg_reg[7] (\FSM_onehot_state_reg_reg[7] ),
        .\FSM_onehot_state_reg_reg[7]_0 (\FSM_onehot_state_reg_reg[7]_0 ),
        .\FSM_onehot_state_reg_reg[7]_1 (\FSM_onehot_state_reg_reg[7]_1 ),
        .Q(Q),
        .WEA(WEA),
        .drop_frame_reg(drop_frame_reg),
        .drop_frame_reg_reg(drop_frame_reg_reg),
        .gmii_rx_dv_d0(\axis_gmii_rx_inst/gmii_rx_dv_d0 ),
        .gmii_rx_dv_d00(\axis_gmii_rx_inst/gmii_rx_dv_d00 ),
        .gmii_rx_dv_d1_reg(eth_mac_1g_inst_n_2),
        .gmii_rx_dv_d20(\axis_gmii_rx_inst/gmii_rx_dv_d20 ),
        .\gmii_rxd_d0_reg[7] (\axis_gmii_rx_inst/p_0_in ),
        .\gmii_rxd_d0_reg[7]_0 ({mac_mii_rxd,mac_mii_rx_dv,mac_mii_rx_er}),
        .gmii_tx_en_reg(gmii_tx_en_reg),
        .\gmii_txd_reg_reg[3] (gmii_txd_reg),
        .\m_axis_pipe_reg_reg[0]_0 (\m_axis_pipe_reg_reg[0]_0 ),
        .m_axis_tlast_reg_reg(rx_fifo_axis_tlast),
        .m_axis_tlast_reg_reg_0(m_axis_tlast_reg_reg),
        .m_axis_tvalid_reg_reg(rx_fifo_axis_tvalid),
        .m_terminate_frame_reg(m_terminate_frame_reg),
        .mii_locked_reg(mii_phy_if_inst_n_7),
        .overflow_reg1__0(overflow_reg1__0),
        .\rx_rst_reg_reg[0] (\rx_rst_reg_reg[0]_0 ),
        .s_axis(s_axis),
        .s_axis_tready_reg_reg(tx_fifo_axis_tready),
        .s_axis_tready_reg_reg_0(s_axis_tready_reg_reg),
        .s_frame_reg(s_frame_reg),
        .s_rst_sync3_reg(s_rst_sync3_reg),
        .tx_fifo_axis_tvalid(tx_fifo_axis_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mii_phy_if mii_phy_if_inst
       (.CLK(rx_clk),
        .D(gmii_txd_reg),
        .Q(Q),
        .clear(clear),
        .gmii_rx_dv_d0(\axis_gmii_rx_inst/gmii_rx_dv_d0 ),
        .gmii_rx_dv_d00(\axis_gmii_rx_inst/gmii_rx_dv_d00 ),
        .gmii_rx_dv_d20(\axis_gmii_rx_inst/gmii_rx_dv_d20 ),
        .gmii_rx_dv_d2_reg(eth_mac_1g_inst_n_2),
        .gmii_tx_en_reg(gmii_tx_en_reg),
        .m_rst_sync3_reg(m_rst_sync3_reg),
        .mii_bufg_inst_0(tx_clk),
        .mii_locked_reg(\axis_gmii_rx_inst/p_0_in ),
        .mii_rx_clk(mii_rx_clk),
        .mii_tx_clk(mii_tx_clk),
        .mii_tx_en(mii_tx_en),
        .mii_txd(mii_txd),
        .\output_q_reg_reg[2] (mii_phy_if_inst_n_7),
        .\output_q_reg_reg[5] ({mac_mii_rxd,mac_mii_rx_dv,mac_mii_rx_er}),
        .\output_q_reg_reg[5]_0 (\output_q_reg_reg[5] ),
        .reset(reset),
        .\rx_rst_reg_reg[0]_0 (\rx_rst_reg_reg[0] ),
        .s_rst_sync3_reg(s_rst_sync3_reg),
        .wr_ptr_gray_reg(wr_ptr_gray_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_mac_mii_fifo
   (rx_axis_tdata,
    mii_txd,
    mii_tx_en,
    \m_axis_tvalid_pipe_reg_reg[1] ,
    tx_axis_tready,
    rx_axis_tlast,
    rx_axis_tuser,
    mii_rx_clk,
    mii_tx_clk,
    clock,
    s_axis,
    D,
    reset,
    rx_axis_tready,
    tx_axis_tvalid);
  output [7:0]rx_axis_tdata;
  output [3:0]mii_txd;
  output mii_tx_en;
  output \m_axis_tvalid_pipe_reg_reg[1] ;
  output tx_axis_tready;
  output rx_axis_tlast;
  output rx_axis_tuser;
  input mii_rx_clk;
  input mii_tx_clk;
  input clock;
  input [9:0]s_axis;
  input [5:0]D;
  input reset;
  input rx_axis_tready;
  input tx_axis_tvalid;

  wire [5:0]D;
  wire clock;
  wire eth_mac_1g_mii_inst_n_17;
  wire eth_mac_1g_mii_inst_n_18;
  wire eth_mac_1g_mii_inst_n_19;
  wire eth_mac_1g_mii_inst_n_21;
  wire eth_mac_1g_mii_inst_n_22;
  wire eth_mac_1g_mii_inst_n_23;
  wire \fifo_inst/drop_frame_reg ;
  wire [8:8]\fifo_inst/m_axis ;
  wire \fifo_inst/m_rst_sync3_reg ;
  wire \fifo_inst/m_terminate_frame_reg ;
  wire \fifo_inst/overflow_reg118_out ;
  wire \fifo_inst/overflow_reg1__0 ;
  wire \fifo_inst/rd_ptr_gray_reg ;
  wire \fifo_inst/s_frame_reg ;
  wire \fifo_inst/s_rst_sync3_reg ;
  wire \fifo_inst/wr_ptr_gray_reg ;
  wire \m_axis_tvalid_pipe_reg_reg[1] ;
  wire mii_rx_clk;
  wire mii_tx_clk;
  wire mii_tx_en;
  wire [3:0]mii_txd;
  wire reset;
  wire [7:0]rx_axis_tdata;
  wire rx_axis_tlast;
  wire rx_axis_tready;
  wire rx_axis_tuser;
  wire rx_clk;
  wire [7:0]rx_fifo_axis_tdata;
  wire rx_fifo_axis_tlast;
  wire rx_fifo_axis_tuser;
  wire rx_fifo_axis_tvalid;
  wire rx_fifo_n_6;
  wire rx_rst;
  wire [9:0]s_axis;
  wire tx_axis_tready;
  wire tx_axis_tvalid;
  wire tx_clk;
  wire [7:0]tx_fifo_axis_tdata;
  wire tx_fifo_axis_tready;
  wire tx_fifo_axis_tvalid;
  wire tx_fifo_n_0;
  wire tx_fifo_n_14;
  wire tx_fifo_n_15;
  wire tx_fifo_n_16;
  wire tx_fifo_n_17;
  wire tx_fifo_n_4;
  wire tx_rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_mac_mii eth_mac_1g_mii_inst
       (.D({tx_fifo_n_15,tx_fifo_n_16}),
        .\FSM_onehot_state_reg_reg[0] (tx_fifo_n_17),
        .\FSM_onehot_state_reg_reg[7] ({eth_mac_1g_mii_inst_n_17,eth_mac_1g_mii_inst_n_18,eth_mac_1g_mii_inst_n_19}),
        .\FSM_onehot_state_reg_reg[7]_0 (tx_fifo_n_14),
        .\FSM_onehot_state_reg_reg[7]_1 (tx_fifo_n_4),
        .Q(tx_rst),
        .WEA(\fifo_inst/overflow_reg118_out ),
        .clear(\fifo_inst/rd_ptr_gray_reg ),
        .drop_frame_reg(\fifo_inst/drop_frame_reg ),
        .drop_frame_reg_reg(rx_fifo_n_6),
        .\m_axis_pipe_reg_reg[0]_0 ({\fifo_inst/m_axis ,tx_fifo_axis_tdata}),
        .m_axis_tlast_reg_reg(eth_mac_1g_mii_inst_n_23),
        .m_rst_sync3_reg(\fifo_inst/m_rst_sync3_reg ),
        .m_terminate_frame_reg(\fifo_inst/m_terminate_frame_reg ),
        .mii_rx_clk(mii_rx_clk),
        .mii_tx_clk(mii_tx_clk),
        .mii_tx_en(mii_tx_en),
        .mii_txd(mii_txd),
        .\output_q_reg_reg[5] (D),
        .overflow_reg1__0(\fifo_inst/overflow_reg1__0 ),
        .reset(reset),
        .rx_clk(rx_clk),
        .rx_fifo_axis_tlast(rx_fifo_axis_tlast),
        .rx_fifo_axis_tvalid(rx_fifo_axis_tvalid),
        .\rx_rst_reg_reg[0] (rx_rst),
        .\rx_rst_reg_reg[0]_0 (eth_mac_1g_mii_inst_n_22),
        .s_axis({rx_fifo_axis_tuser,rx_fifo_axis_tdata}),
        .s_axis_tready_reg_reg(eth_mac_1g_mii_inst_n_21),
        .s_frame_reg(\fifo_inst/s_frame_reg ),
        .s_rst_sync3_reg(\fifo_inst/s_rst_sync3_reg ),
        .tx_clk(tx_clk),
        .tx_fifo_axis_tready(tx_fifo_axis_tready),
        .tx_fifo_axis_tvalid(tx_fifo_axis_tvalid),
        .wr_ptr_gray_reg(\fifo_inst/wr_ptr_gray_reg ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_async_fifo_adapter__parameterized0 rx_fifo
       (.SR(rx_rst),
        .WEA(\fifo_inst/overflow_reg118_out ),
        .clock(clock),
        .drop_frame_reg(\fifo_inst/drop_frame_reg ),
        .drop_frame_reg_reg(rx_fifo_n_6),
        .drop_frame_reg_reg_0(eth_mac_1g_mii_inst_n_22),
        .\m_axis_tvalid_pipe_reg_reg[1] (\m_axis_tvalid_pipe_reg_reg[1] ),
        .overflow_reg1__0(\fifo_inst/overflow_reg1__0 ),
        .reset(reset),
        .rx_axis_tdata(rx_axis_tdata),
        .rx_axis_tlast(rx_axis_tlast),
        .rx_axis_tready(rx_axis_tready),
        .rx_axis_tuser(rx_axis_tuser),
        .rx_clk(rx_clk),
        .rx_fifo_axis_tlast(rx_fifo_axis_tlast),
        .rx_fifo_axis_tvalid(rx_fifo_axis_tvalid),
        .s_axis({rx_fifo_axis_tuser,rx_fifo_axis_tdata}),
        .s_frame_reg(\fifo_inst/s_frame_reg ),
        .s_rst_sync2_reg_reg(tx_fifo_n_0),
        .s_rst_sync3_reg(\fifo_inst/s_rst_sync3_reg ),
        .wr_ptr_gray_reg(\fifo_inst/wr_ptr_gray_reg ),
        .\wr_ptr_sync_gray_reg_reg[0] (eth_mac_1g_mii_inst_n_23));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axis_async_fifo_adapter tx_fifo
       (.D({tx_fifo_n_15,tx_fifo_n_16}),
        .\FSM_onehot_state_reg_reg[6] (tx_fifo_n_4),
        .\FSM_onehot_state_reg_reg[7] ({eth_mac_1g_mii_inst_n_17,eth_mac_1g_mii_inst_n_18,eth_mac_1g_mii_inst_n_19}),
        .Q(tx_rst),
        .clear(\fifo_inst/rd_ptr_gray_reg ),
        .clock(clock),
        .\m_axis_pipe_reg_reg[0]_0 ({\fifo_inst/m_axis ,tx_fifo_axis_tdata}),
        .\m_axis_tvalid_pipe_reg_reg[1] (tx_fifo_n_17),
        .m_rst_sync1_reg_reg(tx_fifo_n_0),
        .m_rst_sync3_reg(\fifo_inst/m_rst_sync3_reg ),
        .m_terminate_frame_reg(\fifo_inst/m_terminate_frame_reg ),
        .mem_reg_1(tx_fifo_n_14),
        .mem_reg_1_0(eth_mac_1g_mii_inst_n_21),
        .reset(reset),
        .s_axis(s_axis),
        .tx_axis_tready(tx_axis_tready),
        .tx_axis_tvalid(tx_axis_tvalid),
        .tx_clk(tx_clk),
        .tx_fifo_axis_tready(tx_fifo_axis_tready),
        .tx_fifo_axis_tvalid(tx_fifo_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ethernet_arty_a7_100t
   (rx_axis_tdata,
    mii_txd,
    mii_tx_en,
    \m_axis_tvalid_pipe_reg_reg[1] ,
    tx_axis_tready,
    rx_axis_tlast,
    rx_axis_tuser,
    mii_rx_clk,
    mii_tx_clk,
    clock,
    s_axis,
    D,
    reset,
    rx_axis_tready,
    tx_axis_tvalid);
  output [7:0]rx_axis_tdata;
  output [3:0]mii_txd;
  output mii_tx_en;
  output \m_axis_tvalid_pipe_reg_reg[1] ;
  output tx_axis_tready;
  output rx_axis_tlast;
  output rx_axis_tuser;
  input mii_rx_clk;
  input mii_tx_clk;
  input clock;
  input [9:0]s_axis;
  input [5:0]D;
  input reset;
  input rx_axis_tready;
  input tx_axis_tvalid;

  wire [5:0]D;
  wire clock;
  wire \m_axis_tvalid_pipe_reg_reg[1] ;
  wire mii_rx_clk;
  wire mii_tx_clk;
  wire mii_tx_en;
  wire [3:0]mii_txd;
  wire reset;
  wire [7:0]rx_axis_tdata;
  wire rx_axis_tlast;
  wire rx_axis_tready;
  wire rx_axis_tuser;
  wire [9:0]s_axis;
  wire tx_axis_tready;
  wire tx_axis_tvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_eth_mac_mii_fifo eth_mac_inst
       (.D(D),
        .clock(clock),
        .\m_axis_tvalid_pipe_reg_reg[1] (\m_axis_tvalid_pipe_reg_reg[1] ),
        .mii_rx_clk(mii_rx_clk),
        .mii_tx_clk(mii_tx_clk),
        .mii_tx_en(mii_tx_en),
        .mii_txd(mii_txd),
        .reset(reset),
        .rx_axis_tdata(rx_axis_tdata),
        .rx_axis_tlast(rx_axis_tlast),
        .rx_axis_tready(rx_axis_tready),
        .rx_axis_tuser(rx_axis_tuser),
        .s_axis(s_axis),
        .tx_axis_tready(tx_axis_tready),
        .tx_axis_tvalid(tx_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfsr
   (D,
    Q,
    s_tdata_reg);
  output [31:0]D;
  input [31:0]Q;
  input [7:0]s_tdata_reg;

  wire [31:0]D;
  wire [31:0]Q;
  wire \i_/crc_state[16]_i_2_n_0 ;
  wire \i_/crc_state[17]_i_2_n_0 ;
  wire \i_/crc_state[17]_i_3_n_0 ;
  wire \i_/crc_state[18]_i_2_n_0 ;
  wire \i_/crc_state[21]_i_2_n_0 ;
  wire \i_/crc_state[24]_i_2_n_0 ;
  wire \i_/crc_state[25]_i_2_n_0 ;
  wire \i_/crc_state[27]_i_2_n_0 ;
  wire \i_/crc_state[29]_i_2_n_0 ;
  wire \i_/crc_state[29]_i_3_n_0 ;
  wire \i_/crc_state[30]_i_2_n_0 ;
  wire [7:0]s_tdata_reg;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \i_/crc_state[0]_i_1 
       (.I0(Q[8]),
        .I1(s_tdata_reg[2]),
        .I2(Q[2]),
        .O(D[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \i_/crc_state[10]_i_1 
       (.I0(Q[18]),
        .I1(Q[2]),
        .I2(s_tdata_reg[2]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \i_/crc_state[11]_i_1 
       (.I0(Q[19]),
        .I1(Q[3]),
        .I2(s_tdata_reg[3]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[12]_i_1 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(Q[20]),
        .I3(s_tdata_reg[0]),
        .I4(s_tdata_reg[4]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[13]_i_1 
       (.I0(Q[21]),
        .I1(Q[1]),
        .I2(s_tdata_reg[1]),
        .I3(\i_/crc_state[29]_i_3_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[14]_i_1 
       (.I0(Q[22]),
        .I1(Q[2]),
        .I2(s_tdata_reg[2]),
        .I3(Q[1]),
        .I4(s_tdata_reg[1]),
        .I5(\i_/crc_state[29]_i_2_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[15]_i_1 
       (.I0(Q[23]),
        .I1(\i_/crc_state[24]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(s_tdata_reg[2]),
        .I4(Q[3]),
        .I5(s_tdata_reg[3]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[16]_i_1 
       (.I0(Q[24]),
        .I1(Q[0]),
        .I2(s_tdata_reg[0]),
        .I3(Q[2]),
        .I4(s_tdata_reg[2]),
        .I5(\i_/crc_state[16]_i_2_n_0 ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[16]_i_2 
       (.I0(s_tdata_reg[3]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(s_tdata_reg[4]),
        .O(\i_/crc_state[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[17]_i_1 
       (.I0(Q[25]),
        .I1(\i_/crc_state[17]_i_2_n_0 ),
        .I2(\i_/crc_state[29]_i_3_n_0 ),
        .I3(s_tdata_reg[3]),
        .I4(Q[3]),
        .I5(\i_/crc_state[17]_i_3_n_0 ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_/crc_state[17]_i_2 
       (.I0(Q[1]),
        .I1(s_tdata_reg[1]),
        .O(\i_/crc_state[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_/crc_state[17]_i_3 
       (.I0(s_tdata_reg[4]),
        .I1(Q[4]),
        .O(\i_/crc_state[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[18]_i_1 
       (.I0(Q[26]),
        .I1(\i_/crc_state[29]_i_3_n_0 ),
        .I2(\i_/crc_state[30]_i_2_n_0 ),
        .I3(Q[4]),
        .I4(s_tdata_reg[4]),
        .I5(\i_/crc_state[18]_i_2_n_0 ),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_/crc_state[18]_i_2 
       (.I0(Q[2]),
        .I1(s_tdata_reg[2]),
        .O(\i_/crc_state[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[19]_i_1 
       (.I0(Q[27]),
        .I1(s_tdata_reg[5]),
        .I2(Q[5]),
        .I3(\i_/crc_state[25]_i_2_n_0 ),
        .I4(\i_/crc_state[30]_i_2_n_0 ),
        .I5(\i_/crc_state[24]_i_2_n_0 ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[1]_i_1 
       (.I0(Q[0]),
        .I1(s_tdata_reg[0]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(s_tdata_reg[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[20]_i_1 
       (.I0(Q[28]),
        .I1(Q[6]),
        .I2(s_tdata_reg[6]),
        .I3(\i_/crc_state[27]_i_2_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[21]_i_1 
       (.I0(Q[29]),
        .I1(s_tdata_reg[5]),
        .I2(Q[5]),
        .I3(s_tdata_reg[7]),
        .I4(Q[7]),
        .I5(\i_/crc_state[21]_i_2_n_0 ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[21]_i_2 
       (.I0(Q[4]),
        .I1(s_tdata_reg[4]),
        .I2(s_tdata_reg[2]),
        .I3(Q[2]),
        .O(\i_/crc_state[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[22]_i_1 
       (.I0(Q[30]),
        .I1(Q[6]),
        .I2(s_tdata_reg[6]),
        .I3(s_tdata_reg[5]),
        .I4(Q[5]),
        .I5(\i_/crc_state[25]_i_2_n_0 ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[23]_i_1 
       (.I0(Q[31]),
        .I1(Q[6]),
        .I2(s_tdata_reg[6]),
        .I3(\i_/crc_state[27]_i_2_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[24]_i_1 
       (.I0(\i_/crc_state[24]_i_2_n_0 ),
        .I1(\i_/crc_state[29]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(s_tdata_reg[2]),
        .I4(s_tdata_reg[4]),
        .I5(Q[4]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_/crc_state[24]_i_2 
       (.I0(s_tdata_reg[7]),
        .I1(Q[7]),
        .O(\i_/crc_state[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[25]_i_1 
       (.I0(s_tdata_reg[6]),
        .I1(Q[6]),
        .I2(s_tdata_reg[1]),
        .I3(Q[1]),
        .I4(\i_/crc_state[29]_i_3_n_0 ),
        .I5(\i_/crc_state[25]_i_2_n_0 ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[25]_i_2 
       (.I0(s_tdata_reg[3]),
        .I1(Q[3]),
        .I2(s_tdata_reg[2]),
        .I3(Q[2]),
        .O(\i_/crc_state[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[26]_i_1 
       (.I0(Q[0]),
        .I1(s_tdata_reg[0]),
        .I2(Q[2]),
        .I3(s_tdata_reg[2]),
        .I4(\i_/crc_state[30]_i_2_n_0 ),
        .I5(\i_/crc_state[27]_i_2_n_0 ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[27]_i_1 
       (.I0(Q[1]),
        .I1(s_tdata_reg[1]),
        .I2(s_tdata_reg[5]),
        .I3(Q[5]),
        .I4(\i_/crc_state[27]_i_2_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[27]_i_2 
       (.I0(s_tdata_reg[4]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(s_tdata_reg[3]),
        .I4(Q[7]),
        .I5(s_tdata_reg[7]),
        .O(\i_/crc_state[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[28]_i_1 
       (.I0(Q[6]),
        .I1(s_tdata_reg[6]),
        .I2(s_tdata_reg[4]),
        .I3(Q[4]),
        .I4(\i_/crc_state[29]_i_3_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[29]_i_1 
       (.I0(s_tdata_reg[7]),
        .I1(Q[7]),
        .I2(\i_/crc_state[29]_i_2_n_0 ),
        .I3(s_tdata_reg[1]),
        .I4(Q[1]),
        .I5(\i_/crc_state[29]_i_3_n_0 ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_/crc_state[29]_i_2 
       (.I0(Q[6]),
        .I1(s_tdata_reg[6]),
        .O(\i_/crc_state[29]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[29]_i_3 
       (.I0(s_tdata_reg[0]),
        .I1(Q[0]),
        .I2(Q[5]),
        .I3(s_tdata_reg[5]),
        .O(\i_/crc_state[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[2]_i_1 
       (.I0(Q[10]),
        .I1(\i_/crc_state[17]_i_2_n_0 ),
        .I2(Q[0]),
        .I3(s_tdata_reg[0]),
        .I4(s_tdata_reg[4]),
        .I5(Q[4]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[30]_i_1 
       (.I0(s_tdata_reg[7]),
        .I1(Q[7]),
        .I2(\i_/crc_state[30]_i_2_n_0 ),
        .I3(s_tdata_reg[0]),
        .I4(Q[0]),
        .O(D[30]));
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[30]_i_2 
       (.I0(s_tdata_reg[6]),
        .I1(Q[6]),
        .I2(s_tdata_reg[1]),
        .I3(Q[1]),
        .O(\i_/crc_state[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[31]_i_3 
       (.I0(Q[7]),
        .I1(s_tdata_reg[7]),
        .I2(s_tdata_reg[1]),
        .I3(Q[1]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[3]_i_1 
       (.I0(Q[11]),
        .I1(\i_/crc_state[17]_i_2_n_0 ),
        .I2(s_tdata_reg[5]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(s_tdata_reg[2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[4]_i_1 
       (.I0(Q[12]),
        .I1(Q[6]),
        .I2(s_tdata_reg[6]),
        .I3(Q[0]),
        .I4(s_tdata_reg[0]),
        .I5(\i_/crc_state[25]_i_2_n_0 ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[5]_i_1 
       (.I0(Q[13]),
        .I1(Q[1]),
        .I2(s_tdata_reg[1]),
        .I3(\i_/crc_state[27]_i_2_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[14]),
        .I2(s_tdata_reg[4]),
        .I3(Q[5]),
        .I4(s_tdata_reg[5]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[7]_i_1 
       (.I0(Q[15]),
        .I1(Q[6]),
        .I2(s_tdata_reg[6]),
        .I3(\i_/crc_state[29]_i_3_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[8]_i_1 
       (.I0(s_tdata_reg[7]),
        .I1(Q[7]),
        .I2(\i_/crc_state[29]_i_2_n_0 ),
        .I3(s_tdata_reg[1]),
        .I4(Q[1]),
        .I5(Q[16]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \i_/crc_state[9]_i_1 
       (.I0(Q[17]),
        .I1(Q[7]),
        .I2(s_tdata_reg[7]),
        .O(D[9]));
endmodule

(* ORIG_REF_NAME = "lfsr" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lfsr_0
   (D,
    \crc_state_reg[1] ,
    \gmii_rxd_d4_reg[7] ,
    \crc_state_reg[6] ,
    \crc_state_reg[0] ,
    Q,
    \crc_state_reg[31] );
  output [31:0]D;
  output \crc_state_reg[1] ;
  output \gmii_rxd_d4_reg[7] ;
  output \crc_state_reg[6] ;
  output \crc_state_reg[0] ;
  input [31:0]Q;
  input [7:0]\crc_state_reg[31] ;

  wire [31:0]D;
  wire [31:0]Q;
  wire \crc_state_reg[0] ;
  wire \crc_state_reg[1] ;
  wire [7:0]\crc_state_reg[31] ;
  wire \crc_state_reg[6] ;
  wire \gmii_rxd_d4_reg[7] ;
  wire \i_/crc_state[16]_i_2_n_0 ;
  wire \i_/crc_state[17]_i_3_n_0 ;
  wire \i_/crc_state[18]_i_2_n_0 ;
  wire \i_/crc_state[21]_i_2_n_0 ;
  wire \i_/crc_state[25]_i_2_n_0 ;
  wire \i_/crc_state[27]_i_2_n_0 ;
  wire \i_/crc_state[29]_i_3_n_0 ;
  wire \i_/crc_state[30]_i_2_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \i_/crc_state[0]_i_1 
       (.I0(Q[8]),
        .I1(\crc_state_reg[31] [2]),
        .I2(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \i_/crc_state[10]_i_1 
       (.I0(Q[18]),
        .I1(Q[2]),
        .I2(\crc_state_reg[31] [2]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \i_/crc_state[11]_i_1 
       (.I0(Q[19]),
        .I1(Q[3]),
        .I2(\crc_state_reg[31] [3]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[12]_i_1 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(Q[20]),
        .I3(\crc_state_reg[31] [0]),
        .I4(\crc_state_reg[31] [4]),
        .O(D[12]));
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[13]_i_1 
       (.I0(Q[21]),
        .I1(Q[1]),
        .I2(\crc_state_reg[31] [1]),
        .I3(\i_/crc_state[29]_i_3_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[14]_i_1 
       (.I0(Q[22]),
        .I1(Q[2]),
        .I2(\crc_state_reg[31] [2]),
        .I3(Q[1]),
        .I4(\crc_state_reg[31] [1]),
        .I5(\crc_state_reg[6] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[15]_i_1 
       (.I0(Q[23]),
        .I1(\gmii_rxd_d4_reg[7] ),
        .I2(Q[2]),
        .I3(\crc_state_reg[31] [2]),
        .I4(Q[3]),
        .I5(\crc_state_reg[31] [3]),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[16]_i_1 
       (.I0(Q[24]),
        .I1(Q[0]),
        .I2(\crc_state_reg[31] [0]),
        .I3(Q[2]),
        .I4(\crc_state_reg[31] [2]),
        .I5(\i_/crc_state[16]_i_2_n_0 ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[16]_i_2 
       (.I0(\crc_state_reg[31] [3]),
        .I1(Q[3]),
        .I2(Q[4]),
        .I3(\crc_state_reg[31] [4]),
        .O(\i_/crc_state[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[17]_i_1 
       (.I0(Q[25]),
        .I1(\crc_state_reg[1] ),
        .I2(\i_/crc_state[29]_i_3_n_0 ),
        .I3(\crc_state_reg[31] [3]),
        .I4(Q[3]),
        .I5(\i_/crc_state[17]_i_3_n_0 ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_/crc_state[17]_i_2 
       (.I0(Q[1]),
        .I1(\crc_state_reg[31] [1]),
        .O(\crc_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_/crc_state[17]_i_3 
       (.I0(\crc_state_reg[31] [4]),
        .I1(Q[4]),
        .O(\i_/crc_state[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[18]_i_1 
       (.I0(Q[26]),
        .I1(\i_/crc_state[29]_i_3_n_0 ),
        .I2(\i_/crc_state[30]_i_2_n_0 ),
        .I3(Q[4]),
        .I4(\crc_state_reg[31] [4]),
        .I5(\i_/crc_state[18]_i_2_n_0 ),
        .O(D[18]));
  LUT2 #(
    .INIT(4'h6)) 
    \i_/crc_state[18]_i_2 
       (.I0(Q[2]),
        .I1(\crc_state_reg[31] [2]),
        .O(\i_/crc_state[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[19]_i_1 
       (.I0(Q[27]),
        .I1(\crc_state_reg[31] [5]),
        .I2(Q[5]),
        .I3(\i_/crc_state[25]_i_2_n_0 ),
        .I4(\i_/crc_state[30]_i_2_n_0 ),
        .I5(\gmii_rxd_d4_reg[7] ),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[1]_i_1 
       (.I0(Q[0]),
        .I1(\crc_state_reg[31] [0]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(\crc_state_reg[31] [3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[20]_i_1 
       (.I0(Q[28]),
        .I1(Q[6]),
        .I2(\crc_state_reg[31] [6]),
        .I3(\i_/crc_state[27]_i_2_n_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[21]_i_1 
       (.I0(Q[29]),
        .I1(\crc_state_reg[31] [5]),
        .I2(Q[5]),
        .I3(\crc_state_reg[31] [7]),
        .I4(Q[7]),
        .I5(\i_/crc_state[21]_i_2_n_0 ),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[21]_i_2 
       (.I0(Q[4]),
        .I1(\crc_state_reg[31] [4]),
        .I2(\crc_state_reg[31] [2]),
        .I3(Q[2]),
        .O(\i_/crc_state[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[22]_i_1 
       (.I0(Q[30]),
        .I1(Q[6]),
        .I2(\crc_state_reg[31] [6]),
        .I3(\crc_state_reg[31] [5]),
        .I4(Q[5]),
        .I5(\i_/crc_state[25]_i_2_n_0 ),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[23]_i_1 
       (.I0(Q[31]),
        .I1(Q[6]),
        .I2(\crc_state_reg[31] [6]),
        .I3(\i_/crc_state[27]_i_2_n_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[24]_i_1 
       (.I0(\gmii_rxd_d4_reg[7] ),
        .I1(\i_/crc_state[29]_i_3_n_0 ),
        .I2(Q[2]),
        .I3(\crc_state_reg[31] [2]),
        .I4(\crc_state_reg[31] [4]),
        .I5(Q[4]),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_/crc_state[24]_i_2 
       (.I0(\crc_state_reg[31] [7]),
        .I1(Q[7]),
        .O(\gmii_rxd_d4_reg[7] ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[25]_i_1 
       (.I0(\crc_state_reg[31] [6]),
        .I1(Q[6]),
        .I2(\crc_state_reg[31] [1]),
        .I3(Q[1]),
        .I4(\i_/crc_state[29]_i_3_n_0 ),
        .I5(\i_/crc_state[25]_i_2_n_0 ),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[25]_i_2 
       (.I0(\crc_state_reg[31] [3]),
        .I1(Q[3]),
        .I2(\crc_state_reg[31] [2]),
        .I3(Q[2]),
        .O(\i_/crc_state[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[26]_i_1 
       (.I0(Q[0]),
        .I1(\crc_state_reg[31] [0]),
        .I2(Q[2]),
        .I3(\crc_state_reg[31] [2]),
        .I4(\i_/crc_state[30]_i_2_n_0 ),
        .I5(\i_/crc_state[27]_i_2_n_0 ),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[27]_i_1 
       (.I0(Q[1]),
        .I1(\crc_state_reg[31] [1]),
        .I2(\crc_state_reg[31] [5]),
        .I3(Q[5]),
        .I4(\i_/crc_state[27]_i_2_n_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[27]_i_2 
       (.I0(\crc_state_reg[31] [4]),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\crc_state_reg[31] [3]),
        .I4(Q[7]),
        .I5(\crc_state_reg[31] [7]),
        .O(\i_/crc_state[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[28]_i_1 
       (.I0(Q[6]),
        .I1(\crc_state_reg[31] [6]),
        .I2(\crc_state_reg[31] [4]),
        .I3(Q[4]),
        .I4(\i_/crc_state[29]_i_3_n_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[29]_i_1 
       (.I0(\crc_state_reg[31] [7]),
        .I1(Q[7]),
        .I2(\crc_state_reg[6] ),
        .I3(\crc_state_reg[31] [1]),
        .I4(Q[1]),
        .I5(\i_/crc_state[29]_i_3_n_0 ),
        .O(D[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_/crc_state[29]_i_2 
       (.I0(Q[6]),
        .I1(\crc_state_reg[31] [6]),
        .O(\crc_state_reg[6] ));
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[29]_i_3 
       (.I0(\crc_state_reg[31] [0]),
        .I1(Q[0]),
        .I2(Q[5]),
        .I3(\crc_state_reg[31] [5]),
        .O(\i_/crc_state[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[2]_i_1 
       (.I0(Q[10]),
        .I1(\crc_state_reg[1] ),
        .I2(Q[0]),
        .I3(\crc_state_reg[31] [0]),
        .I4(\crc_state_reg[31] [4]),
        .I5(Q[4]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[30]_i_1 
       (.I0(\crc_state_reg[31] [7]),
        .I1(Q[7]),
        .I2(\i_/crc_state[30]_i_2_n_0 ),
        .I3(\crc_state_reg[31] [0]),
        .I4(Q[0]),
        .O(D[30]));
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[30]_i_2 
       (.I0(\crc_state_reg[31] [6]),
        .I1(Q[6]),
        .I2(\crc_state_reg[31] [1]),
        .I3(Q[1]),
        .O(\i_/crc_state[30]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[31]_i_2 
       (.I0(Q[7]),
        .I1(\crc_state_reg[31] [7]),
        .I2(\crc_state_reg[31] [1]),
        .I3(Q[1]),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[3]_i_1 
       (.I0(Q[11]),
        .I1(\crc_state_reg[1] ),
        .I2(\crc_state_reg[31] [5]),
        .I3(Q[5]),
        .I4(Q[2]),
        .I5(\crc_state_reg[31] [2]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[4]_i_1 
       (.I0(Q[12]),
        .I1(Q[6]),
        .I2(\crc_state_reg[31] [6]),
        .I3(Q[0]),
        .I4(\crc_state_reg[31] [0]),
        .I5(\i_/crc_state[25]_i_2_n_0 ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[5]_i_1 
       (.I0(Q[13]),
        .I1(Q[1]),
        .I2(\crc_state_reg[31] [1]),
        .I3(\i_/crc_state[27]_i_2_n_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \i_/crc_state[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[14]),
        .I2(\crc_state_reg[31] [4]),
        .I3(Q[5]),
        .I4(\crc_state_reg[31] [5]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \i_/crc_state[7]_i_1 
       (.I0(Q[15]),
        .I1(Q[6]),
        .I2(\crc_state_reg[31] [6]),
        .I3(\i_/crc_state[29]_i_3_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \i_/crc_state[8]_i_1 
       (.I0(\crc_state_reg[31] [7]),
        .I1(Q[7]),
        .I2(\crc_state_reg[6] ),
        .I3(\crc_state_reg[31] [1]),
        .I4(Q[1]),
        .I5(Q[16]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \i_/crc_state[9]_i_1 
       (.I0(Q[17]),
        .I1(Q[7]),
        .I2(\crc_state_reg[31] [7]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_/i__carry__1_i_4 
       (.I0(Q[0]),
        .I1(\crc_state_reg[31] [0]),
        .O(\crc_state_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mii_phy_if
   (CLK,
    mii_bufg_inst_0,
    mii_tx_en,
    clear,
    Q,
    wr_ptr_gray_reg,
    \rx_rst_reg_reg[0]_0 ,
    \output_q_reg_reg[2] ,
    \output_q_reg_reg[5] ,
    gmii_rx_dv_d00,
    gmii_rx_dv_d20,
    mii_txd,
    mii_rx_clk,
    mii_tx_clk,
    gmii_tx_en_reg,
    m_rst_sync3_reg,
    s_rst_sync3_reg,
    mii_locked_reg,
    gmii_rx_dv_d0,
    gmii_rx_dv_d2_reg,
    \output_q_reg_reg[5]_0 ,
    reset,
    D);
  output CLK;
  output mii_bufg_inst_0;
  output mii_tx_en;
  output clear;
  output [0:0]Q;
  output wr_ptr_gray_reg;
  output [0:0]\rx_rst_reg_reg[0]_0 ;
  output \output_q_reg_reg[2] ;
  output [5:0]\output_q_reg_reg[5] ;
  output gmii_rx_dv_d00;
  output gmii_rx_dv_d20;
  output [3:0]mii_txd;
  input mii_rx_clk;
  input mii_tx_clk;
  input gmii_tx_en_reg;
  input m_rst_sync3_reg;
  input s_rst_sync3_reg;
  input [0:0]mii_locked_reg;
  input gmii_rx_dv_d0;
  input gmii_rx_dv_d2_reg;
  input [5:0]\output_q_reg_reg[5]_0 ;
  input reset;
  input [3:0]D;

  wire CLK;
  wire [3:0]D;
  wire [0:0]Q;
  wire clear;
  wire gmii_rx_dv_d0;
  wire gmii_rx_dv_d00;
  wire gmii_rx_dv_d20;
  wire gmii_rx_dv_d2_reg;
  wire gmii_tx_en_reg;
  wire m_rst_sync3_reg;
  wire mii_bufg_inst_0;
  wire [0:0]mii_locked_reg;
  wire mii_rx_clk;
  wire mii_tx_clk;
  wire mii_tx_en;
  wire [3:0]mii_txd;
  wire \output_q_reg_reg[2] ;
  wire [5:0]\output_q_reg_reg[5] ;
  wire [5:0]\output_q_reg_reg[5]_0 ;
  wire reset;
  wire [0:0]\rx_rst_reg_reg[0]_0 ;
  wire \rx_rst_reg_reg_n_0_[1] ;
  wire \rx_rst_reg_reg_n_0_[2] ;
  wire \rx_rst_reg_reg_n_0_[3] ;
  wire s_rst_sync3_reg;
  wire \tx_rst_reg_reg_n_0_[1] ;
  wire \tx_rst_reg_reg_n_0_[2] ;
  wire \tx_rst_reg_reg_n_0_[3] ;
  wire wr_ptr_gray_reg;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG mii_bufg_inst
       (.I(mii_tx_clk),
        .O(mii_bufg_inst_0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    phy_mii_tx_en_reg_reg
       (.C(mii_bufg_inst_0),
        .CE(1'b1),
        .D(gmii_tx_en_reg),
        .Q(mii_tx_en),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \phy_mii_txd_reg_reg[0] 
       (.C(mii_bufg_inst_0),
        .CE(1'b1),
        .D(D[0]),
        .Q(mii_txd[0]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \phy_mii_txd_reg_reg[1] 
       (.C(mii_bufg_inst_0),
        .CE(1'b1),
        .D(D[1]),
        .Q(mii_txd[1]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \phy_mii_txd_reg_reg[2] 
       (.C(mii_bufg_inst_0),
        .CE(1'b1),
        .D(D[2]),
        .Q(mii_txd[2]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \phy_mii_txd_reg_reg[3] 
       (.C(mii_bufg_inst_0),
        .CE(1'b1),
        .D(D[3]),
        .Q(mii_txd[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \rd_ptr_reg_rep[11]_i_1 
       (.I0(Q),
        .I1(m_rst_sync3_reg),
        .O(clear));
  FDPE #(
    .INIT(1'b1)) 
    \rx_rst_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_rst_reg_reg_n_0_[1] ),
        .PRE(reset),
        .Q(\rx_rst_reg_reg[0]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \rx_rst_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_rst_reg_reg_n_0_[2] ),
        .PRE(reset),
        .Q(\rx_rst_reg_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \rx_rst_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rx_rst_reg_reg_n_0_[3] ),
        .PRE(reset),
        .Q(\rx_rst_reg_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \rx_rst_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(\rx_rst_reg_reg_n_0_[3] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssio_sdr_in rx_ssio_sdr_inst
       (.CLK(CLK),
        .gmii_rx_dv_d0(gmii_rx_dv_d0),
        .gmii_rx_dv_d00(gmii_rx_dv_d00),
        .gmii_rx_dv_d20(gmii_rx_dv_d20),
        .gmii_rx_dv_d2_reg(gmii_rx_dv_d2_reg),
        .mii_locked_reg(mii_locked_reg),
        .mii_rx_clk(mii_rx_clk),
        .\output_q_reg_reg[2]_0 (\output_q_reg_reg[2] ),
        .\output_q_reg_reg[5]_0 (\output_q_reg_reg[5] ),
        .\output_q_reg_reg[5]_1 (\output_q_reg_reg[5]_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \tx_rst_reg_reg[0] 
       (.C(mii_bufg_inst_0),
        .CE(1'b1),
        .D(\tx_rst_reg_reg_n_0_[1] ),
        .PRE(reset),
        .Q(Q));
  FDPE #(
    .INIT(1'b1)) 
    \tx_rst_reg_reg[1] 
       (.C(mii_bufg_inst_0),
        .CE(1'b1),
        .D(\tx_rst_reg_reg_n_0_[2] ),
        .PRE(reset),
        .Q(\tx_rst_reg_reg_n_0_[1] ));
  FDPE #(
    .INIT(1'b1)) 
    \tx_rst_reg_reg[2] 
       (.C(mii_bufg_inst_0),
        .CE(1'b1),
        .D(\tx_rst_reg_reg_n_0_[3] ),
        .PRE(reset),
        .Q(\tx_rst_reg_reg_n_0_[2] ));
  FDPE #(
    .INIT(1'b1)) 
    \tx_rst_reg_reg[3] 
       (.C(mii_bufg_inst_0),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(\tx_rst_reg_reg_n_0_[3] ));
  LUT2 #(
    .INIT(4'hE)) 
    \wr_ptr_reg[11]_i_1__0 
       (.I0(\rx_rst_reg_reg[0]_0 ),
        .I1(s_rst_sync3_reg),
        .O(wr_ptr_gray_reg));
endmodule

(* CHECK_LICENSE_TYPE = "riscv_ethernet_stream_0_0,ethernet_arty_a7_100t,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ethernet_arty_a7_100t,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (reset,
    clock,
    tx_axis_tdata,
    tx_axis_tkeep,
    tx_axis_tvalid,
    tx_axis_tready,
    tx_axis_tlast,
    tx_axis_tuser,
    rx_axis_tdata,
    rx_axis_tkeep,
    rx_axis_tvalid,
    rx_axis_tready,
    rx_axis_tlast,
    rx_axis_tuser,
    status_vector,
    mii_txd,
    mii_tx_en,
    mii_rxd,
    mii_rx_dv,
    mii_rx_er,
    mii_crs,
    mii_col,
    mii_tx_clk,
    mii_rx_clk);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock25 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock25, ASSOCIATED_BUSIF TX_AXIS:RX_AXIS, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN riscv_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 TX_AXIS TDATA" *) input [7:0]tx_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 TX_AXIS TKEEP" *) input [0:0]tx_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 TX_AXIS TVALID" *) input tx_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 TX_AXIS TREADY" *) output tx_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 TX_AXIS TLAST" *) input tx_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 TX_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME TX_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN riscv_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input tx_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 RX_AXIS TDATA" *) output [7:0]rx_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 RX_AXIS TKEEP" *) output [0:0]rx_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 RX_AXIS TVALID" *) output rx_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 RX_AXIS TREADY" *) input rx_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 RX_AXIS TLAST" *) output rx_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 RX_AXIS TUSER" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RX_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN riscv_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output rx_axis_tuser;
  output [15:0]status_vector;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII TXD" *) output [3:0]mii_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII TX_EN" *) output mii_tx_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RXD" *) input [3:0]mii_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RX_DV" *) input mii_rx_dv;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RX_ER" *) input mii_rx_er;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII CRS" *) input mii_crs;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII COL" *) input mii_col;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII TX_CLK" *) input mii_tx_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mii:1.0 MII RX_CLK" *) input mii_rx_clk;

  wire \<const0> ;
  wire \<const1> ;
  wire clock;
  wire mii_col;
  wire mii_crs;
  wire mii_rx_clk;
  wire mii_rx_dv;
  wire mii_rx_er;
  wire [3:0]mii_rxd;
  wire mii_tx_clk;
  wire mii_tx_en;
  wire [3:0]mii_txd;
  wire reset;
  wire [7:0]rx_axis_tdata;
  wire rx_axis_tlast;
  wire rx_axis_tready;
  wire rx_axis_tuser;
  wire rx_axis_tvalid;
  wire [7:0]tx_axis_tdata;
  wire tx_axis_tlast;
  wire tx_axis_tready;
  wire tx_axis_tuser;
  wire tx_axis_tvalid;

  assign rx_axis_tkeep[0] = \<const1> ;
  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6] = \<const0> ;
  assign status_vector[5] = \<const0> ;
  assign status_vector[4] = \<const0> ;
  assign status_vector[3] = \<const0> ;
  assign status_vector[2] = \<const0> ;
  assign status_vector[1] = mii_col;
  assign status_vector[0] = mii_crs;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ethernet_arty_a7_100t inst
       (.D({mii_rxd,mii_rx_dv,mii_rx_er}),
        .clock(clock),
        .\m_axis_tvalid_pipe_reg_reg[1] (rx_axis_tvalid),
        .mii_rx_clk(mii_rx_clk),
        .mii_tx_clk(mii_tx_clk),
        .mii_tx_en(mii_tx_en),
        .mii_txd(mii_txd),
        .reset(reset),
        .rx_axis_tdata(rx_axis_tdata),
        .rx_axis_tlast(rx_axis_tlast),
        .rx_axis_tready(rx_axis_tready),
        .rx_axis_tuser(rx_axis_tuser),
        .s_axis({tx_axis_tuser,tx_axis_tlast,tx_axis_tdata}),
        .tx_axis_tready(tx_axis_tready),
        .tx_axis_tvalid(tx_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ssio_sdr_in
   (CLK,
    \output_q_reg_reg[2]_0 ,
    \output_q_reg_reg[5]_0 ,
    gmii_rx_dv_d00,
    gmii_rx_dv_d20,
    mii_rx_clk,
    mii_locked_reg,
    gmii_rx_dv_d0,
    gmii_rx_dv_d2_reg,
    \output_q_reg_reg[5]_1 );
  output CLK;
  output \output_q_reg_reg[2]_0 ;
  output [5:0]\output_q_reg_reg[5]_0 ;
  output gmii_rx_dv_d00;
  output gmii_rx_dv_d20;
  input mii_rx_clk;
  input [0:0]mii_locked_reg;
  input gmii_rx_dv_d0;
  input gmii_rx_dv_d2_reg;
  input [5:0]\output_q_reg_reg[5]_1 ;

  wire CLK;
  wire clk_io;
  wire gmii_rx_dv_d0;
  wire gmii_rx_dv_d00;
  wire gmii_rx_dv_d20;
  wire gmii_rx_dv_d2_reg;
  wire [0:0]mii_locked_reg;
  wire mii_rx_clk;
  wire \output_q_reg_reg[2]_0 ;
  wire [5:0]\output_q_reg_reg[5]_0 ;
  wire [5:0]\output_q_reg_reg[5]_1 ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFIO clk_bufio
       (.I(mii_rx_clk),
        .O(clk_io));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("BYPASS"),
    .SIM_DEVICE("7SERIES")) 
    clk_bufr
       (.CE(1'b1),
        .CLR(1'b0),
        .I(mii_rx_clk),
        .O(CLK));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gmii_rx_dv_d1_i_1
       (.I0(\output_q_reg_reg[5]_0 [1]),
        .I1(gmii_rx_dv_d0),
        .O(gmii_rx_dv_d00));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    gmii_rx_dv_d2_i_1
       (.I0(\output_q_reg_reg[5]_0 [1]),
        .I1(gmii_rx_dv_d2_reg),
        .O(gmii_rx_dv_d20));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    mii_locked_i_2
       (.I0(\output_q_reg_reg[5]_0 [2]),
        .I1(mii_locked_reg),
        .I2(\output_q_reg_reg[5]_0 [4]),
        .I3(\output_q_reg_reg[5]_0 [3]),
        .I4(\output_q_reg_reg[5]_0 [1]),
        .I5(\output_q_reg_reg[5]_0 [5]),
        .O(\output_q_reg_reg[2]_0 ));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \output_q_reg_reg[0] 
       (.C(clk_io),
        .CE(1'b1),
        .D(\output_q_reg_reg[5]_1 [0]),
        .Q(\output_q_reg_reg[5]_0 [0]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \output_q_reg_reg[1] 
       (.C(clk_io),
        .CE(1'b1),
        .D(\output_q_reg_reg[5]_1 [1]),
        .Q(\output_q_reg_reg[5]_0 [1]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \output_q_reg_reg[2] 
       (.C(clk_io),
        .CE(1'b1),
        .D(\output_q_reg_reg[5]_1 [2]),
        .Q(\output_q_reg_reg[5]_0 [2]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \output_q_reg_reg[3] 
       (.C(clk_io),
        .CE(1'b1),
        .D(\output_q_reg_reg[5]_1 [3]),
        .Q(\output_q_reg_reg[5]_0 [3]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \output_q_reg_reg[4] 
       (.C(clk_io),
        .CE(1'b1),
        .D(\output_q_reg_reg[5]_1 [4]),
        .Q(\output_q_reg_reg[5]_0 [4]),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \output_q_reg_reg[5] 
       (.C(clk_io),
        .CE(1'b1),
        .D(\output_q_reg_reg[5]_1 [5]),
        .Q(\output_q_reg_reg[5]_0 [5]),
        .R(1'b0));
endmodule
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
