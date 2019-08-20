set language "C"
set globalAPint ""
set globalVariable ""
set staticVariable ""
set moduleName "kmean_ip"
set rawDecl [list "void" "kmean_ip\(int sub_in\[1024*2 +4*2\], int sub_out\[4*2 +4\]\)"]
set argAPint ""
set returnAPint ""
set portList ""
set portName0 "sub_in"
set portInterface0 "memory"
set portData0 "int"
set portPointer0 "0"
set portArrayDim0 [list 2056]
set portConst0 "0"
set portVolatile0 "0"
set portArrayOpt0 ""
set port0 [list $portName0 $portInterface0 $portData0 $portPointer0 $portArrayDim0 $portConst0 $portVolatile0 $portArrayOpt0]
lappend portList $port0
set portName1 "sub_out"
set portInterface1 "memory"
set portData1 "int"
set portPointer1 "0"
set portArrayDim1 [list 12]
set portConst1 "0"
set portVolatile1 "0"
set portArrayOpt1 ""
set port1 [list $portName1 $portInterface1 $portData1 $portPointer1 $portArrayDim1 $portConst1 $portVolatile1 $portArrayOpt1]
lappend portList $port1
set dataPackList ""
set module [list $moduleName $portList $rawDecl $argAPint $returnAPint $dataPackList]
set hasCPPAPInt 0
set hasCPPAPFix 0
set hasSCFix 0
set hasCPPComplex 0
set hasCBool 0
set isTemplateTop 0
set useIntT 0
