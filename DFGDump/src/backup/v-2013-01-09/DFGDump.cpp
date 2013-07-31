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

using namespace llvm;

namespace {
    struct DFGDump : public FunctionPass {

        // Pass identification, replacement for typeid
        static char ID; 
        DFGDump() : FunctionPass(ID) {}

        //Keep all the subfunctions inline, and "main" will be the only function left.
        virtual bool runOnFunction(Function &Fun) {
            std::list<OPNode*> DFG;
            std::map<unsigned int, OPNode*> OPNodeMap; 

            //Initial node of the data flow graph
            unsigned int NodeID=0;

            std::string FunName=Fun.getName();
            if(!(FunName=="main")){

                //Travel around all the blocks in main function or CFG.
                BasicBlock* TargetBB=&Fun.getEntryBlock();
                std::vector<BasicBlock*> FinalBBVec;
                std::map<std::string, bool> BBAccessHistory;
                std::map<std::string, bool>::iterator MapIt;
                std::map<std::string, VecMapInfo*> VecDetail;

                //Initialize the BB access history
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

                        //Current BB has not been accessed.
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

                //BBs connect with each other with labels and br instructions, however,
                //we want to abstract the data dependency between theses operands instead of BB
                //labels. In order to achieve this transformation, we keep the <label, variable>
                //mapping in this container.
                std::map<unsigned int, unsigned int> BBLabelVarMap;
                std::map<unsigned int, bool> BBLabelVarRelation;            

                //Dump all the BB and its instructions in serial order
                std::ofstream Out("dfg.txt");
                std::vector<BasicBlock*>::iterator BBIt;
                for(BBIt=FinalBBVec.begin(); BBIt!=FinalBBVec.end(); BBIt++){
                    //errs()<<"BB name is:" <<(*BBIt)->getName()<<" "<<*BBIt<<"\n";
                    for(BasicBlock::iterator InstIt=(*BBIt)->begin(); InstIt!=(*BBIt)->end(); InstIt++){

                        //Handle the following two simple types of branch instruction
                        //br laebl
                        //br var label1 label2
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
                            continue;
                        }

                        else if(isa<PHINode>(*InstIt)){
                            //Fileds that will be dumped to dfg.txt
                            std::string OPCode;
                            unsigned int SrcID0;
                            unsigned int SrcID1;
                            unsigned int SrcID2;
                            unsigned int ResultID=(unsigned int)(&(*InstIt));

                            //Handle the PHI instruction
                            //a = phi [var1, label1] [var2, label2] [var3, label3]...
                            //It is transformed as the following instructions
                            //x1 = phi cond(label1) var1 : var2
                            //a  = phi cond(label2) x1 : var3
                            //Note that: keep SSA manner
                            PHINode* phi=dyn_cast<PHINode>(InstIt);
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
                                        NewOPNodePtr->NodePred.push_back(OPNodeMap[SrcID0]);
                                        NewOPNodePtr->NodePred.push_back(OPNodeMap[SrcID1]);

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
                            continue;
                        }

                        //Note that source operands may be input node of DFG
                        //And they should be constructed before result operand
                        else{
                            //Refresh the result node in DFG
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

                                //Get the array index as well as its array name
                                //Replace its destination's name with its source operand's name
                                if(InstIt->getOpcode()==Instruction::GetElementPtr){
                                    ResultOPNodePtr->ShowInDFG=false;
                                }
                                else if(InstIt->getOpcode()==Instruction::Store){
                                    ResultOPNodePtr->ShowInDFG=false;
                                }
                                else if(InstIt->getOpcode()==Instruction::Alloca){
                                    ResultOPNodePtr->ShowInDFG=false;
                                }
                                else{
                                    ResultOPNodePtr->ShowInDFG=true;
                                }

                                ResultOPNodePtr->IsConst=false;
                                ResultOPNodePtr->IsInput=false;
                                ResultOPNodePtr->IsResult=true;
                                OPNodeMap[ResultOperandID]=ResultOPNodePtr;
                                DFG.push_back(ResultOPNodePtr);
                            }
                            else{
                                errs()<<"The result operand of non PHI instruction has";
                                errs()<<"already been put in DFG!\n";
                            }
                            Out<<(unsigned int)(&(*InstIt))<<" ";
                            std::string tmp(InstIt->getOpcodeName());
                            Out<<tmp<<" ";

                            //Put the source operands that appear for the first time
                            //into DFG.
                            for(unsigned int i=0; i<InstIt->getNumOperands(); i++){
                                unsigned int CurrOperandID=(unsigned int)(InstIt->getOperand(i));
                                Out<<CurrOperandID<<" ";
                                if(OPNodeMap.count(CurrOperandID)==0){
                                    OPNode* NewOPNodePtr=new OPNode;
                                    NewOPNodePtr->OriginalID=CurrOperandID;
                                    NewOPNodePtr->NewID=NodeID;
                                    NodeID++;
                                    //NewOPNodePtr->NodeName=InstIt->getOperand(i)->getName();
                                    std::stringstream sstr;
                                    sstr<<NewOPNodePtr->NewID;
                                    NewOPNodePtr->NodeName=sstr.str();

                                    //Get the array index as well as its array name
                                    //Replace its destination's name with its source operand's name
                                    if(InstIt->getOpcode()==Instruction::GetElementPtr){
                                        NewOPNodePtr->ShowInDFG=false;
                                    }
                                    else if(InstIt->getOpcode()==Instruction::Load){
                                        NewOPNodePtr->ShowInDFG=false;
                                    }
                                    else if(InstIt->getOpcode()==Instruction::Store){
                                        NewOPNodePtr->ShowInDFG=false;
                                    }
                                    else if(InstIt->getOpcode()==Instruction::Alloca){
                                        NewOPNodePtr->ShowInDFG=false;
                                    }

                                    else{
                                        NewOPNodePtr->ShowInDFG=true;
                                    }

                                    Value* OperandTmp=InstIt->getOperand(i);
                                    if(dyn_cast<Constant>(OperandTmp)){
                                        NewOPNodePtr->IsConst=true;
                                        NewOPNodePtr->OriginalName=InstIt->getOperand(i)->getName();
                                        //Constant* CT=dyn_cast<Constant>(OperandTmp);
                                        //ConstantInt* CI=dyn_cast<ConstantInt>(i);
                                        //errs()<<CI->getZExtValue()<<"\n";
                                    }
                                    else{
                                        NewOPNodePtr->IsConst=false;
                                    }

                                    NewOPNodePtr->IsInput=true;
                                    NewOPNodePtr->IsResult=false;
                                    OPNodeMap[CurrOperandID]=NewOPNodePtr;
                                    DFG.push_back(NewOPNodePtr);
                                }
                                //Refresh the result node.
                                ResultOPNodePtr->NodePred.push_back(OPNodeMap[CurrOperandID]);
                            }
                            Out<<"\n";
                        }
                    }
                }
                Out.close();
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
                    if((*PredIt)->ShowInDFG){
                        Out<<"\""<<(*PredIt)->NodeName<<"\""<<"->"<<"\""<<(*OPPtr)->NodeName<<"\""<<"\n";
                    }
                }
            }
            Out<<"}"<<"\n";
            Out.close();

            return false;
        }
    };
}
char DFGDump::ID = 0;
static RegisterPass<DFGDump> X("DFGDump", "Dump the DFG of main!");

