#include "common.h"
#include "vertex.h"
#include "fir.h"
#include <cstdlib>

int main(){

  DFG* dfg = new DFG(); 
  dfg->kernelToDFG(); 
  dfg->compute();
  dfg->verify();
  dfg->dump();
  dfg->dumpDot("./dump/fir.dot");

  return 0;

}

