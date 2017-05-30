#include "common.h"
#include "vertex.h"
#include "kmean.h"
#include <cstdlib>

int main(){

  DFG* dfg = new DFG(); 
  dfg->kernelToDFG(); 
  dfg->compute();
  dfg->verify();
  dfg->dump();
  dfg->dumpDot("./dump/kmean.dot");

  return 0;

}

