#include "common.h"
#include "vertex.h"
#include "mvm.h"
#include <cstdlib>

int main(){

  DFG* dfg = new DFG(); 
  dfg->kernelToDFG(); 
  dfg->compute();
  dfg->verify();
  dfg->dump();
  dfg->dumpDot("./dump/mvm.dot");

  return 0;

}

