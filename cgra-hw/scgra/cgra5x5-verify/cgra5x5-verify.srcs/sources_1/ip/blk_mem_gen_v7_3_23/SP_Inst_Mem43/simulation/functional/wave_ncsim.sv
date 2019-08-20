

 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /SP_Inst_Mem43_tb/status
      waveform add -signals /SP_Inst_Mem43_tb/SP_Inst_Mem43_synth_inst/bmg_port/CLKA
      waveform add -signals /SP_Inst_Mem43_tb/SP_Inst_Mem43_synth_inst/bmg_port/ADDRA
      waveform add -signals /SP_Inst_Mem43_tb/SP_Inst_Mem43_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"
