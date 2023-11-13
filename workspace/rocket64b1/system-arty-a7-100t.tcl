set vivado_board_name arty-a7-100t
set vivado_board_part digilentinc.com:arty-a7-100:part0:1.1
set xilinx_part xc7a100tcsg324-1
set rocket_module_name Rocket64b1
set riscv_clock_frequency 50.0
set memory_size 0x10000000
cd [file dirname [file normalize [info script]]]
source ../../vivado.tcl
