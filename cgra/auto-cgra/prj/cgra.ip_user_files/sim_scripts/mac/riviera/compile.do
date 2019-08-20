vlib work
vlib riviera

vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_utils_v3_0_6
vlib riviera/xbip_pipe_v3_0_2
vlib riviera/xbip_dsp48_macro_v3_0_12
vlib riviera/xil_defaultlib

vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_utils_v3_0_6 riviera/xbip_utils_v3_0_6
vmap xbip_pipe_v3_0_2 riviera/xbip_pipe_v3_0_2
vmap xbip_dsp48_macro_v3_0_12 riviera/xbip_dsp48_macro_v3_0_12
vmap xil_defaultlib riviera/xil_defaultlib

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../ipstatic/xbip_dsp48_wrapper_v3_0_4/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_utils_v3_0_6 -93 \
"../../../ipstatic/xbip_utils_v3_0_6/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_2 -93 \
"../../../ipstatic/xbip_pipe_v3_0_2/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
"../../../ipstatic/xbip_pipe_v3_0_2/hdl/xbip_pipe_v3_0.vhd" \

vcom -work xbip_dsp48_macro_v3_0_12 -93 \
"../../../ipstatic/xbip_dsp48_macro_v3_0_12/hdl/xbip_dsp48_macro_v3_0_vh_rfs.vhd" \
"../../../ipstatic/xbip_dsp48_macro_v3_0_12/hdl/xbip_dsp48_macro_v3_0.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../cgra.srcs/sources_1/ip/mac/sim/mac.vhd" \

