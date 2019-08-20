

 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /IO_Buffer_tb/status
      waveform add -signals /IO_Buffer_tb/IO_Buffer_synth_inst/bmg_port/CLKA
      waveform add -signals /IO_Buffer_tb/IO_Buffer_synth_inst/bmg_port/ADDRA
      waveform add -signals /IO_Buffer_tb/IO_Buffer_synth_inst/bmg_port/DINA
      waveform add -signals /IO_Buffer_tb/IO_Buffer_synth_inst/bmg_port/WEA
      waveform add -signals /IO_Buffer_tb/IO_Buffer_synth_inst/bmg_port/ENA
      waveform add -signals /IO_Buffer_tb/IO_Buffer_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"
