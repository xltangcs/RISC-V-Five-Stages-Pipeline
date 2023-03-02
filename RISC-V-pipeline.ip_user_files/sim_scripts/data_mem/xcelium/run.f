-makelib xcelium_lib/xpm -sv \
  "D:/Software/Vivado2022/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Software/Vivado2022/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_13 \
  "../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../RISC-V-pipeline.gen/sources_1/ip/data_mem/sim/data_mem.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

