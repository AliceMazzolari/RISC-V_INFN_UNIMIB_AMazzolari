-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue Oct  3 10:30:45 2023
-- Host        : alis-F15Plus-2 running 64-bit Ubuntu 22.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alis/vivado-risc-v/workspace/rocket64b1/vivado-arty-a7-100t-riscv/arty-a7-100t-riscv.gen/sources_1/bd/riscv/ip/riscv_ethernet_stream_0_0/riscv_ethernet_stream_0_0_sim_netlist.vhdl
-- Design      : riscv_ethernet_stream_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_axis_async_fifo is
  port (
    m_rst_sync1_reg_reg_0 : out STD_LOGIC;
    m_rst_sync3_reg_reg_0 : out STD_LOGIC;
    \m_axis_tvalid_pipe_reg_reg[1]_0\ : out STD_LOGIC;
    m_terminate_frame_reg_reg_0 : out STD_LOGIC;
    \FSM_onehot_state_reg_reg[6]\ : out STD_LOGIC;
    \m_axis_pipe_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    mem_reg_1_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_axis_tvalid_pipe_reg_reg[1]_1\ : out STD_LOGIC;
    tx_axis_tready : out STD_LOGIC;
    tx_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    tx_fifo_axis_tready : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis : in STD_LOGIC_VECTOR ( 9 downto 0 );
    tx_axis_tvalid : in STD_LOGIC;
    mem_reg_1_1 : in STD_LOGIC;
    clear : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_axis_async_fifo : entity is "axis_async_fifo";
end riscv_ethernet_stream_0_0_axis_async_fifo;

architecture STRUCTURE of riscv_ethernet_stream_0_0_axis_async_fifo is
  signal drop_frame_reg_i_1_n_0 : STD_LOGIC;
  signal drop_frame_reg_i_2_n_0 : STD_LOGIC;
  signal drop_frame_reg_i_3_n_0 : STD_LOGIC;
  signal drop_frame_reg_i_4_n_0 : STD_LOGIC;
  signal drop_frame_reg_reg_n_0 : STD_LOGIC;
  signal empty : STD_LOGIC;
  signal \empty_carry__0_i_1_n_0\ : STD_LOGIC;
  signal empty_carry_i_1_n_0 : STD_LOGIC;
  signal empty_carry_i_2_n_0 : STD_LOGIC;
  signal empty_carry_i_3_n_0 : STD_LOGIC;
  signal empty_carry_i_4_n_0 : STD_LOGIC;
  signal empty_carry_n_0 : STD_LOGIC;
  signal empty_carry_n_1 : STD_LOGIC;
  signal empty_carry_n_2 : STD_LOGIC;
  signal empty_carry_n_3 : STD_LOGIC;
  signal full_cur : STD_LOGIC;
  signal \full_cur_carry__0_i_1_n_0\ : STD_LOGIC;
  signal full_cur_carry_i_1_n_0 : STD_LOGIC;
  signal full_cur_carry_i_2_n_0 : STD_LOGIC;
  signal full_cur_carry_i_3_n_0 : STD_LOGIC;
  signal full_cur_carry_i_4_n_0 : STD_LOGIC;
  signal full_cur_carry_n_0 : STD_LOGIC;
  signal full_cur_carry_n_1 : STD_LOGIC;
  signal full_cur_carry_n_2 : STD_LOGIC;
  signal full_cur_carry_n_3 : STD_LOGIC;
  signal full_wr : STD_LOGIC;
  signal \full_wr_carry__0_i_1_n_0\ : STD_LOGIC;
  signal full_wr_carry_i_1_n_0 : STD_LOGIC;
  signal full_wr_carry_i_2_n_0 : STD_LOGIC;
  signal full_wr_carry_i_3_n_0 : STD_LOGIC;
  signal full_wr_carry_i_4_n_0 : STD_LOGIC;
  signal full_wr_carry_n_0 : STD_LOGIC;
  signal full_wr_carry_n_1 : STD_LOGIC;
  signal full_wr_carry_n_2 : STD_LOGIC;
  signal full_wr_carry_n_3 : STD_LOGIC;
  signal m_axis : STD_LOGIC_VECTOR ( 9 to 9 );
  signal \^m_axis_pipe_reg_reg[0]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal m_axis_tvalid_pipe_reg0 : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid_pipe_reg_reg[1]_0\ : STD_LOGIC;
  signal \^m_axis_tvalid_pipe_reg_reg[1]_1\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal m_drop_frame_reg_i_1_n_0 : STD_LOGIC;
  signal m_drop_frame_reg_reg_n_0 : STD_LOGIC;
  signal m_frame_reg : STD_LOGIC;
  signal m_frame_reg_i_1_n_0 : STD_LOGIC;
  signal \^m_rst_sync1_reg_reg_0\ : STD_LOGIC;
  signal m_rst_sync2_reg : STD_LOGIC;
  signal \^m_rst_sync3_reg_reg_0\ : STD_LOGIC;
  signal m_terminate_frame_reg_i_1_n_0 : STD_LOGIC;
  signal \^m_terminate_frame_reg_reg_0\ : STD_LOGIC;
  signal mem_reg_0_i_2_n_0 : STD_LOGIC;
  signal overflow_reg126_out : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal p_8_in : STD_LOGIC;
  signal rd_ptr_gray_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal rd_ptr_gray_reg0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \rd_ptr_gray_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal rd_ptr_gray_sync1_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal rd_ptr_gray_sync2_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal rd_ptr_reg : STD_LOGIC;
  signal rd_ptr_reg0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \rd_ptr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal rd_ptr_reg_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \rd_ptr_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal rd_ptr_reg_reg_rep : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \rd_ptr_reg_reg_rep[11]_i_3_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[11]_i_3_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[11]_i_3_n_3\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[4]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[4]_i_1_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[4]_i_1_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[4]_i_1_n_3\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[8]_i_1_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[8]_i_1_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[8]_i_1_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[8]_i_1_n_3\ : STD_LOGIC;
  signal s_frame_reg : STD_LOGIC;
  signal s_frame_reg_i_1_n_0 : STD_LOGIC;
  signal s_rst_sync1_reg : STD_LOGIC;
  signal s_rst_sync2_reg : STD_LOGIC;
  signal s_rst_sync3_reg : STD_LOGIC;
  signal wr_ptr_cur_gray_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wr_ptr_cur_gray_reg1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \wr_ptr_cur_gray_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal wr_ptr_cur_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wr_ptr_cur_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg__0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal wr_ptr_gray_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wr_ptr_gray_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal wr_ptr_gray_reg_0 : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal wr_ptr_gray_sync1_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal wr_ptr_gray_sync1_reg0 : STD_LOGIC;
  signal wr_ptr_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wr_ptr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal wr_ptr_sync_gray_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal wr_ptr_sync_gray_reg0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wr_ptr_sync_gray_reg10_in : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \wr_ptr_sync_gray_reg10_in__0\ : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \wr_ptr_sync_gray_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal wr_ptr_update_ack_sync1_reg : STD_LOGIC;
  signal wr_ptr_update_ack_sync2_reg : STD_LOGIC;
  signal wr_ptr_update_reg : STD_LOGIC;
  signal wr_ptr_update_reg_i_1_n_0 : STD_LOGIC;
  signal wr_ptr_update_sync1_reg : STD_LOGIC;
  signal wr_ptr_update_sync2_reg : STD_LOGIC;
  signal wr_ptr_update_sync3_reg : STD_LOGIC;
  signal wr_ptr_update_valid_reg : STD_LOGIC;
  signal wr_ptr_update_valid_reg13_out : STD_LOGIC;
  signal wr_ptr_update_valid_reg_i_1_n_0 : STD_LOGIC;
  signal wr_ptr_update_valid_reg_i_2_n_0 : STD_LOGIC;
  signal wr_ptr_update_valid_reg_i_3_n_0 : STD_LOGIC;
  signal NLW_empty_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_empty_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_empty_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_full_cur_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_full_cur_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_full_cur_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_full_wr_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_full_wr_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_full_wr_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_rd_ptr_reg_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_ptr_reg_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rd_ptr_reg_reg_rep[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wr_ptr_gray_reg_reg[12]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[0]_i_2__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[7]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[7]_i_5\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tvalid_pipe_reg[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of m_drop_frame_reg_i_2 : label is "soft_lutpair52";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of m_rst_sync1_reg_reg : label is "no";
  attribute SHREG_EXTRACT of m_rst_sync2_reg_reg : label is "no";
  attribute SHREG_EXTRACT of m_rst_sync3_reg_reg : label is "no";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 40960;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "inst/eth_mac_inst/tx_fifo/fifo_inst/mem_reg_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 40960;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "inst/eth_mac_inst/tx_fifo/fifo_inst/mem_reg_1";
  attribute RTL_RAM_TYPE of mem_reg_1 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 4095;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 9;
  attribute ram_slice_end of mem_reg_1 : label is 9;
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[10]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[11]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[2]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[3]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[4]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[5]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[6]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[7]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[8]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[9]_i_1\ : label is "soft_lutpair62";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[0]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[10]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[11]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[12]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[1]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[2]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[3]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[4]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[5]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[6]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[7]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[8]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[9]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[0]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[10]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[11]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[12]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[1]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[2]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[3]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[4]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[5]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[6]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[7]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[8]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[9]\ : label is "no";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg[8]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg_rep[11]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg_rep[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg_rep[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \rd_ptr_reg_rep[0]_i_1\ : label is "soft_lutpair60";
  attribute SHREG_EXTRACT of s_rst_sync1_reg_reg : label is "no";
  attribute SHREG_EXTRACT of s_rst_sync2_reg_reg : label is "no";
  attribute SHREG_EXTRACT of s_rst_sync3_reg_reg : label is "no";
  attribute ADDER_THRESHOLD of \wr_ptr_cur_reg_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \wr_ptr_cur_reg_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[0]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[10]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[11]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[12]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[4]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[5]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[6]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[7]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[8]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[9]_i_1\ : label is "soft_lutpair70";
  attribute ADDER_THRESHOLD of \wr_ptr_gray_reg_reg[12]_i_2\ : label is 35;
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[0]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[10]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[11]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[12]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[1]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[2]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[3]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[4]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[5]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[6]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[7]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[8]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[9]\ : label is "no";
  attribute SOFT_HLUTNM of \wr_ptr_reg[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \wr_ptr_reg[11]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wr_ptr_reg[12]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wr_ptr_reg[1]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \wr_ptr_reg[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \wr_ptr_reg[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \wr_ptr_reg[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \wr_ptr_reg[5]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \wr_ptr_reg[6]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \wr_ptr_reg[7]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \wr_ptr_reg[8]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \wr_ptr_reg[9]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \wr_ptr_sync_gray_reg[12]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \wr_ptr_sync_gray_reg[12]_i_3\ : label is "soft_lutpair53";
  attribute SHREG_EXTRACT of wr_ptr_update_ack_sync1_reg_reg : label is "no";
  attribute SHREG_EXTRACT of wr_ptr_update_ack_sync2_reg_reg : label is "no";
  attribute SHREG_EXTRACT of wr_ptr_update_sync1_reg_reg : label is "no";
  attribute SHREG_EXTRACT of wr_ptr_update_sync2_reg_reg : label is "no";
  attribute SHREG_EXTRACT of wr_ptr_update_sync3_reg_reg : label is "no";
  attribute SOFT_HLUTNM of wr_ptr_update_valid_reg_i_3 : label is "soft_lutpair51";
begin
  \m_axis_pipe_reg_reg[0]_0\(8 downto 0) <= \^m_axis_pipe_reg_reg[0]_0\(8 downto 0);
  \m_axis_tvalid_pipe_reg_reg[1]_0\ <= \^m_axis_tvalid_pipe_reg_reg[1]_0\;
  \m_axis_tvalid_pipe_reg_reg[1]_1\ <= \^m_axis_tvalid_pipe_reg_reg[1]_1\;
  m_rst_sync1_reg_reg_0 <= \^m_rst_sync1_reg_reg_0\;
  m_rst_sync3_reg_reg_0 <= \^m_rst_sync3_reg_reg_0\;
  m_terminate_frame_reg_reg_0 <= \^m_terminate_frame_reg_reg_0\;
\FSM_onehot_state_reg[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I1 => \^m_axis_pipe_reg_reg[0]_0\(8),
      I2 => \^m_terminate_frame_reg_reg_0\,
      O => \^m_axis_tvalid_pipe_reg_reg[1]_1\
    );
\FSM_onehot_state_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => m_axis(9),
      I1 => \^m_terminate_frame_reg_reg_0\,
      I2 => \^m_axis_pipe_reg_reg[0]_0\(8),
      I3 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I4 => \FSM_onehot_state_reg_reg[7]\(0),
      O => D(0)
    );
\FSM_onehot_state_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF10F0"
    )
        port map (
      I0 => \^m_axis_pipe_reg_reg[0]_0\(8),
      I1 => \^m_terminate_frame_reg_reg_0\,
      I2 => \FSM_onehot_state_reg_reg[7]\(1),
      I3 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I4 => \FSM_onehot_state_reg_reg[7]\(0),
      O => D(1)
    );
\FSM_onehot_state_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C08000"
    )
        port map (
      I0 => m_axis(9),
      I1 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I2 => \FSM_onehot_state_reg_reg[7]\(0),
      I3 => \^m_axis_pipe_reg_reg[0]_0\(8),
      I4 => \^m_terminate_frame_reg_reg_0\,
      O => mem_reg_1_0
    );
\FSM_onehot_state_reg[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000777F"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg[7]\(1),
      I1 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I2 => \^m_axis_pipe_reg_reg[0]_0\(8),
      I3 => \^m_terminate_frame_reg_reg_0\,
      I4 => \FSM_onehot_state_reg_reg[7]\(2),
      O => \FSM_onehot_state_reg_reg[6]\
    );
drop_frame_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45400000"
    )
        port map (
      I0 => reset,
      I1 => drop_frame_reg_i_2_n_0,
      I2 => drop_frame_reg_i_3_n_0,
      I3 => drop_frame_reg_reg_n_0,
      I4 => drop_frame_reg_i_4_n_0,
      O => drop_frame_reg_i_1_n_0
    );
drop_frame_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCFFFFCCCCCCF5"
    )
        port map (
      I0 => s_axis(8),
      I1 => s_frame_reg,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => \wr_ptr_gray_reg[12]_i_3_n_0\,
      I5 => full_wr,
      O => drop_frame_reg_i_2_n_0
    );
drop_frame_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00AA0CAA00"
    )
        port map (
      I0 => s_frame_reg,
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_cur,
      I3 => s_rst_sync3_reg,
      I4 => tx_axis_tvalid,
      I5 => full_wr,
      O => drop_frame_reg_i_3_n_0
    );
drop_frame_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FFF5FFFFFFF7FF"
    )
        port map (
      I0 => s_axis(8),
      I1 => drop_frame_reg_reg_n_0,
      I2 => s_rst_sync3_reg,
      I3 => tx_axis_tvalid,
      I4 => full_cur,
      I5 => full_wr,
      O => drop_frame_reg_i_4_n_0
    );
drop_frame_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => drop_frame_reg_i_1_n_0,
      Q => drop_frame_reg_reg_n_0,
      R => '0'
    );
empty_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => empty_carry_n_0,
      CO(2) => empty_carry_n_1,
      CO(1) => empty_carry_n_2,
      CO(0) => empty_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_empty_carry_O_UNCONNECTED(3 downto 0),
      S(3) => empty_carry_i_1_n_0,
      S(2) => empty_carry_i_2_n_0,
      S(1) => empty_carry_i_3_n_0,
      S(0) => empty_carry_i_4_n_0
    );
\empty_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => empty_carry_n_0,
      CO(3 downto 1) => \NLW_empty_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => empty,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_empty_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \empty_carry__0_i_1_n_0\
    );
\empty_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr_gray_sync1_reg(12),
      I1 => rd_ptr_gray_reg(12),
      O => \empty_carry__0_i_1_n_0\
    );
empty_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_ptr_gray_reg(9),
      I1 => wr_ptr_gray_sync1_reg(9),
      I2 => rd_ptr_gray_reg(10),
      I3 => wr_ptr_gray_sync1_reg(10),
      I4 => wr_ptr_gray_sync1_reg(11),
      I5 => rd_ptr_gray_reg(11),
      O => empty_carry_i_1_n_0
    );
empty_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_ptr_gray_reg(6),
      I1 => wr_ptr_gray_sync1_reg(6),
      I2 => rd_ptr_gray_reg(7),
      I3 => wr_ptr_gray_sync1_reg(7),
      I4 => wr_ptr_gray_sync1_reg(8),
      I5 => rd_ptr_gray_reg(8),
      O => empty_carry_i_2_n_0
    );
empty_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_ptr_gray_reg(3),
      I1 => wr_ptr_gray_sync1_reg(3),
      I2 => rd_ptr_gray_reg(4),
      I3 => wr_ptr_gray_sync1_reg(4),
      I4 => wr_ptr_gray_sync1_reg(5),
      I5 => rd_ptr_gray_reg(5),
      O => empty_carry_i_3_n_0
    );
empty_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_ptr_gray_reg(0),
      I1 => wr_ptr_gray_sync1_reg(0),
      I2 => rd_ptr_gray_reg(1),
      I3 => wr_ptr_gray_sync1_reg(1),
      I4 => wr_ptr_gray_sync1_reg(2),
      I5 => rd_ptr_gray_reg(2),
      O => empty_carry_i_4_n_0
    );
full_cur_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => full_cur_carry_n_0,
      CO(2) => full_cur_carry_n_1,
      CO(1) => full_cur_carry_n_2,
      CO(0) => full_cur_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_full_cur_carry_O_UNCONNECTED(3 downto 0),
      S(3) => full_cur_carry_i_1_n_0,
      S(2) => full_cur_carry_i_2_n_0,
      S(1) => full_cur_carry_i_3_n_0,
      S(0) => full_cur_carry_i_4_n_0
    );
\full_cur_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => full_cur_carry_n_0,
      CO(3 downto 1) => \NLW_full_cur_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => full_cur,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_full_cur_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \full_cur_carry__0_i_1_n_0\
    );
\full_cur_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_gray_sync2_reg(12),
      I1 => wr_ptr_cur_reg(12),
      O => \full_cur_carry__0_i_1_n_0\
    );
full_cur_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => rd_ptr_gray_sync2_reg(11),
      I1 => wr_ptr_cur_gray_reg(11),
      I2 => rd_ptr_gray_sync2_reg(10),
      I3 => wr_ptr_cur_gray_reg(10),
      I4 => wr_ptr_cur_gray_reg(9),
      I5 => rd_ptr_gray_sync2_reg(9),
      O => full_cur_carry_i_1_n_0
    );
full_cur_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_ptr_gray_sync2_reg(8),
      I1 => wr_ptr_cur_gray_reg(8),
      I2 => rd_ptr_gray_sync2_reg(7),
      I3 => wr_ptr_cur_gray_reg(7),
      I4 => wr_ptr_cur_gray_reg(6),
      I5 => rd_ptr_gray_sync2_reg(6),
      O => full_cur_carry_i_2_n_0
    );
full_cur_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_ptr_gray_sync2_reg(5),
      I1 => wr_ptr_cur_gray_reg(5),
      I2 => rd_ptr_gray_sync2_reg(4),
      I3 => wr_ptr_cur_gray_reg(4),
      I4 => wr_ptr_cur_gray_reg(3),
      I5 => rd_ptr_gray_sync2_reg(3),
      O => full_cur_carry_i_3_n_0
    );
full_cur_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => rd_ptr_gray_sync2_reg(2),
      I1 => wr_ptr_cur_gray_reg(2),
      I2 => rd_ptr_gray_sync2_reg(1),
      I3 => wr_ptr_cur_gray_reg(1),
      I4 => wr_ptr_cur_gray_reg(0),
      I5 => rd_ptr_gray_sync2_reg(0),
      O => full_cur_carry_i_4_n_0
    );
full_wr_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => full_wr_carry_n_0,
      CO(2) => full_wr_carry_n_1,
      CO(1) => full_wr_carry_n_2,
      CO(0) => full_wr_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_full_wr_carry_O_UNCONNECTED(3 downto 0),
      S(3) => full_wr_carry_i_1_n_0,
      S(2) => full_wr_carry_i_2_n_0,
      S(1) => full_wr_carry_i_3_n_0,
      S(0) => full_wr_carry_i_4_n_0
    );
\full_wr_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => full_wr_carry_n_0,
      CO(3 downto 1) => \NLW_full_wr_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => full_wr,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_full_wr_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \full_wr_carry__0_i_1_n_0\
    );
\full_wr_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_cur_reg(12),
      I1 => wr_ptr_cur_gray_reg1(11),
      O => \full_wr_carry__0_i_1_n_0\
    );
full_wr_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_ptr_cur_reg(11),
      I1 => wr_ptr_cur_gray_reg1(10),
      I2 => wr_ptr_cur_reg(10),
      I3 => wr_ptr_cur_gray_reg1(9),
      I4 => wr_ptr_cur_gray_reg1(8),
      I5 => wr_ptr_cur_reg(9),
      O => full_wr_carry_i_1_n_0
    );
full_wr_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_ptr_cur_reg(8),
      I1 => wr_ptr_cur_gray_reg1(7),
      I2 => wr_ptr_cur_reg(7),
      I3 => wr_ptr_cur_gray_reg1(6),
      I4 => wr_ptr_cur_gray_reg1(5),
      I5 => wr_ptr_cur_reg(6),
      O => full_wr_carry_i_2_n_0
    );
full_wr_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_ptr_cur_reg(5),
      I1 => wr_ptr_cur_gray_reg1(4),
      I2 => wr_ptr_cur_reg(4),
      I3 => wr_ptr_cur_gray_reg1(3),
      I4 => wr_ptr_cur_gray_reg1(2),
      I5 => wr_ptr_cur_reg(3),
      O => full_wr_carry_i_3_n_0
    );
full_wr_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_ptr_cur_reg(2),
      I1 => wr_ptr_cur_gray_reg1(1),
      I2 => wr_ptr_cur_reg(1),
      I3 => wr_ptr_cur_gray_reg1(0),
      I4 => \wr_ptr_reg_reg_n_0_[0]\,
      I5 => wr_ptr_cur_reg(0),
      O => full_wr_carry_i_4_n_0
    );
\m_axis_tvalid_pipe_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF20"
    )
        port map (
      I0 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I1 => tx_fifo_axis_tready,
      I2 => \m_axis_tvalid_pipe_reg_reg_n_0_[0]\,
      I3 => rd_ptr_reg,
      I4 => \^m_rst_sync3_reg_reg_0\,
      I5 => Q(0),
      O => \m_axis_tvalid_pipe_reg[0]_i_1_n_0\
    );
\m_axis_tvalid_pipe_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \m_axis_tvalid_pipe_reg_reg_n_0_[0]\,
      I1 => m_drop_frame_reg_reg_n_0,
      I2 => tx_fifo_axis_tready,
      I3 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      O => \m_axis_tvalid_pipe_reg[1]_i_1_n_0\
    );
\m_axis_tvalid_pipe_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => '1',
      D => \m_axis_tvalid_pipe_reg[0]_i_1_n_0\,
      Q => \m_axis_tvalid_pipe_reg_reg_n_0_[0]\,
      R => '0'
    );
\m_axis_tvalid_pipe_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => '1',
      D => \m_axis_tvalid_pipe_reg[1]_i_1_n_0\,
      Q => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      R => Q(0)
    );
m_drop_frame_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555500300000"
    )
        port map (
      I0 => m_axis_tvalid_pipe_reg0,
      I1 => \^m_axis_tvalid_pipe_reg_reg[1]_1\,
      I2 => m_frame_reg,
      I3 => \^m_terminate_frame_reg_reg_0\,
      I4 => \^m_rst_sync3_reg_reg_0\,
      I5 => m_drop_frame_reg_reg_n_0,
      O => m_drop_frame_reg_i_1_n_0
    );
m_drop_frame_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => m_drop_frame_reg_reg_n_0,
      I1 => tx_fifo_axis_tready,
      I2 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      O => m_axis_tvalid_pipe_reg0
    );
m_drop_frame_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => '1',
      D => m_drop_frame_reg_i_1_n_0,
      Q => m_drop_frame_reg_reg_n_0,
      R => Q(0)
    );
m_frame_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404045454545454"
    )
        port map (
      I0 => Q(0),
      I1 => m_frame_reg,
      I2 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I3 => \^m_axis_pipe_reg_reg[0]_0\(8),
      I4 => \^m_terminate_frame_reg_reg_0\,
      I5 => tx_fifo_axis_tready,
      O => m_frame_reg_i_1_n_0
    );
m_frame_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => '1',
      D => m_frame_reg_i_1_n_0,
      Q => m_frame_reg,
      R => '0'
    );
m_rst_sync1_reg_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => '0',
      PRE => reset,
      Q => \^m_rst_sync1_reg_reg_0\
    );
m_rst_sync2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => tx_clk,
      CE => '1',
      D => \^m_rst_sync1_reg_reg_0\,
      Q => m_rst_sync2_reg,
      R => '0'
    );
m_rst_sync3_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => tx_clk,
      CE => '1',
      D => m_rst_sync2_reg,
      Q => \^m_rst_sync3_reg_reg_0\,
      R => '0'
    );
m_terminate_frame_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3D0"
    )
        port map (
      I0 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I1 => tx_fifo_axis_tready,
      I2 => m_drop_frame_reg_reg_n_0,
      I3 => \^m_terminate_frame_reg_reg_0\,
      O => m_terminate_frame_reg_i_1_n_0
    );
m_terminate_frame_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => '1',
      D => m_terminate_frame_reg_i_1_n_0,
      Q => \^m_terminate_frame_reg_reg_0\,
      R => Q(0)
    );
mem_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => wr_ptr_cur_reg(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => rd_ptr_reg_reg_rep(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clock,
      CLKBWRCLK => tx_clk,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => s_axis(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => s_axis(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => \^m_axis_pipe_reg_reg[0]_0\(7 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => \^m_axis_pipe_reg_reg[0]_0\(8),
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => p_8_in,
      ENBWREN => mem_reg_0_i_2_n_0,
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => mem_reg_1_1,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => overflow_reg126_out,
      WEA(2) => overflow_reg126_out,
      WEA(1) => overflow_reg126_out,
      WEA(0) => overflow_reg126_out,
      WEBWE(7 downto 0) => B"00000000"
    );
mem_reg_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => drop_frame_reg_reg_n_0,
      I1 => full_wr,
      O => p_8_in
    );
mem_reg_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \m_axis_tvalid_pipe_reg_reg_n_0_[0]\,
      I1 => tx_fifo_axis_tready,
      I2 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      O => mem_reg_0_i_2_n_0
    );
mem_reg_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B00"
    )
        port map (
      I0 => full_wr,
      I1 => full_cur,
      I2 => s_rst_sync3_reg,
      I3 => tx_axis_tvalid,
      O => overflow_reg126_out
    );
mem_reg_1: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(13 downto 2) => wr_ptr_cur_reg(11 downto 0),
      ADDRARDADDR(1 downto 0) => B"11",
      ADDRBWRADDR(13 downto 2) => rd_ptr_reg_reg_rep(11 downto 0),
      ADDRBWRADDR(1 downto 0) => B"11",
      CLKARDCLK => clock,
      CLKBWRCLK => tx_clk,
      DIADI(15 downto 1) => B"000000000000000",
      DIADI(0) => s_axis(9),
      DIBDI(15 downto 0) => B"0000000000000001",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 1) => NLW_mem_reg_1_DOBDO_UNCONNECTED(15 downto 1),
      DOBDO(0) => m_axis(9),
      DOPADOP(1 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => p_8_in,
      ENBWREN => mem_reg_0_i_2_n_0,
      REGCEAREGCE => '0',
      REGCEB => mem_reg_1_1,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => overflow_reg126_out,
      WEA(0) => overflow_reg126_out,
      WEBWE(3 downto 0) => B"0000"
    );
\rd_ptr_gray_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rd_ptr_reg_reg(0),
      I1 => rd_ptr_reg0(1),
      O => \rd_ptr_gray_reg[0]_i_1_n_0\
    );
\rd_ptr_gray_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(10),
      I1 => rd_ptr_reg0(11),
      O => rd_ptr_gray_reg0(10)
    );
\rd_ptr_gray_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(11),
      I1 => rd_ptr_reg0(12),
      O => rd_ptr_gray_reg0(11)
    );
\rd_ptr_gray_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(1),
      I1 => rd_ptr_reg0(2),
      O => rd_ptr_gray_reg0(1)
    );
\rd_ptr_gray_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(2),
      I1 => rd_ptr_reg0(3),
      O => rd_ptr_gray_reg0(2)
    );
\rd_ptr_gray_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(3),
      I1 => rd_ptr_reg0(4),
      O => rd_ptr_gray_reg0(3)
    );
\rd_ptr_gray_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(4),
      I1 => rd_ptr_reg0(5),
      O => rd_ptr_gray_reg0(4)
    );
\rd_ptr_gray_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(5),
      I1 => rd_ptr_reg0(6),
      O => rd_ptr_gray_reg0(5)
    );
\rd_ptr_gray_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(6),
      I1 => rd_ptr_reg0(7),
      O => rd_ptr_gray_reg0(6)
    );
\rd_ptr_gray_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(7),
      I1 => rd_ptr_reg0(8),
      O => rd_ptr_gray_reg0(7)
    );
\rd_ptr_gray_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(8),
      I1 => rd_ptr_reg0(9),
      O => rd_ptr_gray_reg0(8)
    );
\rd_ptr_gray_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(9),
      I1 => rd_ptr_reg0(10),
      O => rd_ptr_gray_reg0(9)
    );
\rd_ptr_gray_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_gray_reg[0]_i_1_n_0\,
      Q => rd_ptr_gray_reg(0),
      R => clear
    );
\rd_ptr_gray_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_gray_reg0(10),
      Q => rd_ptr_gray_reg(10),
      R => clear
    );
\rd_ptr_gray_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_gray_reg0(11),
      Q => rd_ptr_gray_reg(11),
      R => clear
    );
\rd_ptr_gray_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(12),
      Q => rd_ptr_gray_reg(12),
      R => clear
    );
\rd_ptr_gray_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_gray_reg0(1),
      Q => rd_ptr_gray_reg(1),
      R => clear
    );
\rd_ptr_gray_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_gray_reg0(2),
      Q => rd_ptr_gray_reg(2),
      R => clear
    );
\rd_ptr_gray_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_gray_reg0(3),
      Q => rd_ptr_gray_reg(3),
      R => clear
    );
\rd_ptr_gray_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_gray_reg0(4),
      Q => rd_ptr_gray_reg(4),
      R => clear
    );
\rd_ptr_gray_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_gray_reg0(5),
      Q => rd_ptr_gray_reg(5),
      R => clear
    );
\rd_ptr_gray_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_gray_reg0(6),
      Q => rd_ptr_gray_reg(6),
      R => clear
    );
\rd_ptr_gray_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_gray_reg0(7),
      Q => rd_ptr_gray_reg(7),
      R => clear
    );
\rd_ptr_gray_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_gray_reg0(8),
      Q => rd_ptr_gray_reg(8),
      R => clear
    );
\rd_ptr_gray_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_gray_reg0(9),
      Q => rd_ptr_gray_reg(9),
      R => clear
    );
\rd_ptr_gray_sync1_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(0),
      Q => rd_ptr_gray_sync1_reg(0),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(10),
      Q => rd_ptr_gray_sync1_reg(10),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(11),
      Q => rd_ptr_gray_sync1_reg(11),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(12),
      Q => rd_ptr_gray_sync1_reg(12),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(1),
      Q => rd_ptr_gray_sync1_reg(1),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(2),
      Q => rd_ptr_gray_sync1_reg(2),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(3),
      Q => rd_ptr_gray_sync1_reg(3),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(4),
      Q => rd_ptr_gray_sync1_reg(4),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(5),
      Q => rd_ptr_gray_sync1_reg(5),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(6),
      Q => rd_ptr_gray_sync1_reg(6),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(7),
      Q => rd_ptr_gray_sync1_reg(7),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(8),
      Q => rd_ptr_gray_sync1_reg(8),
      R => reset
    );
