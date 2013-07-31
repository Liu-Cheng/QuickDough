//===- DFGDump.h - Head file of DFGDUmp.cpp--------------- ----------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements OPNode for DFGDump.cpp.
//
//===----------------------------------------------------------------------===//

#ifndef DFG_DUMP_H
#define DFG_DUMP_H

#include <list>
#include <vector>
#include <map>
#include <fstream>
#include <sstream>

namespace llvm{
    struct OPNode{
        unsigned int OriginalID;
        unsigned int NewID;
        std::string NodeName;
        std::list<OPNode*> NodePred;
        bool Accessed;
        bool ShowInDFG;
        bool IsConst;
        bool IsInput;
        bool IsResult;
        std::string OriginalName; //Name in original program
    };

    //Note that id2name keeps the current names of all the vector's elements. 
    //When the element is first loaded or it is simply stored, the record will 
    //be updated. When the element is not the first time to be read, the name 
    //of the element referenced in the following instructions will be replaced 
    //with the name stored in the record vector.
    struct VecMapInfo{
        int xdim;
        int ydim;
        std::vector<std::string> id2name;
    };

}

#endif
