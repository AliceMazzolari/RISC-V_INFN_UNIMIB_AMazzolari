open_project workspace/rocket64b1/vivado-arty-a7-100t-riscv/arty-a7-100t-riscv.xpr
set_param general.maxThreads 1
reset_run impl_1
launch_runs -to_step write_bitstream -jobs 1 impl_1
wait_on_run impl_1