\rd_ptr_gray_sync1_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_reg(9),
      Q => rd_ptr_gray_sync1_reg(9),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(0),
      Q => rd_ptr_gray_sync2_reg(0),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(10),
      Q => rd_ptr_gray_sync2_reg(10),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(11),
      Q => rd_ptr_gray_sync2_reg(11),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(12),
      Q => rd_ptr_gray_sync2_reg(12),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(1),
      Q => rd_ptr_gray_sync2_reg(1),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(2),
      Q => rd_ptr_gray_sync2_reg(2),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(3),
      Q => rd_ptr_gray_sync2_reg(3),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(4),
      Q => rd_ptr_gray_sync2_reg(4),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(5),
      Q => rd_ptr_gray_sync2_reg(5),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(6),
      Q => rd_ptr_gray_sync2_reg(6),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(7),
      Q => rd_ptr_gray_sync2_reg(7),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(8),
      Q => rd_ptr_gray_sync2_reg(8),
      R => reset
    );
\rd_ptr_gray_sync2_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => rd_ptr_gray_sync1_reg(9),
      Q => rd_ptr_gray_sync2_reg(9),
      R => reset
    );
\rd_ptr_reg[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr_reg_reg(0),
      O => \rd_ptr_reg[0]_i_2_n_0\
    );
\rd_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[0]_i_1_n_7\,
      Q => rd_ptr_reg_reg(0),
      R => clear
    );
\rd_ptr_reg_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rd_ptr_reg_reg[0]_i_1_n_0\,
      CO(2) => \rd_ptr_reg_reg[0]_i_1_n_1\,
      CO(1) => \rd_ptr_reg_reg[0]_i_1_n_2\,
      CO(0) => \rd_ptr_reg_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rd_ptr_reg_reg[0]_i_1_n_4\,
      O(2) => \rd_ptr_reg_reg[0]_i_1_n_5\,
      O(1) => \rd_ptr_reg_reg[0]_i_1_n_6\,
      O(0) => \rd_ptr_reg_reg[0]_i_1_n_7\,
      S(3 downto 1) => rd_ptr_reg_reg(3 downto 1),
      S(0) => \rd_ptr_reg[0]_i_2_n_0\
    );
\rd_ptr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[8]_i_1_n_5\,
      Q => rd_ptr_reg_reg(10),
      R => clear
    );
\rd_ptr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[8]_i_1_n_4\,
      Q => rd_ptr_reg_reg(11),
      R => clear
    );
\rd_ptr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[12]_i_1_n_7\,
      Q => rd_ptr_reg_reg(12),
      R => clear
    );
\rd_ptr_reg_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_reg_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_rd_ptr_reg_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_rd_ptr_reg_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \rd_ptr_reg_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => rd_ptr_reg_reg(12)
    );
\rd_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[0]_i_1_n_6\,
      Q => rd_ptr_reg_reg(1),
      R => clear
    );
\rd_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[0]_i_1_n_5\,
      Q => rd_ptr_reg_reg(2),
      R => clear
    );
\rd_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[0]_i_1_n_4\,
      Q => rd_ptr_reg_reg(3),
      R => clear
    );
\rd_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[4]_i_1_n_7\,
      Q => rd_ptr_reg_reg(4),
      R => clear
    );
\rd_ptr_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_reg_reg[0]_i_1_n_0\,
      CO(3) => \rd_ptr_reg_reg[4]_i_1_n_0\,
      CO(2) => \rd_ptr_reg_reg[4]_i_1_n_1\,
      CO(1) => \rd_ptr_reg_reg[4]_i_1_n_2\,
      CO(0) => \rd_ptr_reg_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_ptr_reg_reg[4]_i_1_n_4\,
      O(2) => \rd_ptr_reg_reg[4]_i_1_n_5\,
      O(1) => \rd_ptr_reg_reg[4]_i_1_n_6\,
      O(0) => \rd_ptr_reg_reg[4]_i_1_n_7\,
      S(3 downto 0) => rd_ptr_reg_reg(7 downto 4)
    );
\rd_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[4]_i_1_n_6\,
      Q => rd_ptr_reg_reg(5),
      R => clear
    );
\rd_ptr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[4]_i_1_n_5\,
      Q => rd_ptr_reg_reg(6),
      R => clear
    );
\rd_ptr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[4]_i_1_n_4\,
      Q => rd_ptr_reg_reg(7),
      R => clear
    );
\rd_ptr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[8]_i_1_n_7\,
      Q => rd_ptr_reg_reg(8),
      R => clear
    );
\rd_ptr_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_reg_reg[4]_i_1_n_0\,
      CO(3) => \rd_ptr_reg_reg[8]_i_1_n_0\,
      CO(2) => \rd_ptr_reg_reg[8]_i_1_n_1\,
      CO(1) => \rd_ptr_reg_reg[8]_i_1_n_2\,
      CO(0) => \rd_ptr_reg_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_ptr_reg_reg[8]_i_1_n_4\,
      O(2) => \rd_ptr_reg_reg[8]_i_1_n_5\,
      O(1) => \rd_ptr_reg_reg[8]_i_1_n_6\,
      O(0) => \rd_ptr_reg_reg[8]_i_1_n_7\,
      S(3 downto 0) => rd_ptr_reg_reg(11 downto 8)
    );
\rd_ptr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => \rd_ptr_reg_reg[8]_i_1_n_6\,
      Q => rd_ptr_reg_reg(9),
      R => clear
    );
\rd_ptr_reg_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(0),
      Q => rd_ptr_reg_reg_rep(0),
      R => clear
    );
\rd_ptr_reg_reg_rep[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(10),
      Q => rd_ptr_reg_reg_rep(10),
      R => clear
    );
\rd_ptr_reg_reg_rep[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(11),
      Q => rd_ptr_reg_reg_rep(11),
      R => clear
    );
\rd_ptr_reg_reg_rep[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_reg_reg_rep[8]_i_1_n_0\,
      CO(3) => \NLW_rd_ptr_reg_reg_rep[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \rd_ptr_reg_reg_rep[11]_i_3_n_1\,
      CO(1) => \rd_ptr_reg_reg_rep[11]_i_3_n_2\,
      CO(0) => \rd_ptr_reg_reg_rep[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rd_ptr_reg0(12 downto 9),
      S(3 downto 0) => rd_ptr_reg_reg(12 downto 9)
    );
\rd_ptr_reg_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(1),
      Q => rd_ptr_reg_reg_rep(1),
      R => clear
    );
\rd_ptr_reg_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(2),
      Q => rd_ptr_reg_reg_rep(2),
      R => clear
    );
\rd_ptr_reg_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(3),
      Q => rd_ptr_reg_reg_rep(3),
      R => clear
    );
\rd_ptr_reg_reg_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(4),
      Q => rd_ptr_reg_reg_rep(4),
      R => clear
    );
\rd_ptr_reg_reg_rep[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rd_ptr_reg_reg_rep[4]_i_1_n_0\,
      CO(2) => \rd_ptr_reg_reg_rep[4]_i_1_n_1\,
      CO(1) => \rd_ptr_reg_reg_rep[4]_i_1_n_2\,
      CO(0) => \rd_ptr_reg_reg_rep[4]_i_1_n_3\,
      CYINIT => rd_ptr_reg_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rd_ptr_reg0(4 downto 1),
      S(3 downto 0) => rd_ptr_reg_reg(4 downto 1)
    );
\rd_ptr_reg_reg_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(5),
      Q => rd_ptr_reg_reg_rep(5),
      R => clear
    );
\rd_ptr_reg_reg_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(6),
      Q => rd_ptr_reg_reg_rep(6),
      R => clear
    );
\rd_ptr_reg_reg_rep[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(7),
      Q => rd_ptr_reg_reg_rep(7),
      R => clear
    );
\rd_ptr_reg_reg_rep[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(8),
      Q => rd_ptr_reg_reg_rep(8),
      R => clear
    );
\rd_ptr_reg_reg_rep[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_reg_reg_rep[4]_i_1_n_0\,
      CO(3) => \rd_ptr_reg_reg_rep[8]_i_1_n_0\,
      CO(2) => \rd_ptr_reg_reg_rep[8]_i_1_n_1\,
      CO(1) => \rd_ptr_reg_reg_rep[8]_i_1_n_2\,
      CO(0) => \rd_ptr_reg_reg_rep[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rd_ptr_reg0(8 downto 5),
      S(3 downto 0) => rd_ptr_reg_reg(8 downto 5)
    );
\rd_ptr_reg_reg_rep[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => rd_ptr_reg,
      D => rd_ptr_reg0(9),
      Q => rd_ptr_reg_reg_rep(9),
      R => clear
    );
\rd_ptr_reg_rep[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr_reg_reg(0),
      O => rd_ptr_reg0(0)
    );
\rd_ptr_reg_rep[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000DF"
    )
        port map (
      I0 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I1 => tx_fifo_axis_tready,
      I2 => \m_axis_tvalid_pipe_reg_reg_n_0_[0]\,
      I3 => \^m_rst_sync3_reg_reg_0\,
      I4 => m_drop_frame_reg_reg_n_0,
      I5 => empty,
      O => rd_ptr_reg
    );
s_frame_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF75FFFF00450000"
    )
        port map (
      I0 => s_axis(8),
      I1 => full_wr,
      I2 => full_cur,
      I3 => s_rst_sync3_reg,
      I4 => tx_axis_tvalid,
      I5 => s_frame_reg,
      O => s_frame_reg_i_1_n_0
    );
s_frame_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => s_frame_reg_i_1_n_0,
      Q => s_frame_reg,
      R => reset
    );
s_rst_sync1_reg_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => tx_clk,
      CE => '1',
      D => '0',
      PRE => Q(0),
      Q => s_rst_sync1_reg
    );
s_rst_sync2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => s_rst_sync1_reg,
      Q => s_rst_sync2_reg,
      R => '0'
    );
s_rst_sync3_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => s_rst_sync2_reg,
      Q => s_rst_sync3_reg,
      R => '0'
    );
tx_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => full_cur,
      I1 => s_rst_sync3_reg,
      I2 => full_wr,
      O => tx_axis_tready
    );
\wr_ptr_cur_gray_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09F9F909"
    )
        port map (
      I0 => wr_ptr_cur_reg(0),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(1),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(0),
      I4 => \wr_ptr_reg_reg_n_0_[0]\,
      O => \wr_ptr_cur_gray_reg[0]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(11),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(10),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(10),
      I4 => wr_ptr_cur_gray_reg1(9),
      O => \wr_ptr_cur_gray_reg[10]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(12),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(11),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(11),
      I4 => wr_ptr_cur_gray_reg1(10),
      O => \wr_ptr_cur_gray_reg[11]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => drop_frame_reg_reg_n_0,
      I1 => full_wr,
      I2 => s_axis(9),
      I3 => s_axis(8),
      O => \wr_ptr_cur_gray_reg[11]_i_2_n_0\
    );
\wr_ptr_cur_gray_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(2),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(1),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(1),
      I4 => wr_ptr_cur_gray_reg1(0),
      O => \wr_ptr_cur_gray_reg[1]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(3),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(2),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(2),
      I4 => wr_ptr_cur_gray_reg1(1),
      O => \wr_ptr_cur_gray_reg[2]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(4),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(3),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(3),
      I4 => wr_ptr_cur_gray_reg1(2),
      O => \wr_ptr_cur_gray_reg[3]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(5),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(4),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(4),
      I4 => wr_ptr_cur_gray_reg1(3),
      O => \wr_ptr_cur_gray_reg[4]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(6),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(5),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(5),
      I4 => wr_ptr_cur_gray_reg1(4),
      O => \wr_ptr_cur_gray_reg[5]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(7),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(6),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(6),
      I4 => wr_ptr_cur_gray_reg1(5),
      O => \wr_ptr_cur_gray_reg[6]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(8),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(7),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(7),
      I4 => wr_ptr_cur_gray_reg1(6),
      O => \wr_ptr_cur_gray_reg[7]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(9),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(8),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(8),
      I4 => wr_ptr_cur_gray_reg1(7),
      O => \wr_ptr_cur_gray_reg[8]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(10),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(9),
      I2 => \wr_ptr_cur_gray_reg[11]_i_2_n_0\,
      I3 => wr_ptr_cur_gray_reg1(9),
      I4 => wr_ptr_cur_gray_reg1(8),
      O => \wr_ptr_cur_gray_reg[9]_i_1_n_0\
    );
\wr_ptr_cur_gray_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[0]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(0),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_gray_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[10]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(10),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_gray_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[11]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(11),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_gray_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[1]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(1),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_gray_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[2]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(2),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_gray_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[3]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(3),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_gray_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[4]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(4),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_gray_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[5]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(5),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_gray_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[6]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(6),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_gray_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[7]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(7),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_gray_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[8]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(8),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_gray_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_gray_reg[9]_i_1_n_0\,
      Q => wr_ptr_cur_gray_reg(9),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8A8A8AAABABAB"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[0]\,
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => wr_ptr_cur_reg(0),
      O => \wr_ptr_cur_reg[0]_i_1_n_0\
    );
\wr_ptr_cur_reg[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(9),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => \wr_ptr_sync_gray_reg10_in__0\(10),
      O => \wr_ptr_cur_reg[10]_i_1_n_0\
    );
\wr_ptr_cur_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_rst_sync3_reg,
      I1 => reset,
      O => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0CD0000"
    )
        port map (
      I0 => drop_frame_reg_reg_n_0,
      I1 => s_axis(8),
      I2 => full_wr,
      I3 => full_cur,
      I4 => tx_axis_tvalid,
      O => \wr_ptr_cur_reg__0\
    );
\wr_ptr_cur_reg[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(10),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => \wr_ptr_sync_gray_reg10_in__0\(11),
      O => \wr_ptr_cur_reg[11]_i_3_n_0\
    );
\wr_ptr_cur_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(11),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => wr_ptr_sync_gray_reg10_in(12),
      O => \wr_ptr_cur_reg[12]_i_1_n_0\
    );
\wr_ptr_cur_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(0),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => \wr_ptr_sync_gray_reg10_in__0\(1),
      O => \wr_ptr_cur_reg[1]_i_1_n_0\
    );
\wr_ptr_cur_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(1),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => \wr_ptr_sync_gray_reg10_in__0\(2),
      O => \wr_ptr_cur_reg[2]_i_1_n_0\
    );
\wr_ptr_cur_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(2),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => \wr_ptr_sync_gray_reg10_in__0\(3),
      O => \wr_ptr_cur_reg[3]_i_1_n_0\
    );
\wr_ptr_cur_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(3),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => \wr_ptr_sync_gray_reg10_in__0\(4),
      O => \wr_ptr_cur_reg[4]_i_1_n_0\
    );
\wr_ptr_cur_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(4),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => \wr_ptr_sync_gray_reg10_in__0\(5),
      O => \wr_ptr_cur_reg[5]_i_1_n_0\
    );
\wr_ptr_cur_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(5),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => \wr_ptr_sync_gray_reg10_in__0\(6),
      O => \wr_ptr_cur_reg[6]_i_1_n_0\
    );
\wr_ptr_cur_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(6),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => \wr_ptr_sync_gray_reg10_in__0\(7),
      O => \wr_ptr_cur_reg[7]_i_1_n_0\
    );
\wr_ptr_cur_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(7),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => \wr_ptr_sync_gray_reg10_in__0\(8),
      O => \wr_ptr_cur_reg[8]_i_1_n_0\
    );
\wr_ptr_cur_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABABABAAA8A8A8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(8),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(9),
      I4 => s_axis(8),
      I5 => \wr_ptr_sync_gray_reg10_in__0\(9),
      O => \wr_ptr_cur_reg[9]_i_1_n_0\
    );
\wr_ptr_cur_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[0]_i_1_n_0\,
      Q => wr_ptr_cur_reg(0),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[10]_i_1_n_0\,
      Q => wr_ptr_cur_reg(10),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[11]_i_3_n_0\,
      Q => wr_ptr_cur_reg(11),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[12]_i_1_n_0\,
      Q => wr_ptr_cur_reg(12),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[1]_i_1_n_0\,
      Q => wr_ptr_cur_reg(1),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[2]_i_1_n_0\,
      Q => wr_ptr_cur_reg(2),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[3]_i_1_n_0\,
      Q => wr_ptr_cur_reg(3),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[4]_i_1_n_0\,
      Q => wr_ptr_cur_reg(4),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wr_ptr_cur_reg_reg[4]_i_2_n_0\,
      CO(2) => \wr_ptr_cur_reg_reg[4]_i_2_n_1\,
      CO(1) => \wr_ptr_cur_reg_reg[4]_i_2_n_2\,
      CO(0) => \wr_ptr_cur_reg_reg[4]_i_2_n_3\,
      CYINIT => wr_ptr_cur_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \wr_ptr_sync_gray_reg10_in__0\(4 downto 1),
      S(3 downto 0) => wr_ptr_cur_reg(4 downto 1)
    );
\wr_ptr_cur_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[5]_i_1_n_0\,
      Q => wr_ptr_cur_reg(5),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[6]_i_1_n_0\,
      Q => wr_ptr_cur_reg(6),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[7]_i_1_n_0\,
      Q => wr_ptr_cur_reg(7),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[8]_i_1_n_0\,
      Q => wr_ptr_cur_reg(8),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_cur_reg_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_ptr_cur_reg_reg[4]_i_2_n_0\,
      CO(3) => \wr_ptr_cur_reg_reg[8]_i_2_n_0\,
      CO(2) => \wr_ptr_cur_reg_reg[8]_i_2_n_1\,
      CO(1) => \wr_ptr_cur_reg_reg[8]_i_2_n_2\,
      CO(0) => \wr_ptr_cur_reg_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \wr_ptr_sync_gray_reg10_in__0\(8 downto 5),
      S(3 downto 0) => wr_ptr_cur_reg(8 downto 5)
    );
\wr_ptr_cur_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_cur_reg__0\,
      D => \wr_ptr_cur_reg[9]_i_1_n_0\,
      Q => wr_ptr_cur_reg(9),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(1),
      I1 => wr_ptr_cur_reg(0),
      O => wr_ptr_sync_gray_reg0(0)
    );
\wr_ptr_gray_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(10),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(11),
      O => wr_ptr_sync_gray_reg0(10)
    );
\wr_ptr_gray_reg[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(11),
      I1 => wr_ptr_sync_gray_reg10_in(12),
      O => wr_ptr_sync_gray_reg0(11)
    );
\wr_ptr_gray_reg[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => s_axis(9),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(8),
      I4 => full_cur,
      I5 => \wr_ptr_gray_reg[12]_i_3_n_0\,
      O => wr_ptr_update_valid_reg13_out
    );
\wr_ptr_gray_reg[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_rst_sync3_reg,
      I1 => tx_axis_tvalid,
      O => \wr_ptr_gray_reg[12]_i_3_n_0\
    );
\wr_ptr_gray_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(1),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(2),
      O => wr_ptr_sync_gray_reg0(1)
    );
\wr_ptr_gray_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(2),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(3),
      O => wr_ptr_sync_gray_reg0(2)
    );
\wr_ptr_gray_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(3),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(4),
      O => wr_ptr_sync_gray_reg0(3)
    );
\wr_ptr_gray_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(4),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(5),
      O => wr_ptr_sync_gray_reg0(4)
    );
\wr_ptr_gray_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(5),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(6),
      O => wr_ptr_sync_gray_reg0(5)
    );
\wr_ptr_gray_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(6),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(7),
      O => wr_ptr_sync_gray_reg0(6)
    );
\wr_ptr_gray_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(7),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(8),
      O => wr_ptr_sync_gray_reg0(7)
    );
\wr_ptr_gray_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(8),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(9),
      O => wr_ptr_sync_gray_reg0(8)
    );
\wr_ptr_gray_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(9),
      I1 => \wr_ptr_sync_gray_reg10_in__0\(10),
      O => wr_ptr_sync_gray_reg0(9)
    );
\wr_ptr_gray_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(0),
      Q => wr_ptr_gray_reg(0),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(10),
      Q => wr_ptr_gray_reg(10),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(11),
      Q => wr_ptr_gray_reg(11),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg10_in(12),
      Q => wr_ptr_gray_reg(12),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_ptr_cur_reg_reg[8]_i_2_n_0\,
      CO(3) => \NLW_wr_ptr_gray_reg_reg[12]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \wr_ptr_gray_reg_reg[12]_i_2_n_1\,
      CO(1) => \wr_ptr_gray_reg_reg[12]_i_2_n_2\,
      CO(0) => \wr_ptr_gray_reg_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => wr_ptr_sync_gray_reg10_in(12),
      O(2 downto 0) => \wr_ptr_sync_gray_reg10_in__0\(11 downto 9),
      S(3 downto 0) => wr_ptr_cur_reg(12 downto 9)
    );
\wr_ptr_gray_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(1),
      Q => wr_ptr_gray_reg(1),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(2),
      Q => wr_ptr_gray_reg(2),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(3),
      Q => wr_ptr_gray_reg(3),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(4),
      Q => wr_ptr_gray_reg(4),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(5),
      Q => wr_ptr_gray_reg(5),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(6),
      Q => wr_ptr_gray_reg(6),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(7),
      Q => wr_ptr_gray_reg(7),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(8),
      Q => wr_ptr_gray_reg(8),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_update_valid_reg13_out,
      D => wr_ptr_sync_gray_reg0(9),
      Q => wr_ptr_gray_reg(9),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_gray_sync1_reg[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_update_sync3_reg,
      I1 => wr_ptr_update_sync2_reg,
      O => wr_ptr_gray_sync1_reg0
    );
\wr_ptr_gray_sync1_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(0),
      Q => wr_ptr_gray_sync1_reg(0),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(10),
      Q => wr_ptr_gray_sync1_reg(10),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(11),
      Q => wr_ptr_gray_sync1_reg(11),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(12),
      Q => wr_ptr_gray_sync1_reg(12),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(1),
      Q => wr_ptr_gray_sync1_reg(1),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(2),
      Q => wr_ptr_gray_sync1_reg(2),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(3),
      Q => wr_ptr_gray_sync1_reg(3),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(4),
      Q => wr_ptr_gray_sync1_reg(4),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(5),
      Q => wr_ptr_gray_sync1_reg(5),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(6),
      Q => wr_ptr_gray_sync1_reg(6),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(7),
      Q => wr_ptr_gray_sync1_reg(7),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(8),
      Q => wr_ptr_gray_sync1_reg(8),
      R => clear
    );
\wr_ptr_gray_sync1_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => wr_ptr_gray_sync1_reg0,
      D => wr_ptr_sync_gray_reg(9),
      Q => wr_ptr_gray_sync1_reg(9),
      R => clear
    );
\wr_ptr_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D1"
    )
        port map (
      I0 => wr_ptr_cur_reg(0),
      I1 => s_axis(9),
      I2 => \wr_ptr_reg_reg_n_0_[0]\,
      O => wr_ptr_reg(0)
    );
\wr_ptr_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(10),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(9),
      O => wr_ptr_reg(10)
    );
\wr_ptr_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(11),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(10),
      O => wr_ptr_reg(11)
    );
\wr_ptr_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => s_axis(8),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => tx_axis_tvalid,
      O => \wr_ptr_reg[12]_i_1_n_0\
    );
\wr_ptr_reg[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(12),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(11),
      O => wr_ptr_reg(12)
    );
\wr_ptr_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(1),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(0),
      O => wr_ptr_reg(1)
    );
\wr_ptr_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(2),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(1),
      O => wr_ptr_reg(2)
    );
\wr_ptr_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(3),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(2),
      O => wr_ptr_reg(3)
    );
\wr_ptr_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(4),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(3),
      O => wr_ptr_reg(4)
    );
\wr_ptr_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(5),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(4),
      O => wr_ptr_reg(5)
    );
\wr_ptr_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(6),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(5),
      O => wr_ptr_reg(6)
    );
\wr_ptr_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(7),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(6),
      O => wr_ptr_reg(7)
    );
\wr_ptr_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(8),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(7),
      O => wr_ptr_reg(8)
    );
\wr_ptr_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg10_in__0\(9),
      I1 => s_axis(9),
      I2 => wr_ptr_cur_gray_reg1(8),
      O => wr_ptr_reg(9)
    );
\wr_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(0),
      Q => \wr_ptr_reg_reg_n_0_[0]\,
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(10),
      Q => wr_ptr_cur_gray_reg1(9),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(11),
      Q => wr_ptr_cur_gray_reg1(10),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(12),
      Q => wr_ptr_cur_gray_reg1(11),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(1),
      Q => wr_ptr_cur_gray_reg1(0),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(2),
      Q => wr_ptr_cur_gray_reg1(1),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(3),
      Q => wr_ptr_cur_gray_reg1(2),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(4),
      Q => wr_ptr_cur_gray_reg1(3),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(5),
      Q => wr_ptr_cur_gray_reg1(4),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(6),
      Q => wr_ptr_cur_gray_reg1(5),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(7),
      Q => wr_ptr_cur_gray_reg1(6),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(8),
      Q => wr_ptr_cur_gray_reg1(7),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_reg[12]_i_1_n_0\,
      D => wr_ptr_reg(9),
      Q => wr_ptr_cur_gray_reg1(8),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABA8A8AB"
    )
        port map (
      I0 => wr_ptr_gray_reg(0),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(1),
      I4 => wr_ptr_cur_reg(0),
      O => p_1_in(0)
    );
\wr_ptr_sync_gray_reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABABA8"
    )
        port map (
      I0 => wr_ptr_gray_reg(10),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(10),
      I4 => \wr_ptr_sync_gray_reg10_in__0\(11),
      O => p_1_in(10)
    );
\wr_ptr_sync_gray_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABABA8"
    )
        port map (
      I0 => wr_ptr_gray_reg(11),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(11),
      I4 => wr_ptr_sync_gray_reg10_in(12),
      O => p_1_in(11)
    );
\wr_ptr_sync_gray_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"909090FF"
    )
        port map (
      I0 => wr_ptr_update_reg,
      I1 => wr_ptr_update_ack_sync2_reg,
      I2 => wr_ptr_update_valid_reg,
      I3 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I4 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      O => \wr_ptr_sync_gray_reg[12]_i_1_n_0\
    );
\wr_ptr_sync_gray_reg[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => wr_ptr_gray_reg(12),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => full_cur,
      I3 => tx_axis_tvalid,
      I4 => wr_ptr_sync_gray_reg10_in(12),
      O => p_1_in(12)
    );
\wr_ptr_sync_gray_reg[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => tx_axis_tvalid,
      I1 => s_rst_sync3_reg,
      I2 => full_cur,
      O => \wr_ptr_sync_gray_reg[12]_i_3_n_0\
    );
\wr_ptr_sync_gray_reg[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFEFF"
    )
        port map (
      I0 => s_axis(9),
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      I3 => s_axis(8),
      I4 => wr_ptr_update_ack_sync2_reg,
      I5 => wr_ptr_update_reg,
      O => \wr_ptr_sync_gray_reg[12]_i_4_n_0\
    );
\wr_ptr_sync_gray_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABABA8"
    )
        port map (
      I0 => wr_ptr_gray_reg(1),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(1),
      I4 => \wr_ptr_sync_gray_reg10_in__0\(2),
      O => p_1_in(1)
    );
\wr_ptr_sync_gray_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABABA8"
    )
        port map (
      I0 => wr_ptr_gray_reg(2),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(2),
      I4 => \wr_ptr_sync_gray_reg10_in__0\(3),
      O => p_1_in(2)
    );
\wr_ptr_sync_gray_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABABA8"
    )
        port map (
      I0 => wr_ptr_gray_reg(3),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(3),
      I4 => \wr_ptr_sync_gray_reg10_in__0\(4),
      O => p_1_in(3)
    );
\wr_ptr_sync_gray_reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABABA8"
    )
        port map (
      I0 => wr_ptr_gray_reg(4),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(4),
      I4 => \wr_ptr_sync_gray_reg10_in__0\(5),
      O => p_1_in(4)
    );
\wr_ptr_sync_gray_reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABABA8"
    )
        port map (
      I0 => wr_ptr_gray_reg(5),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(5),
      I4 => \wr_ptr_sync_gray_reg10_in__0\(6),
      O => p_1_in(5)
    );
\wr_ptr_sync_gray_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABABA8"
    )
        port map (
      I0 => wr_ptr_gray_reg(6),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(6),
      I4 => \wr_ptr_sync_gray_reg10_in__0\(7),
      O => p_1_in(6)
    );
\wr_ptr_sync_gray_reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABABA8"
    )
        port map (
      I0 => wr_ptr_gray_reg(7),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(7),
      I4 => \wr_ptr_sync_gray_reg10_in__0\(8),
      O => p_1_in(7)
    );
\wr_ptr_sync_gray_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABABA8"
    )
        port map (
      I0 => wr_ptr_gray_reg(8),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(8),
      I4 => \wr_ptr_sync_gray_reg10_in__0\(9),
      O => p_1_in(8)
    );
\wr_ptr_sync_gray_reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8ABABA8"
    )
        port map (
      I0 => wr_ptr_gray_reg(9),
      I1 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I2 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I3 => \wr_ptr_sync_gray_reg10_in__0\(9),
      I4 => \wr_ptr_sync_gray_reg10_in__0\(10),
      O => p_1_in(9)
    );
\wr_ptr_sync_gray_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(0),
      Q => wr_ptr_sync_gray_reg(0),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(10),
      Q => wr_ptr_sync_gray_reg(10),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(11),
      Q => wr_ptr_sync_gray_reg(11),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(12),
      Q => wr_ptr_sync_gray_reg(12),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(1),
      Q => wr_ptr_sync_gray_reg(1),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(2),
      Q => wr_ptr_sync_gray_reg(2),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(3),
      Q => wr_ptr_sync_gray_reg(3),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(4),
      Q => wr_ptr_sync_gray_reg(4),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(5),
      Q => wr_ptr_sync_gray_reg(5),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(6),
      Q => wr_ptr_sync_gray_reg(6),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(7),
      Q => wr_ptr_sync_gray_reg(7),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(8),
      Q => wr_ptr_sync_gray_reg(8),
      R => wr_ptr_gray_reg_0
    );
\wr_ptr_sync_gray_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \wr_ptr_sync_gray_reg[12]_i_1_n_0\,
      D => p_1_in(9),
      Q => wr_ptr_sync_gray_reg(9),
      R => wr_ptr_gray_reg_0
    );
wr_ptr_update_ack_sync1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => wr_ptr_update_sync3_reg,
      Q => wr_ptr_update_ack_sync1_reg,
      R => reset
    );
wr_ptr_update_ack_sync2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => wr_ptr_update_ack_sync1_reg,
      Q => wr_ptr_update_ack_sync2_reg,
      R => reset
    );
wr_ptr_update_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000EFF00F1"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3_n_0\,
      I2 => wr_ptr_update_valid_reg,
      I3 => wr_ptr_update_ack_sync2_reg,
      I4 => wr_ptr_update_reg,
      I5 => wr_ptr_gray_reg_0,
      O => wr_ptr_update_reg_i_1_n_0
    );
wr_ptr_update_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => wr_ptr_update_reg_i_1_n_0,
      Q => wr_ptr_update_reg,
      R => '0'
    );
wr_ptr_update_sync1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => '1',
      D => wr_ptr_update_reg,
      Q => wr_ptr_update_sync1_reg,
      R => Q(0)
    );
wr_ptr_update_sync2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => '1',
      D => wr_ptr_update_sync1_reg,
      Q => wr_ptr_update_sync2_reg,
      R => Q(0)
    );
wr_ptr_update_sync3_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => tx_clk,
      CE => '1',
      D => wr_ptr_update_sync2_reg,
      Q => wr_ptr_update_sync3_reg,
      R => Q(0)
    );
wr_ptr_update_valid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5150515051500000"
    )
        port map (
      I0 => wr_ptr_gray_reg_0,
      I1 => wr_ptr_update_valid_reg_i_2_n_0,
      I2 => wr_ptr_update_valid_reg13_out,
      I3 => wr_ptr_update_valid_reg,
      I4 => \wr_ptr_sync_gray_reg[12]_i_4_n_0\,
      I5 => wr_ptr_update_valid_reg_i_3_n_0,
      O => wr_ptr_update_valid_reg_i_1_n_0
    );
wr_ptr_update_valid_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => wr_ptr_update_valid_reg,
      I1 => wr_ptr_update_ack_sync2_reg,
      I2 => wr_ptr_update_reg,
      O => wr_ptr_update_valid_reg_i_2_n_0
    );
wr_ptr_update_valid_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => full_cur,
      I1 => tx_axis_tvalid,
      O => wr_ptr_update_valid_reg_i_3_n_0
    );
