//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Wed Oct 25 18:47:20 2023
//Host        : alis-F15Plus-2 running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target riscv_wrapper.bd
//Design      : riscv_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module riscv_wrapper
   (convst_in_0,
    ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_cs_n,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    eth_col,
    eth_crs,
    eth_mdio_clock,
    eth_mdio_data,
    eth_mdio_reset,
    eth_ref_clock,
    eth_rx_clk,
    eth_rx_dv,
    eth_rx_er,
    eth_rxd,
    eth_tx_clk,
    eth_tx_en,
    eth_txd,
    leds_4bits_tri_o,
    reset,
    sdio_cd,
    sdio_clk,
    sdio_cmd,
    sdio_dat,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input convst_in_0;
  output [13:0]ddr3_sdram_addr;
  output [2:0]ddr3_sdram_ba;
  output ddr3_sdram_cas_n;
  output [0:0]ddr3_sdram_ck_n;
  output [0:0]ddr3_sdram_ck_p;
  output [0:0]ddr3_sdram_cke;
  output [0:0]ddr3_sdram_cs_n;
  output [1:0]ddr3_sdram_dm;
  inout [15:0]ddr3_sdram_dq;
  inout [1:0]ddr3_sdram_dqs_n;
  inout [1:0]ddr3_sdram_dqs_p;
  output [0:0]ddr3_sdram_odt;
  output ddr3_sdram_ras_n;
  output ddr3_sdram_reset_n;
  output ddr3_sdram_we_n;
  input eth_col;
  input eth_crs;
  output eth_mdio_clock;
  inout eth_mdio_data;
  output eth_mdio_reset;
  output eth_ref_clock;
  input eth_rx_clk;
  input eth_rx_dv;
  input eth_rx_er;
  input [3:0]eth_rxd;
  input eth_tx_clk;
  output eth_tx_en;
  output [3:0]eth_txd;
  output [3:0]leds_4bits_tri_o;
  input reset;
  input sdio_cd;
  output sdio_clk;
  inout sdio_cmd;
  inout [3:0]sdio_dat;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire convst_in_0;
  wire [13:0]ddr3_sdram_addr;
  wire [2:0]ddr3_sdram_ba;
  wire ddr3_sdram_cas_n;
  wire [0:0]ddr3_sdram_ck_n;
  wire [0:0]ddr3_sdram_ck_p;
  wire [0:0]ddr3_sdram_cke;
  wire [0:0]ddr3_sdram_cs_n;
  wire [1:0]ddr3_sdram_dm;
  wire [15:0]ddr3_sdram_dq;
  wire [1:0]ddr3_sdram_dqs_n;
  wire [1:0]ddr3_sdram_dqs_p;
  wire [0:0]ddr3_sdram_odt;
  wire ddr3_sdram_ras_n;
  wire ddr3_sdram_reset_n;
  wire ddr3_sdram_we_n;
  wire eth_col;
  wire eth_crs;
  wire eth_mdio_clock;
  wire eth_mdio_data;
  wire eth_mdio_reset;
  wire eth_ref_clock;
  wire eth_rx_clk;
  wire eth_rx_dv;
  wire eth_rx_er;
  wire [3:0]eth_rxd;
  wire eth_tx_clk;
  wire eth_tx_en;
  wire [3:0]eth_txd;
  wire [3:0]leds_4bits_tri_o;
  wire reset;
  wire sdio_cd;
  wire sdio_clk;
  wire sdio_cmd;
  wire [3:0]sdio_dat;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  riscv riscv_i
       (.convst_in_0(convst_in_0),
        .ddr3_sdram_addr(ddr3_sdram_addr),
        .ddr3_sdram_ba(ddr3_sdram_ba),
        .ddr3_sdram_cas_n(ddr3_sdram_cas_n),
        .ddr3_sdram_ck_n(ddr3_sdram_ck_n),
        .ddr3_sdram_ck_p(ddr3_sdram_ck_p),
        .ddr3_sdram_cke(ddr3_sdram_cke),
        .ddr3_sdram_cs_n(ddr3_sdram_cs_n),
        .ddr3_sdram_dm(ddr3_sdram_dm),
        .ddr3_sdram_dq(ddr3_sdram_dq),
        .ddr3_sdram_dqs_n(ddr3_sdram_dqs_n),
        .ddr3_sdram_dqs_p(ddr3_sdram_dqs_p),
        .ddr3_sdram_odt(ddr3_sdram_odt),
        .ddr3_sdram_ras_n(ddr3_sdram_ras_n),
        .ddr3_sdram_reset_n(ddr3_sdram_reset_n),
        .ddr3_sdram_we_n(ddr3_sdram_we_n),
        .eth_col(eth_col),
        .eth_crs(eth_crs),
        .eth_mdio_clock(eth_mdio_clock),
        .eth_mdio_data(eth_mdio_data),
        .eth_mdio_reset(eth_mdio_reset),
        .eth_ref_clock(eth_ref_clock),
        .eth_rx_clk(eth_rx_clk),
        .eth_rx_dv(eth_rx_dv),
        .eth_rx_er(eth_rx_er),
        .eth_rxd(eth_rxd),
        .eth_tx_clk(eth_tx_clk),
        .eth_tx_en(eth_tx_en),
        .eth_txd(eth_txd),
        .leds_4bits_tri_o(leds_4bits_tri_o),
        .reset(reset),
        .sdio_cd(sdio_cd),
        .sdio_clk(sdio_clk),
        .sdio_cmd(sdio_cmd),
        .sdio_dat(sdio_dat),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
