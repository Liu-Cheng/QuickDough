#include "common.h"
#include "vertex.h"
#include "mmm.h"
#include <cstdlib>

int main(){

  DFG* dfg = new DFG(); 
  dfg->kernelToDFG(); 
  dfg->compute();
  dfg->verify();
  dfg->dump();
  dfg->dumpDot("./dump/mmm.dot");

  return 0;

}