wr_ptr_update_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => wr_ptr_update_valid_reg_i_1_n_0,
      Q => wr_ptr_update_valid_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \riscv_ethernet_stream_0_0_axis_async_fifo__parameterized0\ is
  port (
    s_rst_sync3_reg_reg_0 : out STD_LOGIC;
    \m_axis_tvalid_pipe_reg_reg[1]_0\ : out STD_LOGIC;
    s_frame_reg : out STD_LOGIC;
    rx_axis_tlast : out STD_LOGIC;
    rx_axis_tuser : out STD_LOGIC;
    drop_frame_reg_reg_0 : out STD_LOGIC;
    drop_frame_reg_reg_1 : out STD_LOGIC;
    rx_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_rst_sync2_reg_reg_0 : in STD_LOGIC;
    rx_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    wr_ptr_gray_reg : in STD_LOGIC;
    drop_frame_reg : in STD_LOGIC;
    drop_frame_reg_reg_2 : in STD_LOGIC;
    rx_axis_tready : in STD_LOGIC;
    \wr_ptr_sync_gray_reg_reg[0]_0\ : in STD_LOGIC;
    rx_fifo_axis_tvalid : in STD_LOGIC;
    s_axis : in STD_LOGIC_VECTOR ( 9 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \riscv_ethernet_stream_0_0_axis_async_fifo__parameterized0\ : entity is "axis_async_fifo";
end \riscv_ethernet_stream_0_0_axis_async_fifo__parameterized0\;

architecture STRUCTURE of \riscv_ethernet_stream_0_0_axis_async_fifo__parameterized0\ is
  signal \^drop_frame_reg_reg_0\ : STD_LOGIC;
  signal drop_frame_reg_reg_n_0 : STD_LOGIC;
  signal empty : STD_LOGIC;
  signal \empty_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \empty_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \empty_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \empty_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \empty_carry_i_4__0_n_0\ : STD_LOGIC;
  signal empty_carry_n_0 : STD_LOGIC;
  signal empty_carry_n_1 : STD_LOGIC;
  signal empty_carry_n_2 : STD_LOGIC;
  signal empty_carry_n_3 : STD_LOGIC;
  signal full_cur : STD_LOGIC;
  signal \full_cur_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \full_cur_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \full_cur_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \full_cur_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \full_cur_carry_i_4__0_n_0\ : STD_LOGIC;
  signal full_cur_carry_n_0 : STD_LOGIC;
  signal full_cur_carry_n_1 : STD_LOGIC;
  signal full_cur_carry_n_2 : STD_LOGIC;
  signal full_cur_carry_n_3 : STD_LOGIC;
  signal full_wr : STD_LOGIC;
  signal \full_wr_carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \full_wr_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \full_wr_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \full_wr_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \full_wr_carry_i_4__0_n_0\ : STD_LOGIC;
  signal full_wr_carry_n_0 : STD_LOGIC;
  signal full_wr_carry_n_1 : STD_LOGIC;
  signal full_wr_carry_n_2 : STD_LOGIC;
  signal full_wr_carry_n_3 : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_axis_tvalid_pipe_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid_pipe_reg_reg[1]_0\ : STD_LOGIC;
  signal m_drop_frame_reg : STD_LOGIC;
  signal m_drop_frame_reg_i_1_n_0 : STD_LOGIC;
  signal m_drop_frame_reg_reg_n_0 : STD_LOGIC;
  signal m_frame_reg : STD_LOGIC;
  signal \m_frame_reg_i_1__0_n_0\ : STD_LOGIC;
  signal m_rst_sync1_reg : STD_LOGIC;
  signal m_rst_sync2_reg_reg_n_0 : STD_LOGIC;
  signal m_rst_sync3_reg : STD_LOGIC;
  signal m_terminate_frame_reg : STD_LOGIC;
  signal \m_terminate_frame_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_i_2__0_n_0\ : STD_LOGIC;
  signal \mem_reg_0_i_3__0_n_0\ : STD_LOGIC;
  signal mem_reg_1_n_31 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_2_in : STD_LOGIC;
  signal rd_ptr_gray_reg : STD_LOGIC;
  signal rd_ptr_gray_reg0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \rd_ptr_gray_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \rd_ptr_gray_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync1_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \rd_ptr_gray_sync2_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal rd_ptr_reg0 : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \rd_ptr_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal rd_ptr_reg_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \rd_ptr_reg_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \rd_ptr_reg_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal rd_ptr_reg_reg_rep : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \rd_ptr_reg_reg_rep[11]_i_3__0_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[11]_i_3__0_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[11]_i_3__0_n_3\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \rd_ptr_reg_reg_rep[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \rd_ptr_reg_rep[11]_i_2__0_n_0\ : STD_LOGIC;
  signal s_rst_sync2_reg_reg_n_0 : STD_LOGIC;
  signal \^s_rst_sync3_reg_reg_0\ : STD_LOGIC;
  signal wr_ptr_cur_gray_reg1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \wr_ptr_cur_gray_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \wr_ptr_cur_gray_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal wr_ptr_cur_reg : STD_LOGIC;
  signal \wr_ptr_cur_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal wr_ptr_cur_reg_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \wr_ptr_cur_reg_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \wr_ptr_cur_reg_reg__0\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \wr_ptr_gray_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \wr_ptr_gray_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal wr_ptr_gray_sync1_reg0 : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \wr_ptr_gray_sync1_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal wr_ptr_reg : STD_LOGIC;
  signal \wr_ptr_reg_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \wr_ptr_reg_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \wr_ptr_reg_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \wr_ptr_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \wr_ptr_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \wr_ptr_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \wr_ptr_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wr_ptr_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \wr_ptr_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \wr_ptr_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \wr_ptr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal wr_ptr_sync_gray_reg0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal wr_ptr_sync_gray_reg10_in : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wr_ptr_sync_gray_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \wr_ptr_sync_gray_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal wr_ptr_update_ack_sync1_reg_reg_n_0 : STD_LOGIC;
  signal wr_ptr_update_ack_sync2_reg_reg_n_0 : STD_LOGIC;
  signal \wr_ptr_update_reg_i_1__0_n_0\ : STD_LOGIC;
  signal wr_ptr_update_reg_reg_n_0 : STD_LOGIC;
  signal wr_ptr_update_sync1_reg_reg_n_0 : STD_LOGIC;
  signal wr_ptr_update_sync2_reg : STD_LOGIC;
  signal wr_ptr_update_sync3_reg : STD_LOGIC;
  signal wr_ptr_update_valid_reg : STD_LOGIC;
  signal \wr_ptr_update_valid_reg_i_1__0_n_0\ : STD_LOGIC;
  signal \wr_ptr_update_valid_reg_i_2__0_n_0\ : STD_LOGIC;
  signal NLW_empty_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_empty_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_empty_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_full_cur_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_full_cur_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_full_cur_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_full_wr_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_full_wr_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_full_wr_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_mem_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_mem_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_mem_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mem_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_mem_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_mem_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_mem_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mem_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal NLW_mem_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_rd_ptr_reg_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rd_ptr_reg_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rd_ptr_reg_reg_rep[11]_i_3__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wr_ptr_cur_reg_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wr_ptr_cur_reg_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_wr_ptr_reg_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tvalid_pipe_reg[1]_i_1__0\ : label is "soft_lutpair35";
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of m_rst_sync1_reg_reg : label is "no";
  attribute SHREG_EXTRACT of m_rst_sync2_reg_reg : label is "no";
  attribute SHREG_EXTRACT of m_rst_sync3_reg_reg : label is "no";
  attribute SOFT_HLUTNM of \m_terminate_frame_reg_i_1__0\ : label is "soft_lutpair35";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_0 : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0 : label is 40960;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0 : label is "inst/eth_mac_inst/rx_fifo/fifo_inst/mem_reg_0";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0 : label is 4095;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0 : label is 8;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d1";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of mem_reg_1 : label is "p0_d1";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_1 : label is "";
  attribute RTL_RAM_BITS of mem_reg_1 : label is 40960;
  attribute RTL_RAM_NAME of mem_reg_1 : label is "inst/eth_mac_inst/rx_fifo/fifo_inst/mem_reg_1";
  attribute RTL_RAM_TYPE of mem_reg_1 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_1 : label is 0;
  attribute ram_addr_end of mem_reg_1 : label is 4095;
  attribute ram_offset of mem_reg_1 : label is 0;
  attribute ram_slice_begin of mem_reg_1 : label is 9;
  attribute ram_slice_end of mem_reg_1 : label is 9;
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[0]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[10]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[11]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[1]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[2]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[3]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[4]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[5]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[6]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[7]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[8]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rd_ptr_gray_reg[9]_i_1__0\ : label is "soft_lutpair39";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[0]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[10]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[11]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[12]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[1]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[2]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[3]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[4]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[5]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[6]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[7]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[8]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync1_reg_reg[9]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[0]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[10]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[11]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[12]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[1]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[2]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[3]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[4]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[5]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[6]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[7]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[8]\ : label is "no";
  attribute SHREG_EXTRACT of \rd_ptr_gray_sync2_reg_reg[9]\ : label is "no";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg[0]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg[8]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg_rep[11]_i_3__0\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg_rep[4]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \rd_ptr_reg_reg_rep[8]_i_1__0\ : label is 35;
  attribute SOFT_HLUTNM of rx_axis_tlast_INST_0 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of rx_axis_tuser_INST_0 : label is "soft_lutpair37";
  attribute SHREG_EXTRACT of s_rst_sync2_reg_reg : label is "no";
  attribute SHREG_EXTRACT of s_rst_sync3_reg_reg : label is "no";
  attribute SOFT_HLUTNM of \wr_ptr_cur_gray_reg[11]_i_2__0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \wr_ptr_cur_gray_reg[12]_i_2\ : label is "soft_lutpair33";
  attribute ADDER_THRESHOLD of \wr_ptr_cur_reg_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wr_ptr_cur_reg_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wr_ptr_cur_reg_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \wr_ptr_cur_reg_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[0]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[10]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[11]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[1]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[2]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[3]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[4]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[5]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[6]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[7]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[8]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \wr_ptr_gray_reg[9]_i_1__0\ : label is "soft_lutpair44";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[0]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[10]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[11]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[12]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[1]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[2]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[3]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[4]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[5]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[6]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[7]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[8]\ : label is "no";
  attribute SHREG_EXTRACT of \wr_ptr_gray_sync1_reg_reg[9]\ : label is "no";
  attribute ADDER_THRESHOLD of \wr_ptr_reg_reg[11]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \wr_ptr_reg_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \wr_ptr_reg_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \wr_ptr_sync_gray_reg[11]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \wr_ptr_sync_gray_reg[12]_i_2__0\ : label is "soft_lutpair34";
  attribute SHREG_EXTRACT of wr_ptr_update_ack_sync1_reg_reg : label is "no";
  attribute SHREG_EXTRACT of wr_ptr_update_ack_sync2_reg_reg : label is "no";
  attribute SHREG_EXTRACT of wr_ptr_update_sync1_reg_reg : label is "no";
  attribute SHREG_EXTRACT of wr_ptr_update_sync2_reg_reg : label is "no";
  attribute SHREG_EXTRACT of wr_ptr_update_sync3_reg_reg : label is "no";
begin
  drop_frame_reg_reg_0 <= \^drop_frame_reg_reg_0\;
  \m_axis_tvalid_pipe_reg_reg[1]_0\ <= \^m_axis_tvalid_pipe_reg_reg[1]_0\;
  s_rst_sync3_reg_reg_0 <= \^s_rst_sync3_reg_reg_0\;
\drop_frame_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFFFCF0F0"
    )
        port map (
      I0 => drop_frame_reg,
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => rx_fifo_axis_tvalid,
      I5 => \^s_rst_sync3_reg_reg_0\,
      O => drop_frame_reg_reg_1
    );
drop_frame_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => drop_frame_reg_reg_2,
      Q => drop_frame_reg_reg_n_0,
      R => '0'
    );
empty_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => empty_carry_n_0,
      CO(2) => empty_carry_n_1,
      CO(1) => empty_carry_n_2,
      CO(0) => empty_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_empty_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \empty_carry_i_1__0_n_0\,
      S(2) => \empty_carry_i_2__0_n_0\,
      S(1) => \empty_carry_i_3__0_n_0\,
      S(0) => \empty_carry_i_4__0_n_0\
    );
\empty_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => empty_carry_n_0,
      CO(3 downto 1) => \NLW_empty_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => empty,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_empty_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \empty_carry__0_i_1__0_n_0\
    );
\empty_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \wr_ptr_gray_sync1_reg_reg_n_0_[12]\,
      I1 => \rd_ptr_gray_reg_reg_n_0_[12]\,
      O => \empty_carry__0_i_1__0_n_0\
    );
\empty_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wr_ptr_gray_sync1_reg_reg_n_0_[11]\,
      I1 => \rd_ptr_gray_reg_reg_n_0_[11]\,
      I2 => \wr_ptr_gray_sync1_reg_reg_n_0_[10]\,
      I3 => \rd_ptr_gray_reg_reg_n_0_[10]\,
      I4 => \rd_ptr_gray_reg_reg_n_0_[9]\,
      I5 => \wr_ptr_gray_sync1_reg_reg_n_0_[9]\,
      O => \empty_carry_i_1__0_n_0\
    );
\empty_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wr_ptr_gray_sync1_reg_reg_n_0_[8]\,
      I1 => \rd_ptr_gray_reg_reg_n_0_[8]\,
      I2 => \wr_ptr_gray_sync1_reg_reg_n_0_[7]\,
      I3 => \rd_ptr_gray_reg_reg_n_0_[7]\,
      I4 => \rd_ptr_gray_reg_reg_n_0_[6]\,
      I5 => \wr_ptr_gray_sync1_reg_reg_n_0_[6]\,
      O => \empty_carry_i_2__0_n_0\
    );
\empty_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wr_ptr_gray_sync1_reg_reg_n_0_[5]\,
      I1 => \rd_ptr_gray_reg_reg_n_0_[5]\,
      I2 => \wr_ptr_gray_sync1_reg_reg_n_0_[4]\,
      I3 => \rd_ptr_gray_reg_reg_n_0_[4]\,
      I4 => \rd_ptr_gray_reg_reg_n_0_[3]\,
      I5 => \wr_ptr_gray_sync1_reg_reg_n_0_[3]\,
      O => \empty_carry_i_3__0_n_0\
    );
\empty_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wr_ptr_gray_sync1_reg_reg_n_0_[2]\,
      I1 => \rd_ptr_gray_reg_reg_n_0_[2]\,
      I2 => \wr_ptr_gray_sync1_reg_reg_n_0_[1]\,
      I3 => \rd_ptr_gray_reg_reg_n_0_[1]\,
      I4 => \rd_ptr_gray_reg_reg_n_0_[0]\,
      I5 => \wr_ptr_gray_sync1_reg_reg_n_0_[0]\,
      O => \empty_carry_i_4__0_n_0\
    );
full_cur_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => full_cur_carry_n_0,
      CO(2) => full_cur_carry_n_1,
      CO(1) => full_cur_carry_n_2,
      CO(0) => full_cur_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_full_cur_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \full_cur_carry_i_1__0_n_0\,
      S(2) => \full_cur_carry_i_2__0_n_0\,
      S(1) => \full_cur_carry_i_3__0_n_0\,
      S(0) => \full_cur_carry_i_4__0_n_0\
    );
\full_cur_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => full_cur_carry_n_0,
      CO(3 downto 1) => \NLW_full_cur_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => full_cur,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_full_cur_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \full_cur_carry__0_i_1__0_n_0\
    );
\full_cur_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rd_ptr_gray_sync2_reg_reg_n_0_[12]\,
      I1 => \wr_ptr_cur_gray_reg_reg_n_0_[12]\,
      O => \full_cur_carry__0_i_1__0_n_0\
    );
\full_cur_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => \wr_ptr_cur_gray_reg_reg_n_0_[10]\,
      I1 => \rd_ptr_gray_sync2_reg_reg_n_0_[10]\,
      I2 => \wr_ptr_cur_gray_reg_reg_n_0_[9]\,
      I3 => \rd_ptr_gray_sync2_reg_reg_n_0_[9]\,
      I4 => \wr_ptr_cur_gray_reg_reg_n_0_[11]\,
      I5 => \rd_ptr_gray_sync2_reg_reg_n_0_[11]\,
      O => \full_cur_carry_i_1__0_n_0\
    );
\full_cur_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wr_ptr_cur_gray_reg_reg_n_0_[7]\,
      I1 => \rd_ptr_gray_sync2_reg_reg_n_0_[7]\,
      I2 => \wr_ptr_cur_gray_reg_reg_n_0_[6]\,
      I3 => \rd_ptr_gray_sync2_reg_reg_n_0_[6]\,
      I4 => \rd_ptr_gray_sync2_reg_reg_n_0_[8]\,
      I5 => \wr_ptr_cur_gray_reg_reg_n_0_[8]\,
      O => \full_cur_carry_i_2__0_n_0\
    );
\full_cur_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wr_ptr_cur_gray_reg_reg_n_0_[4]\,
      I1 => \rd_ptr_gray_sync2_reg_reg_n_0_[4]\,
      I2 => \wr_ptr_cur_gray_reg_reg_n_0_[3]\,
      I3 => \rd_ptr_gray_sync2_reg_reg_n_0_[3]\,
      I4 => \rd_ptr_gray_sync2_reg_reg_n_0_[5]\,
      I5 => \wr_ptr_cur_gray_reg_reg_n_0_[5]\,
      O => \full_cur_carry_i_3__0_n_0\
    );
\full_cur_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \wr_ptr_cur_gray_reg_reg_n_0_[1]\,
      I1 => \rd_ptr_gray_sync2_reg_reg_n_0_[1]\,
      I2 => \wr_ptr_cur_gray_reg_reg_n_0_[0]\,
      I3 => \rd_ptr_gray_sync2_reg_reg_n_0_[0]\,
      I4 => \rd_ptr_gray_sync2_reg_reg_n_0_[2]\,
      I5 => \wr_ptr_cur_gray_reg_reg_n_0_[2]\,
      O => \full_cur_carry_i_4__0_n_0\
    );
full_wr_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => full_wr_carry_n_0,
      CO(2) => full_wr_carry_n_1,
      CO(1) => full_wr_carry_n_2,
      CO(0) => full_wr_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_full_wr_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \full_wr_carry_i_1__0_n_0\,
      S(2) => \full_wr_carry_i_2__0_n_0\,
      S(1) => \full_wr_carry_i_3__0_n_0\,
      S(0) => \full_wr_carry_i_4__0_n_0\
    );
\full_wr_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => full_wr_carry_n_0,
      CO(3 downto 1) => \NLW_full_wr_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => full_wr,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_full_wr_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \full_wr_carry__0_i_1__0_n_0\
    );
\full_wr_carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wr_ptr_cur_reg_reg__0\(12),
      I1 => wr_ptr_cur_gray_reg1(11),
      O => \full_wr_carry__0_i_1__0_n_0\
    );
\full_wr_carry_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(9),
      I1 => wr_ptr_cur_reg_reg(10),
      I2 => wr_ptr_cur_gray_reg1(8),
      I3 => wr_ptr_cur_reg_reg(9),
      I4 => wr_ptr_cur_reg_reg(11),
      I5 => wr_ptr_cur_gray_reg1(10),
      O => \full_wr_carry_i_1__0_n_0\
    );
\full_wr_carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(6),
      I1 => wr_ptr_cur_reg_reg(7),
      I2 => wr_ptr_cur_gray_reg1(5),
      I3 => wr_ptr_cur_reg_reg(6),
      I4 => wr_ptr_cur_reg_reg(8),
      I5 => wr_ptr_cur_gray_reg1(7),
      O => \full_wr_carry_i_2__0_n_0\
    );
\full_wr_carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(3),
      I1 => wr_ptr_cur_reg_reg(4),
      I2 => wr_ptr_cur_gray_reg1(2),
      I3 => wr_ptr_cur_reg_reg(3),
      I4 => wr_ptr_cur_reg_reg(5),
      I5 => wr_ptr_cur_gray_reg1(4),
      O => \full_wr_carry_i_3__0_n_0\
    );
\full_wr_carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(0),
      I1 => wr_ptr_cur_reg_reg(1),
      I2 => \wr_ptr_reg_reg_n_0_[0]\,
      I3 => wr_ptr_cur_reg_reg(0),
      I4 => wr_ptr_cur_reg_reg(2),
      I5 => wr_ptr_cur_gray_reg1(1),
      O => \full_wr_carry_i_4__0_n_0\
    );
\m_axis_tvalid_pipe_reg[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111100100000"
    )
        port map (
      I0 => reset,
      I1 => m_rst_sync3_reg,
      I2 => p_1_in(1),
      I3 => rx_axis_tready,
      I4 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I5 => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      O => \m_axis_tvalid_pipe_reg[0]_i_1__0_n_0\
    );
\m_axis_tvalid_pipe_reg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => p_1_in(1),
      I1 => m_drop_frame_reg_reg_n_0,
      I2 => rx_axis_tready,
      I3 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      O => \m_axis_tvalid_pipe_reg[1]_i_1__0_n_0\
    );
\m_axis_tvalid_pipe_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \m_axis_tvalid_pipe_reg[0]_i_1__0_n_0\,
      Q => p_1_in(1),
      R => '0'
    );
\m_axis_tvalid_pipe_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \m_axis_tvalid_pipe_reg[1]_i_1__0_n_0\,
      Q => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      R => reset
    );
m_drop_frame_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => m_drop_frame_reg_reg_n_0,
      I1 => rx_axis_tready,
      I2 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I3 => m_drop_frame_reg,
      O => m_drop_frame_reg_i_1_n_0
    );
\m_drop_frame_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000200020"
    )
        port map (
      I0 => m_rst_sync3_reg,
      I1 => m_terminate_frame_reg,
      I2 => m_frame_reg,
      I3 => m_drop_frame_reg_reg_n_0,
      I4 => p_0_in,
      I5 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      O => m_drop_frame_reg
    );
m_drop_frame_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => m_drop_frame_reg_i_1_n_0,
      Q => m_drop_frame_reg_reg_n_0,
      R => reset
    );
\m_frame_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005444455554444"
    )
        port map (
      I0 => reset,
      I1 => m_frame_reg,
      I2 => p_0_in,
      I3 => m_terminate_frame_reg,
      I4 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I5 => rx_axis_tready,
      O => \m_frame_reg_i_1__0_n_0\
    );
m_frame_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \m_frame_reg_i_1__0_n_0\,
      Q => m_frame_reg,
      R => '0'
    );
m_rst_sync1_reg_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => '0',
      PRE => SR(0),
      Q => m_rst_sync1_reg
    );
m_rst_sync2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => m_rst_sync1_reg,
      Q => m_rst_sync2_reg_reg_n_0,
      R => '0'
    );
m_rst_sync3_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clock,
      CE => '1',
      D => m_rst_sync2_reg_reg_n_0,
      Q => m_rst_sync3_reg,
      R => '0'
    );
\m_terminate_frame_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CFC4"
    )
        port map (
      I0 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I1 => m_drop_frame_reg_reg_n_0,
      I2 => rx_axis_tready,
      I3 => m_terminate_frame_reg,
      O => \m_terminate_frame_reg_i_1__0_n_0\
    );
m_terminate_frame_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \m_terminate_frame_reg_i_1__0_n_0\,
      Q => m_terminate_frame_reg,
      R => reset
    );
mem_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => wr_ptr_cur_reg_reg(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => rd_ptr_reg_reg_rep(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_mem_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_mem_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => rx_clk,
      CLKBWRCLK => clock,
      DBITERR => NLW_mem_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => s_axis(7 downto 0),
      DIBDI(31 downto 0) => B"00000000000000000000000011111111",
      DIPADIP(3 downto 1) => B"000",
      DIPADIP(0) => s_axis(8),
      DIPBDIP(3 downto 0) => B"0001",
      DOADO(31 downto 0) => NLW_mem_reg_0_DOADO_UNCONNECTED(31 downto 0),
      DOBDO(31 downto 8) => NLW_mem_reg_0_DOBDO_UNCONNECTED(31 downto 8),
      DOBDO(7 downto 0) => rx_axis_tdata(7 downto 0),
      DOPADOP(3 downto 0) => NLW_mem_reg_0_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 1) => NLW_mem_reg_0_DOPBDOP_UNCONNECTED(3 downto 1),
      DOPBDOP(0) => p_0_in,
      ECCPARITY(7 downto 0) => NLW_mem_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => p_2_in,
      ENBWREN => \mem_reg_0_i_2__0_n_0\,
      INJECTDBITERR => NLW_mem_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_mem_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_mem_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => \mem_reg_0_i_3__0_n_0\,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_mem_reg_0_SBITERR_UNCONNECTED,
      WEA(3) => WEA(0),
      WEA(2) => WEA(0),
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(7 downto 0) => B"00000000"
    );
\mem_reg_0_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => full_cur,
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_wr,
      O => p_2_in
    );
\mem_reg_0_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      I1 => rx_axis_tready,
      I2 => p_1_in(1),
      O => \mem_reg_0_i_2__0_n_0\
    );
\mem_reg_0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rx_axis_tready,
      I1 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      O => \mem_reg_0_i_3__0_n_0\
    );
mem_reg_1: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 4,
      READ_WIDTH_B => 4,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "NO_CHANGE",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 4,
      WRITE_WIDTH_B => 4
    )
        port map (
      ADDRARDADDR(13 downto 2) => wr_ptr_cur_reg_reg(11 downto 0),
      ADDRARDADDR(1 downto 0) => B"11",
      ADDRBWRADDR(13 downto 2) => rd_ptr_reg_reg_rep(11 downto 0),
      ADDRBWRADDR(1 downto 0) => B"11",
      CLKARDCLK => rx_clk,
      CLKBWRCLK => clock,
      DIADI(15 downto 1) => B"000000000000000",
      DIADI(0) => s_axis(9),
      DIBDI(15 downto 0) => B"0000000000000001",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15 downto 0) => NLW_mem_reg_1_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 1) => NLW_mem_reg_1_DOBDO_UNCONNECTED(15 downto 1),
      DOBDO(0) => mem_reg_1_n_31,
      DOPADOP(1 downto 0) => NLW_mem_reg_1_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_mem_reg_1_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => p_2_in,
      ENBWREN => \mem_reg_0_i_2__0_n_0\,
      REGCEAREGCE => '0',
      REGCEB => \mem_reg_0_i_3__0_n_0\,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => WEA(0),
      WEBWE(3 downto 0) => B"0000"
    );
\rd_ptr_gray_reg[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rd_ptr_reg0(1),
      I1 => rd_ptr_reg_reg(0),
      O => \rd_ptr_gray_reg[0]_i_1__0_n_0\
    );
\rd_ptr_gray_reg[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(11),
      I1 => rd_ptr_reg0(10),
      O => rd_ptr_gray_reg0(10)
    );
\rd_ptr_gray_reg[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(12),
      I1 => rd_ptr_reg0(11),
      O => rd_ptr_gray_reg0(11)
    );
\rd_ptr_gray_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(2),
      I1 => rd_ptr_reg0(1),
      O => rd_ptr_gray_reg0(1)
    );
\rd_ptr_gray_reg[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(3),
      I1 => rd_ptr_reg0(2),
      O => rd_ptr_gray_reg0(2)
    );
\rd_ptr_gray_reg[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(4),
      I1 => rd_ptr_reg0(3),
      O => rd_ptr_gray_reg0(3)
    );
\rd_ptr_gray_reg[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(5),
      I1 => rd_ptr_reg0(4),
      O => rd_ptr_gray_reg0(4)
    );
\rd_ptr_gray_reg[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(6),
      I1 => rd_ptr_reg0(5),
      O => rd_ptr_gray_reg0(5)
    );
\rd_ptr_gray_reg[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(7),
      I1 => rd_ptr_reg0(6),
      O => rd_ptr_gray_reg0(6)
    );
\rd_ptr_gray_reg[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(8),
      I1 => rd_ptr_reg0(7),
      O => rd_ptr_gray_reg0(7)
    );
\rd_ptr_gray_reg[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(9),
      I1 => rd_ptr_reg0(8),
      O => rd_ptr_gray_reg0(8)
    );
\rd_ptr_gray_reg[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_ptr_reg0(10),
      I1 => rd_ptr_reg0(9),
      O => rd_ptr_gray_reg0(9)
    );
\rd_ptr_gray_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_gray_reg[0]_i_1__0_n_0\,
      Q => \rd_ptr_gray_reg_reg_n_0_[0]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_gray_reg0(10),
      Q => \rd_ptr_gray_reg_reg_n_0_[10]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_gray_reg0(11),
      Q => \rd_ptr_gray_reg_reg_n_0_[11]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(12),
      Q => \rd_ptr_gray_reg_reg_n_0_[12]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_gray_reg0(1),
      Q => \rd_ptr_gray_reg_reg_n_0_[1]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_gray_reg0(2),
      Q => \rd_ptr_gray_reg_reg_n_0_[2]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_gray_reg0(3),
      Q => \rd_ptr_gray_reg_reg_n_0_[3]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_gray_reg0(4),
      Q => \rd_ptr_gray_reg_reg_n_0_[4]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_gray_reg0(5),
      Q => \rd_ptr_gray_reg_reg_n_0_[5]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_gray_reg0(6),
      Q => \rd_ptr_gray_reg_reg_n_0_[6]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_gray_reg0(7),
      Q => \rd_ptr_gray_reg_reg_n_0_[7]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_gray_reg0(8),
      Q => \rd_ptr_gray_reg_reg_n_0_[8]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_gray_reg0(9),
      Q => \rd_ptr_gray_reg_reg_n_0_[9]\,
      R => rd_ptr_gray_reg
    );
\rd_ptr_gray_sync1_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[0]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[0]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[10]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[10]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[11]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[11]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[12]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[12]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[1]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[1]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[2]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[2]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[3]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[3]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[4]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[4]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[5]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[5]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[6]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[6]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[7]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[7]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[8]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[8]\,
      R => SR(0)
    );
\rd_ptr_gray_sync1_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_reg_reg_n_0_[9]\,
      Q => \rd_ptr_gray_sync1_reg_reg_n_0_[9]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[0]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[0]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[10]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[10]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[11]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[11]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[12]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[12]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[1]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[1]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[2]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[2]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[3]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[3]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[4]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[4]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[5]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[5]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[6]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[6]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[7]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[7]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[8]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[8]\,
      R => SR(0)
    );
\rd_ptr_gray_sync2_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \rd_ptr_gray_sync1_reg_reg_n_0_[9]\,
      Q => \rd_ptr_gray_sync2_reg_reg_n_0_[9]\,
      R => SR(0)
    );
\rd_ptr_reg[0]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr_reg_reg(0),
      O => \rd_ptr_reg[0]_i_2__0_n_0\
    );
\rd_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[0]_i_1__0_n_7\,
      Q => rd_ptr_reg_reg(0),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rd_ptr_reg_reg[0]_i_1__0_n_0\,
      CO(2) => \rd_ptr_reg_reg[0]_i_1__0_n_1\,
      CO(1) => \rd_ptr_reg_reg[0]_i_1__0_n_2\,
      CO(0) => \rd_ptr_reg_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \rd_ptr_reg_reg[0]_i_1__0_n_4\,
      O(2) => \rd_ptr_reg_reg[0]_i_1__0_n_5\,
      O(1) => \rd_ptr_reg_reg[0]_i_1__0_n_6\,
      O(0) => \rd_ptr_reg_reg[0]_i_1__0_n_7\,
      S(3 downto 1) => rd_ptr_reg_reg(3 downto 1),
      S(0) => \rd_ptr_reg[0]_i_2__0_n_0\
    );
\rd_ptr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[8]_i_1__0_n_5\,
      Q => rd_ptr_reg_reg(10),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[8]_i_1__0_n_4\,
      Q => rd_ptr_reg_reg(11),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[12]_i_1__0_n_7\,
      Q => rd_ptr_reg_reg(12),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_reg_reg[8]_i_1__0_n_0\,
      CO(3 downto 0) => \NLW_rd_ptr_reg_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_rd_ptr_reg_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \rd_ptr_reg_reg[12]_i_1__0_n_7\,
      S(3 downto 1) => B"000",
      S(0) => rd_ptr_reg_reg(12)
    );
\rd_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[0]_i_1__0_n_6\,
      Q => rd_ptr_reg_reg(1),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[0]_i_1__0_n_5\,
      Q => rd_ptr_reg_reg(2),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[0]_i_1__0_n_4\,
      Q => rd_ptr_reg_reg(3),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[4]_i_1__0_n_7\,
      Q => rd_ptr_reg_reg(4),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_reg_reg[0]_i_1__0_n_0\,
      CO(3) => \rd_ptr_reg_reg[4]_i_1__0_n_0\,
      CO(2) => \rd_ptr_reg_reg[4]_i_1__0_n_1\,
      CO(1) => \rd_ptr_reg_reg[4]_i_1__0_n_2\,
      CO(0) => \rd_ptr_reg_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_ptr_reg_reg[4]_i_1__0_n_4\,
      O(2) => \rd_ptr_reg_reg[4]_i_1__0_n_5\,
      O(1) => \rd_ptr_reg_reg[4]_i_1__0_n_6\,
      O(0) => \rd_ptr_reg_reg[4]_i_1__0_n_7\,
      S(3 downto 0) => rd_ptr_reg_reg(7 downto 4)
    );
