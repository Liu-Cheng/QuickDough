

 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"

      waveform add -signals /SP_Inst_Mem00_tb/status
      waveform add -signals /SP_Inst_Mem00_tb/SP_Inst_Mem00_synth_inst/bmg_port/CLKA
      waveform add -signals /SP_Inst_Mem00_tb/SP_Inst_Mem00_synth_inst/bmg_port/ADDRA
      waveform add -signals /SP_Inst_Mem00_tb/SP_Inst_Mem00_synth_inst/bmg_port/DOUTA

console submit -using simulator -wait no "run"
