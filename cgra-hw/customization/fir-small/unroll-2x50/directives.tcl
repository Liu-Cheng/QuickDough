############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################
set_directive_resource -core AXI4LiteS -metadata {-bus_bundle slv0} "fir_ip" return
set_directive_resource -core RAM_1P_BRAM "fir_ip" sub_in
set_directive_resource -core RAM_1P_BRAM "fir_ip" out
set_directive_unroll -skip_exit_check "fir_ip/fir_ip_label0"
set_directive_unroll -skip_exit_check -factor 2 "fir_ip/fir_ip_label1"
set_directive_pipeline "fir_ip/fir_ip_label1"
set_directive_pipeline "fir_ip/fir_ip_label1"