\rd_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[4]_i_1__0_n_6\,
      Q => rd_ptr_reg_reg(5),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[4]_i_1__0_n_5\,
      Q => rd_ptr_reg_reg(6),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[4]_i_1__0_n_4\,
      Q => rd_ptr_reg_reg(7),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[8]_i_1__0_n_7\,
      Q => rd_ptr_reg_reg(8),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_reg_reg[4]_i_1__0_n_0\,
      CO(3) => \rd_ptr_reg_reg[8]_i_1__0_n_0\,
      CO(2) => \rd_ptr_reg_reg[8]_i_1__0_n_1\,
      CO(1) => \rd_ptr_reg_reg[8]_i_1__0_n_2\,
      CO(0) => \rd_ptr_reg_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \rd_ptr_reg_reg[8]_i_1__0_n_4\,
      O(2) => \rd_ptr_reg_reg[8]_i_1__0_n_5\,
      O(1) => \rd_ptr_reg_reg[8]_i_1__0_n_6\,
      O(0) => \rd_ptr_reg_reg[8]_i_1__0_n_7\,
      S(3 downto 0) => rd_ptr_reg_reg(11 downto 8)
    );
\rd_ptr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => \rd_ptr_reg_reg[8]_i_1__0_n_6\,
      Q => rd_ptr_reg_reg(9),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(0),
      Q => rd_ptr_reg_reg_rep(0),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(10),
      Q => rd_ptr_reg_reg_rep(10),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(11),
      Q => rd_ptr_reg_reg_rep(11),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[11]_i_3__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_reg_reg_rep[8]_i_1__0_n_0\,
      CO(3) => \NLW_rd_ptr_reg_reg_rep[11]_i_3__0_CO_UNCONNECTED\(3),
      CO(2) => \rd_ptr_reg_reg_rep[11]_i_3__0_n_1\,
      CO(1) => \rd_ptr_reg_reg_rep[11]_i_3__0_n_2\,
      CO(0) => \rd_ptr_reg_reg_rep[11]_i_3__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rd_ptr_reg0(12 downto 9),
      S(3 downto 0) => rd_ptr_reg_reg(12 downto 9)
    );
\rd_ptr_reg_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(1),
      Q => rd_ptr_reg_reg_rep(1),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(2),
      Q => rd_ptr_reg_reg_rep(2),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(3),
      Q => rd_ptr_reg_reg_rep(3),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(4),
      Q => rd_ptr_reg_reg_rep(4),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \rd_ptr_reg_reg_rep[4]_i_1__0_n_0\,
      CO(2) => \rd_ptr_reg_reg_rep[4]_i_1__0_n_1\,
      CO(1) => \rd_ptr_reg_reg_rep[4]_i_1__0_n_2\,
      CO(0) => \rd_ptr_reg_reg_rep[4]_i_1__0_n_3\,
      CYINIT => rd_ptr_reg_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rd_ptr_reg0(4 downto 1),
      S(3 downto 0) => rd_ptr_reg_reg(4 downto 1)
    );
\rd_ptr_reg_reg_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(5),
      Q => rd_ptr_reg_reg_rep(5),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(6),
      Q => rd_ptr_reg_reg_rep(6),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(7),
      Q => rd_ptr_reg_reg_rep(7),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(8),
      Q => rd_ptr_reg_reg_rep(8),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_reg_rep[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \rd_ptr_reg_reg_rep[4]_i_1__0_n_0\,
      CO(3) => \rd_ptr_reg_reg_rep[8]_i_1__0_n_0\,
      CO(2) => \rd_ptr_reg_reg_rep[8]_i_1__0_n_1\,
      CO(1) => \rd_ptr_reg_reg_rep[8]_i_1__0_n_2\,
      CO(0) => \rd_ptr_reg_reg_rep[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => rd_ptr_reg0(8 downto 5),
      S(3 downto 0) => rd_ptr_reg_reg(8 downto 5)
    );
\rd_ptr_reg_reg_rep[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => \rd_ptr_reg_rep[11]_i_2__0_n_0\,
      D => rd_ptr_reg0(9),
      Q => rd_ptr_reg_reg_rep(9),
      R => rd_ptr_gray_reg
    );
\rd_ptr_reg_rep[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_ptr_reg_reg(0),
      O => rd_ptr_reg0(0)
    );
\rd_ptr_reg_rep[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset,
      I1 => m_rst_sync3_reg,
      O => rd_ptr_gray_reg
    );
\rd_ptr_reg_rep[11]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101000101010101"
    )
        port map (
      I0 => empty,
      I1 => m_drop_frame_reg_reg_n_0,
      I2 => m_rst_sync3_reg,
      I3 => p_1_in(1),
      I4 => rx_axis_tready,
      I5 => \^m_axis_tvalid_pipe_reg_reg[1]_0\,
      O => \rd_ptr_reg_rep[11]_i_2__0_n_0\
    );
rx_axis_tlast_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => m_terminate_frame_reg,
      O => rx_axis_tlast
    );
rx_axis_tuser_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_terminate_frame_reg,
      I1 => mem_reg_1_n_31,
      O => rx_axis_tuser
    );
s_frame_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => drop_frame_reg,
      Q => s_frame_reg,
      R => SR(0)
    );
s_rst_sync2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => s_rst_sync2_reg_reg_0,
      Q => s_rst_sync2_reg_reg_n_0,
      R => '0'
    );
s_rst_sync3_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => s_rst_sync2_reg_reg_n_0,
      Q => \^s_rst_sync3_reg_reg_0\,
      R => '0'
    );
\wr_ptr_cur_gray_reg[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09F9F909"
    )
        port map (
      I0 => wr_ptr_cur_reg_reg(0),
      I1 => wr_ptr_sync_gray_reg10_in(1),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => \wr_ptr_reg_reg_n_0_[0]\,
      I4 => wr_ptr_cur_gray_reg1(0),
      O => \wr_ptr_cur_gray_reg[0]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(10),
      I1 => wr_ptr_sync_gray_reg10_in(11),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => wr_ptr_cur_gray_reg1(9),
      I4 => wr_ptr_cur_gray_reg1(10),
      O => \wr_ptr_cur_gray_reg[10]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(11),
      I1 => wr_ptr_sync_gray_reg10_in(12),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => wr_ptr_cur_gray_reg1(10),
      I4 => wr_ptr_cur_gray_reg1(11),
      O => \wr_ptr_cur_gray_reg[11]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg[11]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => full_wr,
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_cur,
      O => \^drop_frame_reg_reg_0\
    );
\wr_ptr_cur_gray_reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF000100"
    )
        port map (
      I0 => full_wr,
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_cur,
      I3 => rx_fifo_axis_tvalid,
      I4 => s_axis(8),
      O => wr_ptr_cur_reg
    );
\wr_ptr_cur_gray_reg[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(11),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_sync_gray_reg10_in(12),
      O => \wr_ptr_cur_gray_reg[12]_i_2_n_0\
    );
\wr_ptr_cur_gray_reg[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(1),
      I1 => wr_ptr_sync_gray_reg10_in(2),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => wr_ptr_cur_gray_reg1(0),
      I4 => wr_ptr_cur_gray_reg1(1),
      O => \wr_ptr_cur_gray_reg[1]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(2),
      I1 => wr_ptr_sync_gray_reg10_in(3),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => wr_ptr_cur_gray_reg1(1),
      I4 => wr_ptr_cur_gray_reg1(2),
      O => \wr_ptr_cur_gray_reg[2]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(3),
      I1 => wr_ptr_sync_gray_reg10_in(4),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => wr_ptr_cur_gray_reg1(2),
      I4 => wr_ptr_cur_gray_reg1(3),
      O => \wr_ptr_cur_gray_reg[3]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(4),
      I1 => wr_ptr_sync_gray_reg10_in(5),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => wr_ptr_cur_gray_reg1(3),
      I4 => wr_ptr_cur_gray_reg1(4),
      O => \wr_ptr_cur_gray_reg[4]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(5),
      I1 => wr_ptr_sync_gray_reg10_in(6),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => wr_ptr_cur_gray_reg1(4),
      I4 => wr_ptr_cur_gray_reg1(5),
      O => \wr_ptr_cur_gray_reg[5]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(6),
      I1 => wr_ptr_sync_gray_reg10_in(7),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => wr_ptr_cur_gray_reg1(5),
      I4 => wr_ptr_cur_gray_reg1(6),
      O => \wr_ptr_cur_gray_reg[6]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(7),
      I1 => wr_ptr_sync_gray_reg10_in(8),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => wr_ptr_cur_gray_reg1(6),
      I4 => wr_ptr_cur_gray_reg1(7),
      O => \wr_ptr_cur_gray_reg[7]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(8),
      I1 => wr_ptr_sync_gray_reg10_in(9),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => wr_ptr_cur_gray_reg1(7),
      I4 => wr_ptr_cur_gray_reg1(8),
      O => \wr_ptr_cur_gray_reg[8]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06F6F606"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(9),
      I1 => wr_ptr_sync_gray_reg10_in(10),
      I2 => \^drop_frame_reg_reg_0\,
      I3 => wr_ptr_cur_gray_reg1(8),
      I4 => wr_ptr_cur_gray_reg1(9),
      O => \wr_ptr_cur_gray_reg[9]_i_1__0_n_0\
    );
\wr_ptr_cur_gray_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[0]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[0]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[10]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[10]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[11]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[11]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[12]_i_2_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[12]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[1]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[1]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[2]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[2]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[3]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[3]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[4]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[4]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[5]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[5]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[6]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[6]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[7]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[7]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[8]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[8]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_gray_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_gray_reg[9]_i_1__0_n_0\,
      Q => \wr_ptr_cur_gray_reg_reg_n_0_[9]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \wr_ptr_reg_reg_n_0_[0]\,
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(0),
      O => \wr_ptr_cur_reg[0]_i_2_n_0\
    );
\wr_ptr_cur_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(2),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(3),
      O => \wr_ptr_cur_reg[0]_i_3_n_0\
    );
\wr_ptr_cur_reg[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(1),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(2),
      O => \wr_ptr_cur_reg[0]_i_4_n_0\
    );
\wr_ptr_cur_reg[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(0),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(1),
      O => \wr_ptr_cur_reg[0]_i_5_n_0\
    );
\wr_ptr_cur_reg[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCCC5"
    )
        port map (
      I0 => wr_ptr_cur_reg_reg(0),
      I1 => \wr_ptr_reg_reg_n_0_[0]\,
      I2 => full_cur,
      I3 => drop_frame_reg_reg_n_0,
      I4 => full_wr,
      O => \wr_ptr_cur_reg[0]_i_6_n_0\
    );
\wr_ptr_cur_reg[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(11),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => \wr_ptr_cur_reg_reg__0\(12),
      O => \wr_ptr_cur_reg[12]_i_2_n_0\
    );
\wr_ptr_cur_reg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(6),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(7),
      O => \wr_ptr_cur_reg[4]_i_2_n_0\
    );
\wr_ptr_cur_reg[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(5),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(6),
      O => \wr_ptr_cur_reg[4]_i_3_n_0\
    );
\wr_ptr_cur_reg[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(4),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(5),
      O => \wr_ptr_cur_reg[4]_i_4_n_0\
    );
\wr_ptr_cur_reg[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(3),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(4),
      O => \wr_ptr_cur_reg[4]_i_5_n_0\
    );
\wr_ptr_cur_reg[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(10),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(11),
      O => \wr_ptr_cur_reg[8]_i_2_n_0\
    );
\wr_ptr_cur_reg[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(9),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(10),
      O => \wr_ptr_cur_reg[8]_i_3_n_0\
    );
\wr_ptr_cur_reg[8]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(8),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(9),
      O => \wr_ptr_cur_reg[8]_i_4_n_0\
    );
\wr_ptr_cur_reg[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(7),
      I1 => full_wr,
      I2 => drop_frame_reg_reg_n_0,
      I3 => full_cur,
      I4 => wr_ptr_cur_reg_reg(8),
      O => \wr_ptr_cur_reg[8]_i_5_n_0\
    );
\wr_ptr_cur_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[0]_i_1_n_7\,
      Q => wr_ptr_cur_reg_reg(0),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wr_ptr_cur_reg_reg[0]_i_1_n_0\,
      CO(2) => \wr_ptr_cur_reg_reg[0]_i_1_n_1\,
      CO(1) => \wr_ptr_cur_reg_reg[0]_i_1_n_2\,
      CO(0) => \wr_ptr_cur_reg_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \wr_ptr_cur_reg[0]_i_2_n_0\,
      O(3) => \wr_ptr_cur_reg_reg[0]_i_1_n_4\,
      O(2) => \wr_ptr_cur_reg_reg[0]_i_1_n_5\,
      O(1) => \wr_ptr_cur_reg_reg[0]_i_1_n_6\,
      O(0) => \wr_ptr_cur_reg_reg[0]_i_1_n_7\,
      S(3) => \wr_ptr_cur_reg[0]_i_3_n_0\,
      S(2) => \wr_ptr_cur_reg[0]_i_4_n_0\,
      S(1) => \wr_ptr_cur_reg[0]_i_5_n_0\,
      S(0) => \wr_ptr_cur_reg[0]_i_6_n_0\
    );
\wr_ptr_cur_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[8]_i_1_n_5\,
      Q => wr_ptr_cur_reg_reg(10),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[8]_i_1_n_4\,
      Q => wr_ptr_cur_reg_reg(11),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[12]_i_1_n_7\,
      Q => \wr_ptr_cur_reg_reg__0\(12),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_ptr_cur_reg_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wr_ptr_cur_reg_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_wr_ptr_cur_reg_reg[12]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \wr_ptr_cur_reg_reg[12]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \wr_ptr_cur_reg[12]_i_2_n_0\
    );
\wr_ptr_cur_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[0]_i_1_n_6\,
      Q => wr_ptr_cur_reg_reg(1),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[0]_i_1_n_5\,
      Q => wr_ptr_cur_reg_reg(2),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[0]_i_1_n_4\,
      Q => wr_ptr_cur_reg_reg(3),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[4]_i_1_n_7\,
      Q => wr_ptr_cur_reg_reg(4),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_ptr_cur_reg_reg[0]_i_1_n_0\,
      CO(3) => \wr_ptr_cur_reg_reg[4]_i_1_n_0\,
      CO(2) => \wr_ptr_cur_reg_reg[4]_i_1_n_1\,
      CO(1) => \wr_ptr_cur_reg_reg[4]_i_1_n_2\,
      CO(0) => \wr_ptr_cur_reg_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wr_ptr_cur_reg_reg[4]_i_1_n_4\,
      O(2) => \wr_ptr_cur_reg_reg[4]_i_1_n_5\,
      O(1) => \wr_ptr_cur_reg_reg[4]_i_1_n_6\,
      O(0) => \wr_ptr_cur_reg_reg[4]_i_1_n_7\,
      S(3) => \wr_ptr_cur_reg[4]_i_2_n_0\,
      S(2) => \wr_ptr_cur_reg[4]_i_3_n_0\,
      S(1) => \wr_ptr_cur_reg[4]_i_4_n_0\,
      S(0) => \wr_ptr_cur_reg[4]_i_5_n_0\
    );
\wr_ptr_cur_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[4]_i_1_n_6\,
      Q => wr_ptr_cur_reg_reg(5),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[4]_i_1_n_5\,
      Q => wr_ptr_cur_reg_reg(6),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[4]_i_1_n_4\,
      Q => wr_ptr_cur_reg_reg(7),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[8]_i_1_n_7\,
      Q => wr_ptr_cur_reg_reg(8),
      R => wr_ptr_gray_reg
    );
\wr_ptr_cur_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_ptr_cur_reg_reg[4]_i_1_n_0\,
      CO(3) => \wr_ptr_cur_reg_reg[8]_i_1_n_0\,
      CO(2) => \wr_ptr_cur_reg_reg[8]_i_1_n_1\,
      CO(1) => \wr_ptr_cur_reg_reg[8]_i_1_n_2\,
      CO(0) => \wr_ptr_cur_reg_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wr_ptr_cur_reg_reg[8]_i_1_n_4\,
      O(2) => \wr_ptr_cur_reg_reg[8]_i_1_n_5\,
      O(1) => \wr_ptr_cur_reg_reg[8]_i_1_n_6\,
      O(0) => \wr_ptr_cur_reg_reg[8]_i_1_n_7\,
      S(3) => \wr_ptr_cur_reg[8]_i_2_n_0\,
      S(2) => \wr_ptr_cur_reg[8]_i_3_n_0\,
      S(1) => \wr_ptr_cur_reg[8]_i_4_n_0\,
      S(0) => \wr_ptr_cur_reg[8]_i_5_n_0\
    );
\wr_ptr_cur_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_cur_reg,
      D => \wr_ptr_cur_reg_reg[8]_i_1_n_6\,
      Q => wr_ptr_cur_reg_reg(9),
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(1),
      I1 => wr_ptr_cur_reg_reg(0),
      O => wr_ptr_sync_gray_reg0(0)
    );
\wr_ptr_gray_reg[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(11),
      I1 => wr_ptr_sync_gray_reg10_in(10),
      O => wr_ptr_sync_gray_reg0(10)
    );
\wr_ptr_gray_reg[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(12),
      I1 => wr_ptr_sync_gray_reg10_in(11),
      O => wr_ptr_sync_gray_reg0(11)
    );
\wr_ptr_gray_reg[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(2),
      I1 => wr_ptr_sync_gray_reg10_in(1),
      O => wr_ptr_sync_gray_reg0(1)
    );
\wr_ptr_gray_reg[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(3),
      I1 => wr_ptr_sync_gray_reg10_in(2),
      O => wr_ptr_sync_gray_reg0(2)
    );
\wr_ptr_gray_reg[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(4),
      I1 => wr_ptr_sync_gray_reg10_in(3),
      O => wr_ptr_sync_gray_reg0(3)
    );
\wr_ptr_gray_reg[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(5),
      I1 => wr_ptr_sync_gray_reg10_in(4),
      O => wr_ptr_sync_gray_reg0(4)
    );
\wr_ptr_gray_reg[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(6),
      I1 => wr_ptr_sync_gray_reg10_in(5),
      O => wr_ptr_sync_gray_reg0(5)
    );
\wr_ptr_gray_reg[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(7),
      I1 => wr_ptr_sync_gray_reg10_in(6),
      O => wr_ptr_sync_gray_reg0(6)
    );
\wr_ptr_gray_reg[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(8),
      I1 => wr_ptr_sync_gray_reg10_in(7),
      O => wr_ptr_sync_gray_reg0(7)
    );
\wr_ptr_gray_reg[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(9),
      I1 => wr_ptr_sync_gray_reg10_in(8),
      O => wr_ptr_sync_gray_reg0(8)
    );
\wr_ptr_gray_reg[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_sync_gray_reg10_in(10),
      I1 => wr_ptr_sync_gray_reg10_in(9),
      O => wr_ptr_sync_gray_reg0(9)
    );
\wr_ptr_gray_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(0),
      Q => \wr_ptr_gray_reg_reg_n_0_[0]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(10),
      Q => \wr_ptr_gray_reg_reg_n_0_[10]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(11),
      Q => \wr_ptr_gray_reg_reg_n_0_[11]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(1),
      Q => \wr_ptr_gray_reg_reg_n_0_[1]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(2),
      Q => \wr_ptr_gray_reg_reg_n_0_[2]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(3),
      Q => \wr_ptr_gray_reg_reg_n_0_[3]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(4),
      Q => \wr_ptr_gray_reg_reg_n_0_[4]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(5),
      Q => \wr_ptr_gray_reg_reg_n_0_[5]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(6),
      Q => \wr_ptr_gray_reg_reg_n_0_[6]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(7),
      Q => \wr_ptr_gray_reg_reg_n_0_[7]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(8),
      Q => \wr_ptr_gray_reg_reg_n_0_[8]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg0(9),
      Q => \wr_ptr_gray_reg_reg_n_0_[9]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg[12]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_ptr_update_sync3_reg,
      I1 => wr_ptr_update_sync2_reg,
      O => wr_ptr_gray_sync1_reg0
    );
\wr_ptr_gray_sync1_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[0]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[0]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[10]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[10]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[11]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[11]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[12]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[12]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[1]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[1]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[2]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[2]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[3]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[3]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[4]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[4]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[5]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[5]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[6]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[6]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[7]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[7]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[8]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[8]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_gray_sync1_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => wr_ptr_gray_sync1_reg0,
      D => \wr_ptr_sync_gray_reg_reg_n_0_[9]\,
      Q => \wr_ptr_gray_sync1_reg_reg_n_0_[9]\,
      R => rd_ptr_gray_reg
    );
\wr_ptr_reg[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_ptr_cur_reg_reg(0),
      O => wr_ptr_sync_gray_reg10_in(0)
    );
\wr_ptr_reg[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => full_wr,
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_cur,
      I3 => s_axis(8),
      I4 => rx_fifo_axis_tvalid,
      O => wr_ptr_reg
    );
\wr_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(0),
      Q => \wr_ptr_reg_reg_n_0_[0]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(10),
      Q => wr_ptr_cur_gray_reg1(9),
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(11),
      Q => wr_ptr_cur_gray_reg1(10),
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_ptr_reg_reg[8]_i_1_n_0\,
      CO(3) => \NLW_wr_ptr_reg_reg[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \wr_ptr_reg_reg[11]_i_3_n_1\,
      CO(1) => \wr_ptr_reg_reg[11]_i_3_n_2\,
      CO(0) => \wr_ptr_reg_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wr_ptr_sync_gray_reg10_in(12 downto 9),
      S(3) => \wr_ptr_cur_reg_reg__0\(12),
      S(2 downto 0) => wr_ptr_cur_reg_reg(11 downto 9)
    );
\wr_ptr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(12),
      Q => wr_ptr_cur_gray_reg1(11),
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(1),
      Q => wr_ptr_cur_gray_reg1(0),
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(2),
      Q => wr_ptr_cur_gray_reg1(1),
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(3),
      Q => wr_ptr_cur_gray_reg1(2),
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(4),
      Q => wr_ptr_cur_gray_reg1(3),
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wr_ptr_reg_reg[4]_i_1_n_0\,
      CO(2) => \wr_ptr_reg_reg[4]_i_1_n_1\,
      CO(1) => \wr_ptr_reg_reg[4]_i_1_n_2\,
      CO(0) => \wr_ptr_reg_reg[4]_i_1_n_3\,
      CYINIT => wr_ptr_cur_reg_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wr_ptr_sync_gray_reg10_in(4 downto 1),
      S(3 downto 0) => wr_ptr_cur_reg_reg(4 downto 1)
    );
\wr_ptr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(5),
      Q => wr_ptr_cur_gray_reg1(4),
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(6),
      Q => wr_ptr_cur_gray_reg1(5),
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(7),
      Q => wr_ptr_cur_gray_reg1(6),
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(8),
      Q => wr_ptr_cur_gray_reg1(7),
      R => wr_ptr_gray_reg
    );
\wr_ptr_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_ptr_reg_reg[4]_i_1_n_0\,
      CO(3) => \wr_ptr_reg_reg[8]_i_1_n_0\,
      CO(2) => \wr_ptr_reg_reg[8]_i_1_n_1\,
      CO(1) => \wr_ptr_reg_reg[8]_i_1_n_2\,
      CO(0) => \wr_ptr_reg_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => wr_ptr_sync_gray_reg10_in(8 downto 5),
      S(3 downto 0) => wr_ptr_cur_reg_reg(8 downto 5)
    );
\wr_ptr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => wr_ptr_reg,
      D => wr_ptr_sync_gray_reg10_in(9),
      Q => wr_ptr_cur_gray_reg1(8),
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[0]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(1),
      I3 => wr_ptr_cur_reg_reg(0),
      O => \wr_ptr_sync_gray_reg[0]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[10]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[10]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(11),
      I3 => wr_ptr_sync_gray_reg10_in(10),
      O => \wr_ptr_sync_gray_reg[10]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[11]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[11]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(12),
      I3 => wr_ptr_sync_gray_reg10_in(11),
      O => \wr_ptr_sync_gray_reg[11]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"90FF"
    )
        port map (
      I0 => wr_ptr_update_ack_sync2_reg_reg_n_0,
      I1 => wr_ptr_update_reg_reg_n_0,
      I2 => wr_ptr_update_valid_reg,
      I3 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      O => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[12]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wr_ptr_cur_gray_reg1(11),
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(12),
      O => \wr_ptr_sync_gray_reg[12]_i_2__0_n_0\
    );
\wr_ptr_sync_gray_reg[12]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFE"
    )
        port map (
      I0 => full_wr,
      I1 => drop_frame_reg_reg_n_0,
      I2 => full_cur,
      I3 => \wr_ptr_sync_gray_reg_reg[0]_0\,
      I4 => wr_ptr_update_reg_reg_n_0,
      I5 => wr_ptr_update_ack_sync2_reg_reg_n_0,
      O => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\
    );
\wr_ptr_sync_gray_reg[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[1]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(2),
      I3 => wr_ptr_sync_gray_reg10_in(1),
      O => \wr_ptr_sync_gray_reg[1]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[2]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(3),
      I3 => wr_ptr_sync_gray_reg10_in(2),
      O => \wr_ptr_sync_gray_reg[2]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[3]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(4),
      I3 => wr_ptr_sync_gray_reg10_in(3),
      O => \wr_ptr_sync_gray_reg[3]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[4]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(5),
      I3 => wr_ptr_sync_gray_reg10_in(4),
      O => \wr_ptr_sync_gray_reg[4]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[5]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[5]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(6),
      I3 => wr_ptr_sync_gray_reg10_in(5),
      O => \wr_ptr_sync_gray_reg[5]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[6]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(7),
      I3 => wr_ptr_sync_gray_reg10_in(6),
      O => \wr_ptr_sync_gray_reg[6]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[7]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(8),
      I3 => wr_ptr_sync_gray_reg10_in(7),
      O => \wr_ptr_sync_gray_reg[7]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[8]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(9),
      I3 => wr_ptr_sync_gray_reg10_in(8),
      O => \wr_ptr_sync_gray_reg[8]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg[9]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \wr_ptr_gray_reg_reg_n_0_[9]\,
      I1 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I2 => wr_ptr_sync_gray_reg10_in(10),
      I3 => wr_ptr_sync_gray_reg10_in(9),
      O => \wr_ptr_sync_gray_reg[9]_i_1__0_n_0\
    );
\wr_ptr_sync_gray_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[0]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[0]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[10]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[10]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[11]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[11]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[12]_i_2__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[12]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[1]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[1]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[2]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[2]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[3]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[3]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[4]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[4]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[5]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[5]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[6]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[6]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[7]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[7]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[8]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[8]\,
      R => wr_ptr_gray_reg
    );
\wr_ptr_sync_gray_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => \wr_ptr_sync_gray_reg[12]_i_1__0_n_0\,
      D => \wr_ptr_sync_gray_reg[9]_i_1__0_n_0\,
      Q => \wr_ptr_sync_gray_reg_reg_n_0_[9]\,
      R => wr_ptr_gray_reg
    );
wr_ptr_update_ack_sync1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => wr_ptr_update_sync3_reg,
      Q => wr_ptr_update_ack_sync1_reg_reg_n_0,
      R => SR(0)
    );
wr_ptr_update_ack_sync2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => wr_ptr_update_ack_sync1_reg_reg_n_0,
      Q => wr_ptr_update_ack_sync2_reg_reg_n_0,
      R => SR(0)
    );
\wr_ptr_update_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000020FD"
    )
        port map (
      I0 => \wr_ptr_sync_gray_reg[12]_i_3__0_n_0\,
      I1 => wr_ptr_update_valid_reg,
      I2 => wr_ptr_update_reg_reg_n_0,
      I3 => wr_ptr_update_ack_sync2_reg_reg_n_0,
      I4 => \^s_rst_sync3_reg_reg_0\,
      I5 => SR(0),
      O => \wr_ptr_update_reg_i_1__0_n_0\
    );
wr_ptr_update_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \wr_ptr_update_reg_i_1__0_n_0\,
      Q => wr_ptr_update_reg_reg_n_0,
      R => '0'
    );
wr_ptr_update_sync1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => wr_ptr_update_reg_reg_n_0,
      Q => wr_ptr_update_sync1_reg_reg_n_0,
      R => reset
    );
wr_ptr_update_sync2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => wr_ptr_update_sync1_reg_reg_n_0,
      Q => wr_ptr_update_sync2_reg,
      R => reset
    );
wr_ptr_update_sync3_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => wr_ptr_update_sync2_reg,
      Q => wr_ptr_update_sync3_reg,
      R => reset
    );
\wr_ptr_update_valid_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000BB0"
    )
        port map (
      I0 => wr_ptr_update_valid_reg,
      I1 => \wr_ptr_update_valid_reg_i_2__0_n_0\,
      I2 => wr_ptr_update_reg_reg_n_0,
      I3 => wr_ptr_update_ack_sync2_reg_reg_n_0,
      I4 => SR(0),
      I5 => \^s_rst_sync3_reg_reg_0\,
      O => \wr_ptr_update_valid_reg_i_1__0_n_0\
    );
\wr_ptr_update_valid_reg_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFDF"
    )
        port map (
      I0 => rx_fifo_axis_tvalid,
      I1 => \^s_rst_sync3_reg_reg_0\,
      I2 => s_axis(8),
      I3 => full_cur,
      I4 => drop_frame_reg_reg_n_0,
      I5 => full_wr,
      O => \wr_ptr_update_valid_reg_i_2__0_n_0\
    );
wr_ptr_update_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_clk,
      CE => '1',
      D => \wr_ptr_update_valid_reg_i_1__0_n_0\,
      Q => wr_ptr_update_valid_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_lfsr is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_tdata_reg : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_lfsr : entity is "lfsr";
end riscv_ethernet_stream_0_0_lfsr;

architecture STRUCTURE of riscv_ethernet_stream_0_0_lfsr is
  signal \i_/crc_state[16]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[17]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[17]_i_3_n_0\ : STD_LOGIC;
  signal \i_/crc_state[18]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[21]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[24]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[25]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[27]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[29]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[29]_i_3_n_0\ : STD_LOGIC;
  signal \i_/crc_state[30]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_/crc_state[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i_/crc_state[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i_/crc_state[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i_/crc_state[16]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i_/crc_state[17]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i_/crc_state[17]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \i_/crc_state[18]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i_/crc_state[20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i_/crc_state[21]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i_/crc_state[23]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i_/crc_state[24]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i_/crc_state[25]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i_/crc_state[27]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i_/crc_state[28]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i_/crc_state[29]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \i_/crc_state[30]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \i_/crc_state[31]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i_/crc_state[9]_i_1\ : label is "soft_lutpair21";
begin
\i_/crc_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(8),
      I1 => s_tdata_reg(2),
      I2 => Q(2),
      O => D(0)
    );
\i_/crc_state[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(18),
      I1 => Q(2),
      I2 => s_tdata_reg(2),
      O => D(10)
    );
\i_/crc_state[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(19),
      I1 => Q(3),
      I2 => s_tdata_reg(3),
      O => D(11)
    );
\i_/crc_state[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q(0),
      I1 => Q(4),
      I2 => Q(20),
      I3 => s_tdata_reg(0),
      I4 => s_tdata_reg(4),
      O => D(12)
    );
\i_/crc_state[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(21),
      I1 => Q(1),
      I2 => s_tdata_reg(1),
      I3 => \i_/crc_state[29]_i_3_n_0\,
      O => D(13)
    );
\i_/crc_state[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(22),
      I1 => Q(2),
      I2 => s_tdata_reg(2),
      I3 => Q(1),
      I4 => s_tdata_reg(1),
      I5 => \i_/crc_state[29]_i_2_n_0\,
      O => D(14)
    );
\i_/crc_state[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(23),
      I1 => \i_/crc_state[24]_i_2_n_0\,
      I2 => Q(2),
      I3 => s_tdata_reg(2),
      I4 => Q(3),
      I5 => s_tdata_reg(3),
      O => D(15)
    );
\i_/crc_state[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(24),
      I1 => Q(0),
      I2 => s_tdata_reg(0),
      I3 => Q(2),
      I4 => s_tdata_reg(2),
      I5 => \i_/crc_state[16]_i_2_n_0\,
      O => D(16)
    );
\i_/crc_state[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_tdata_reg(3),
      I1 => Q(3),
      I2 => Q(4),
      I3 => s_tdata_reg(4),
      O => \i_/crc_state[16]_i_2_n_0\
    );
\i_/crc_state[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(25),
      I1 => \i_/crc_state[17]_i_2_n_0\,
      I2 => \i_/crc_state[29]_i_3_n_0\,
      I3 => s_tdata_reg(3),
      I4 => Q(3),
      I5 => \i_/crc_state[17]_i_3_n_0\,
      O => D(17)
    );
\i_/crc_state[17]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(1),
      I1 => s_tdata_reg(1),
      O => \i_/crc_state[17]_i_2_n_0\
    );
\i_/crc_state[17]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_tdata_reg(4),
      I1 => Q(4),
      O => \i_/crc_state[17]_i_3_n_0\
    );
\i_/crc_state[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(26),
      I1 => \i_/crc_state[29]_i_3_n_0\,
      I2 => \i_/crc_state[30]_i_2_n_0\,
      I3 => Q(4),
      I4 => s_tdata_reg(4),
      I5 => \i_/crc_state[18]_i_2_n_0\,
      O => D(18)
    );
\i_/crc_state[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(2),
      I1 => s_tdata_reg(2),
      O => \i_/crc_state[18]_i_2_n_0\
    );
\i_/crc_state[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(27),
      I1 => s_tdata_reg(5),
      I2 => Q(5),
      I3 => \i_/crc_state[25]_i_2_n_0\,
      I4 => \i_/crc_state[30]_i_2_n_0\,
      I5 => \i_/crc_state[24]_i_2_n_0\,
      O => D(19)
    );
\i_/crc_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q(0),
      I1 => s_tdata_reg(0),
      I2 => Q(9),
      I3 => Q(3),
      I4 => s_tdata_reg(3),
      O => D(1)
    );
