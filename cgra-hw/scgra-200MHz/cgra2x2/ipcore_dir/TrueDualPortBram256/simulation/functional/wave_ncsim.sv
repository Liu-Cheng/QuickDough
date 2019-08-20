

 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /TrueDualPortBram256_tb/status
      waveform add -signals /TrueDualPortBram256_tb/TrueDualPortBram256_synth_inst/bmg_port/CLKA
      waveform add -signals /TrueDualPortBram256_tb/TrueDualPortBram256_synth_inst/bmg_port/ADDRA
      waveform add -signals /TrueDualPortBram256_tb/TrueDualPortBram256_synth_inst/bmg_port/DINA
      waveform add -signals /TrueDualPortBram256_tb/TrueDualPortBram256_synth_inst/bmg_port/WEA
      waveform add -signals /TrueDualPortBram256_tb/TrueDualPortBram256_synth_inst/bmg_port/DOUTA
      waveform add -signals /TrueDualPortBram256_tb/TrueDualPortBram256_synth_inst/bmg_port/CLKB
      waveform add -signals /TrueDualPortBram256_tb/TrueDualPortBram256_synth_inst/bmg_port/ADDRB
      waveform add -signals /TrueDualPortBram256_tb/TrueDualPortBram256_synth_inst/bmg_port/DINB
      waveform add -signals /TrueDualPortBram256_tb/TrueDualPortBram256_synth_inst/bmg_port/WEB
      waveform add -signals /TrueDualPortBram256_tb/TrueDualPortBram256_synth_inst/bmg_port/DOUTB

console submit -using simulator -wait no "run"
