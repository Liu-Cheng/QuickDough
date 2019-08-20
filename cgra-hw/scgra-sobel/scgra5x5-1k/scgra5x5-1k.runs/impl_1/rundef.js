//
// PlanAhead(TM)
// rundef.js: a PlanAhead-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "C:/EDA/14.7/ISE_DS/EDK/bin/nt64;C:/EDA/14.7/ISE_DS/EDK/lib/nt64;C:/EDA/14.7/ISE_DS/ISE/bin/nt64;C:/EDA/14.7/ISE_DS/ISE/lib/nt64;C:/EDA/14.7/ISE_DS/common/bin/nt64;C:/EDA/14.7/ISE_DS/common/lib/nt64;C:/EDA/14.7/ISE_DS/PlanAhead/bin;";
} else {
  PathVal = "C:/EDA/14.7/ISE_DS/EDK/bin/nt64;C:/EDA/14.7/ISE_DS/EDK/lib/nt64;C:/EDA/14.7/ISE_DS/ISE/bin/nt64;C:/EDA/14.7/ISE_DS/ISE/lib/nt64;C:/EDA/14.7/ISE_DS/common/bin/nt64;C:/EDA/14.7/ISE_DS/common/lib/nt64;C:/EDA/14.7/ISE_DS/PlanAhead/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


ISEStep( "ngdbuild",
         "-intstyle ise -p xc7z020clg484-1 -dd _ngo -uc \"base_sys_stub.ucf\" -bm \"base_sys_stub.bmm\" \"base_sys_stub.edf\"" );
ISEStep( "map",
         "-intstyle pa -w \"base_sys_stub.ngd\"" );
ISEStep( "par",
         "-intstyle pa \"base_sys_stub.ncd\" -w \"base_sys_stub_routed.ncd\"" );
ISEStep( "trce",
         "-intstyle ise -o \"base_sys_stub.twr\" -v 30 -l 30 \"base_sys_stub_routed.ncd\" \"base_sys_stub.pcf\"" );
ISEStep( "xdl",
         "-secure -ncd2xdl -nopips \"base_sys_stub_routed.ncd\" \"base_sys_stub_routed.xdl\"" );



function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