\i_/crc_state[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(28),
      I1 => Q(6),
      I2 => s_tdata_reg(6),
      I3 => \i_/crc_state[27]_i_2_n_0\,
      O => D(20)
    );
\i_/crc_state[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(29),
      I1 => s_tdata_reg(5),
      I2 => Q(5),
      I3 => s_tdata_reg(7),
      I4 => Q(7),
      I5 => \i_/crc_state[21]_i_2_n_0\,
      O => D(21)
    );
\i_/crc_state[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(4),
      I1 => s_tdata_reg(4),
      I2 => s_tdata_reg(2),
      I3 => Q(2),
      O => \i_/crc_state[21]_i_2_n_0\
    );
\i_/crc_state[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(30),
      I1 => Q(6),
      I2 => s_tdata_reg(6),
      I3 => s_tdata_reg(5),
      I4 => Q(5),
      I5 => \i_/crc_state[25]_i_2_n_0\,
      O => D(22)
    );
\i_/crc_state[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(31),
      I1 => Q(6),
      I2 => s_tdata_reg(6),
      I3 => \i_/crc_state[27]_i_2_n_0\,
      O => D(23)
    );
\i_/crc_state[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \i_/crc_state[24]_i_2_n_0\,
      I1 => \i_/crc_state[29]_i_3_n_0\,
      I2 => Q(2),
      I3 => s_tdata_reg(2),
      I4 => s_tdata_reg(4),
      I5 => Q(4),
      O => D(24)
    );
\i_/crc_state[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => s_tdata_reg(7),
      I1 => Q(7),
      O => \i_/crc_state[24]_i_2_n_0\
    );
\i_/crc_state[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => s_tdata_reg(6),
      I1 => Q(6),
      I2 => s_tdata_reg(1),
      I3 => Q(1),
      I4 => \i_/crc_state[29]_i_3_n_0\,
      I5 => \i_/crc_state[25]_i_2_n_0\,
      O => D(25)
    );
\i_/crc_state[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_tdata_reg(3),
      I1 => Q(3),
      I2 => s_tdata_reg(2),
      I3 => Q(2),
      O => \i_/crc_state[25]_i_2_n_0\
    );
\i_/crc_state[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(0),
      I1 => s_tdata_reg(0),
      I2 => Q(2),
      I3 => s_tdata_reg(2),
      I4 => \i_/crc_state[30]_i_2_n_0\,
      I5 => \i_/crc_state[27]_i_2_n_0\,
      O => D(26)
    );
\i_/crc_state[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q(1),
      I1 => s_tdata_reg(1),
      I2 => s_tdata_reg(5),
      I3 => Q(5),
      I4 => \i_/crc_state[27]_i_2_n_0\,
      O => D(27)
    );
\i_/crc_state[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => s_tdata_reg(4),
      I1 => Q(4),
      I2 => Q(3),
      I3 => s_tdata_reg(3),
      I4 => Q(7),
      I5 => s_tdata_reg(7),
      O => \i_/crc_state[27]_i_2_n_0\
    );
\i_/crc_state[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q(6),
      I1 => s_tdata_reg(6),
      I2 => s_tdata_reg(4),
      I3 => Q(4),
      I4 => \i_/crc_state[29]_i_3_n_0\,
      O => D(28)
    );
\i_/crc_state[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => s_tdata_reg(7),
      I1 => Q(7),
      I2 => \i_/crc_state[29]_i_2_n_0\,
      I3 => s_tdata_reg(1),
      I4 => Q(1),
      I5 => \i_/crc_state[29]_i_3_n_0\,
      O => D(29)
    );
\i_/crc_state[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(6),
      I1 => s_tdata_reg(6),
      O => \i_/crc_state[29]_i_2_n_0\
    );
\i_/crc_state[29]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_tdata_reg(0),
      I1 => Q(0),
      I2 => Q(5),
      I3 => s_tdata_reg(5),
      O => \i_/crc_state[29]_i_3_n_0\
    );
\i_/crc_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(10),
      I1 => \i_/crc_state[17]_i_2_n_0\,
      I2 => Q(0),
      I3 => s_tdata_reg(0),
      I4 => s_tdata_reg(4),
      I5 => Q(4),
      O => D(2)
    );
\i_/crc_state[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => s_tdata_reg(7),
      I1 => Q(7),
      I2 => \i_/crc_state[30]_i_2_n_0\,
      I3 => s_tdata_reg(0),
      I4 => Q(0),
      O => D(30)
    );
\i_/crc_state[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => s_tdata_reg(6),
      I1 => Q(6),
      I2 => s_tdata_reg(1),
      I3 => Q(1),
      O => \i_/crc_state[30]_i_2_n_0\
    );
\i_/crc_state[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(7),
      I1 => s_tdata_reg(7),
      I2 => s_tdata_reg(1),
      I3 => Q(1),
      O => D(31)
    );
\i_/crc_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(11),
      I1 => \i_/crc_state[17]_i_2_n_0\,
      I2 => s_tdata_reg(5),
      I3 => Q(5),
      I4 => Q(2),
      I5 => s_tdata_reg(2),
      O => D(3)
    );
\i_/crc_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(12),
      I1 => Q(6),
      I2 => s_tdata_reg(6),
      I3 => Q(0),
      I4 => s_tdata_reg(0),
      I5 => \i_/crc_state[25]_i_2_n_0\,
      O => D(4)
    );
\i_/crc_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(13),
      I1 => Q(1),
      I2 => s_tdata_reg(1),
      I3 => \i_/crc_state[27]_i_2_n_0\,
      O => D(5)
    );
\i_/crc_state[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q(4),
      I1 => Q(14),
      I2 => s_tdata_reg(4),
      I3 => Q(5),
      I4 => s_tdata_reg(5),
      O => D(6)
    );
\i_/crc_state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(15),
      I1 => Q(6),
      I2 => s_tdata_reg(6),
      I3 => \i_/crc_state[29]_i_3_n_0\,
      O => D(7)
    );
\i_/crc_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => s_tdata_reg(7),
      I1 => Q(7),
      I2 => \i_/crc_state[29]_i_2_n_0\,
      I3 => s_tdata_reg(1),
      I4 => Q(1),
      I5 => Q(16),
      O => D(8)
    );
\i_/crc_state[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(17),
      I1 => Q(7),
      I2 => s_tdata_reg(7),
      O => D(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_lfsr_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \crc_state_reg[1]\ : out STD_LOGIC;
    \gmii_rxd_d4_reg[7]\ : out STD_LOGIC;
    \crc_state_reg[6]\ : out STD_LOGIC;
    \crc_state_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \crc_state_reg[31]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_lfsr_0 : entity is "lfsr";
end riscv_ethernet_stream_0_0_lfsr_0;

architecture STRUCTURE of riscv_ethernet_stream_0_0_lfsr_0 is
  signal \^crc_state_reg[1]\ : STD_LOGIC;
  signal \^crc_state_reg[6]\ : STD_LOGIC;
  signal \^gmii_rxd_d4_reg[7]\ : STD_LOGIC;
  signal \i_/crc_state[16]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[17]_i_3_n_0\ : STD_LOGIC;
  signal \i_/crc_state[18]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[21]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[25]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[27]_i_2_n_0\ : STD_LOGIC;
  signal \i_/crc_state[29]_i_3_n_0\ : STD_LOGIC;
  signal \i_/crc_state[30]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_/crc_state[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i_/crc_state[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_/crc_state[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i_/crc_state[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_/crc_state[16]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \i_/crc_state[17]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_/crc_state[17]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i_/crc_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_/crc_state[20]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_/crc_state[21]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \i_/crc_state[23]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_/crc_state[24]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_/crc_state[25]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \i_/crc_state[27]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_/crc_state[28]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_/crc_state[29]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_/crc_state[30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_/crc_state[31]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_/crc_state[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \i_/i__carry__1_i_4\ : label is "soft_lutpair0";
begin
  \crc_state_reg[1]\ <= \^crc_state_reg[1]\;
  \crc_state_reg[6]\ <= \^crc_state_reg[6]\;
  \gmii_rxd_d4_reg[7]\ <= \^gmii_rxd_d4_reg[7]\;
\i_/crc_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(8),
      I1 => \crc_state_reg[31]\(2),
      I2 => Q(2),
      O => D(0)
    );
\i_/crc_state[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(18),
      I1 => Q(2),
      I2 => \crc_state_reg[31]\(2),
      O => D(10)
    );
\i_/crc_state[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(19),
      I1 => Q(3),
      I2 => \crc_state_reg[31]\(3),
      O => D(11)
    );
\i_/crc_state[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q(0),
      I1 => Q(4),
      I2 => Q(20),
      I3 => \crc_state_reg[31]\(0),
      I4 => \crc_state_reg[31]\(4),
      O => D(12)
    );
\i_/crc_state[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(21),
      I1 => Q(1),
      I2 => \crc_state_reg[31]\(1),
      I3 => \i_/crc_state[29]_i_3_n_0\,
      O => D(13)
    );
\i_/crc_state[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(22),
      I1 => Q(2),
      I2 => \crc_state_reg[31]\(2),
      I3 => Q(1),
      I4 => \crc_state_reg[31]\(1),
      I5 => \^crc_state_reg[6]\,
      O => D(14)
    );
\i_/crc_state[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(23),
      I1 => \^gmii_rxd_d4_reg[7]\,
      I2 => Q(2),
      I3 => \crc_state_reg[31]\(2),
      I4 => Q(3),
      I5 => \crc_state_reg[31]\(3),
      O => D(15)
    );
\i_/crc_state[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(24),
      I1 => Q(0),
      I2 => \crc_state_reg[31]\(0),
      I3 => Q(2),
      I4 => \crc_state_reg[31]\(2),
      I5 => \i_/crc_state[16]_i_2_n_0\,
      O => D(16)
    );
\i_/crc_state[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \crc_state_reg[31]\(3),
      I1 => Q(3),
      I2 => Q(4),
      I3 => \crc_state_reg[31]\(4),
      O => \i_/crc_state[16]_i_2_n_0\
    );
\i_/crc_state[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(25),
      I1 => \^crc_state_reg[1]\,
      I2 => \i_/crc_state[29]_i_3_n_0\,
      I3 => \crc_state_reg[31]\(3),
      I4 => Q(3),
      I5 => \i_/crc_state[17]_i_3_n_0\,
      O => D(17)
    );
\i_/crc_state[17]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(1),
      I1 => \crc_state_reg[31]\(1),
      O => \^crc_state_reg[1]\
    );
\i_/crc_state[17]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \crc_state_reg[31]\(4),
      I1 => Q(4),
      O => \i_/crc_state[17]_i_3_n_0\
    );
\i_/crc_state[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(26),
      I1 => \i_/crc_state[29]_i_3_n_0\,
      I2 => \i_/crc_state[30]_i_2_n_0\,
      I3 => Q(4),
      I4 => \crc_state_reg[31]\(4),
      I5 => \i_/crc_state[18]_i_2_n_0\,
      O => D(18)
    );
\i_/crc_state[18]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(2),
      I1 => \crc_state_reg[31]\(2),
      O => \i_/crc_state[18]_i_2_n_0\
    );
\i_/crc_state[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(27),
      I1 => \crc_state_reg[31]\(5),
      I2 => Q(5),
      I3 => \i_/crc_state[25]_i_2_n_0\,
      I4 => \i_/crc_state[30]_i_2_n_0\,
      I5 => \^gmii_rxd_d4_reg[7]\,
      O => D(19)
    );
\i_/crc_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q(0),
      I1 => \crc_state_reg[31]\(0),
      I2 => Q(9),
      I3 => Q(3),
      I4 => \crc_state_reg[31]\(3),
      O => D(1)
    );
\i_/crc_state[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(28),
      I1 => Q(6),
      I2 => \crc_state_reg[31]\(6),
      I3 => \i_/crc_state[27]_i_2_n_0\,
      O => D(20)
    );
\i_/crc_state[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(29),
      I1 => \crc_state_reg[31]\(5),
      I2 => Q(5),
      I3 => \crc_state_reg[31]\(7),
      I4 => Q(7),
      I5 => \i_/crc_state[21]_i_2_n_0\,
      O => D(21)
    );
\i_/crc_state[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(4),
      I1 => \crc_state_reg[31]\(4),
      I2 => \crc_state_reg[31]\(2),
      I3 => Q(2),
      O => \i_/crc_state[21]_i_2_n_0\
    );
\i_/crc_state[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(30),
      I1 => Q(6),
      I2 => \crc_state_reg[31]\(6),
      I3 => \crc_state_reg[31]\(5),
      I4 => Q(5),
      I5 => \i_/crc_state[25]_i_2_n_0\,
      O => D(22)
    );
\i_/crc_state[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(31),
      I1 => Q(6),
      I2 => \crc_state_reg[31]\(6),
      I3 => \i_/crc_state[27]_i_2_n_0\,
      O => D(23)
    );
\i_/crc_state[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \^gmii_rxd_d4_reg[7]\,
      I1 => \i_/crc_state[29]_i_3_n_0\,
      I2 => Q(2),
      I3 => \crc_state_reg[31]\(2),
      I4 => \crc_state_reg[31]\(4),
      I5 => Q(4),
      O => D(24)
    );
\i_/crc_state[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \crc_state_reg[31]\(7),
      I1 => Q(7),
      O => \^gmii_rxd_d4_reg[7]\
    );
\i_/crc_state[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \crc_state_reg[31]\(6),
      I1 => Q(6),
      I2 => \crc_state_reg[31]\(1),
      I3 => Q(1),
      I4 => \i_/crc_state[29]_i_3_n_0\,
      I5 => \i_/crc_state[25]_i_2_n_0\,
      O => D(25)
    );
\i_/crc_state[25]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \crc_state_reg[31]\(3),
      I1 => Q(3),
      I2 => \crc_state_reg[31]\(2),
      I3 => Q(2),
      O => \i_/crc_state[25]_i_2_n_0\
    );
\i_/crc_state[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(0),
      I1 => \crc_state_reg[31]\(0),
      I2 => Q(2),
      I3 => \crc_state_reg[31]\(2),
      I4 => \i_/crc_state[30]_i_2_n_0\,
      I5 => \i_/crc_state[27]_i_2_n_0\,
      O => D(26)
    );
\i_/crc_state[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q(1),
      I1 => \crc_state_reg[31]\(1),
      I2 => \crc_state_reg[31]\(5),
      I3 => Q(5),
      I4 => \i_/crc_state[27]_i_2_n_0\,
      O => D(27)
    );
\i_/crc_state[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \crc_state_reg[31]\(4),
      I1 => Q(4),
      I2 => Q(3),
      I3 => \crc_state_reg[31]\(3),
      I4 => Q(7),
      I5 => \crc_state_reg[31]\(7),
      O => \i_/crc_state[27]_i_2_n_0\
    );
\i_/crc_state[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q(6),
      I1 => \crc_state_reg[31]\(6),
      I2 => \crc_state_reg[31]\(4),
      I3 => Q(4),
      I4 => \i_/crc_state[29]_i_3_n_0\,
      O => D(28)
    );
\i_/crc_state[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \crc_state_reg[31]\(7),
      I1 => Q(7),
      I2 => \^crc_state_reg[6]\,
      I3 => \crc_state_reg[31]\(1),
      I4 => Q(1),
      I5 => \i_/crc_state[29]_i_3_n_0\,
      O => D(29)
    );
\i_/crc_state[29]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(6),
      I1 => \crc_state_reg[31]\(6),
      O => \^crc_state_reg[6]\
    );
\i_/crc_state[29]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \crc_state_reg[31]\(0),
      I1 => Q(0),
      I2 => Q(5),
      I3 => \crc_state_reg[31]\(5),
      O => \i_/crc_state[29]_i_3_n_0\
    );
\i_/crc_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(10),
      I1 => \^crc_state_reg[1]\,
      I2 => Q(0),
      I3 => \crc_state_reg[31]\(0),
      I4 => \crc_state_reg[31]\(4),
      I5 => Q(4),
      O => D(2)
    );
\i_/crc_state[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \crc_state_reg[31]\(7),
      I1 => Q(7),
      I2 => \i_/crc_state[30]_i_2_n_0\,
      I3 => \crc_state_reg[31]\(0),
      I4 => Q(0),
      O => D(30)
    );
\i_/crc_state[30]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \crc_state_reg[31]\(6),
      I1 => Q(6),
      I2 => \crc_state_reg[31]\(1),
      I3 => Q(1),
      O => \i_/crc_state[30]_i_2_n_0\
    );
\i_/crc_state[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(7),
      I1 => \crc_state_reg[31]\(7),
      I2 => \crc_state_reg[31]\(1),
      I3 => Q(1),
      O => D(31)
    );
\i_/crc_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(11),
      I1 => \^crc_state_reg[1]\,
      I2 => \crc_state_reg[31]\(5),
      I3 => Q(5),
      I4 => Q(2),
      I5 => \crc_state_reg[31]\(2),
      O => D(3)
    );
\i_/crc_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(12),
      I1 => Q(6),
      I2 => \crc_state_reg[31]\(6),
      I3 => Q(0),
      I4 => \crc_state_reg[31]\(0),
      I5 => \i_/crc_state[25]_i_2_n_0\,
      O => D(4)
    );
\i_/crc_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(13),
      I1 => Q(1),
      I2 => \crc_state_reg[31]\(1),
      I3 => \i_/crc_state[27]_i_2_n_0\,
      O => D(5)
    );
\i_/crc_state[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q(4),
      I1 => Q(14),
      I2 => \crc_state_reg[31]\(4),
      I3 => Q(5),
      I4 => \crc_state_reg[31]\(5),
      O => D(6)
    );
\i_/crc_state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q(15),
      I1 => Q(6),
      I2 => \crc_state_reg[31]\(6),
      I3 => \i_/crc_state[29]_i_3_n_0\,
      O => D(7)
    );
\i_/crc_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \crc_state_reg[31]\(7),
      I1 => Q(7),
      I2 => \^crc_state_reg[6]\,
      I3 => \crc_state_reg[31]\(1),
      I4 => Q(1),
      I5 => Q(16),
      O => D(8)
    );
\i_/crc_state[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q(17),
      I1 => Q(7),
      I2 => \crc_state_reg[31]\(7),
      O => D(9)
    );
\i_/i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(0),
      I1 => \crc_state_reg[31]\(0),
      O => \crc_state_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_ssio_sdr_in is
  port (
    CLK : out STD_LOGIC;
    \output_q_reg_reg[2]_0\ : out STD_LOGIC;
    \output_q_reg_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    gmii_rx_dv_d00 : out STD_LOGIC;
    gmii_rx_dv_d20 : out STD_LOGIC;
    mii_rx_clk : in STD_LOGIC;
    mii_locked_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    gmii_rx_dv_d0 : in STD_LOGIC;
    gmii_rx_dv_d2_reg : in STD_LOGIC;
    \output_q_reg_reg[5]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_ssio_sdr_in : entity is "ssio_sdr_in";
end riscv_ethernet_stream_0_0_ssio_sdr_in;

architecture STRUCTURE of riscv_ethernet_stream_0_0_ssio_sdr_in is
  signal clk_io : STD_LOGIC;
  signal \^output_q_reg_reg[5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clk_bufio : label is "PRIMITIVE";
  attribute BOX_TYPE of clk_bufr : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of gmii_rx_dv_d1_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of gmii_rx_dv_d2_i_1 : label is "soft_lutpair32";
  attribute IOB : string;
  attribute IOB of \output_q_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \output_q_reg_reg[1]\ : label is "TRUE";
  attribute IOB of \output_q_reg_reg[2]\ : label is "TRUE";
  attribute IOB of \output_q_reg_reg[3]\ : label is "TRUE";
  attribute IOB of \output_q_reg_reg[4]\ : label is "TRUE";
  attribute IOB of \output_q_reg_reg[5]\ : label is "TRUE";
begin
  \output_q_reg_reg[5]_0\(5 downto 0) <= \^output_q_reg_reg[5]_0\(5 downto 0);
clk_bufio: unisim.vcomponents.BUFIO
     port map (
      I => mii_rx_clk,
      O => clk_io
    );
clk_bufr: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "BYPASS",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => '0',
      I => mii_rx_clk,
      O => CLK
    );
gmii_rx_dv_d1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^output_q_reg_reg[5]_0\(1),
      I1 => gmii_rx_dv_d0,
      O => gmii_rx_dv_d00
    );
gmii_rx_dv_d2_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^output_q_reg_reg[5]_0\(1),
      I1 => gmii_rx_dv_d2_reg,
      O => gmii_rx_dv_d20
    );
mii_locked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => \^output_q_reg_reg[5]_0\(2),
      I1 => mii_locked_reg(0),
      I2 => \^output_q_reg_reg[5]_0\(4),
      I3 => \^output_q_reg_reg[5]_0\(3),
      I4 => \^output_q_reg_reg[5]_0\(1),
      I5 => \^output_q_reg_reg[5]_0\(5),
      O => \output_q_reg_reg[2]_0\
    );
\output_q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_io,
      CE => '1',
      D => \output_q_reg_reg[5]_1\(0),
      Q => \^output_q_reg_reg[5]_0\(0),
      R => '0'
    );
\output_q_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_io,
      CE => '1',
      D => \output_q_reg_reg[5]_1\(1),
      Q => \^output_q_reg_reg[5]_0\(1),
      R => '0'
    );
\output_q_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_io,
      CE => '1',
      D => \output_q_reg_reg[5]_1\(2),
      Q => \^output_q_reg_reg[5]_0\(2),
      R => '0'
    );
\output_q_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_io,
      CE => '1',
      D => \output_q_reg_reg[5]_1\(3),
      Q => \^output_q_reg_reg[5]_0\(3),
      R => '0'
    );
\output_q_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_io,
      CE => '1',
      D => \output_q_reg_reg[5]_1\(4),
      Q => \^output_q_reg_reg[5]_0\(4),
      R => '0'
    );
\output_q_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_io,
      CE => '1',
      D => \output_q_reg_reg[5]_1\(5),
      Q => \^output_q_reg_reg[5]_0\(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_axis_async_fifo_adapter is
  port (
    m_rst_sync1_reg_reg : out STD_LOGIC;
    m_rst_sync3_reg : out STD_LOGIC;
    tx_fifo_axis_tvalid : out STD_LOGIC;
    m_terminate_frame_reg : out STD_LOGIC;
    \FSM_onehot_state_reg_reg[6]\ : out STD_LOGIC;
    \m_axis_pipe_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    mem_reg_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_axis_tvalid_pipe_reg_reg[1]\ : out STD_LOGIC;
    tx_axis_tready : out STD_LOGIC;
    tx_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    tx_fifo_axis_tready : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis : in STD_LOGIC_VECTOR ( 9 downto 0 );
    tx_axis_tvalid : in STD_LOGIC;
    mem_reg_1_0 : in STD_LOGIC;
    clear : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_axis_async_fifo_adapter : entity is "axis_async_fifo_adapter";
end riscv_ethernet_stream_0_0_axis_async_fifo_adapter;

architecture STRUCTURE of riscv_ethernet_stream_0_0_axis_async_fifo_adapter is
begin
fifo_inst: entity work.riscv_ethernet_stream_0_0_axis_async_fifo
     port map (
      D(1 downto 0) => D(1 downto 0),
      \FSM_onehot_state_reg_reg[6]\ => \FSM_onehot_state_reg_reg[6]\,
      \FSM_onehot_state_reg_reg[7]\(2 downto 0) => \FSM_onehot_state_reg_reg[7]\(2 downto 0),
      Q(0) => Q(0),
      clear => clear,
      clock => clock,
      \m_axis_pipe_reg_reg[0]_0\(8 downto 0) => \m_axis_pipe_reg_reg[0]_0\(8 downto 0),
      \m_axis_tvalid_pipe_reg_reg[1]_0\ => tx_fifo_axis_tvalid,
      \m_axis_tvalid_pipe_reg_reg[1]_1\ => \m_axis_tvalid_pipe_reg_reg[1]\,
      m_rst_sync1_reg_reg_0 => m_rst_sync1_reg_reg,
      m_rst_sync3_reg_reg_0 => m_rst_sync3_reg,
      m_terminate_frame_reg_reg_0 => m_terminate_frame_reg,
      mem_reg_1_0 => mem_reg_1,
      mem_reg_1_1 => mem_reg_1_0,
      reset => reset,
      s_axis(9 downto 0) => s_axis(9 downto 0),
      tx_axis_tready => tx_axis_tready,
      tx_axis_tvalid => tx_axis_tvalid,
      tx_clk => tx_clk,
      tx_fifo_axis_tready => tx_fifo_axis_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \riscv_ethernet_stream_0_0_axis_async_fifo_adapter__parameterized0\ is
  port (
    s_rst_sync3_reg : out STD_LOGIC;
    \m_axis_tvalid_pipe_reg_reg[1]\ : out STD_LOGIC;
    s_frame_reg : out STD_LOGIC;
    rx_axis_tlast : out STD_LOGIC;
    rx_axis_tuser : out STD_LOGIC;
    \overflow_reg1__0\ : out STD_LOGIC;
    drop_frame_reg_reg : out STD_LOGIC;
    rx_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_rst_sync2_reg_reg : in STD_LOGIC;
    rx_clk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    wr_ptr_gray_reg : in STD_LOGIC;
    drop_frame_reg : in STD_LOGIC;
    drop_frame_reg_reg_0 : in STD_LOGIC;
    rx_axis_tready : in STD_LOGIC;
    \wr_ptr_sync_gray_reg_reg[0]\ : in STD_LOGIC;
    rx_fifo_axis_tvalid : in STD_LOGIC;
    rx_fifo_axis_tlast : in STD_LOGIC;
    s_axis : in STD_LOGIC_VECTOR ( 8 downto 0 );
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \riscv_ethernet_stream_0_0_axis_async_fifo_adapter__parameterized0\ : entity is "axis_async_fifo_adapter";
end \riscv_ethernet_stream_0_0_axis_async_fifo_adapter__parameterized0\;

architecture STRUCTURE of \riscv_ethernet_stream_0_0_axis_async_fifo_adapter__parameterized0\ is
begin
fifo_inst: entity work.\riscv_ethernet_stream_0_0_axis_async_fifo__parameterized0\
     port map (
      SR(0) => SR(0),
      WEA(0) => WEA(0),
      clock => clock,
      drop_frame_reg => drop_frame_reg,
      drop_frame_reg_reg_0 => \overflow_reg1__0\,
      drop_frame_reg_reg_1 => drop_frame_reg_reg,
      drop_frame_reg_reg_2 => drop_frame_reg_reg_0,
      \m_axis_tvalid_pipe_reg_reg[1]_0\ => \m_axis_tvalid_pipe_reg_reg[1]\,
      reset => reset,
      rx_axis_tdata(7 downto 0) => rx_axis_tdata(7 downto 0),
      rx_axis_tlast => rx_axis_tlast,
      rx_axis_tready => rx_axis_tready,
      rx_axis_tuser => rx_axis_tuser,
      rx_clk => rx_clk,
      rx_fifo_axis_tvalid => rx_fifo_axis_tvalid,
      s_axis(9) => s_axis(8),
      s_axis(8) => rx_fifo_axis_tlast,
      s_axis(7 downto 0) => s_axis(7 downto 0),
      s_frame_reg => s_frame_reg,
      s_rst_sync2_reg_reg_0 => s_rst_sync2_reg_reg,
      s_rst_sync3_reg_reg_0 => s_rst_sync3_reg,
      wr_ptr_gray_reg => wr_ptr_gray_reg,
      \wr_ptr_sync_gray_reg_reg[0]_0\ => \wr_ptr_sync_gray_reg_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_axis_gmii_rx is
  port (
    gmii_rx_dv_d0 : out STD_LOGIC;
    gmii_rx_dv_d1_reg_0 : out STD_LOGIC;
    m_axis_tlast_reg_reg_0 : out STD_LOGIC;
    s_axis : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axis_tvalid_reg_reg_0 : out STD_LOGIC;
    \rx_rst_reg_reg[0]\ : out STD_LOGIC;
    m_axis_tlast_reg_reg_1 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    drop_frame_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    gmii_rx_dv_d00 : in STD_LOGIC;
    gmii_rx_dv_d20 : in STD_LOGIC;
    mii_locked_reg_0 : in STD_LOGIC;
    \gmii_rxd_d0_reg[7]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    drop_frame_reg_reg : in STD_LOGIC;
    \overflow_reg1__0\ : in STD_LOGIC;
    s_rst_sync3_reg : in STD_LOGIC;
    s_frame_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_axis_gmii_rx : entity is "axis_gmii_rx";
end riscv_ethernet_stream_0_0_axis_gmii_rx;

architecture STRUCTURE of riscv_ethernet_stream_0_0_axis_gmii_rx is
  signal \FSM_onehot_state_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal crc_next : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal crc_state : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal eth_crc_8_n_32 : STD_LOGIC;
  signal eth_crc_8_n_33 : STD_LOGIC;
  signal eth_crc_8_n_34 : STD_LOGIC;
  signal eth_crc_8_n_35 : STD_LOGIC;
  signal \^gmii_rx_dv_d0\ : STD_LOGIC;
  signal gmii_rx_dv_d0_i_1_n_0 : STD_LOGIC;
  signal gmii_rx_dv_d2 : STD_LOGIC;
  signal gmii_rx_dv_d3 : STD_LOGIC;
  signal gmii_rx_dv_d30 : STD_LOGIC;
  signal gmii_rx_dv_d4 : STD_LOGIC;
  signal gmii_rx_dv_d40 : STD_LOGIC;
  signal gmii_rx_er_d0 : STD_LOGIC;
  signal gmii_rx_er_d01_out : STD_LOGIC;
  signal gmii_rx_er_d1 : STD_LOGIC;
  signal gmii_rx_er_d2 : STD_LOGIC;
  signal gmii_rx_er_d3 : STD_LOGIC;
  signal gmii_rx_er_d4_reg_n_0 : STD_LOGIC;
  signal gmii_rxd_d0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii_rxd_d1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gmii_rxd_d2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gmii_rxd_d3 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gmii_rxd_d4_reg_n_0_[0]\ : STD_LOGIC;
  signal \gmii_rxd_d4_reg_n_0_[1]\ : STD_LOGIC;
  signal \gmii_rxd_d4_reg_n_0_[2]\ : STD_LOGIC;
  signal \gmii_rxd_d4_reg_n_0_[3]\ : STD_LOGIC;
  signal \gmii_rxd_d4_reg_n_0_[4]\ : STD_LOGIC;
  signal \gmii_rxd_d4_reg_n_0_[5]\ : STD_LOGIC;
  signal \gmii_rxd_d4_reg_n_0_[6]\ : STD_LOGIC;
  signal \gmii_rxd_d4_reg_n_0_[7]\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal m_axis_tlast_next : STD_LOGIC;
  signal \^m_axis_tlast_reg_reg_0\ : STD_LOGIC;
  signal m_axis_tuser_next1 : STD_LOGIC;
  signal \m_axis_tuser_next1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \m_axis_tuser_next1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \m_axis_tuser_next1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \m_axis_tuser_next1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \m_axis_tuser_next1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \m_axis_tuser_next1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \m_axis_tuser_next1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \m_axis_tuser_next1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \m_axis_tuser_next1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \m_axis_tuser_next1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal m_axis_tuser_next4_out : STD_LOGIC;
  signal m_axis_tuser_reg_i_2_n_0 : STD_LOGIC;
  signal m_axis_tvalid_reg_i_1_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_reg_reg_0\ : STD_LOGIC;
  signal mii_locked_i_1_n_0 : STD_LOGIC;
  signal mii_locked_reg_n_0 : STD_LOGIC;
  signal mii_odd : STD_LOGIC;
  signal mii_odd_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reset_crc : STD_LOGIC;
  signal reset_crc7_out : STD_LOGIC;
  signal \state_next0__8\ : STD_LOGIC;
  signal \state_next116_out__0\ : STD_LOGIC;
  signal state_next2 : STD_LOGIC;
  signal \state_next__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal update_crc : STD_LOGIC;
  signal \NLW_m_axis_tuser_next1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_m_axis_tuser_next1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_m_axis_tuser_next1_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_m_axis_tuser_next1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[0]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[2]_i_1\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[0]\ : label is "STATE_PAYLOAD:010,STATE_WAIT_LAST:100,STATE_IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[1]\ : label is "STATE_PAYLOAD:010,STATE_WAIT_LAST:100,STATE_IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[2]\ : label is "STATE_PAYLOAD:010,STATE_WAIT_LAST:100,STATE_IDLE:001";
  attribute SOFT_HLUTNM of gmii_rx_dv_d3_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of gmii_rx_dv_d4_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata_reg[7]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of m_axis_tlast_reg_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_frame_reg_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \wr_ptr_sync_gray_reg[12]_i_4__0\ : label is "soft_lutpair11";
begin
  Q(0) <= \^q\(0);
  gmii_rx_dv_d0 <= \^gmii_rx_dv_d0\;
  m_axis_tlast_reg_reg_0 <= \^m_axis_tlast_reg_reg_0\;
  m_axis_tvalid_reg_reg_0 <= \^m_axis_tvalid_reg_reg_0\;
\FSM_onehot_state_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2232FFFF22322232"
    )
        port map (
      I0 => state_reg(2),
      I1 => \gmii_rxd_d0_reg[7]_0\(1),
      I2 => update_crc,
      I3 => \state_next116_out__0\,
      I4 => \state_next0__8\,
      I5 => reset_crc,
      O => \state_next__0\(0)
    );
\FSM_onehot_state_reg[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gmii_rx_er_d4_reg_n_0,
      I1 => gmii_rx_dv_d4,
      O => \state_next116_out__0\
    );
\FSM_onehot_state_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF700070007000"
    )
        port map (
      I0 => gmii_rx_dv_d4,
      I1 => gmii_rx_er_d4_reg_n_0,
      I2 => \gmii_rxd_d0_reg[7]_0\(1),
      I3 => update_crc,
      I4 => reset_crc,
      I5 => \state_next0__8\,
      O => \state_next__0\(1)
    );
\FSM_onehot_state_reg[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]_i_3_n_0\,
      I1 => \gmii_rxd_d4_reg_n_0_[2]\,
      I2 => \gmii_rxd_d4_reg_n_0_[3]\,
      I3 => \gmii_rxd_d4_reg_n_0_[0]\,
      I4 => \gmii_rxd_d4_reg_n_0_[1]\,
      O => \state_next0__8\
    );
\FSM_onehot_state_reg[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000000000"
    )
        port map (
      I0 => \gmii_rxd_d4_reg_n_0_[4]\,
      I1 => \gmii_rxd_d4_reg_n_0_[5]\,
      I2 => \gmii_rxd_d4_reg_n_0_[6]\,
      I3 => \gmii_rxd_d4_reg_n_0_[7]\,
      I4 => gmii_rx_er_d4_reg_n_0,
      I5 => gmii_rx_dv_d4,
      O => \FSM_onehot_state_reg[1]_i_3_n_0\
    );
\FSM_onehot_state_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => \gmii_rxd_d0_reg[7]_0\(1),
      I1 => state_reg(2),
      I2 => gmii_rx_er_d4_reg_n_0,
      I3 => gmii_rx_dv_d4,
      I4 => update_crc,
      O => \state_next__0\(2)
    );
\FSM_onehot_state_reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => \state_next__0\(0),
      Q => reset_crc,
      S => \FSM_onehot_state_reg_reg[0]_0\(0)
    );
\FSM_onehot_state_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => \state_next__0\(1),
      Q => update_crc,
      R => \FSM_onehot_state_reg_reg[0]_0\(0)
    );
