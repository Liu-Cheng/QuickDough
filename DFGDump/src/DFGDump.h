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
    /// Keeps all the details of an element.
    /// Maximum dimension of the array is 2.
    /// When it is a vector, ydim=-1;
    struct elementInfo{
        public:
            std::string arrayName;
            int xdim;
            int ydim;

            elementInfo(std::string _arrayName, int _xdim, int _ydim){
                arrayName=_arrayName;
                xdim=_xdim;
                ydim=_ydim;
            }

            elementInfo(){
                arrayName="";
                xdim=-1;
                ydim=-1;
            }
    };

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
        bool IsOutput;
        std::string Opcode;
        std::string OriginalName; //Name in original program
    };


}

#endif
