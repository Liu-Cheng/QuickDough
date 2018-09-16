onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L secureip -L xbip_dsp48_wrapper_v3_0_4 -L xbip_utils_v3_0_6 -L xbip_pipe_v3_0_2 -L xbip_dsp48_macro_v3_0_12 -L xil_defaultlib -lib xil_defaultlib xil_defaultlib.mac

do {wave.do}

view wave
view structure
view signals

do {mac.udo}

run -all

quit -force
