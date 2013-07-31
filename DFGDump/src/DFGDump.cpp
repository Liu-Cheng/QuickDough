//===- DFGDump.cpp - Dump data flow graph of the program. -----------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements DFG dump of main. 
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "DFG_DUMP"
#include "llvm/Pass.h"
#include "llvm/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Support/CFG.h"
#include "llvm/Instructions.h"
#include "llvm/Instruction.h"
#include "llvm/DFGDump/DFGDump.h"
#include "llvm/User.h"
#include "llvm/Value.h"
#include "llvm/Constants.h"
#include "llvm/Constant.h"
#include "llvm/Type.h"
#include "llvm/Operator.h"

using namespace llvm;

namespace {
    struct DFGDump : public FunctionPass {

        /// Pass identification, replacement for typeid
        static char ID; 
        DFGDump() : FunctionPass(ID) {}

        /// Keep all the subfunctions inline, and "main" will be the only function left.
        virtual bool runOnFunction(Function &Fun) {
            std::list<OPNode*> DFG;
            std::map<unsigned int, OPNode*> OPNodeMap; 

            /// Initial node of the data flow graph
            // NodeID is initialized to be 1, because 0 is reserved in the scheduler.
            unsigned int NodeID=1;

            std::string FunName=Fun.getName();
            if(!(FunName=="main")){

                /// Travel around all the blocks in main function or CFG.
                BasicBlock* TargetBB=&Fun.getEntryBlock();
                std::vector<BasicBlock*> FinalBBVec;
                std::map<std::string, bool> BBAccessHistory;
                std::map<std::string, bool>::iterator MapIt;

                /// Find out the exact array element through GEP.
                /// Figure out the pointer or constant that corresponding the array element.
                /// Build data dependency through the unqiue pointer of each operand.

                /// Keep original symbol information of each address in GEP
                /// Transform all the alias to detailed element information.
                /// It is updated only when there is a GEP instruction.
                std::map<std::string, elementInfo> alias2ElementInfo;

                /// When a LoadInst appears, the pointer as well as the array that it indicates is stored.
                /// When the pointer is referenced in arithmetic instructions, we know exactly which element is
                /// actually used.
                std::map<unsigned int, elementInfo> pointer2ElementInfo;

                /// When a storeInst appears, <the array element, the pointer> pair is stored in map container.
                /// Whenever the element is referenced, it is replaced by the pointer and it helps to rebuild the
                /// data dependency. Also note that the pointer can be a constant, so another container is used.
                /// Particularly, note that, when an array is input, the element of the array may be referenced without
                /// initialization in this block. In this case, the pointer that we used to store loaded data will be
                /// reused by storing the pointer in strElement2Pointer.
                std::map<std::string, unsigned int> strElement2Pointer;
                std::map<std::string, int> strElement2Const; 

                /// Initialize the BB access history
                for(Function::iterator BBIt=Fun.begin(); BBIt!=Fun.end(); BBIt++){
                    BBAccessHistory[BBIt->getName()]=false;
                }
                FinalBBVec.push_back(TargetBB);
                BBAccessHistory[TargetBB->getName()]=true;

                bool AllBBAccessed=false;
                bool Flag=true;
                while(!AllBBAccessed){
                    for(Function::iterator BBIt=Fun.begin(); BBIt!=Fun.end(); BBIt++){
                        TargetBB=&(*BBIt);

                        /// Current BB has not been accessed.
                        if(!BBAccessHistory[BBIt->getName()] && BBAccessHistory.count(BBIt->getName())>0){
                            bool AllPredAccessed=true;
                            for(pred_iterator PredBBIt=pred_begin(TargetBB); PredBBIt!=pred_end(TargetBB); PredBBIt++){
                                AllPredAccessed=AllPredAccessed && BBAccessHistory[(*PredBBIt)->getName()];
                            }
                            if(AllPredAccessed){
                                FinalBBVec.push_back(TargetBB);
                                BBAccessHistory[BBIt->getName()]=true;
                            }
                        }
                    }

                    for(Function::iterator BBIt=Fun.begin(); BBIt!=Fun.end(); BBIt++){
                        Flag=Flag && BBAccessHistory[BBIt->getName()];
                    }
                    AllBBAccessed=Flag;
                }


                /// BBs connect with each other with labels and br instructions, however,
                /// we want to abstract the data dependency between theses operands instead of BB
                /// labels. In order to achieve this transformation, we keep the <label, variable>
                /// mapping in this container.
                std::map<unsigned int, unsigned int> BBLabelVarMap;
                std::map<unsigned int, bool> BBLabelVarRelation; 

                /// Dump all the BB and its instructions in serial order
                std::ofstream Out("dfg.txt");
                std::ofstream TmpDump("dump.txt");
                std::vector<BasicBlock*>::iterator BBIt;
                for(BBIt=FinalBBVec.begin(); BBIt!=FinalBBVec.end(); BBIt++){
                    for(BasicBlock::iterator InstIt=(*BBIt)->begin(); InstIt!=(*BBIt)->end(); InstIt++){

                        /// Handle the following two simple types of branch instruction
                        /// br laebl
                        /// br var label1 label2
                        if(InstIt->getOpcode()==Instruction::Br){
                            if(InstIt->getNumOperands()==3){
                                unsigned int VarID=(unsigned int)(InstIt->getOperand(0));
                                unsigned int LabelID1=(unsigned int)(InstIt->getOperand(1));
                                unsigned int LabelID2=(unsigned int)(InstIt->getOperand(2));
                                if(BBLabelVarMap.count(LabelID1)==0){
                                    BBLabelVarMap[LabelID1]=VarID;
                                    BBLabelVarRelation[LabelID1]=true;
                                }
                                if(BBLabelVarMap.count(LabelID2)==0){
                                    BBLabelVarMap[LabelID2]=VarID;
                                    BBLabelVarRelation[LabelID2]=false;
                                }
                            }
                            else if(InstIt->getNumOperands()!=1){
                                errs()<<"Unexpected branch instruction! ";
                                errs()<<*InstIt<<"\n";
                            }
                        }

                        /// Arithmetic instructions will generally be dumped to dfg.txt directly.
                        /// PHI Instruction will be reorganized when there are multiple jumping choices.
                        /// LoadInst will search the mapping table <Array element, target operand>.
                        /// StoreInst will update the mapping table <Array element, target operand>.
                        else if(PHINode* phi=dyn_cast<PHINode>(InstIt)){
                            std::string OPCode;
                            unsigned int SrcID0;
                            unsigned int SrcID1;
                            unsigned int SrcID2;
                            unsigned int ResultID;

                            /// Handle the PHI instruction
                            /// a = phi [var1, label1] [var2, label2] [var3, label3]...
                            /// It is transformed as the following instructions
                            /// x1 = phi cond(label1) var1 : var2
                            /// a  = phi cond(label2) x1 : var3
                            /// Note that: keep SSA manner
                            if(InstIt->getNumOperands()>1){
                                OPCode=InstIt->getOpcodeName();
                                unsigned int NewNodeID=(unsigned int)(InstIt->getOperand(0));
                                for(unsigned int i=0; i<InstIt->getNumOperands()-1; i++){
                                    unsigned int LabelID=(unsigned int)(phi->getIncomingBlock(i));
                                    SrcID0=BBLabelVarMap[LabelID];
                                    if(BBLabelVarRelation[LabelID]){
                                        SrcID1=NewNodeID;
                                        SrcID2=(unsigned int)(InstIt->getOperand(i+1));
                                    }
                                    else{
                                        SrcID1=(unsigned int)(InstIt->getOperand(i+1));
                                        SrcID2=NewNodeID;
                                    }

                                    if(i==InstIt->getNumOperands()-2){
                                        ResultID=(unsigned int)(&(*InstIt));
                                    }
                                    else{
                                        ResultID=NodeID;
                                    }
                                    NewNodeID=ResultID;

                                    //Put result of the instruction to the DFG
                                    if(OPNodeMap.count(ResultID)==0){                                
                                        OPNode* NewOPNodePtr=new OPNode;
                                        NewOPNodePtr->OriginalID=ResultID;
                                        NewOPNodePtr->NewID=NodeID;
                                        NodeID++;
                                        std::stringstream sstr;
                                        sstr<<NewOPNodePtr->NewID;
                                        OPCode=OPCode+sstr.str();
                                        NewOPNodePtr->NodeName=OPCode;
                                        NewOPNodePtr->ShowInDFG=true;
                                        NewOPNodePtr->IsConst=false;
                                        NewOPNodePtr->IsInput=false;
                                        NewOPNodePtr->IsResult=true;

                                        if(OPNodeMap.count(SrcID0)==0){
                                            errs() << "PHI: first src operand is missing!\n";
                                        }

                                        // Constant operand appears.
                                        if(OPNodeMap.count(SrcID1)==0){
                                            //errs() << "PHI: second src operand is missing!\n";
                                            //errs() << "Its ID is "<<SrcID1<<"\n";
                                            OPNode* src1NodePtr=new OPNode;
                                            src1NodePtr->OriginalID=SrcID1;
                                            src1NodePtr->NewID=NodeID;
                                            NodeID++;
                                            std::stringstream sstr1;
                                            sstr1<<src1NodePtr->NewID;
                                            src1NodePtr->NodeName="Const"+sstr1.str();
                                            src1NodePtr->ShowInDFG=true;
                                            src1NodePtr->IsConst=true;
                                            src1NodePtr->IsInput=true;
                                            src1NodePtr->IsResult=false;
                                            OPNodeMap[SrcID1]=src1NodePtr;
                                            DFG.push_back(src1NodePtr);
                                        }

                                        // Constant operand appears.
                                        if(OPNodeMap.count(SrcID2)==0){
                                            //errs() << "PHI: third src operand is missing!\n";
                                            OPNode* src2NodePtr=new OPNode;
                                            src2NodePtr->OriginalID=SrcID2;
                                            src2NodePtr->NewID=NodeID;
                                            NodeID++;
                                            std::stringstream sstr2;
                                            sstr2<<src2NodePtr->NewID;
                                            src2NodePtr->NodeName="Const"+sstr2.str();
                                            src2NodePtr->ShowInDFG=true;
                                            src2NodePtr->IsConst=true;
                                            src2NodePtr->IsInput=true;
                                            src2NodePtr->IsResult=false;
                                            OPNodeMap[SrcID2]=src2NodePtr;
                                            DFG.push_back(src2NodePtr);
                                        }
                                        NewOPNodePtr->NodePred.push_back(OPNodeMap[SrcID0]);
                                        NewOPNodePtr->NodePred.push_back(OPNodeMap[SrcID1]);
                                        NewOPNodePtr->NodePred.push_back(OPNodeMap[SrcID2]);

                                        OPNodeMap[ResultID]=NewOPNodePtr;
                                        DFG.push_back(NewOPNodePtr);
                                    }
                                    else{
                                        errs()<<"Result operand has already been put in DFG!\n";
                                    }

                                    //Dump these PHI instructions
                                    Out<<ResultID<<" "<<OPCode<<" "<<SrcID0<<" "<<SrcID1<<" "<<SrcID2<<"\n";
                                }
                            }
                            else{
                                errs()<<"Unexpected PHI instruction! ";
                                errs()<<*InstIt<<"\n";
                            }
                        }


                        /// When it is getelementptr instruction, we need to update the mapping table <alias,
                        /// elementInfo>.
                        else if(GetElementPtrInst* gep=dyn_cast<GetElementPtrInst>(InstIt)){
                            std::string skey=gep->getName().str();
                            elementInfo ei;
                            for(unsigned int i=0; i<gep->getNumOperands(); i++){
                                Value* optr=gep->getOperand(i);
                                if(optr->hasName()){
                                    ei.arrayName=optr->getName().str();
                                }
                                else if(ConstantInt* ciptr=dyn_cast<ConstantInt>(optr)){
                                    int id=ciptr->getZExtValue();
                                    if(i==1){
                                        ei.xdim=id;
                                    }
                                    else if(i==2){
                                        ei.ydim=id;
                                    }
                                    else{
                                        errs() << skey  << " has more operands than expected!\n";
                                    }
                                }
                                else{
                                    errs() << "Unexpected operand in GEP instruction!\n";
                                }
                            }
                            alias2ElementInfo[skey]=ei;

                            /// Analyze the original array index of the element.
                            /// If an array name appears in alias2ElementInfo as a key, it means it 
                            /// is not orginal array name.
                            elementInfo oei;
                            elementInfo nei;
                            if(alias2ElementInfo.count(ei.arrayName)>0){
                                oei.arrayName=alias2ElementInfo[ei.arrayName].arrayName;
                                oei.xdim=alias2ElementInfo[ei.arrayName].xdim;
                                oei.ydim=alias2ElementInfo[ei.arrayName].ydim;
                                if(ei.ydim==-1){
                                    //errs() << ei.arrayName << " Unexpected consecutive GEP instructions!\n";
                                    //TmpDump << ei.arrayName << " Unexpected consecutive GEP instructions!\n";
                                    nei.arrayName=ei.arrayName;
                                    nei.xdim=ei.xdim;
                                    nei.ydim=ei.ydim;
                                }
                                else{
                                    nei.arrayName=oei.arrayName;
                                    nei.xdim=oei.xdim;
                                    nei.ydim=ei.ydim;
                                }
                                alias2ElementInfo[skey]=nei;
                            }
                        }

                        /// When it is a LoadInst, find out the mapping between data pointer and array element.
                        /// Note that the array element here is transformed to be a string <arrayName dimx dimy>.
                        else if(LoadInst* li=dyn_cast<LoadInst>(InstIt)){
                            unsigned int liAddr=(unsigned int)(&(*InstIt));
                            std::string liStr;
                            elementInfo ei;
                            Value* pptr=li->getPointerOperand();
                            if(ConstantExpr* ceptr=dyn_cast<ConstantExpr>(pptr)){
                                if(GEPOperator* cegep=dyn_cast<GEPOperator>(ceptr)){
                                    int i=0;
                                    int dim1=-1;
                                    int dim2=-1;
                                    int dim3=-1;
                                    for(User::op_iterator oit=cegep->op_begin(); oit!=cegep->op_end(); oit++){
                                        if((*oit)->hasName()){
                                            liStr=(*oit)->getName().str();
                                        }
                                        else if(ConstantInt* ciptr=dyn_cast<ConstantInt>(*oit)){
                                            if(i==1){
                                                dim1=ciptr->getZExtValue();
                                            }
                                            else if(i==2){
                                                dim2=ciptr->getZExtValue();
                                            }
                                            else if(i==3){
                                                dim3=ciptr->getZExtValue(); 
                                            }
                                        }
                                        else{
                                             errs() << "LoadInst has a unexpected pointer!\n";
                                        }
                                        i++;
                                    }

                                    /// Construct elementInfo
                                    if(i==4){
                                        ei.arrayName=liStr;
                                        ei.xdim=dim2;
                                        ei.ydim=dim3;
                                    }
                                    else if(i==3){
                                        ei.arrayName=liStr;
                                        ei.xdim=dim2;
                                        ei.ydim=-1;
                                    }
                                    else{
                                        errs() << li->getName().str() <<": unexpected # of operands in constant expression!\n";
                                    }
                                }
                            }
                            else if(pptr->hasName()){
                                liStr=pptr->getName().str();
                                ei.arrayName=alias2ElementInfo[liStr].arrayName;
                                ei.xdim=alias2ElementInfo[liStr].xdim;
                                ei.ydim=alias2ElementInfo[liStr].ydim;
                            }
                            else{
                                errs() << li->getName().str() << "Second operand of LoadInst is not a constant expression!\n";
                            }

                            /// Update data pointer with string of the array element
                            pointer2ElementInfo[liAddr].arrayName=ei.arrayName;
                            pointer2ElementInfo[liAddr].xdim=ei.xdim;
                            pointer2ElementInfo[liAddr].ydim=ei.ydim;

                            std::stringstream liSstr;
                            liSstr << ei.arrayName <<" "<< ei.xdim << " " << ei.ydim << " ";
                            liStr=liSstr.str();
                            if(strElement2Pointer.count(liStr)==0){
                                strElement2Pointer[liStr]=liAddr;
                            }
                            Out <<"Load "<<liAddr << " " << liStr << "\n";
                        }

                        /// When it is a storeInst, update the pointer that stands for the array element/constant. 
                        else if(StoreInst* si=dyn_cast<StoreInst>(InstIt)){
                            Value* vptr=si->getValueOperand();
                            Value* pptr=si->getPointerOperand();

                            /// Analyze the array element information.
                            std::stringstream eleSstr;
                            std::string eleStr;
                            if(ConstantExpr* ceptr=dyn_cast<ConstantExpr>(pptr)){
                                if(GEPOperator* ceGEPPtr=dyn_cast<GEPOperator>(ceptr)){
                                    std::string arrayName;
                                    int xdim=-1;
                                    int ydim=-1;
                                    int zdim=-1;
                                    int i=0;
                                    for(User::op_iterator oit=ceGEPPtr->op_begin(); oit!=ceGEPPtr->op_end(); oit++){
                                        if((*oit)->hasName()){
                                            arrayName=(*oit)->getName().str();
                                        }
                                        else if(ConstantInt* ciptr=dyn_cast<ConstantInt>(*oit)){
                                            if(i==1){
                                                xdim=ciptr->getZExtValue();
                                            }
                                            else if(i==2){
                                                ydim=ciptr->getZExtValue();
                                            }
                                            else if(i==3){
                                                zdim=ciptr->getZExtValue();
                                            }
                                            else{
                                                errs() << "Too many operands in GEP constantexpr of a StoreInst\n";
                                            }
                                        }
                                        else{
                                            errs() << "ConstantExpr of StoreInst has a unexpected operand!\n";
                                        }
                                        i++;
                                    } 

                                    /// Update eleSstr and eleStr according to the number of operands in GEP
                                    /// the constantExpr.
                                    if(i==4){
                                        eleSstr << arrayName << " " << ydim << " " << zdim << " ";
                                    }
                                    else if(i==3){
                                        eleSstr << arrayName << " " << xdim << " " << ydim << " ";
                                    }
                                    else{
                                        errs() << "Unexpected number of operands in GEPconstantExpr of the storeInst!\n";
                                    }
                                    eleStr=eleSstr.str();
                                }
                                else{
                                    errs() << "Pointer of StoreInst can't be cast to a GEPOperator!\n";
                                }
                            }
                            else{
                                std::string eleAlias=pptr->getName().str();
                                if(alias2ElementInfo.count(eleAlias)>0){
                                    eleSstr << alias2ElementInfo[eleAlias].arrayName << " ";
                                    eleSstr << alias2ElementInfo[eleAlias].xdim << " ";
                                    eleSstr << alias2ElementInfo[eleAlias].ydim << " ";
                                    eleStr=eleSstr.str();
                                }
                                else{
                                    errs() << "Unknown array element alias: "<< eleAlias <<"in StoreInst\n";
                                }
                            }

                            /// If the data to be stored is a pointer, use pointer as id.
                            /// When the data is a constant, use the constant data directly
                            /// as id.
                            if(vptr->hasName()){
                                unsigned int siAddr=(unsigned int)vptr;
                                strElement2Pointer[eleStr]=siAddr;
                                Out << "Store " << siAddr << " " << eleStr << "\n";
                            }
                            else if(ConstantInt* ciptr=dyn_cast<ConstantInt>(vptr)){
                                strElement2Const[eleStr]=ciptr->getZExtValue();
                                Out << "Store " << ciptr->getZExtValue() << " " <<eleStr << "\n";
                            }
                            else{
                                errs() << "Value of StoreInst is neither a variable nor a constant!\n";
                            }
                        }

                        /// Just ignore the Alloca instruction
                        else if(InstIt->getOpcode()==Instruction::Alloca){}
                        
                        /// When the arithmetic instructions appear, construct DFG.
                        else{
                            OPNode* ResultOPNodePtr=new OPNode;
                            unsigned int ResultOperandID=(unsigned int)(&(*InstIt));
                            
                            if(OPNodeMap.count(ResultOperandID)==0){
                                ResultOPNodePtr->OriginalID=ResultOperandID;
                                ResultOPNodePtr->NewID=NodeID;
                                NodeID++;
                                std::stringstream sstr;
                                sstr << ResultOPNodePtr->NewID;
                                std::string tmp;
                                tmp=InstIt->getOpcodeName();
                                tmp=tmp+sstr.str();
                                ResultOPNodePtr->NodeName=tmp;
                                ResultOPNodePtr->ShowInDFG=true;
                                ResultOPNodePtr->IsConst=false;
                                ResultOPNodePtr->IsInput=false;
                                ResultOPNodePtr->IsResult=true;
                                OPNodeMap[ResultOperandID]=ResultOPNodePtr;
                                //if(InstIt->getOpcode()==Instruction::Mul){
                                    //errs() << "Mul operand ID is "<<ResultOperandID<<"\n";
                                    //errs() << "Its map value is "<<tmp<<"\n";
                                //}
                                DFG.push_back(ResultOPNodePtr);
                            }
                            else{
                                errs()<<"The result operand of non PHI instruction has";
                                errs()<<"already been put in DFG!\n";
                            }
                            Out << (unsigned int)(&(*InstIt))<<" ";
                            Out << InstIt->getOpcodeName() << " ";

                            //Put the source operands that appear for the first time
                            //into DFG.
                            for(unsigned int i=0; i<InstIt->getNumOperands(); i++){

                                /// When it is constant operand, constant is used as ID directly.
                                /// When it is a pointer operand, check its array element and transform it to the stored
                                /// pointer.
                                unsigned int CurrOperandID;
                                bool consflag;
                                Value* vptr=InstIt->getOperand(i);
                                if(ConstantInt* ciptr=dyn_cast<ConstantInt>(vptr)){
                                    CurrOperandID=ciptr->getZExtValue();
                                    consflag=true;
                                }
                                else{
                                    CurrOperandID=(unsigned int) vptr;
                                    if(pointer2ElementInfo.count(CurrOperandID)>0){
                                        std::stringstream eleSstr;
                                        eleSstr << pointer2ElementInfo[CurrOperandID].arrayName << " ";
                                        eleSstr << pointer2ElementInfo[CurrOperandID].xdim << " ";
                                        eleSstr << pointer2ElementInfo[CurrOperandID].ydim << " ";
                                        std::string eleStr=eleSstr.str();
                                        if(strElement2Pointer.count(eleStr)>0){
                                            CurrOperandID=strElement2Pointer[eleStr];
                                            consflag=false;
                                        }
                                        else if(strElement2Const.count(eleStr)>0){
                                            CurrOperandID=strElement2Const[eleStr];
                                            consflag=true;
                                        } 
                                        else{
                                            errs() << "Pointer is used without initialization!\n";
                                        }
                                    }
                                }

                                Out << CurrOperandID <<" ";


                                /// If the source operand appears in the DFG for the first time, create a new node.
                                if(OPNodeMap.count(CurrOperandID)<=0){
                                    OPNode* NewOPNodePtr=new OPNode;
                                    NewOPNodePtr->OriginalID=CurrOperandID;
                                    NewOPNodePtr->NewID=NodeID;
                                    NodeID++;

                                    std::stringstream sstr;
                                    sstr << NewOPNodePtr->NewID;
                                    NewOPNodePtr->NodeName=sstr.str();
                                    NewOPNodePtr->ShowInDFG=true;
                                    NewOPNodePtr->IsConst=consflag;
                                    NewOPNodePtr->OriginalName=InstIt->getOperand(i)->getName();
                                    NewOPNodePtr->IsInput=true;
                                    NewOPNodePtr->IsResult=false;
                                    OPNodeMap[CurrOperandID]=NewOPNodePtr;
                                    DFG.push_back(NewOPNodePtr);
                                }
                                ResultOPNodePtr->NodePred.push_back(OPNodeMap[CurrOperandID]);
                            }
                            Out<<"\n";
                        }
                    }
                }
                Out.close();
                TmpDump.close();
            }
            else{
                errs() << "Unexpected function name: " << FunName <<"\n";
            }

            //Dump dot file of the data flow graph
            std::list<OPNode*>::iterator OPPtr;
            std::ofstream Out("dfg.dot");
            Out<<"/* Data Flow Graph */"<<"\n";
            Out<<"digraph dfg{"<<"\n";
            Out<<"size=\"6.6\";"<<"\n";
            Out<<"node[color=lightblue1, style=filled];"<<"\n";
            for(OPPtr=DFG.begin(); OPPtr!=DFG.end(); OPPtr++){
                std::list<OPNode*>::iterator PredIt;
                for(PredIt=(*OPPtr)->NodePred.begin(); PredIt!=(*OPPtr)->NodePred.end(); PredIt++){
                    //if((*PredIt)->ShowInDFG){
                        //Out<<"\""<<(*PredIt)->NodeName<<"\""<<"->"<<"\""<<(*OPPtr)->NodeName<<"\""<<"\n";
                        Out<<"\""<<(*PredIt)->NewID<<"\""<<"->"<<"\""<<(*OPPtr)->NewID<<"\""<<"\n";
                    //}
                }
            }
            Out<<"}"<<"\n";
            Out.close();

            // Dump simple instruction fomrat file for the SCGRA scheduler
            Out.open("dfg.s"); 
            for(OPPtr=DFG.begin(); OPPtr!=DFG.end(); OPPtr++){
                if((*OPPtr)->NodePred.size()>0){
                    std::list<OPNode*>::iterator PredIt;
                    Out << (*OPPtr)->NewID << " " << 0 <<" ";
                    int srcNum=0;
                    for(PredIt=(*OPPtr)->NodePred.begin(); PredIt!=(*OPPtr)->NodePred.end(); PredIt++){
                        //if((*PredIt)->ShowInDFG){
                        srcNum++;
                        Out << (*PredIt)->NewID<<" ";
                        //}
                    }
                    if(srcNum==1){
                        Out << 0 << " " << 0 << " ";
                    }
                    else if(srcNum==2){
                        Out << 0 << " ";
                    }
                    else if(srcNum>3){
                        errs() << "Too many source operands!\n";
                    }
                    Out << "\n";
                }
            }
            Out.close();

            return false;
        }
    };
}
char DFGDump::ID = 0;
static RegisterPass<DFGDump> X("DFGDump", "Dump the DFG of main!");