\FSM_onehot_state_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => \state_next__0\(2),
      Q => state_reg(2),
      R => \FSM_onehot_state_reg_reg[0]_0\(0)
    );
\crc_state[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mii_odd,
      I1 => reset_crc,
      O => reset_crc7_out
    );
\crc_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(0),
      Q => crc_state(0),
      S => reset_crc7_out
    );
\crc_state_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(10),
      Q => crc_state(10),
      S => reset_crc7_out
    );
\crc_state_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(11),
      Q => crc_state(11),
      S => reset_crc7_out
    );
\crc_state_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(12),
      Q => crc_state(12),
      S => reset_crc7_out
    );
\crc_state_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(13),
      Q => crc_state(13),
      S => reset_crc7_out
    );
\crc_state_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(14),
      Q => crc_state(14),
      S => reset_crc7_out
    );
\crc_state_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(15),
      Q => crc_state(15),
      S => reset_crc7_out
    );
\crc_state_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(16),
      Q => crc_state(16),
      S => reset_crc7_out
    );
\crc_state_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(17),
      Q => crc_state(17),
      S => reset_crc7_out
    );
\crc_state_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(18),
      Q => crc_state(18),
      S => reset_crc7_out
    );
\crc_state_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(19),
      Q => crc_state(19),
      S => reset_crc7_out
    );
\crc_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(1),
      Q => crc_state(1),
      S => reset_crc7_out
    );
\crc_state_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(20),
      Q => crc_state(20),
      S => reset_crc7_out
    );
\crc_state_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(21),
      Q => crc_state(21),
      S => reset_crc7_out
    );
\crc_state_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(22),
      Q => crc_state(22),
      S => reset_crc7_out
    );
\crc_state_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(23),
      Q => crc_state(23),
      S => reset_crc7_out
    );
\crc_state_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(24),
      Q => crc_state(24),
      S => reset_crc7_out
    );
\crc_state_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(25),
      Q => crc_state(25),
      S => reset_crc7_out
    );
\crc_state_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(26),
      Q => crc_state(26),
      S => reset_crc7_out
    );
\crc_state_reg[27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(27),
      Q => crc_state(27),
      S => reset_crc7_out
    );
\crc_state_reg[28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(28),
      Q => crc_state(28),
      S => reset_crc7_out
    );
\crc_state_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(29),
      Q => crc_state(29),
      S => reset_crc7_out
    );
\crc_state_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(2),
      Q => crc_state(2),
      S => reset_crc7_out
    );
\crc_state_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(30),
      Q => crc_state(30),
      S => reset_crc7_out
    );
\crc_state_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(31),
      Q => crc_state(31),
      S => reset_crc7_out
    );
\crc_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(3),
      Q => crc_state(3),
      S => reset_crc7_out
    );
\crc_state_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(4),
      Q => crc_state(4),
      S => reset_crc7_out
    );
\crc_state_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(5),
      Q => crc_state(5),
      S => reset_crc7_out
    );
\crc_state_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(6),
      Q => crc_state(6),
      S => reset_crc7_out
    );
\crc_state_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(7),
      Q => crc_state(7),
      S => reset_crc7_out
    );
\crc_state_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(8),
      Q => crc_state(8),
      S => reset_crc7_out
    );
\crc_state_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => m_axis_tvalid_reg_i_1_n_0,
      D => crc_next(9),
      Q => crc_state(9),
      S => reset_crc7_out
    );
\drop_frame_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444044444444444"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg[0]_0\(0),
      I1 => drop_frame_reg_reg,
      I2 => \overflow_reg1__0\,
      I3 => \^m_axis_tlast_reg_reg_0\,
      I4 => s_rst_sync3_reg,
      I5 => \^m_axis_tvalid_reg_reg_0\,
      O => \rx_rst_reg_reg[0]\
    );
eth_crc_8: entity work.riscv_ethernet_stream_0_0_lfsr_0
     port map (
      D(31 downto 0) => crc_next(31 downto 0),
      Q(31 downto 0) => crc_state(31 downto 0),
      \crc_state_reg[0]\ => eth_crc_8_n_35,
      \crc_state_reg[1]\ => eth_crc_8_n_32,
      \crc_state_reg[31]\(7) => \gmii_rxd_d4_reg_n_0_[7]\,
      \crc_state_reg[31]\(6) => \gmii_rxd_d4_reg_n_0_[6]\,
      \crc_state_reg[31]\(5) => \gmii_rxd_d4_reg_n_0_[5]\,
      \crc_state_reg[31]\(4) => \gmii_rxd_d4_reg_n_0_[4]\,
      \crc_state_reg[31]\(3) => \gmii_rxd_d4_reg_n_0_[3]\,
      \crc_state_reg[31]\(2) => \gmii_rxd_d4_reg_n_0_[2]\,
      \crc_state_reg[31]\(1) => \gmii_rxd_d4_reg_n_0_[1]\,
      \crc_state_reg[31]\(0) => \gmii_rxd_d4_reg_n_0_[0]\,
      \crc_state_reg[6]\ => eth_crc_8_n_34,
      \gmii_rxd_d4_reg[7]\ => eth_crc_8_n_33
    );
gmii_rx_dv_d0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => \^gmii_rx_dv_d0\,
      I1 => mii_odd,
      I2 => \gmii_rxd_d0_reg[7]_0\(1),
      O => gmii_rx_dv_d0_i_1_n_0
    );
gmii_rx_dv_d0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gmii_rx_dv_d0_i_1_n_0,
      Q => \^gmii_rx_dv_d0\,
      R => \FSM_onehot_state_reg_reg[0]_0\(0)
    );
gmii_rx_dv_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rx_dv_d00,
      Q => gmii_rx_dv_d1_reg_0,
      R => \FSM_onehot_state_reg_reg[0]_0\(0)
    );
gmii_rx_dv_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rx_dv_d20,
      Q => gmii_rx_dv_d2,
      R => \FSM_onehot_state_reg_reg[0]_0\(0)
    );
gmii_rx_dv_d3_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gmii_rx_dv_d2,
      I1 => \gmii_rxd_d0_reg[7]_0\(1),
      O => gmii_rx_dv_d30
    );
gmii_rx_dv_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rx_dv_d30,
      Q => gmii_rx_dv_d3,
      R => \FSM_onehot_state_reg_reg[0]_0\(0)
    );
gmii_rx_dv_d4_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gmii_rx_dv_d3,
      I1 => \gmii_rxd_d0_reg[7]_0\(1),
      O => gmii_rx_dv_d40
    );
gmii_rx_dv_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rx_dv_d40,
      Q => gmii_rx_dv_d4,
      R => \FSM_onehot_state_reg_reg[0]_0\(0)
    );
gmii_rx_er_d0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => gmii_rx_er_d0,
      I1 => mii_odd,
      I2 => \gmii_rxd_d0_reg[7]_0\(0),
      O => gmii_rx_er_d01_out
    );
gmii_rx_er_d0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => gmii_rx_er_d01_out,
      Q => gmii_rx_er_d0,
      R => '0'
    );
gmii_rx_er_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rx_er_d0,
      Q => gmii_rx_er_d1,
      R => '0'
    );
gmii_rx_er_d2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rx_er_d1,
      Q => gmii_rx_er_d2,
      R => '0'
    );
gmii_rx_er_d3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rx_er_d2,
      Q => gmii_rx_er_d3,
      R => '0'
    );
gmii_rx_er_d4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rx_er_d3,
      Q => gmii_rx_er_d4_reg_n_0,
      R => '0'
    );
\gmii_rxd_d0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(0),
      Q => gmii_rxd_d0(0),
      R => '0'
    );
\gmii_rxd_d0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(1),
      Q => gmii_rxd_d0(1),
      R => '0'
    );
\gmii_rxd_d0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(2),
      Q => gmii_rxd_d0(2),
      R => '0'
    );
\gmii_rxd_d0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \^q\(0),
      Q => gmii_rxd_d0(3),
      R => '0'
    );
\gmii_rxd_d0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \gmii_rxd_d0_reg[7]_0\(2),
      Q => p_0_in(0),
      R => '0'
    );
\gmii_rxd_d0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \gmii_rxd_d0_reg[7]_0\(3),
      Q => p_0_in(1),
      R => '0'
    );
\gmii_rxd_d0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \gmii_rxd_d0_reg[7]_0\(4),
      Q => p_0_in(2),
      R => '0'
    );
\gmii_rxd_d0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \gmii_rxd_d0_reg[7]_0\(5),
      Q => \^q\(0),
      R => '0'
    );
\gmii_rxd_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d0(0),
      Q => gmii_rxd_d1(0),
      R => '0'
    );
\gmii_rxd_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d0(1),
      Q => gmii_rxd_d1(1),
      R => '0'
    );
\gmii_rxd_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d0(2),
      Q => gmii_rxd_d1(2),
      R => '0'
    );
\gmii_rxd_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d0(3),
      Q => gmii_rxd_d1(3),
      R => '0'
    );
\gmii_rxd_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => p_0_in(0),
      Q => gmii_rxd_d1(4),
      R => '0'
    );
\gmii_rxd_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => p_0_in(1),
      Q => gmii_rxd_d1(5),
      R => '0'
    );
\gmii_rxd_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => p_0_in(2),
      Q => gmii_rxd_d1(6),
      R => '0'
    );
\gmii_rxd_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => \^q\(0),
      Q => gmii_rxd_d1(7),
      R => '0'
    );
\gmii_rxd_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d1(0),
      Q => gmii_rxd_d2(0),
      R => '0'
    );
\gmii_rxd_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d1(1),
      Q => gmii_rxd_d2(1),
      R => '0'
    );
\gmii_rxd_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d1(2),
      Q => gmii_rxd_d2(2),
      R => '0'
    );
\gmii_rxd_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d1(3),
      Q => gmii_rxd_d2(3),
      R => '0'
    );
\gmii_rxd_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d1(4),
      Q => gmii_rxd_d2(4),
      R => '0'
    );
\gmii_rxd_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d1(5),
      Q => gmii_rxd_d2(5),
      R => '0'
    );
\gmii_rxd_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d1(6),
      Q => gmii_rxd_d2(6),
      R => '0'
    );
\gmii_rxd_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d1(7),
      Q => gmii_rxd_d2(7),
      R => '0'
    );
\gmii_rxd_d3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d2(0),
      Q => gmii_rxd_d3(0),
      R => '0'
    );
\gmii_rxd_d3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d2(1),
      Q => gmii_rxd_d3(1),
      R => '0'
    );
\gmii_rxd_d3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d2(2),
      Q => gmii_rxd_d3(2),
      R => '0'
    );
\gmii_rxd_d3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d2(3),
      Q => gmii_rxd_d3(3),
      R => '0'
    );
\gmii_rxd_d3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d2(4),
      Q => gmii_rxd_d3(4),
      R => '0'
    );
\gmii_rxd_d3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d2(5),
      Q => gmii_rxd_d3(5),
      R => '0'
    );
\gmii_rxd_d3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d2(6),
      Q => gmii_rxd_d3(6),
      R => '0'
    );
\gmii_rxd_d3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d2(7),
      Q => gmii_rxd_d3(7),
      R => '0'
    );
\gmii_rxd_d4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d3(0),
      Q => \gmii_rxd_d4_reg_n_0_[0]\,
      R => '0'
    );
\gmii_rxd_d4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d3(1),
      Q => \gmii_rxd_d4_reg_n_0_[1]\,
      R => '0'
    );
\gmii_rxd_d4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d3(2),
      Q => \gmii_rxd_d4_reg_n_0_[2]\,
      R => '0'
    );
\gmii_rxd_d4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d3(3),
      Q => \gmii_rxd_d4_reg_n_0_[3]\,
      R => '0'
    );
\gmii_rxd_d4_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d3(4),
      Q => \gmii_rxd_d4_reg_n_0_[4]\,
      R => '0'
    );
\gmii_rxd_d4_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d3(5),
      Q => \gmii_rxd_d4_reg_n_0_[5]\,
      R => '0'
    );
\gmii_rxd_d4_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d3(6),
      Q => \gmii_rxd_d4_reg_n_0_[6]\,
      R => '0'
    );
\gmii_rxd_d4_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => mii_odd,
      D => gmii_rxd_d3(7),
      Q => \gmii_rxd_d4_reg_n_0_[7]\,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => crc_next(22),
      I1 => gmii_rxd_d1(6),
      I2 => crc_next(21),
      I3 => gmii_rxd_d1(5),
      I4 => gmii_rxd_d1(7),
      I5 => crc_next(23),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => crc_next(19),
      I1 => gmii_rxd_d1(3),
      I2 => crc_next(18),
      I3 => gmii_rxd_d1(2),
      I4 => gmii_rxd_d1(4),
      I5 => crc_next(20),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => crc_next(16),
      I1 => gmii_rxd_d1(0),
      I2 => crc_next(15),
      I3 => gmii_rxd_d2(7),
      I4 => gmii_rxd_d1(1),
      I5 => crc_next(17),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => crc_next(13),
      I1 => gmii_rxd_d2(5),
      I2 => crc_next(12),
      I3 => gmii_rxd_d2(4),
      I4 => gmii_rxd_d2(6),
      I5 => crc_next(14),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8421481212482184"
    )
        port map (
      I0 => eth_crc_8_n_35,
      I1 => eth_crc_8_n_32,
      I2 => eth_crc_8_n_34,
      I3 => eth_crc_8_n_33,
      I4 => p_0_in(2),
      I5 => \^q\(0),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => crc_next(28),
      I1 => p_0_in(0),
      I2 => crc_next(27),
      I3 => gmii_rxd_d0(3),
      I4 => p_0_in(1),
      I5 => crc_next(29),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => crc_next(25),
      I1 => gmii_rxd_d0(1),
      I2 => crc_next(24),
      I3 => gmii_rxd_d0(0),
      I4 => gmii_rxd_d0(2),
      I5 => crc_next(26),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => crc_next(10),
      I1 => gmii_rxd_d2(2),
      I2 => crc_next(9),
      I3 => gmii_rxd_d2(1),
      I4 => gmii_rxd_d2(3),
      I5 => crc_next(11),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => crc_next(7),
      I1 => gmii_rxd_d3(7),
      I2 => crc_next(6),
      I3 => gmii_rxd_d3(6),
      I4 => gmii_rxd_d2(0),
      I5 => crc_next(8),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => crc_next(4),
      I1 => gmii_rxd_d3(4),
      I2 => crc_next(3),
      I3 => gmii_rxd_d3(3),
      I4 => gmii_rxd_d3(5),
      I5 => crc_next(5),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000066006600000"
    )
        port map (
      I0 => crc_next(1),
      I1 => gmii_rxd_d3(1),
      I2 => crc_next(0),
      I3 => gmii_rxd_d3(0),
      I4 => gmii_rxd_d3(2),
      I5 => crc_next(2),
      O => \i__carry_i_4_n_0\
    );
\m_axis_tdata_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => update_crc,
      I1 => \gmii_rxd_d4_reg_n_0_[0]\,
      O => \m_axis_tdata_reg[0]_i_1_n_0\
    );
\m_axis_tdata_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => update_crc,
      I1 => \gmii_rxd_d4_reg_n_0_[1]\,
      O => \m_axis_tdata_reg[1]_i_1_n_0\
    );
\m_axis_tdata_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => update_crc,
      I1 => \gmii_rxd_d4_reg_n_0_[2]\,
      O => \m_axis_tdata_reg[2]_i_1_n_0\
    );
\m_axis_tdata_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => update_crc,
      I1 => \gmii_rxd_d4_reg_n_0_[3]\,
      O => \m_axis_tdata_reg[3]_i_1_n_0\
    );
\m_axis_tdata_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => update_crc,
      I1 => \gmii_rxd_d4_reg_n_0_[4]\,
      O => \m_axis_tdata_reg[4]_i_1_n_0\
    );
\m_axis_tdata_reg[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => update_crc,
      I1 => \gmii_rxd_d4_reg_n_0_[5]\,
      O => \m_axis_tdata_reg[5]_i_1_n_0\
    );
\m_axis_tdata_reg[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => update_crc,
      I1 => \gmii_rxd_d4_reg_n_0_[6]\,
      O => \m_axis_tdata_reg[6]_i_1_n_0\
    );
\m_axis_tdata_reg[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => mii_odd,
      O => state_next2
    );
\m_axis_tdata_reg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => update_crc,
      I1 => \gmii_rxd_d4_reg_n_0_[7]\,
      O => \m_axis_tdata_reg[7]_i_2_n_0\
    );
\m_axis_tdata_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \m_axis_tdata_reg[0]_i_1_n_0\,
      Q => s_axis(0),
      R => state_next2
    );
\m_axis_tdata_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \m_axis_tdata_reg[1]_i_1_n_0\,
      Q => s_axis(1),
      R => state_next2
    );
\m_axis_tdata_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \m_axis_tdata_reg[2]_i_1_n_0\,
      Q => s_axis(2),
      R => state_next2
    );
\m_axis_tdata_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \m_axis_tdata_reg[3]_i_1_n_0\,
      Q => s_axis(3),
      R => state_next2
    );
\m_axis_tdata_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \m_axis_tdata_reg[4]_i_1_n_0\,
      Q => s_axis(4),
      R => state_next2
    );
\m_axis_tdata_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \m_axis_tdata_reg[5]_i_1_n_0\,
      Q => s_axis(5),
      R => state_next2
    );
\m_axis_tdata_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \m_axis_tdata_reg[6]_i_1_n_0\,
      Q => s_axis(6),
      R => state_next2
    );
\m_axis_tdata_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \m_axis_tdata_reg[7]_i_2_n_0\,
      Q => s_axis(7),
      R => state_next2
    );
m_axis_tlast_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => \gmii_rxd_d0_reg[7]_0\(1),
      I1 => gmii_rx_er_d4_reg_n_0,
      I2 => gmii_rx_dv_d4,
      I3 => update_crc,
      O => m_axis_tlast_next
    );
m_axis_tlast_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => m_axis_tlast_next,
      Q => \^m_axis_tlast_reg_reg_0\,
      R => state_next2
    );
\m_axis_tuser_next1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \m_axis_tuser_next1_inferred__0/i__carry_n_0\,
      CO(2) => \m_axis_tuser_next1_inferred__0/i__carry_n_1\,
      CO(1) => \m_axis_tuser_next1_inferred__0/i__carry_n_2\,
      CO(0) => \m_axis_tuser_next1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_m_axis_tuser_next1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\m_axis_tuser_next1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tuser_next1_inferred__0/i__carry_n_0\,
      CO(3) => \m_axis_tuser_next1_inferred__0/i__carry__0_n_0\,
      CO(2) => \m_axis_tuser_next1_inferred__0/i__carry__0_n_1\,
      CO(1) => \m_axis_tuser_next1_inferred__0/i__carry__0_n_2\,
      CO(0) => \m_axis_tuser_next1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_m_axis_tuser_next1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\m_axis_tuser_next1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \m_axis_tuser_next1_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_m_axis_tuser_next1_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => m_axis_tuser_next1,
      CO(1) => \m_axis_tuser_next1_inferred__0/i__carry__1_n_2\,
      CO(0) => \m_axis_tuser_next1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_m_axis_tuser_next1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
m_axis_tuser_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888000"
    )
        port map (
      I0 => mii_odd,
      I1 => update_crc,
      I2 => gmii_rx_er_d4_reg_n_0,
      I3 => gmii_rx_dv_d4,
      I4 => m_axis_tuser_reg_i_2_n_0,
      O => m_axis_tuser_next4_out
    );
m_axis_tuser_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFFFF"
    )
        port map (
      I0 => gmii_rx_er_d2,
      I1 => gmii_rx_er_d1,
      I2 => gmii_rx_er_d3,
      I3 => gmii_rx_er_d0,
      I4 => m_axis_tuser_next1,
      I5 => \gmii_rxd_d0_reg[7]_0\(1),
      O => m_axis_tuser_reg_i_2_n_0
    );
m_axis_tuser_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => m_axis_tuser_next4_out,
      Q => s_axis(8),
      R => '0'
    );
m_axis_tvalid_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mii_odd,
      I1 => update_crc,
      O => m_axis_tvalid_reg_i_1_n_0
    );
m_axis_tvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => m_axis_tvalid_reg_i_1_n_0,
      Q => \^m_axis_tvalid_reg_reg_0\,
      R => \FSM_onehot_state_reg_reg[0]_0\(0)
    );
\mem_reg_0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_reg_0\,
      I1 => s_rst_sync3_reg,
      O => WEA(0)
    );
mii_locked_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000800080"
    )
        port map (
      I0 => mii_locked_reg_0,
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => \gmii_rxd_d0_reg[7]_0\(1),
      I5 => mii_locked_reg_n_0,
      O => mii_locked_i_1_n_0
    );
mii_locked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => mii_locked_i_1_n_0,
      Q => mii_locked_reg_n_0,
      R => \FSM_onehot_state_reg_reg[0]_0\(0)
    );
mii_odd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000080FFFFFFFF"
    )
        port map (
      I0 => mii_locked_reg_0,
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      I4 => mii_locked_reg_n_0,
      I5 => mii_odd,
      O => mii_odd_i_1_n_0
    );
mii_odd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => mii_odd_i_1_n_0,
      Q => mii_odd,
      R => \FSM_onehot_state_reg_reg[0]_0\(0)
    );
\s_frame_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => \^m_axis_tlast_reg_reg_0\,
      I1 => \^m_axis_tvalid_reg_reg_0\,
      I2 => s_rst_sync3_reg,
      I3 => s_frame_reg,
      O => drop_frame_reg
    );
\wr_ptr_sync_gray_reg[12]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^m_axis_tlast_reg_reg_0\,
      I1 => s_rst_sync3_reg,
      I2 => \^m_axis_tvalid_reg_reg_0\,
      O => m_axis_tlast_reg_reg_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_axis_gmii_tx is
  port (
    gmii_tx_en_reg : out STD_LOGIC;
    s_axis_tready_reg_reg_0 : out STD_LOGIC;
    \FSM_onehot_state_reg_reg[7]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tready_reg_reg_1 : out STD_LOGIC;
    \gmii_txd_reg_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg_reg[0]_0\ : in STD_LOGIC;
    tx_fifo_axis_tvalid : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[7]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[7]_2\ : in STD_LOGIC;
    m_terminate_frame_reg : in STD_LOGIC;
    \m_axis_pipe_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_axis_gmii_tx : entity is "axis_gmii_tx";
end riscv_ethernet_stream_0_0_axis_gmii_tx;

architecture STRUCTURE of riscv_ethernet_stream_0_0_axis_gmii_tx is
  signal \FSM_onehot_state_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_state_reg_reg[7]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \FSM_onehot_state_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal crc_next : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal crc_state : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \crc_state[31]_i_1__0_n_0\ : STD_LOGIC;
  signal frame_min_count_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \frame_min_count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min_count_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min_count_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min_count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min_count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \frame_min_count_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \frame_min_count_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \frame_min_count_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \frame_min_count_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal frame_ptr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \frame_ptr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \frame_ptr_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal gmii_tx_en_next : STD_LOGIC;
  signal gmii_txd_next : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \gmii_txd_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \gmii_txd_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \gmii_txd_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \gmii_txd_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \gmii_txd_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \gmii_txd_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \gmii_txd_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \gmii_txd_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \gmii_txd_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \gmii_txd_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal mii_msn_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \mii_msn_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \mii_msn_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \mii_msn_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \mii_msn_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \mii_msn_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \mii_msn_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal mii_odd_reg_inv_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal s_axis_tready_reg_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_reg_i_2_n_0 : STD_LOGIC;
  signal s_axis_tready_reg_i_3_n_0 : STD_LOGIC;
  signal \^s_axis_tready_reg_reg_0\ : STD_LOGIC;
  signal s_tdata_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_tdata_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_tdata_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_tdata_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal update_crc1_out : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[1]_i_1__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_state_reg[4]_i_1\ : label is "soft_lutpair29";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[0]\ : label is "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[1]\ : label is "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[2]\ : label is "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[3]\ : label is "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[4]\ : label is "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[5]\ : label is "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[6]\ : label is "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg_reg[7]\ : label is "STATE_PREAMBLE:00000010,STATE_PAYLOAD:00000100,STATE_LAST:00001000,STATE_PAD:00010000,STATE_FCS:00100000,STATE_WAIT_END:01000000,STATE_IDLE:00000001,STATE_IFG:10000000";
  attribute SOFT_HLUTNM of \frame_min_count_reg[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \frame_min_count_reg[4]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \frame_ptr_reg[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \frame_ptr_reg[4]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \frame_ptr_reg[7]_i_4\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \frame_ptr_reg[7]_i_5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \frame_ptr_reg[7]_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \mii_msn_reg[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \mii_msn_reg[2]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \mii_msn_reg[3]_i_3\ : label is "soft_lutpair28";
  attribute inverted : string;
  attribute inverted of mii_odd_reg_reg_inv : label is "yes";
begin
  \FSM_onehot_state_reg_reg[7]_0\(2 downto 0) <= \^fsm_onehot_state_reg_reg[7]_0\(2 downto 0);
  s_axis_tready_reg_reg_0 <= \^s_axis_tready_reg_reg_0\;
\FSM_onehot_state_reg[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF44444444444"
    )
        port map (
      I0 => tx_fifo_axis_tvalid,
      I1 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I2 => \^fsm_onehot_state_reg_reg[7]_0\(1),
      I3 => \FSM_onehot_state_reg_reg[0]_1\,
      I4 => \^fsm_onehot_state_reg_reg[7]_0\(2),
      I5 => \FSM_onehot_state_reg[0]_i_3_n_0\,
      O => \FSM_onehot_state_reg[0]_i_1__0_n_0\
    );
\FSM_onehot_state_reg[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA888"
    )
        port map (
      I0 => frame_ptr_reg(3),
      I1 => frame_ptr_reg(2),
      I2 => frame_ptr_reg(0),
      I3 => frame_ptr_reg(1),
      I4 => \FSM_onehot_state_reg[7]_i_4_n_0\,
      O => \FSM_onehot_state_reg[0]_i_3_n_0\
    );
\FSM_onehot_state_reg[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => tx_fifo_axis_tvalid,
      I1 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg[1]_i_2__0_n_0\,
      O => \FSM_onehot_state_reg[1]_i_1__0_n_0\
    );
\FSM_onehot_state_reg[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8AAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[1]\,
      I1 => \FSM_onehot_state_reg[7]_i_4_n_0\,
      I2 => frame_ptr_reg(1),
      I3 => frame_ptr_reg(2),
      I4 => frame_ptr_reg(3),
      I5 => frame_ptr_reg(0),
      O => \FSM_onehot_state_reg[1]_i_2__0_n_0\
    );
\FSM_onehot_state_reg[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"444444444444F444"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_i_2_n_0\,
      I1 => frame_ptr_reg(0),
      I2 => tx_fifo_axis_tvalid,
      I3 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I4 => m_terminate_frame_reg,
      I5 => \m_axis_pipe_reg_reg[0]_0\(8),
      O => \FSM_onehot_state_reg[2]_i_1__0_n_0\
    );
\FSM_onehot_state_reg[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => frame_ptr_reg(3),
      I1 => frame_ptr_reg(2),
      I2 => frame_ptr_reg(1),
      I3 => \FSM_onehot_state_reg[7]_i_4_n_0\,
      I4 => \FSM_onehot_state_reg_reg_n_0_[1]\,
      O => \FSM_onehot_state_reg[2]_i_2_n_0\
    );
\FSM_onehot_state_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg[5]_i_2_n_0\,
      O => \FSM_onehot_state_reg[4]_i_1_n_0\
    );
\FSM_onehot_state_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"545454FF54FF54FF"
    )
        port map (
      I0 => \FSM_onehot_state_reg[5]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I4 => frame_ptr_reg(1),
      I5 => frame_ptr_reg(0),
      O => \FSM_onehot_state_reg[5]_i_1_n_0\
    );
\FSM_onehot_state_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => frame_min_count_reg(5),
      I1 => frame_min_count_reg(3),
      I2 => frame_min_count_reg(1),
      I3 => frame_min_count_reg(0),
      I4 => frame_min_count_reg(2),
      I5 => frame_min_count_reg(4),
      O => \FSM_onehot_state_reg[5]_i_2_n_0\
    );
\FSM_onehot_state_reg[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \FSM_onehot_state_reg[7]_i_4_n_0\,
      I1 => frame_ptr_reg(3),
      I2 => \FSM_onehot_state_reg_reg_n_0_[5]\,
      I3 => frame_ptr_reg(2),
      O => \FSM_onehot_state_reg[5]_i_3_n_0\
    );
\FSM_onehot_state_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EECEEECEFEFEFEFF"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[5]\,
      I1 => \FSM_onehot_state_reg_reg[7]_1\,
      I2 => \FSM_onehot_state_reg[7]_i_3_n_0\,
      I3 => frame_ptr_reg(3),
      I4 => \FSM_onehot_state_reg[7]_i_4_n_0\,
      I5 => \FSM_onehot_state_reg_reg[7]_2\,
      O => \FSM_onehot_state_reg[7]_i_1_n_0\
    );
