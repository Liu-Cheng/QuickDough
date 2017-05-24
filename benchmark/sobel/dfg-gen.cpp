#include "common.h"
#include "vertex.h"
#include "sobel.h"
#include <cstdlib>

int main(){

  DFG* dfg = new DFG(); 
  dfg->kernelToDFG(); 
  dfg->compute();
  dfg->verify();
  dfg->dump();
  dfg->dumpDot("./dump/sobel.dot");

  return 0;

}

