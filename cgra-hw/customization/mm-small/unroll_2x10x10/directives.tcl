############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################
set_directive_resource -core AXI4LiteS -metadata {-bus_bundle slv0} "mm_ip" return
set_directive_resource -core RAM_1P_BRAM "mm_ip" in
set_directive_resource -core RAM_1P_BRAM "mm_ip" out
set_directive_unroll -skip_exit_check -factor 128 "mm_ip/mm_label0"