\FSM_onehot_state_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => frame_ptr_reg(4),
      I1 => frame_ptr_reg(5),
      I2 => frame_ptr_reg(6),
      I3 => frame_ptr_reg(7),
      I4 => \frame_ptr_reg[4]_i_2_n_0\,
      I5 => frame_ptr_reg(2),
      O => \FSM_onehot_state_reg[7]_i_3_n_0\
    );
\FSM_onehot_state_reg[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame_ptr_reg(7),
      I1 => frame_ptr_reg(6),
      I2 => frame_ptr_reg(5),
      I3 => frame_ptr_reg(4),
      O => \FSM_onehot_state_reg[7]_i_4_n_0\
    );
\FSM_onehot_state_reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => \FSM_onehot_state_reg[0]_i_1__0_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[0]\,
      S => Q(0)
    );
\FSM_onehot_state_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => \FSM_onehot_state_reg[1]_i_1__0_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[1]\,
      R => Q(0)
    );
\FSM_onehot_state_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => \FSM_onehot_state_reg[2]_i_1__0_n_0\,
      Q => \^fsm_onehot_state_reg_reg[7]_0\(0),
      R => Q(0)
    );
\FSM_onehot_state_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => D(0),
      Q => \FSM_onehot_state_reg_reg_n_0_[3]\,
      R => Q(0)
    );
\FSM_onehot_state_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => \FSM_onehot_state_reg[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[4]\,
      R => Q(0)
    );
\FSM_onehot_state_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => \FSM_onehot_state_reg[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_reg_n_0_[5]\,
      R => Q(0)
    );
\FSM_onehot_state_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => D(1),
      Q => \^fsm_onehot_state_reg_reg[7]_0\(1),
      R => Q(0)
    );
\FSM_onehot_state_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => \FSM_onehot_state_reg[7]_i_1_n_0\,
      Q => \^fsm_onehot_state_reg_reg[7]_0\(2),
      R => Q(0)
    );
\crc_state[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => p_0_in,
      I1 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[1]\,
      O => \crc_state[31]_i_1__0_n_0\
    );
\crc_state[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I1 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I3 => p_0_in,
      O => update_crc1_out
    );
\crc_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(0),
      Q => crc_state(0),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(10),
      Q => crc_state(10),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(11),
      Q => crc_state(11),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(12),
      Q => crc_state(12),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(13),
      Q => crc_state(13),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(14),
      Q => crc_state(14),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(15),
      Q => crc_state(15),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[16]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(16),
      Q => crc_state(16),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[17]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(17),
      Q => crc_state(17),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[18]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(18),
      Q => crc_state(18),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[19]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(19),
      Q => crc_state(19),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(1),
      Q => crc_state(1),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[20]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(20),
      Q => crc_state(20),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[21]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(21),
      Q => crc_state(21),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[22]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(22),
      Q => crc_state(22),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[23]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(23),
      Q => crc_state(23),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[24]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(24),
      Q => crc_state(24),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[25]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(25),
      Q => crc_state(25),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[26]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(26),
      Q => crc_state(26),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[27]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(27),
      Q => crc_state(27),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[28]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(28),
      Q => crc_state(28),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[29]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(29),
      Q => crc_state(29),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(2),
      Q => crc_state(2),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[30]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(30),
      Q => crc_state(30),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[31]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(31),
      Q => crc_state(31),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(3),
      Q => crc_state(3),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(4),
      Q => crc_state(4),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(5),
      Q => crc_state(5),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(6),
      Q => crc_state(6),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(7),
      Q => crc_state(7),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(8),
      Q => crc_state(8),
      S => \crc_state[31]_i_1__0_n_0\
    );
\crc_state_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => update_crc1_out,
      D => crc_next(9),
      Q => crc_state(9),
      S => \crc_state[31]_i_1__0_n_0\
    );
eth_crc_8: entity work.riscv_ethernet_stream_0_0_lfsr
     port map (
      D(31 downto 0) => crc_next(31 downto 0),
      Q(31 downto 0) => crc_state(31 downto 0),
      s_tdata_reg(7 downto 0) => s_tdata_reg(7 downto 0)
    );
\frame_min_count_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I1 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I2 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I4 => frame_min_count_reg(0),
      O => \frame_min_count_reg[0]_i_1_n_0\
    );
\frame_min_count_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEAAAAAAAAFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I1 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I2 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I4 => frame_min_count_reg(0),
      I5 => frame_min_count_reg(1),
      O => \frame_min_count_reg[1]_i_1_n_0\
    );
\frame_min_count_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0FFFF000E0000"
    )
        port map (
      I0 => \mii_msn_reg[3]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I2 => frame_min_count_reg(1),
      I3 => frame_min_count_reg(0),
      I4 => \frame_min_count_reg[5]_i_1_n_0\,
      I5 => frame_min_count_reg(2),
      O => \frame_min_count_reg[2]_i_1_n_0\
    );
\frame_min_count_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEE00000000E"
    )
        port map (
      I0 => \mii_msn_reg[3]_i_3_n_0\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I2 => frame_min_count_reg(2),
      I3 => frame_min_count_reg(0),
      I4 => frame_min_count_reg(1),
      I5 => frame_min_count_reg(3),
      O => \frame_min_count_reg[3]_i_1_n_0\
    );
\frame_min_count_reg[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I1 => \frame_min_count_reg[5]_i_1_n_0\,
      O => \frame_min_count_reg[4]_i_1_n_0\
    );
\frame_min_count_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA800000002"
    )
        port map (
      I0 => \frame_min_count_reg[4]_i_3_n_0\,
      I1 => frame_min_count_reg(3),
      I2 => frame_min_count_reg(1),
      I3 => frame_min_count_reg(0),
      I4 => frame_min_count_reg(2),
      I5 => frame_min_count_reg(4),
      O => \frame_min_count_reg[4]_i_2_n_0\
    );
\frame_min_count_reg[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I2 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      O => \frame_min_count_reg[4]_i_3_n_0\
    );
\frame_min_count_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE0000AAAA0000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I1 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I2 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I4 => p_0_in,
      I5 => \FSM_onehot_state_reg[5]_i_2_n_0\,
      O => \frame_min_count_reg[5]_i_1_n_0\
    );
\frame_min_count_reg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFEFFFEAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I1 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I2 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I4 => \frame_min_count_reg[5]_i_3_n_0\,
      I5 => frame_min_count_reg(5),
      O => \frame_min_count_reg[5]_i_2_n_0\
    );
\frame_min_count_reg[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => frame_min_count_reg(4),
      I1 => frame_min_count_reg(2),
      I2 => frame_min_count_reg(0),
      I3 => frame_min_count_reg(1),
      I4 => frame_min_count_reg(3),
      O => \frame_min_count_reg[5]_i_3_n_0\
    );
\frame_min_count_reg_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_min_count_reg[5]_i_1_n_0\,
      D => \frame_min_count_reg[0]_i_1_n_0\,
      Q => frame_min_count_reg(0),
      S => '0'
    );
\frame_min_count_reg_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_min_count_reg[5]_i_1_n_0\,
      D => \frame_min_count_reg[1]_i_1_n_0\,
      Q => frame_min_count_reg(1),
      S => '0'
    );
\frame_min_count_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => '1',
      D => \frame_min_count_reg[2]_i_1_n_0\,
      Q => frame_min_count_reg(2),
      R => '0'
    );
\frame_min_count_reg_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_min_count_reg[5]_i_1_n_0\,
      D => \frame_min_count_reg[3]_i_1_n_0\,
      Q => frame_min_count_reg(3),
      S => \frame_min_count_reg[4]_i_1_n_0\
    );
\frame_min_count_reg_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_min_count_reg[5]_i_1_n_0\,
      D => \frame_min_count_reg[4]_i_2_n_0\,
      Q => frame_min_count_reg(4),
      S => \frame_min_count_reg[4]_i_1_n_0\
    );
\frame_min_count_reg_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_min_count_reg[5]_i_1_n_0\,
      D => \frame_min_count_reg[5]_i_2_n_0\,
      Q => frame_min_count_reg(5),
      S => '0'
    );
\frame_ptr_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFFEFFF0000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[1]\,
      I2 => \frame_ptr_reg[7]_i_5_n_0\,
      I3 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I4 => \frame_ptr_reg[7]_i_2_n_0\,
      I5 => frame_ptr_reg(0),
      O => \frame_ptr_reg[0]_i_1_n_0\
    );
\frame_ptr_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAFBFBAA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I1 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I2 => \frame_ptr_reg[7]_i_6_n_0\,
      I3 => frame_ptr_reg(1),
      I4 => frame_ptr_reg(0),
      O => \frame_ptr_reg[1]_i_1_n_0\
    );
\frame_ptr_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEEEEAAA"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I1 => \frame_ptr_reg[7]_i_6_n_0\,
      I2 => frame_ptr_reg(1),
      I3 => frame_ptr_reg(0),
      I4 => frame_ptr_reg(2),
      O => \frame_ptr_reg[2]_i_1_n_0\
    );
\frame_ptr_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DDDCDDDC0000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I1 => \frame_ptr_reg[7]_i_6_n_0\,
      I2 => frame_ptr_reg(0),
      I3 => frame_ptr_reg(1),
      I4 => frame_ptr_reg(2),
      I5 => frame_ptr_reg(3),
      O => \frame_ptr_reg[3]_i_1_n_0\
    );
\frame_ptr_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0CDDCC00C00000"
    )
        port map (
      I0 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I1 => \frame_ptr_reg[7]_i_6_n_0\,
      I2 => frame_ptr_reg(2),
      I3 => \frame_ptr_reg[4]_i_2_n_0\,
      I4 => frame_ptr_reg(3),
      I5 => frame_ptr_reg(4),
      O => \frame_ptr_reg[4]_i_1_n_0\
    );
\frame_ptr_reg[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => frame_ptr_reg(1),
      I1 => frame_ptr_reg(0),
      O => \frame_ptr_reg[4]_i_2_n_0\
    );
\frame_ptr_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0700000000FF07"
    )
        port map (
      I0 => frame_ptr_reg(0),
      I1 => frame_ptr_reg(1),
      I2 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I3 => \frame_ptr_reg[7]_i_6_n_0\,
      I4 => \frame_ptr_reg[5]_i_2_n_0\,
      I5 => frame_ptr_reg(5),
      O => \frame_ptr_reg[5]_i_1_n_0\
    );
\frame_ptr_reg[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => frame_ptr_reg(3),
      I1 => frame_ptr_reg(0),
      I2 => frame_ptr_reg(1),
      I3 => frame_ptr_reg(2),
      I4 => frame_ptr_reg(4),
      O => \frame_ptr_reg[5]_i_2_n_0\
    );
\frame_ptr_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF07FF070000"
    )
        port map (
      I0 => frame_ptr_reg(0),
      I1 => frame_ptr_reg(1),
      I2 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I3 => \frame_ptr_reg[7]_i_6_n_0\,
      I4 => \frame_ptr_reg[6]_i_2_n_0\,
      I5 => frame_ptr_reg(6),
      O => \frame_ptr_reg[6]_i_1_n_0\
    );
\frame_ptr_reg[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => frame_ptr_reg(5),
      I1 => frame_ptr_reg(4),
      I2 => frame_ptr_reg(2),
      I3 => frame_ptr_reg(1),
      I4 => frame_ptr_reg(0),
      I5 => frame_ptr_reg(3),
      O => \frame_ptr_reg[6]_i_2_n_0\
    );
\frame_ptr_reg[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I1 => \frame_ptr_reg[7]_i_2_n_0\,
      O => \frame_ptr_reg[7]_i_1_n_0\
    );
\frame_ptr_reg[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA8AAAA"
    )
        port map (
      I0 => p_0_in,
      I1 => \frame_ptr_reg[7]_i_4_n_0\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[1]\,
      I4 => \frame_ptr_reg[7]_i_5_n_0\,
      I5 => \FSM_onehot_state_reg_reg_n_0_[5]\,
      O => \frame_ptr_reg[7]_i_2_n_0\
    );
\frame_ptr_reg[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000ABBBABBB0000"
    )
        port map (
      I0 => \frame_ptr_reg[7]_i_6_n_0\,
      I1 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I2 => frame_ptr_reg(1),
      I3 => frame_ptr_reg(0),
      I4 => frame_ptr_reg(7),
      I5 => \frame_ptr_reg[7]_i_7_n_0\,
      O => \frame_ptr_reg[7]_i_3_n_0\
    );
\frame_ptr_reg[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg[5]_i_2_n_0\,
      O => \frame_ptr_reg[7]_i_4_n_0\
    );
\frame_ptr_reg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[7]_0\(2),
      I1 => \^fsm_onehot_state_reg_reg[7]_0\(1),
      O => \frame_ptr_reg[7]_i_5_n_0\
    );
\frame_ptr_reg[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]_i_2__0_n_0\,
      I1 => \^fsm_onehot_state_reg_reg[7]_0\(1),
      I2 => \^fsm_onehot_state_reg_reg[7]_0\(2),
      O => \frame_ptr_reg[7]_i_6_n_0\
    );
\frame_ptr_reg[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => frame_ptr_reg(3),
      I1 => \frame_ptr_reg[4]_i_2_n_0\,
      I2 => frame_ptr_reg(2),
      I3 => frame_ptr_reg(4),
      I4 => frame_ptr_reg(5),
      I5 => frame_ptr_reg(6),
      O => \frame_ptr_reg[7]_i_7_n_0\
    );
\frame_ptr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => '1',
      D => \frame_ptr_reg[0]_i_1_n_0\,
      Q => frame_ptr_reg(0),
      R => '0'
    );
\frame_ptr_reg_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_ptr_reg[7]_i_2_n_0\,
      D => \frame_ptr_reg[1]_i_1_n_0\,
      Q => frame_ptr_reg(1),
      S => '0'
    );
\frame_ptr_reg_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_ptr_reg[7]_i_2_n_0\,
      D => \frame_ptr_reg[2]_i_1_n_0\,
      Q => frame_ptr_reg(2),
      S => '0'
    );
\frame_ptr_reg_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_ptr_reg[7]_i_2_n_0\,
      D => \frame_ptr_reg[3]_i_1_n_0\,
      Q => frame_ptr_reg(3),
      S => \frame_ptr_reg[7]_i_1_n_0\
    );
\frame_ptr_reg_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_ptr_reg[7]_i_2_n_0\,
      D => \frame_ptr_reg[4]_i_1_n_0\,
      Q => frame_ptr_reg(4),
      S => \frame_ptr_reg[7]_i_1_n_0\
    );
\frame_ptr_reg_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_ptr_reg[7]_i_2_n_0\,
      D => \frame_ptr_reg[5]_i_1_n_0\,
      Q => frame_ptr_reg(5),
      S => \frame_ptr_reg[7]_i_1_n_0\
    );
\frame_ptr_reg_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_ptr_reg[7]_i_2_n_0\,
      D => \frame_ptr_reg[6]_i_1_n_0\,
      Q => frame_ptr_reg(6),
      S => \frame_ptr_reg[7]_i_1_n_0\
    );
\frame_ptr_reg_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \frame_ptr_reg[7]_i_2_n_0\,
      D => \frame_ptr_reg[7]_i_3_n_0\,
      Q => frame_ptr_reg(7),
      S => \frame_ptr_reg[7]_i_1_n_0\
    );
gmii_tx_en_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I1 => tx_fifo_axis_tvalid,
      I2 => \FSM_onehot_state_reg_reg_n_0_[1]\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I4 => \mii_msn_reg[3]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_reg_n_0_[5]\,
      O => gmii_tx_en_next
    );
gmii_tx_en_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => gmii_tx_en_next,
      Q => gmii_tx_en_reg,
      R => Q(0)
    );
\gmii_txd_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEAE00"
    )
        port map (
      I0 => \gmii_txd_reg[0]_i_2_n_0\,
      I1 => \gmii_txd_reg[0]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I3 => mii_msn_reg(0),
      I4 => p_0_in,
      O => \gmii_txd_reg[0]_i_1_n_0\
    );
\gmii_txd_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAFFEAFFEAFF"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[1]\,
      I1 => tx_fifo_axis_tvalid,
      I2 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I3 => p_0_in,
      I4 => \mii_msn_reg[3]_i_3_n_0\,
      I5 => s_tdata_reg(0),
      O => \gmii_txd_reg[0]_i_2_n_0\
    );
\gmii_txd_reg[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5533000F5533FF0F"
    )
        port map (
      I0 => crc_state(24),
      I1 => crc_state(16),
      I2 => crc_state(0),
      I3 => frame_ptr_reg(0),
      I4 => frame_ptr_reg(1),
      I5 => crc_state(8),
      O => \gmii_txd_reg[0]_i_3_n_0\
    );
\gmii_txd_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E222E222E222EEEE"
    )
        port map (
      I0 => mii_msn_reg(1),
      I1 => p_0_in,
      I2 => \mii_msn_reg[3]_i_3_n_0\,
      I3 => s_tdata_reg(1),
      I4 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I5 => \gmii_txd_reg[1]_i_2_n_0\,
      O => \gmii_txd_reg[1]_i_1_n_0\
    );
\gmii_txd_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFF0CCAA00F0CC"
    )
        port map (
      I0 => crc_state(25),
      I1 => crc_state(1),
      I2 => crc_state(17),
      I3 => frame_ptr_reg(1),
      I4 => frame_ptr_reg(0),
      I5 => crc_state(9),
      O => \gmii_txd_reg[1]_i_2_n_0\
    );
\gmii_txd_reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E0E0EE"
    )
        port map (
      I0 => p_0_in,
      I1 => mii_msn_reg(2),
      I2 => \gmii_txd_reg[2]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I4 => \gmii_txd_reg[2]_i_3_n_0\,
      O => \gmii_txd_reg[2]_i_1_n_0\
    );
\gmii_txd_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8F8F8FFFFFFFF"
    )
        port map (
      I0 => \mii_msn_reg[3]_i_3_n_0\,
      I1 => s_tdata_reg(2),
      I2 => \FSM_onehot_state_reg_reg_n_0_[1]\,
      I3 => tx_fifo_axis_tvalid,
      I4 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I5 => p_0_in,
      O => \gmii_txd_reg[2]_i_2_n_0\
    );
\gmii_txd_reg[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAF0FFCCAAF000"
    )
        port map (
      I0 => crc_state(18),
      I1 => crc_state(26),
      I2 => crc_state(10),
      I3 => frame_ptr_reg(0),
      I4 => frame_ptr_reg(1),
      I5 => crc_state(2),
      O => \gmii_txd_reg[2]_i_3_n_0\
    );
\gmii_txd_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E222E222E222EEEE"
    )
        port map (
      I0 => mii_msn_reg(3),
      I1 => p_0_in,
      I2 => \mii_msn_reg[3]_i_3_n_0\,
      I3 => s_tdata_reg(3),
      I4 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I5 => \gmii_txd_reg[3]_i_2_n_0\,
      O => \gmii_txd_reg[3]_i_1_n_0\
    );
\gmii_txd_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAACCF000AACC"
    )
        port map (
      I0 => crc_state(11),
      I1 => crc_state(3),
      I2 => crc_state(27),
      I3 => frame_ptr_reg(0),
      I4 => frame_ptr_reg(1),
      I5 => crc_state(19),
      O => \gmii_txd_reg[3]_i_2_n_0\
    );
\gmii_txd_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => '1',
      D => \gmii_txd_reg[0]_i_1_n_0\,
      Q => \gmii_txd_reg_reg[3]_0\(0),
      R => '0'
    );
\gmii_txd_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => '1',
      D => \gmii_txd_reg[1]_i_1_n_0\,
      Q => \gmii_txd_reg_reg[3]_0\(1),
      R => '0'
    );
\gmii_txd_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => '1',
      D => \gmii_txd_reg[2]_i_1_n_0\,
      Q => \gmii_txd_reg_reg[3]_0\(2),
      R => '0'
    );
\gmii_txd_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => '1',
      D => \gmii_txd_reg[3]_i_1_n_0\,
      Q => \gmii_txd_reg_reg[3]_0\(3),
      R => '0'
    );
mem_reg_0_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^s_axis_tready_reg_reg_0\,
      I1 => tx_fifo_axis_tvalid,
      O => s_axis_tready_reg_reg_1
    );
\mii_msn_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4F444"
    )
        port map (
      I0 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I1 => \mii_msn_reg[0]_i_2_n_0\,
      I2 => s_tdata_reg(4),
      I3 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I4 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I5 => \mii_msn_reg[2]_i_3_n_0\,
      O => gmii_txd_next(4)
    );
\mii_msn_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00330F55FF330F55"
    )
        port map (
      I0 => crc_state(4),
      I1 => crc_state(12),
      I2 => crc_state(20),
      I3 => frame_ptr_reg(1),
      I4 => frame_ptr_reg(0),
      I5 => crc_state(28),
      O => \mii_msn_reg[0]_i_2_n_0\
    );
\mii_msn_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF44444"
    )
        port map (
      I0 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I1 => \mii_msn_reg[1]_i_2_n_0\,
      I2 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I3 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I4 => s_tdata_reg(5),
      O => gmii_txd_next(5)
    );
\mii_msn_reg[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00550F33FF550F33"
    )
        port map (
      I0 => crc_state(13),
      I1 => crc_state(5),
      I2 => crc_state(21),
      I3 => frame_ptr_reg(1),
      I4 => frame_ptr_reg(0),
      I5 => crc_state(29),
      O => \mii_msn_reg[1]_i_2_n_0\
    );
\mii_msn_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF4F4F444"
    )
        port map (
      I0 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I1 => \mii_msn_reg[2]_i_2_n_0\,
      I2 => s_tdata_reg(6),
      I3 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I4 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I5 => \mii_msn_reg[2]_i_3_n_0\,
      O => gmii_txd_next(6)
    );
\mii_msn_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00550F33FF550F33"
    )
        port map (
      I0 => crc_state(14),
      I1 => crc_state(6),
      I2 => crc_state(22),
      I3 => frame_ptr_reg(1),
      I4 => frame_ptr_reg(0),
      I5 => crc_state(30),
      O => \mii_msn_reg[2]_i_2_n_0\
    );
\mii_msn_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[1]\,
      I1 => tx_fifo_axis_tvalid,
      I2 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      O => \mii_msn_reg[2]_i_3_n_0\
    );
\mii_msn_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444F444F4"
    )
        port map (
      I0 => \FSM_onehot_state_reg[5]_i_3_n_0\,
      I1 => \mii_msn_reg[3]_i_2_n_0\,
      I2 => frame_ptr_reg(0),
      I3 => \FSM_onehot_state_reg[2]_i_2_n_0\,
      I4 => s_tdata_reg(7),
      I5 => \mii_msn_reg[3]_i_3_n_0\,
      O => gmii_txd_next(7)
    );
\mii_msn_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00330F55FF330F55"
    )
        port map (
      I0 => crc_state(7),
      I1 => crc_state(15),
      I2 => crc_state(23),
      I3 => frame_ptr_reg(1),
      I4 => frame_ptr_reg(0),
      I5 => crc_state(31),
      O => \mii_msn_reg[3]_i_2_n_0\
    );
\mii_msn_reg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I1 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      O => \mii_msn_reg[3]_i_3_n_0\
    );
\mii_msn_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => gmii_txd_next(4),
      Q => mii_msn_reg(0),
      R => '0'
    );
\mii_msn_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => gmii_txd_next(5),
      Q => mii_msn_reg(1),
      R => '0'
    );
\mii_msn_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => gmii_txd_next(6),
      Q => mii_msn_reg(2),
      R => '0'
    );
\mii_msn_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => p_0_in,
      D => gmii_txd_next(7),
      Q => mii_msn_reg(3),
      R => '0'
    );
mii_odd_reg_inv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555557"
    )
        port map (
      I0 => p_0_in,
      I1 => \mii_msn_reg[2]_i_3_n_0\,
      I2 => \frame_min_count_reg[4]_i_3_n_0\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[5]\,
      I4 => \^fsm_onehot_state_reg_reg[7]_0\(2),
      I5 => \^fsm_onehot_state_reg_reg[7]_0\(1),
      O => mii_odd_reg_inv_i_1_n_0
    );
mii_odd_reg_reg_inv: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => '1',
      D => mii_odd_reg_inv_i_1_n_0,
      Q => p_0_in,
      R => '0'
    );
s_axis_tready_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000888A8880"
    )
        port map (
      I0 => p_0_in,
      I1 => s_axis_tready_reg_i_2_n_0,
      I2 => \frame_ptr_reg[7]_i_6_n_0\,
      I3 => s_axis_tready_reg_i_3_n_0,
      I4 => \^s_axis_tready_reg_reg_0\,
      I5 => Q(0),
      O => s_axis_tready_reg_i_1_n_0
    );
s_axis_tready_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11FF11F1FFFF11F1"
    )
        port map (
      I0 => \FSM_onehot_state_reg[2]_i_2_n_0\,
      I1 => frame_ptr_reg(0),
      I2 => \^fsm_onehot_state_reg_reg[7]_0\(1),
      I3 => \FSM_onehot_state_reg_reg[0]_1\,
      I4 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I5 => \^s_axis_tready_reg_reg_0\,
      O => s_axis_tready_reg_i_2_n_0
    );
s_axis_tready_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I3 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I4 => \FSM_onehot_state_reg_reg_n_0_[5]\,
      O => s_axis_tready_reg_i_3_n_0
    );
s_axis_tready_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => '1',
      D => s_axis_tready_reg_i_1_n_0,
      Q => \^s_axis_tready_reg_reg_0\,
      R => '0'
    );
\s_tdata_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111100000000000"
    )
        port map (
      I0 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I1 => \FSM_onehot_state_reg_reg_n_0_[1]\,
      I2 => \FSM_onehot_state_reg[5]_i_2_n_0\,
      I3 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I4 => \s_tdata_reg[7]_i_3_n_0\,
      I5 => p_0_in,
      O => \s_tdata_reg[7]_i_1_n_0\
    );
\s_tdata_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => p_0_in,
      I1 => \s_tdata_reg[7]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_reg_n_0_[3]\,
      I3 => \FSM_onehot_state_reg[5]_i_2_n_0\,
      O => \s_tdata_reg[7]_i_2_n_0\
    );
\s_tdata_reg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF31"
    )
        port map (
      I0 => frame_ptr_reg(0),
      I1 => \FSM_onehot_state_reg[2]_i_2_n_0\,
      I2 => \^s_axis_tready_reg_reg_0\,
      I3 => \^fsm_onehot_state_reg_reg[7]_0\(0),
      I4 => \FSM_onehot_state_reg_reg_n_0_[4]\,
      O => \s_tdata_reg[7]_i_3_n_0\
    );
\s_tdata_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \s_tdata_reg[7]_i_2_n_0\,
      D => \m_axis_pipe_reg_reg[0]_0\(0),
      Q => s_tdata_reg(0),
      R => \s_tdata_reg[7]_i_1_n_0\
    );
\s_tdata_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \s_tdata_reg[7]_i_2_n_0\,
      D => \m_axis_pipe_reg_reg[0]_0\(1),
      Q => s_tdata_reg(1),
      R => \s_tdata_reg[7]_i_1_n_0\
    );
\s_tdata_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \s_tdata_reg[7]_i_2_n_0\,
      D => \m_axis_pipe_reg_reg[0]_0\(2),
      Q => s_tdata_reg(2),
      R => \s_tdata_reg[7]_i_1_n_0\
    );
\s_tdata_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \s_tdata_reg[7]_i_2_n_0\,
      D => \m_axis_pipe_reg_reg[0]_0\(3),
      Q => s_tdata_reg(3),
      R => \s_tdata_reg[7]_i_1_n_0\
    );
\s_tdata_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \s_tdata_reg[7]_i_2_n_0\,
      D => \m_axis_pipe_reg_reg[0]_0\(4),
      Q => s_tdata_reg(4),
      R => \s_tdata_reg[7]_i_1_n_0\
    );
\s_tdata_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \s_tdata_reg[7]_i_2_n_0\,
      D => \m_axis_pipe_reg_reg[0]_0\(5),
      Q => s_tdata_reg(5),
      R => \s_tdata_reg[7]_i_1_n_0\
    );
\s_tdata_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \s_tdata_reg[7]_i_2_n_0\,
      D => \m_axis_pipe_reg_reg[0]_0\(6),
      Q => s_tdata_reg(6),
      R => \s_tdata_reg[7]_i_1_n_0\
    );
\s_tdata_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \FSM_onehot_state_reg_reg[0]_0\,
      CE => \s_tdata_reg[7]_i_2_n_0\,
      D => \m_axis_pipe_reg_reg[0]_0\(7),
      Q => s_tdata_reg(7),
      R => \s_tdata_reg[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_mii_phy_if is
  port (
    CLK : out STD_LOGIC;
    mii_bufg_inst_0 : out STD_LOGIC;
    mii_tx_en : out STD_LOGIC;
    clear : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_ptr_gray_reg : out STD_LOGIC;
    \rx_rst_reg_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \output_q_reg_reg[2]\ : out STD_LOGIC;
    \output_q_reg_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    gmii_rx_dv_d00 : out STD_LOGIC;
    gmii_rx_dv_d20 : out STD_LOGIC;
    mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_rx_clk : in STD_LOGIC;
    mii_tx_clk : in STD_LOGIC;
    gmii_tx_en_reg : in STD_LOGIC;
    m_rst_sync3_reg : in STD_LOGIC;
    s_rst_sync3_reg : in STD_LOGIC;
    mii_locked_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    gmii_rx_dv_d0 : in STD_LOGIC;
    gmii_rx_dv_d2_reg : in STD_LOGIC;
    \output_q_reg_reg[5]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    reset : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_mii_phy_if : entity is "mii_phy_if";
end riscv_ethernet_stream_0_0_mii_phy_if;

architecture STRUCTURE of riscv_ethernet_stream_0_0_mii_phy_if is
  signal \^clk\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^mii_bufg_inst_0\ : STD_LOGIC;
  signal \^rx_rst_reg_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \rx_rst_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \rx_rst_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \rx_rst_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \tx_rst_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \tx_rst_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \tx_rst_reg_reg_n_0_[3]\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of mii_bufg_inst : label is "PRIMITIVE";
  attribute IOB : string;
  attribute IOB of phy_mii_tx_en_reg_reg : label is "TRUE";
  attribute IOB of \phy_mii_txd_reg_reg[0]\ : label is "TRUE";
  attribute IOB of \phy_mii_txd_reg_reg[1]\ : label is "TRUE";
  attribute IOB of \phy_mii_txd_reg_reg[2]\ : label is "TRUE";
  attribute IOB of \phy_mii_txd_reg_reg[3]\ : label is "TRUE";
begin
  CLK <= \^clk\;
  Q(0) <= \^q\(0);
  mii_bufg_inst_0 <= \^mii_bufg_inst_0\;
  \rx_rst_reg_reg[0]_0\(0) <= \^rx_rst_reg_reg[0]_0\(0);
mii_bufg_inst: unisim.vcomponents.BUFG
     port map (
      I => mii_tx_clk,
      O => \^mii_bufg_inst_0\
    );
phy_mii_tx_en_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^mii_bufg_inst_0\,
      CE => '1',
      D => gmii_tx_en_reg,
      Q => mii_tx_en,
      R => '0'
    );
\phy_mii_txd_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^mii_bufg_inst_0\,
      CE => '1',
      D => D(0),
      Q => mii_txd(0),
      R => '0'
    );
\phy_mii_txd_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^mii_bufg_inst_0\,
      CE => '1',
      D => D(1),
      Q => mii_txd(1),
      R => '0'
    );
\phy_mii_txd_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^mii_bufg_inst_0\,
      CE => '1',
      D => D(2),
      Q => mii_txd(2),
      R => '0'
    );
\phy_mii_txd_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^mii_bufg_inst_0\,
      CE => '1',
      D => D(3),
      Q => mii_txd(3),
      R => '0'
    );
