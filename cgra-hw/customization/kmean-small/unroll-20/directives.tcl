############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2013 Xilinx Inc. All rights reserved.
############################################################
set_directive_resource -core AXI4LiteS -metadata {-bus_bundle slv0} "kmean_ip" return
set_directive_resource -core RAM_1P_BRAM "kmean_ip" sub_in
set_directive_resource -core RAM_1P_BRAM "kmean_ip" sub_out
set_directive_unroll -skip_exit_check -factor 4 "kmean_ip/kmean_ip_label0"
set_directive_pipeline "kmean_ip/kmean_ip_label0"
