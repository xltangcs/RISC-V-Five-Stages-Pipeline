-makelib xcelium_lib/xpm -sv \
  "D:/Software/Vivado2022/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Software/Vivado2022/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../RISC-V-pipeline.gen/sources_1/ip/cpuclk/cpuclk_clk_wiz.v" \
  "../../../../RISC-V-pipeline.gen/sources_1/ip/cpuclk/cpuclk.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