\rd_ptr_reg_rep[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_rst_sync3_reg,
      O => clear
    );
\rx_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \rx_rst_reg_reg_n_0_[1]\,
      PRE => reset,
      Q => \^rx_rst_reg_reg[0]_0\(0)
    );
\rx_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \rx_rst_reg_reg_n_0_[2]\,
      PRE => reset,
      Q => \rx_rst_reg_reg_n_0_[1]\
    );
\rx_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => \rx_rst_reg_reg_n_0_[3]\,
      PRE => reset,
      Q => \rx_rst_reg_reg_n_0_[2]\
    );
\rx_rst_reg_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk\,
      CE => '1',
      D => '0',
      PRE => reset,
      Q => \rx_rst_reg_reg_n_0_[3]\
    );
rx_ssio_sdr_inst: entity work.riscv_ethernet_stream_0_0_ssio_sdr_in
     port map (
      CLK => \^clk\,
      gmii_rx_dv_d0 => gmii_rx_dv_d0,
      gmii_rx_dv_d00 => gmii_rx_dv_d00,
      gmii_rx_dv_d20 => gmii_rx_dv_d20,
      gmii_rx_dv_d2_reg => gmii_rx_dv_d2_reg,
      mii_locked_reg(0) => mii_locked_reg(0),
      mii_rx_clk => mii_rx_clk,
      \output_q_reg_reg[2]_0\ => \output_q_reg_reg[2]\,
      \output_q_reg_reg[5]_0\(5 downto 0) => \output_q_reg_reg[5]\(5 downto 0),
      \output_q_reg_reg[5]_1\(5 downto 0) => \output_q_reg_reg[5]_0\(5 downto 0)
    );
\tx_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^mii_bufg_inst_0\,
      CE => '1',
      D => \tx_rst_reg_reg_n_0_[1]\,
      PRE => reset,
      Q => \^q\(0)
    );
\tx_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^mii_bufg_inst_0\,
      CE => '1',
      D => \tx_rst_reg_reg_n_0_[2]\,
      PRE => reset,
      Q => \tx_rst_reg_reg_n_0_[1]\
    );
\tx_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^mii_bufg_inst_0\,
      CE => '1',
      D => \tx_rst_reg_reg_n_0_[3]\,
      PRE => reset,
      Q => \tx_rst_reg_reg_n_0_[2]\
    );
\tx_rst_reg_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^mii_bufg_inst_0\,
      CE => '1',
      D => '0',
      PRE => reset,
      Q => \tx_rst_reg_reg_n_0_[3]\
    );
\wr_ptr_reg[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^rx_rst_reg_reg[0]_0\(0),
      I1 => s_rst_sync3_reg,
      O => wr_ptr_gray_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_eth_mac_1g is
  port (
    gmii_tx_en_reg : out STD_LOGIC;
    gmii_rx_dv_d0 : out STD_LOGIC;
    gmii_rx_dv_d1_reg : out STD_LOGIC;
    m_axis_tlast_reg_reg : out STD_LOGIC;
    s_axis : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axis_tvalid_reg_reg : out STD_LOGIC;
    s_axis_tready_reg_reg : out STD_LOGIC;
    \FSM_onehot_state_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \gmii_rxd_d0_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready_reg_reg_0 : out STD_LOGIC;
    \rx_rst_reg_reg[0]\ : out STD_LOGIC;
    m_axis_tlast_reg_reg_0 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    drop_frame_reg : out STD_LOGIC;
    \gmii_txd_reg_reg[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    gmii_rx_dv_d00 : in STD_LOGIC;
    gmii_rx_dv_d20 : in STD_LOGIC;
    mii_locked_reg : in STD_LOGIC;
    \gmii_rxd_d0_reg[7]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    tx_fifo_axis_tvalid : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[7]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[7]_1\ : in STD_LOGIC;
    m_terminate_frame_reg : in STD_LOGIC;
    \m_axis_pipe_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    drop_frame_reg_reg : in STD_LOGIC;
    \overflow_reg1__0\ : in STD_LOGIC;
    s_rst_sync3_reg : in STD_LOGIC;
    s_frame_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_eth_mac_1g : entity is "eth_mac_1g";
end riscv_ethernet_stream_0_0_eth_mac_1g;

architecture STRUCTURE of riscv_ethernet_stream_0_0_eth_mac_1g is
begin
axis_gmii_rx_inst: entity work.riscv_ethernet_stream_0_0_axis_gmii_rx
     port map (
      CLK => CLK,
      \FSM_onehot_state_reg_reg[0]_0\(0) => \FSM_onehot_state_reg_reg[0]_0\(0),
      Q(0) => \gmii_rxd_d0_reg[7]\(0),
      WEA(0) => WEA(0),
      drop_frame_reg => drop_frame_reg,
      drop_frame_reg_reg => drop_frame_reg_reg,
      gmii_rx_dv_d0 => gmii_rx_dv_d0,
      gmii_rx_dv_d00 => gmii_rx_dv_d00,
      gmii_rx_dv_d1_reg_0 => gmii_rx_dv_d1_reg,
      gmii_rx_dv_d20 => gmii_rx_dv_d20,
      \gmii_rxd_d0_reg[7]_0\(5 downto 0) => \gmii_rxd_d0_reg[7]_0\(5 downto 0),
      m_axis_tlast_reg_reg_0 => m_axis_tlast_reg_reg,
      m_axis_tlast_reg_reg_1 => m_axis_tlast_reg_reg_0,
      m_axis_tvalid_reg_reg_0 => m_axis_tvalid_reg_reg,
      mii_locked_reg_0 => mii_locked_reg,
      \overflow_reg1__0\ => \overflow_reg1__0\,
      \rx_rst_reg_reg[0]\ => \rx_rst_reg_reg[0]\,
      s_axis(8 downto 0) => s_axis(8 downto 0),
      s_frame_reg => s_frame_reg,
      s_rst_sync3_reg => s_rst_sync3_reg
    );
axis_gmii_tx_inst: entity work.riscv_ethernet_stream_0_0_axis_gmii_tx
     port map (
      D(1 downto 0) => D(1 downto 0),
      \FSM_onehot_state_reg_reg[0]_0\ => \FSM_onehot_state_reg_reg[0]\,
      \FSM_onehot_state_reg_reg[0]_1\ => \FSM_onehot_state_reg_reg[0]_1\,
      \FSM_onehot_state_reg_reg[7]_0\(2 downto 0) => \FSM_onehot_state_reg_reg[7]\(2 downto 0),
      \FSM_onehot_state_reg_reg[7]_1\ => \FSM_onehot_state_reg_reg[7]_0\,
      \FSM_onehot_state_reg_reg[7]_2\ => \FSM_onehot_state_reg_reg[7]_1\,
      Q(0) => Q(0),
      gmii_tx_en_reg => gmii_tx_en_reg,
      \gmii_txd_reg_reg[3]_0\(3 downto 0) => \gmii_txd_reg_reg[3]\(3 downto 0),
      \m_axis_pipe_reg_reg[0]_0\(8 downto 0) => \m_axis_pipe_reg_reg[0]_0\(8 downto 0),
      m_terminate_frame_reg => m_terminate_frame_reg,
      s_axis_tready_reg_reg_0 => s_axis_tready_reg_reg,
      s_axis_tready_reg_reg_1 => s_axis_tready_reg_reg_0,
      tx_fifo_axis_tvalid => tx_fifo_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_eth_mac_mii is
  port (
    rx_clk : out STD_LOGIC;
    tx_clk : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    mii_tx_en : out STD_LOGIC;
    \rx_rst_reg_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_fifo_axis_tlast : out STD_LOGIC;
    s_axis : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rx_fifo_axis_tvalid : out STD_LOGIC;
    tx_fifo_axis_tready : out STD_LOGIC;
    \FSM_onehot_state_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clear : out STD_LOGIC;
    s_axis_tready_reg_reg : out STD_LOGIC;
    \rx_rst_reg_reg[0]_0\ : out STD_LOGIC;
    m_axis_tlast_reg_reg : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_ptr_gray_reg : out STD_LOGIC;
    drop_frame_reg : out STD_LOGIC;
    mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_rx_clk : in STD_LOGIC;
    mii_tx_clk : in STD_LOGIC;
    tx_fifo_axis_tvalid : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[7]_0\ : in STD_LOGIC;
    \FSM_onehot_state_reg_reg[7]_1\ : in STD_LOGIC;
    m_terminate_frame_reg : in STD_LOGIC;
    \m_axis_pipe_reg_reg[0]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_rst_sync3_reg : in STD_LOGIC;
    drop_frame_reg_reg : in STD_LOGIC;
    \overflow_reg1__0\ : in STD_LOGIC;
    s_rst_sync3_reg : in STD_LOGIC;
    s_frame_reg : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \output_q_reg_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_eth_mac_mii : entity is "eth_mac_mii";
end riscv_ethernet_stream_0_0_eth_mac_mii;

architecture STRUCTURE of riscv_ethernet_stream_0_0_eth_mac_mii is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axis_gmii_rx_inst/gmii_rx_dv_d0\ : STD_LOGIC;
  signal \axis_gmii_rx_inst/gmii_rx_dv_d00\ : STD_LOGIC;
  signal \axis_gmii_rx_inst/gmii_rx_dv_d20\ : STD_LOGIC;
  signal \axis_gmii_rx_inst/p_0_in\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal eth_mac_1g_inst_n_2 : STD_LOGIC;
  signal gmii_tx_en_reg : STD_LOGIC;
  signal gmii_txd_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mac_mii_rx_dv : STD_LOGIC;
  signal mac_mii_rx_er : STD_LOGIC;
  signal mac_mii_rxd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mii_phy_if_inst_n_7 : STD_LOGIC;
  signal \^rx_clk\ : STD_LOGIC;
  signal \^rx_rst_reg_reg[0]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^tx_clk\ : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
  rx_clk <= \^rx_clk\;
  \rx_rst_reg_reg[0]\(0) <= \^rx_rst_reg_reg[0]\(0);
  tx_clk <= \^tx_clk\;
eth_mac_1g_inst: entity work.riscv_ethernet_stream_0_0_eth_mac_1g
     port map (
      CLK => \^rx_clk\,
      D(1 downto 0) => D(1 downto 0),
      \FSM_onehot_state_reg_reg[0]\ => \^tx_clk\,
      \FSM_onehot_state_reg_reg[0]_0\(0) => \^rx_rst_reg_reg[0]\(0),
      \FSM_onehot_state_reg_reg[0]_1\ => \FSM_onehot_state_reg_reg[0]\,
      \FSM_onehot_state_reg_reg[7]\(2 downto 0) => \FSM_onehot_state_reg_reg[7]\(2 downto 0),
      \FSM_onehot_state_reg_reg[7]_0\ => \FSM_onehot_state_reg_reg[7]_0\,
      \FSM_onehot_state_reg_reg[7]_1\ => \FSM_onehot_state_reg_reg[7]_1\,
      Q(0) => \^q\(0),
      WEA(0) => WEA(0),
      drop_frame_reg => drop_frame_reg,
      drop_frame_reg_reg => drop_frame_reg_reg,
      gmii_rx_dv_d0 => \axis_gmii_rx_inst/gmii_rx_dv_d0\,
      gmii_rx_dv_d00 => \axis_gmii_rx_inst/gmii_rx_dv_d00\,
      gmii_rx_dv_d1_reg => eth_mac_1g_inst_n_2,
      gmii_rx_dv_d20 => \axis_gmii_rx_inst/gmii_rx_dv_d20\,
      \gmii_rxd_d0_reg[7]\(0) => \axis_gmii_rx_inst/p_0_in\(3),
      \gmii_rxd_d0_reg[7]_0\(5 downto 2) => mac_mii_rxd(3 downto 0),
      \gmii_rxd_d0_reg[7]_0\(1) => mac_mii_rx_dv,
      \gmii_rxd_d0_reg[7]_0\(0) => mac_mii_rx_er,
      gmii_tx_en_reg => gmii_tx_en_reg,
      \gmii_txd_reg_reg[3]\(3 downto 0) => gmii_txd_reg(3 downto 0),
      \m_axis_pipe_reg_reg[0]_0\(8 downto 0) => \m_axis_pipe_reg_reg[0]_0\(8 downto 0),
      m_axis_tlast_reg_reg => rx_fifo_axis_tlast,
      m_axis_tlast_reg_reg_0 => m_axis_tlast_reg_reg,
      m_axis_tvalid_reg_reg => rx_fifo_axis_tvalid,
      m_terminate_frame_reg => m_terminate_frame_reg,
      mii_locked_reg => mii_phy_if_inst_n_7,
      \overflow_reg1__0\ => \overflow_reg1__0\,
      \rx_rst_reg_reg[0]\ => \rx_rst_reg_reg[0]_0\,
      s_axis(8 downto 0) => s_axis(8 downto 0),
      s_axis_tready_reg_reg => tx_fifo_axis_tready,
      s_axis_tready_reg_reg_0 => s_axis_tready_reg_reg,
      s_frame_reg => s_frame_reg,
      s_rst_sync3_reg => s_rst_sync3_reg,
      tx_fifo_axis_tvalid => tx_fifo_axis_tvalid
    );
mii_phy_if_inst: entity work.riscv_ethernet_stream_0_0_mii_phy_if
     port map (
      CLK => \^rx_clk\,
      D(3 downto 0) => gmii_txd_reg(3 downto 0),
      Q(0) => \^q\(0),
      clear => clear,
      gmii_rx_dv_d0 => \axis_gmii_rx_inst/gmii_rx_dv_d0\,
      gmii_rx_dv_d00 => \axis_gmii_rx_inst/gmii_rx_dv_d00\,
      gmii_rx_dv_d20 => \axis_gmii_rx_inst/gmii_rx_dv_d20\,
      gmii_rx_dv_d2_reg => eth_mac_1g_inst_n_2,
      gmii_tx_en_reg => gmii_tx_en_reg,
      m_rst_sync3_reg => m_rst_sync3_reg,
      mii_bufg_inst_0 => \^tx_clk\,
      mii_locked_reg(0) => \axis_gmii_rx_inst/p_0_in\(3),
      mii_rx_clk => mii_rx_clk,
      mii_tx_clk => mii_tx_clk,
      mii_tx_en => mii_tx_en,
      mii_txd(3 downto 0) => mii_txd(3 downto 0),
      \output_q_reg_reg[2]\ => mii_phy_if_inst_n_7,
      \output_q_reg_reg[5]\(5 downto 2) => mac_mii_rxd(3 downto 0),
      \output_q_reg_reg[5]\(1) => mac_mii_rx_dv,
      \output_q_reg_reg[5]\(0) => mac_mii_rx_er,
      \output_q_reg_reg[5]_0\(5 downto 0) => \output_q_reg_reg[5]\(5 downto 0),
      reset => reset,
      \rx_rst_reg_reg[0]_0\(0) => \^rx_rst_reg_reg[0]\(0),
      s_rst_sync3_reg => s_rst_sync3_reg,
      wr_ptr_gray_reg => wr_ptr_gray_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_eth_mac_mii_fifo is
  port (
    rx_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_tx_en : out STD_LOGIC;
    \m_axis_tvalid_pipe_reg_reg[1]\ : out STD_LOGIC;
    tx_axis_tready : out STD_LOGIC;
    rx_axis_tlast : out STD_LOGIC;
    rx_axis_tuser : out STD_LOGIC;
    mii_rx_clk : in STD_LOGIC;
    mii_tx_clk : in STD_LOGIC;
    clock : in STD_LOGIC;
    s_axis : in STD_LOGIC_VECTOR ( 9 downto 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    reset : in STD_LOGIC;
    rx_axis_tready : in STD_LOGIC;
    tx_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_eth_mac_mii_fifo : entity is "eth_mac_mii_fifo";
end riscv_ethernet_stream_0_0_eth_mac_mii_fifo;

architecture STRUCTURE of riscv_ethernet_stream_0_0_eth_mac_mii_fifo is
  signal eth_mac_1g_mii_inst_n_17 : STD_LOGIC;
  signal eth_mac_1g_mii_inst_n_18 : STD_LOGIC;
  signal eth_mac_1g_mii_inst_n_19 : STD_LOGIC;
  signal eth_mac_1g_mii_inst_n_21 : STD_LOGIC;
  signal eth_mac_1g_mii_inst_n_22 : STD_LOGIC;
  signal eth_mac_1g_mii_inst_n_23 : STD_LOGIC;
  signal \fifo_inst/drop_frame_reg\ : STD_LOGIC;
  signal \fifo_inst/m_axis\ : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \fifo_inst/m_rst_sync3_reg\ : STD_LOGIC;
  signal \fifo_inst/m_terminate_frame_reg\ : STD_LOGIC;
  signal \fifo_inst/overflow_reg118_out\ : STD_LOGIC;
  signal \fifo_inst/overflow_reg1__0\ : STD_LOGIC;
  signal \fifo_inst/rd_ptr_gray_reg\ : STD_LOGIC;
  signal \fifo_inst/s_frame_reg\ : STD_LOGIC;
  signal \fifo_inst/s_rst_sync3_reg\ : STD_LOGIC;
  signal \fifo_inst/wr_ptr_gray_reg\ : STD_LOGIC;
  signal rx_clk : STD_LOGIC;
  signal rx_fifo_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_fifo_axis_tlast : STD_LOGIC;
  signal rx_fifo_axis_tuser : STD_LOGIC;
  signal rx_fifo_axis_tvalid : STD_LOGIC;
  signal rx_fifo_n_6 : STD_LOGIC;
  signal rx_rst : STD_LOGIC;
  signal tx_clk : STD_LOGIC;
  signal tx_fifo_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_fifo_axis_tready : STD_LOGIC;
  signal tx_fifo_axis_tvalid : STD_LOGIC;
  signal tx_fifo_n_0 : STD_LOGIC;
  signal tx_fifo_n_14 : STD_LOGIC;
  signal tx_fifo_n_15 : STD_LOGIC;
  signal tx_fifo_n_16 : STD_LOGIC;
  signal tx_fifo_n_17 : STD_LOGIC;
  signal tx_fifo_n_4 : STD_LOGIC;
  signal tx_rst : STD_LOGIC;
begin
eth_mac_1g_mii_inst: entity work.riscv_ethernet_stream_0_0_eth_mac_mii
     port map (
      D(1) => tx_fifo_n_15,
      D(0) => tx_fifo_n_16,
      \FSM_onehot_state_reg_reg[0]\ => tx_fifo_n_17,
      \FSM_onehot_state_reg_reg[7]\(2) => eth_mac_1g_mii_inst_n_17,
      \FSM_onehot_state_reg_reg[7]\(1) => eth_mac_1g_mii_inst_n_18,
      \FSM_onehot_state_reg_reg[7]\(0) => eth_mac_1g_mii_inst_n_19,
      \FSM_onehot_state_reg_reg[7]_0\ => tx_fifo_n_14,
      \FSM_onehot_state_reg_reg[7]_1\ => tx_fifo_n_4,
      Q(0) => tx_rst,
      WEA(0) => \fifo_inst/overflow_reg118_out\,
      clear => \fifo_inst/rd_ptr_gray_reg\,
      drop_frame_reg => \fifo_inst/drop_frame_reg\,
      drop_frame_reg_reg => rx_fifo_n_6,
      \m_axis_pipe_reg_reg[0]_0\(8) => \fifo_inst/m_axis\(8),
      \m_axis_pipe_reg_reg[0]_0\(7 downto 0) => tx_fifo_axis_tdata(7 downto 0),
      m_axis_tlast_reg_reg => eth_mac_1g_mii_inst_n_23,
      m_rst_sync3_reg => \fifo_inst/m_rst_sync3_reg\,
      m_terminate_frame_reg => \fifo_inst/m_terminate_frame_reg\,
      mii_rx_clk => mii_rx_clk,
      mii_tx_clk => mii_tx_clk,
      mii_tx_en => mii_tx_en,
      mii_txd(3 downto 0) => mii_txd(3 downto 0),
      \output_q_reg_reg[5]\(5 downto 0) => D(5 downto 0),
      \overflow_reg1__0\ => \fifo_inst/overflow_reg1__0\,
      reset => reset,
      rx_clk => rx_clk,
      rx_fifo_axis_tlast => rx_fifo_axis_tlast,
      rx_fifo_axis_tvalid => rx_fifo_axis_tvalid,
      \rx_rst_reg_reg[0]\(0) => rx_rst,
      \rx_rst_reg_reg[0]_0\ => eth_mac_1g_mii_inst_n_22,
      s_axis(8) => rx_fifo_axis_tuser,
      s_axis(7 downto 0) => rx_fifo_axis_tdata(7 downto 0),
      s_axis_tready_reg_reg => eth_mac_1g_mii_inst_n_21,
      s_frame_reg => \fifo_inst/s_frame_reg\,
      s_rst_sync3_reg => \fifo_inst/s_rst_sync3_reg\,
      tx_clk => tx_clk,
      tx_fifo_axis_tready => tx_fifo_axis_tready,
      tx_fifo_axis_tvalid => tx_fifo_axis_tvalid,
      wr_ptr_gray_reg => \fifo_inst/wr_ptr_gray_reg\
    );
rx_fifo: entity work.\riscv_ethernet_stream_0_0_axis_async_fifo_adapter__parameterized0\
     port map (
      SR(0) => rx_rst,
      WEA(0) => \fifo_inst/overflow_reg118_out\,
      clock => clock,
      drop_frame_reg => \fifo_inst/drop_frame_reg\,
      drop_frame_reg_reg => rx_fifo_n_6,
      drop_frame_reg_reg_0 => eth_mac_1g_mii_inst_n_22,
      \m_axis_tvalid_pipe_reg_reg[1]\ => \m_axis_tvalid_pipe_reg_reg[1]\,
      \overflow_reg1__0\ => \fifo_inst/overflow_reg1__0\,
      reset => reset,
      rx_axis_tdata(7 downto 0) => rx_axis_tdata(7 downto 0),
      rx_axis_tlast => rx_axis_tlast,
      rx_axis_tready => rx_axis_tready,
      rx_axis_tuser => rx_axis_tuser,
      rx_clk => rx_clk,
      rx_fifo_axis_tlast => rx_fifo_axis_tlast,
      rx_fifo_axis_tvalid => rx_fifo_axis_tvalid,
      s_axis(8) => rx_fifo_axis_tuser,
      s_axis(7 downto 0) => rx_fifo_axis_tdata(7 downto 0),
      s_frame_reg => \fifo_inst/s_frame_reg\,
      s_rst_sync2_reg_reg => tx_fifo_n_0,
      s_rst_sync3_reg => \fifo_inst/s_rst_sync3_reg\,
      wr_ptr_gray_reg => \fifo_inst/wr_ptr_gray_reg\,
      \wr_ptr_sync_gray_reg_reg[0]\ => eth_mac_1g_mii_inst_n_23
    );
tx_fifo: entity work.riscv_ethernet_stream_0_0_axis_async_fifo_adapter
     port map (
      D(1) => tx_fifo_n_15,
      D(0) => tx_fifo_n_16,
      \FSM_onehot_state_reg_reg[6]\ => tx_fifo_n_4,
      \FSM_onehot_state_reg_reg[7]\(2) => eth_mac_1g_mii_inst_n_17,
      \FSM_onehot_state_reg_reg[7]\(1) => eth_mac_1g_mii_inst_n_18,
      \FSM_onehot_state_reg_reg[7]\(0) => eth_mac_1g_mii_inst_n_19,
      Q(0) => tx_rst,
      clear => \fifo_inst/rd_ptr_gray_reg\,
      clock => clock,
      \m_axis_pipe_reg_reg[0]_0\(8) => \fifo_inst/m_axis\(8),
      \m_axis_pipe_reg_reg[0]_0\(7 downto 0) => tx_fifo_axis_tdata(7 downto 0),
      \m_axis_tvalid_pipe_reg_reg[1]\ => tx_fifo_n_17,
      m_rst_sync1_reg_reg => tx_fifo_n_0,
      m_rst_sync3_reg => \fifo_inst/m_rst_sync3_reg\,
      m_terminate_frame_reg => \fifo_inst/m_terminate_frame_reg\,
      mem_reg_1 => tx_fifo_n_14,
      mem_reg_1_0 => eth_mac_1g_mii_inst_n_21,
      reset => reset,
      s_axis(9 downto 0) => s_axis(9 downto 0),
      tx_axis_tready => tx_axis_tready,
      tx_axis_tvalid => tx_axis_tvalid,
      tx_clk => tx_clk,
      tx_fifo_axis_tready => tx_fifo_axis_tready,
      tx_fifo_axis_tvalid => tx_fifo_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0_ethernet_arty_a7_100t is
  port (
    rx_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_tx_en : out STD_LOGIC;
    \m_axis_tvalid_pipe_reg_reg[1]\ : out STD_LOGIC;
    tx_axis_tready : out STD_LOGIC;
    rx_axis_tlast : out STD_LOGIC;
    rx_axis_tuser : out STD_LOGIC;
    mii_rx_clk : in STD_LOGIC;
    mii_tx_clk : in STD_LOGIC;
    clock : in STD_LOGIC;
    s_axis : in STD_LOGIC_VECTOR ( 9 downto 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    reset : in STD_LOGIC;
    rx_axis_tready : in STD_LOGIC;
    tx_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of riscv_ethernet_stream_0_0_ethernet_arty_a7_100t : entity is "ethernet_arty_a7_100t";
end riscv_ethernet_stream_0_0_ethernet_arty_a7_100t;

architecture STRUCTURE of riscv_ethernet_stream_0_0_ethernet_arty_a7_100t is
begin
eth_mac_inst: entity work.riscv_ethernet_stream_0_0_eth_mac_mii_fifo
     port map (
      D(5 downto 0) => D(5 downto 0),
      clock => clock,
      \m_axis_tvalid_pipe_reg_reg[1]\ => \m_axis_tvalid_pipe_reg_reg[1]\,
      mii_rx_clk => mii_rx_clk,
      mii_tx_clk => mii_tx_clk,
      mii_tx_en => mii_tx_en,
      mii_txd(3 downto 0) => mii_txd(3 downto 0),
      reset => reset,
      rx_axis_tdata(7 downto 0) => rx_axis_tdata(7 downto 0),
      rx_axis_tlast => rx_axis_tlast,
      rx_axis_tready => rx_axis_tready,
      rx_axis_tuser => rx_axis_tuser,
      s_axis(9 downto 0) => s_axis(9 downto 0),
      tx_axis_tready => tx_axis_tready,
      tx_axis_tvalid => tx_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity riscv_ethernet_stream_0_0 is
  port (
    reset : in STD_LOGIC;
    clock : in STD_LOGIC;
    tx_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    tx_axis_tvalid : in STD_LOGIC;
    tx_axis_tready : out STD_LOGIC;
    tx_axis_tlast : in STD_LOGIC;
    tx_axis_tuser : in STD_LOGIC;
    rx_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    rx_axis_tvalid : out STD_LOGIC;
    rx_axis_tready : in STD_LOGIC;
    rx_axis_tlast : out STD_LOGIC;
    rx_axis_tuser : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    mii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_tx_en : out STD_LOGIC;
    mii_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mii_rx_dv : in STD_LOGIC;
    mii_rx_er : in STD_LOGIC;
    mii_crs : in STD_LOGIC;
    mii_col : in STD_LOGIC;
    mii_tx_clk : in STD_LOGIC;
    mii_rx_clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of riscv_ethernet_stream_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of riscv_ethernet_stream_0_0 : entity is "riscv_ethernet_stream_0_0,ethernet_arty_a7_100t,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of riscv_ethernet_stream_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of riscv_ethernet_stream_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of riscv_ethernet_stream_0_0 : entity is "ethernet_arty_a7_100t,Vivado 2023.1";
end riscv_ethernet_stream_0_0;

architecture STRUCTURE of riscv_ethernet_stream_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^mii_col\ : STD_LOGIC;
  signal \^mii_crs\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clock : signal is "xilinx.com:signal:clock:1.0 clock25 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clock : signal is "XIL_INTERFACENAME clock25, ASSOCIATED_BUSIF TX_AXIS:RX_AXIS, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN riscv_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mii_col : signal is "xilinx.com:interface:mii:1.0 MII COL";
  attribute X_INTERFACE_INFO of mii_crs : signal is "xilinx.com:interface:mii:1.0 MII CRS";
  attribute X_INTERFACE_INFO of mii_rx_clk : signal is "xilinx.com:interface:mii:1.0 MII RX_CLK";
  attribute X_INTERFACE_INFO of mii_rx_dv : signal is "xilinx.com:interface:mii:1.0 MII RX_DV";
  attribute X_INTERFACE_INFO of mii_rx_er : signal is "xilinx.com:interface:mii:1.0 MII RX_ER";
  attribute X_INTERFACE_INFO of mii_tx_clk : signal is "xilinx.com:interface:mii:1.0 MII TX_CLK";
  attribute X_INTERFACE_INFO of mii_tx_en : signal is "xilinx.com:interface:mii:1.0 MII TX_EN";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_axis_tlast : signal is "xilinx.com:interface:axis:1.0 RX_AXIS TLAST";
  attribute X_INTERFACE_INFO of rx_axis_tready : signal is "xilinx.com:interface:axis:1.0 RX_AXIS TREADY";
  attribute X_INTERFACE_INFO of rx_axis_tuser : signal is "xilinx.com:interface:axis:1.0 RX_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of rx_axis_tuser : signal is "XIL_INTERFACENAME RX_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN riscv_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rx_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 RX_AXIS TVALID";
  attribute X_INTERFACE_INFO of tx_axis_tlast : signal is "xilinx.com:interface:axis:1.0 TX_AXIS TLAST";
  attribute X_INTERFACE_INFO of tx_axis_tready : signal is "xilinx.com:interface:axis:1.0 TX_AXIS TREADY";
  attribute X_INTERFACE_INFO of tx_axis_tuser : signal is "xilinx.com:interface:axis:1.0 TX_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of tx_axis_tuser : signal is "XIL_INTERFACENAME TX_AXIS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN riscv_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of tx_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 TX_AXIS TVALID";
  attribute X_INTERFACE_INFO of mii_rxd : signal is "xilinx.com:interface:mii:1.0 MII RXD";
  attribute X_INTERFACE_INFO of mii_txd : signal is "xilinx.com:interface:mii:1.0 MII TXD";
  attribute X_INTERFACE_INFO of rx_axis_tdata : signal is "xilinx.com:interface:axis:1.0 RX_AXIS TDATA";
  attribute X_INTERFACE_INFO of rx_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 RX_AXIS TKEEP";
  attribute X_INTERFACE_INFO of tx_axis_tdata : signal is "xilinx.com:interface:axis:1.0 TX_AXIS TDATA";
  attribute X_INTERFACE_INFO of tx_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 TX_AXIS TKEEP";
begin
  \^mii_col\ <= mii_col;
  \^mii_crs\ <= mii_crs;
  rx_axis_tkeep(0) <= \<const1>\;
  status_vector(15) <= \<const0>\;
  status_vector(14) <= \<const0>\;
  status_vector(13) <= \<const0>\;
  status_vector(12) <= \<const0>\;
  status_vector(11) <= \<const0>\;
  status_vector(10) <= \<const0>\;
  status_vector(9) <= \<const0>\;
  status_vector(8) <= \<const0>\;
  status_vector(7) <= \<const0>\;
  status_vector(6) <= \<const0>\;
  status_vector(5) <= \<const0>\;
  status_vector(4) <= \<const0>\;
  status_vector(3) <= \<const0>\;
  status_vector(2) <= \<const0>\;
  status_vector(1) <= \^mii_col\;
  status_vector(0) <= \^mii_crs\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.riscv_ethernet_stream_0_0_ethernet_arty_a7_100t
     port map (
      D(5 downto 2) => mii_rxd(3 downto 0),
      D(1) => mii_rx_dv,
      D(0) => mii_rx_er,
      clock => clock,
      \m_axis_tvalid_pipe_reg_reg[1]\ => rx_axis_tvalid,
      mii_rx_clk => mii_rx_clk,
      mii_tx_clk => mii_tx_clk,
      mii_tx_en => mii_tx_en,
      mii_txd(3 downto 0) => mii_txd(3 downto 0),
      reset => reset,
      rx_axis_tdata(7 downto 0) => rx_axis_tdata(7 downto 0),
      rx_axis_tlast => rx_axis_tlast,
      rx_axis_tready => rx_axis_tready,
      rx_axis_tuser => rx_axis_tuser,
      s_axis(9) => tx_axis_tuser,
      s_axis(8) => tx_axis_tlast,
      s_axis(7 downto 0) => tx_axis_tdata(7 downto 0),
      tx_axis_tready => tx_axis_tready,
      tx_axis_tvalid => tx_axis_tvalid
    );
end STRUCTURE;
