onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+mac -L secureip -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_6 -L xbip_pipe_v3_0_2 -L xbip_dsp48_macro_v3_0_12 -L xil_defaultlib -O5 xil_defaultlib.mac

do {wave.do}

view wave
view structure
view signals

do {mac.udo}

run -all

endsim

quit -force
