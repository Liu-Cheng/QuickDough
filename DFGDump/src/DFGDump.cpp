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

        // Pass identification, replacement for typeid
        static char ID; 
        DFGDump() : FunctionPass(ID) {}

        // Keep all the subfunctions inline, and "main" will be the only function left.
        virtual bool runOnFunction(Function &Fun) {
            std::list<OPNode*> DFG;
            std::map<long, OPNode*> OPNodeMap; 
            std::ofstream DumpHandle("dump.txt");
            std::ofstream Out("dfg.txt");
            std::vector<std::string> ArgNames;
            // When a LoadInst appears, the pointer as well as the array that it indicates is stored.
            // When the pointer is referenced in arithmetic instructions, we know exactly which element is
            // actually used.
            std::map<long, elementInfo> LoadPointer2ElementInfo;

            //Store all the IO operand info to the map container.
            std::map<long, elementInfo> IOPointer2ElementInfo;
            std::map<std::string, long> IOArgument2Pointer;
            std::map<int, elementInfo> io_info;
            std::map<int, long> io_pointer;

            // When a storeInst appears, <the array element, the pointer> pair is stored in map container.
            // Whenever the element is referenced, it is replaced by the pointer and it helps to rebuild the
            // data dependency. Also note that the pointer can be a constant, so another container is used.
            // Particularly, note that, when an array is input, the element of the array may be referenced without
            // initialization in this block. In this case, the pointer that we used to store loaded data will be
            // reused by storing the pointer in strElement2Pointer.
            std::map<std::string, long> strElement2Pointer;
            std::map<std::string, long> OutputStrElement2Pointer;
            std::map<std::string, elementInfo> OutputStrElement2ElementInfo;

            //Const operands bring new problems and they are left for future work. 
            //Since initialization is also closely related with constant operand problem,
            //it is also untouched here. Instead, we simply assume that initialization is done
            //before getting into the function.
            std::map<std::string, int> strElement2Const; 

            // Initial node of the data flow graph
            // NodeID is initialized to be 1, because 0 is reserved in the scheduler.
            long NodeID=1;

            std::string FunName=Fun.getName();
            if(!(FunName=="main")){
                // Travel all the argument of the function
                Function::arg_iterator arg_it;
                DumpHandle << "Arg Number::" << Fun.arg_size() << "\n";;
                ArgNames.resize(Fun.arg_size());

                Type* arg_type;
                for(arg_it=Fun.arg_begin(); arg_it!=Fun.arg_end(); arg_it++){
                    ArgNames[arg_it->getArgNo()]=arg_it->getName();
                    IOArgument2Pointer[arg_it->getName()]=(long) &(*arg_it);

                    arg_type = arg_it->getType();
                    DumpHandle << "Argument Name is: "; //<< arg_it->getArgNo();
                    DumpHandle << " " << arg_it->getName().str();
                    DumpHandle << ", Pointer is " << (long) &(*arg_it);
                    DumpHandle << ", TypeID="<<arg_type->getTypeID();
                    if(arg_type->isArrayTy()){
                        DumpHandle << ", it has "<< arg_type->getArrayNumElements() <<" elements."; 
                    }
                    else if(arg_type->isVectorTy()){
                        DumpHandle <<", it has "<< arg_type->getVectorNumElements() <<" elements.";
                    }
                    else if(arg_type->isPointerTy()){
                    DumpHandle << ", it has " << arg_type->getPointerAddressSpace() <<" elements.";
                    }
                    else{
                        DumpHandle << ", it is neither an array nor a vector.";
                    }
                    DumpHandle << "\n";
                }

                // Travel around all the blocks in main function or CFG.
                BasicBlock* TargetBB=&Fun.getEntryBlock();
                std::vector<BasicBlock*> FinalBBVec;
                std::map<std::string, bool> BBAccessHistory;
                std::map<std::string, bool>::iterator MapIt;

                // Find out the exact array element through GEP.
                // Figure out the pointer or constant that corresponding the array element.
                // Build data dependency through the unqiue pointer of each operand.

                // Keep original symbol information of each address in GEP
                // Transform all the alias to detailed element information.
                // It is updated only when there is a GEP instruction.
                std::map<std::string, elementInfo> alias2ElementInfo;

                
                // Initialize the BB access history
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

                        // Current BB has not been accessed.
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


                // BBs connect with each other with labels and br instructions, however,
                // we want to abstract the data dependency between theses operands instead of BB
                // labels. In order to achieve this transformation, we keep the <label, variable>
                // mapping in this container.
                std::map<long, long> BBLabelVarMap;
                std::map<long, bool> BBLabelVarRelation; 

                // Dump all the BB and its instructions in serial order
                std::vector<BasicBlock*>::iterator BBIt;
                for(BBIt=FinalBBVec.begin(); BBIt!=FinalBBVec.end(); BBIt++){
                    for(BasicBlock::iterator InstIt=(*BBIt)->begin(); InstIt!=(*BBIt)->end(); InstIt++){

                        // Handle the following two simple types of branch instruction
                        // br laebl
                        // br var label1 label2
                        if(InstIt->getOpcode()==Instruction::Br){
                            if(InstIt->getNumOperands()==3){
                                long VarID=(long)(InstIt->getOperand(0));
                                long LabelID1=(long)(InstIt->getOperand(1));
                                long LabelID2=(long)(InstIt->getOperand(2));
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

                        // Arithmetic instructions will generally be dumped to dfg.txt directly.
                        // PHI Instruction will be reorganized when there are multiple jumping choices.
                        // LoadInst will search the mapping table <Array element, target operand>.
                        // StoreInst will update the mapping table <Array element, target operand>.
                        else if(PHINode* phi=dyn_cast<PHINode>(InstIt)){
                            std::string OPCode;
                            long SrcID0;
                            long SrcID1;
                            long SrcID2;
                            long ResultID;

                            // Handle the PHI instruction
                            // a = phi [var1, label1] [var2, label2] [var3, label3]...
                            // It is transformed as the following instructions
                            // x1 = phi cond(label1) var1 : var2
                            // a  = phi cond(label2) x1 : var3
                            // Note that: keep SSA manner
                            if(InstIt->getNumOperands()>1){
                                OPCode=InstIt->getOpcodeName();
                                long NewNodeID=(long)(InstIt->getOperand(0));
                                for(long i=0; i<InstIt->getNumOperands()-1; i++){
                                    long LabelID=(long)(phi->getIncomingBlock(i));
                                    SrcID0=BBLabelVarMap[LabelID];
                                    if(BBLabelVarRelation[LabelID]){
                                        SrcID1=NewNodeID;
                                        SrcID2=(long)(InstIt->getOperand(i+1));
                                    }
                                    else{
                                        SrcID1=(long)(InstIt->getOperand(i+1));
                                        SrcID2=NewNodeID;
                                    }

                                    if(i==InstIt->getNumOperands()-2){
                                        ResultID=(long)(&(*InstIt));
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


                        // When it is getelementptr instruction, we need to update the mapping table <alias,
                        // elementInfo>.
                        else if(GetElementPtrInst* gep=dyn_cast<GetElementPtrInst>(InstIt)){
                            std::string skey=gep->getName().str();
                            elementInfo ei;
                            for(long i=0; i<gep->getNumOperands(); i++){
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

                            // Analyze the original array index of the element.
                            // If an array name appears in alias2ElementInfo as a key, it means it 
                            // is not orginal array name.
                            elementInfo oei;
                            elementInfo nei;
                            if(alias2ElementInfo.count(ei.arrayName)>0){
                                oei.arrayName=alias2ElementInfo[ei.arrayName].arrayName;
                                oei.xdim=alias2ElementInfo[ei.arrayName].xdim;
                                oei.ydim=alias2ElementInfo[ei.arrayName].ydim;
                                if(ei.ydim==-1){
                                    //errs() << ei.arrayName << " Unexpected consecutive GEP instructions!\n";
                                    //DumpHandle << ei.arrayName << " Unexpected consecutive GEP instructions!\n";
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

                        // When it is a LoadInst, find out the mapping between data pointer and array element.
                        // Note that the array element here is transformed to be a string <arrayName dimx dimy>.
                        else if(LoadInst* li=dyn_cast<LoadInst>(InstIt)){
                            long liAddr=(long)(&(*InstIt));
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

                                    // Construct elementInfo
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

                            // Update data pointer with string of the array element
                            LoadPointer2ElementInfo[liAddr].arrayName=ei.arrayName;
                            LoadPointer2ElementInfo[liAddr].xdim=ei.xdim;
                            LoadPointer2ElementInfo[liAddr].ydim=ei.ydim;

                            std::stringstream liSstr;
                            liSstr << ei.arrayName <<" "<< ei.xdim << " " << ei.ydim;
                            liStr=liSstr.str();
                            if(strElement2Pointer.count(liStr)==0){
                                strElement2Pointer[liStr]=liAddr;
                            }
                            Out <<"Load "<<liAddr << " " << liStr << "\n";
                        }

                        // When it is a storeInst, update the pointer that stands for the array element/constant. 
                        else if(StoreInst* si=dyn_cast<StoreInst>(InstIt)){
                            Value* vptr=si->getValueOperand();
                            Value* pptr=si->getPointerOperand();

                            // Analyze the array element information.
                            std::stringstream eleSstr;
                            std::string eleStr;
                            elementInfo outei;
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

                                    // Update eleSstr and eleStr according to the number of operands in GEP
                                    // the constantExpr.
                                    if(i==4){
                                        eleSstr << arrayName << " " << ydim << " " << zdim << " ";
                                        outei.arrayName=arrayName;
                                        outei.xdim=ydim;
                                        outei.ydim=zdim;
                                    }
                                    else if(i==3){
                                        eleSstr << arrayName << " " << xdim << " " << ydim << " ";
                                        outei.arrayName=arrayName;
                                        outei.xdim=xdim;
                                        outei.ydim=ydim;
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
                                    eleSstr << alias2ElementInfo[eleAlias].ydim;
                                    eleStr=eleSstr.str();
                                    outei.arrayName=alias2ElementInfo[eleAlias].arrayName;
                                    outei.xdim=alias2ElementInfo[eleAlias].xdim;
                                    outei.ydim=alias2ElementInfo[eleAlias].ydim;
                                }
                                else{
                                    errs() << "Unknown array element alias: "<< eleAlias <<"in StoreInst\n";
                                }
                            }

                            // If the data to be stored is a pointer, use pointer as id.
                            // When the data is a constant, use the constant data directly
                            // as id.
                            if(vptr->hasName()){
                                long siAddr=(long)vptr;
                                strElement2Pointer[eleStr]=siAddr;
                                OutputStrElement2Pointer[eleStr]=siAddr;
                                OutputStrElement2ElementInfo[eleStr]=outei;
                                Out << "Store " << siAddr << " " << eleStr << "\n";
                            }
                            else if(ConstantInt* ciptr=dyn_cast<ConstantInt>(vptr)){
                                //strElement2Const[eleStr]=ciptr->getZExtValue();
                                //Out << "Store " << ciptr->getZExtValue() << " " <<eleStr << "\n";
                            }
                            else{
                                errs() << "Value of StoreInst is neither a variable nor a constant!\n";
                            }
                        }

                        // Just ignore the Alloca instruction
                        else if(InstIt->getOpcode()==Instruction::Alloca){}

                        // Ignore the ret instruction
                        else if(InstIt->getOpcode()==Instruction::Ret){}
                        
                        // When the arithmetic instructions appear, construct DFG.
                        else{
                            OPNode* ResultOPNodePtr=new OPNode;
                            long ResultOperandID=(long)(&(*InstIt));
                            
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
                                ResultOPNodePtr->IsOutput=false;
                                ResultOPNodePtr->Opcode=InstIt->getOpcodeName();
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
                            Out << (long)(&(*InstIt))<<" ";
                            Out << InstIt->getOpcodeName() << " ";

                            //Put the source operands that appear for the first time
                            //into DFG.
                            for(long i=0; i<InstIt->getNumOperands(); i++){

                                // When it is constant operand, constant is used as ID directly.
                                // When it is a pointer operand, check its array element and transform it to the stored
                                // pointer.
                                long CurrOperandID;
                                bool consflag;
                                Value* vptr=InstIt->getOperand(i);
                                if(ConstantInt* ciptr=dyn_cast<ConstantInt>(vptr)){
                                    //CurrOperandID=ciptr->getZExtValue();
                                    //consflag=true;
                                }
                                else{
                                    CurrOperandID=(long) vptr;
                                    if(LoadPointer2ElementInfo.count(CurrOperandID)>0){
                                        std::stringstream eleSstr;
                                        eleSstr << LoadPointer2ElementInfo[CurrOperandID].arrayName << " ";
                                        eleSstr << LoadPointer2ElementInfo[CurrOperandID].xdim << " ";
                                        eleSstr << LoadPointer2ElementInfo[CurrOperandID].ydim;
                                        std::string eleStr=eleSstr.str();
                                        if(strElement2Pointer.count(eleStr)>0){
                                            CurrOperandID=strElement2Pointer[eleStr];
                                            consflag=false;
                                        }
                                        else if(strElement2Const.count(eleStr)>0){
                                            //CurrOperandID=strElement2Const[eleStr];
                                            //consflag=true;
                                        } 
                                        else{
                                            errs() << "Pointer is used without initialization!\n";
                                        }
                                    }
                                }

                                Out << CurrOperandID <<" ";


                                // If the source operand appears in the DFG for the first time, create a new node.
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


                //Dump the alias2ElementInfo
                DumpHandle << "\n\n--Alias information \n";
                std::map<std::string, elementInfo>::iterator map_it;
                for(map_it=alias2ElementInfo.begin(); map_it!=alias2ElementInfo.end(); map_it++){
                    DumpHandle << map_it->second.arrayName << "[" << map_it->second.xdim << "]["<<map_it->second.ydim << "]\n";
                }

                //Dump the LoadPointer2ElementInfo
                DumpHandle << "\n\n--LoadPointer2ElementInfo\n";
                std::map<long, elementInfo>::iterator p2eit;
                for(p2eit=LoadPointer2ElementInfo.begin(); p2eit!=LoadPointer2ElementInfo.end(); p2eit++){
                    DumpHandle << p2eit->second.arrayName <<"[" << p2eit->second.xdim << "][" << p2eit->second.ydim <<"]\n";
                }

                //Dump strElement2Pointer
                DumpHandle <<"\n\n--strElement2Pointer \n";
                std::map<std::string, long>::iterator str_long_map_it;
                for(str_long_map_it=strElement2Pointer.begin(); str_long_map_it!=strElement2Pointer.end(); str_long_map_it++){
                    DumpHandle << str_long_map_it->first <<"\n";
                }

                //Dump OutputStrElement2Pointer
                DumpHandle << "\n\n--OutputStrElement2Pointer\n";
                for(str_long_map_it=OutputStrElement2Pointer.begin(); str_long_map_it!=OutputStrElement2Pointer.end(); str_long_map_it++){
                    DumpHandle << str_long_map_it->first << "\n";
                }

                //Determine input/output operands in the DFG
                //Operands without predecessors are input operands
                std::list<OPNode*>::iterator OPit;
                for(OPit=DFG.begin(); OPit!=DFG.end(); OPit++){
                    if((*OPit)->NodePred.empty()){
                        (*OPit)->IsInput=true;
                        (*OPit)->IsOutput=false;

                        long PointerID=(*OPit)->OriginalID;
                        if(LoadPointer2ElementInfo.count(PointerID)>0){
                            IOPointer2ElementInfo[PointerID]=LoadPointer2ElementInfo[PointerID];
                        }
                        else{
                            DumpHandle << "scalar input operand, Original id=" << PointerID <<", orignal name="<< (*OPit)->OriginalName <<"\n";
                        }
                    }
                    else{
                        (*OPit)->IsInput=false;
                        (*OPit)->IsOutput=false;
                    }
                }


                for(str_long_map_it=OutputStrElement2Pointer.begin(); str_long_map_it!=OutputStrElement2Pointer.end(); str_long_map_it++){
                    long CurrentPointer=str_long_map_it->second;
                    if(OPNodeMap.count(CurrentPointer)<=0){
                        errs() << "Unknown OPNode pointer.\n";
                    }
                    else{
                        OPNodeMap[CurrentPointer]->IsInput=false;
                        OPNodeMap[CurrentPointer]->IsOutput=true;

                        elementInfo outei;
                        IOPointer2ElementInfo[CurrentPointer].arrayName=OutputStrElement2ElementInfo[str_long_map_it->first].arrayName;
                        IOPointer2ElementInfo[CurrentPointer].xdim=OutputStrElement2ElementInfo[str_long_map_it->first].xdim;
                        IOPointer2ElementInfo[CurrentPointer].ydim=OutputStrElement2ElementInfo[str_long_map_it->first].ydim;

                    }
                }
                
              
                //Dump OutputStrElement2Pointer
                std::map<long, elementInfo>::iterator long_ele_map_it;
                DumpHandle << "\n\n--IOPointer2ElementInfo\n";
                for(long_ele_map_it=IOPointer2ElementInfo.begin(); long_ele_map_it!=IOPointer2ElementInfo.end(); long_ele_map_it++){
                    DumpHandle << long_ele_map_it->second.arrayName << "[" << long_ele_map_it->second.xdim << "][" << long_ele_map_it->second.ydim << "]" << "\n";
                }


                // Reallocate input/output operands ID of the DFG, and note that ID zero is reserved.

                //Reset NewID of the DFG
                for(OPit=DFG.begin(); OPit!=DFG.end(); OPit++){
                   (*OPit)->NewID=-1;
                }

                std::map<std::string, elementInfo> max_element;
                for(long_ele_map_it=IOPointer2ElementInfo.begin(); long_ele_map_it!=IOPointer2ElementInfo.end(); long_ele_map_it++){
                    std::string curr_array_name=long_ele_map_it->second.arrayName;
                    if(max_element.count(curr_array_name)>0){
                        bool xdim_larger=long_ele_map_it->second.xdim>max_element[curr_array_name].xdim;
                        bool xdim_equal_ydim_larger=(long_ele_map_it->second.xdim==max_element[curr_array_name].xdim) && (long_ele_map_it->second.ydim>=max_element[curr_array_name].ydim);
                            if(xdim_larger || xdim_equal_ydim_larger){
                                max_element[curr_array_name]=long_ele_map_it->second;
                            }
                    }
                    else{
                        max_element[curr_array_name]=long_ele_map_it->second;
                    }
                }

                //io.txt <operand-id, operand-bram-addr, operand-value, operand-bram-id, reserved >

                DumpHandle << "\n\n IO list\n";
                int NewNodeID=1;
                std::vector<std::string>::iterator vec_str_it;
                for(vec_str_it=ArgNames.begin(); vec_str_it!=ArgNames.end(); vec_str_it++){
                    if(max_element.count(*vec_str_it)<=0){
                        long scalar_pointer=IOArgument2Pointer[*vec_str_it];
                        OPNodeMap[scalar_pointer]->NewID=NewNodeID;
                        DumpHandle << (*vec_str_it) << " " << NewNodeID<<"\n";
                        elementInfo empty_element;
                        empty_element.arrayName=*vec_str_it;
                        io_info[NewNodeID]=empty_element;
                        io_pointer[NewNodeID]=scalar_pointer;
                        NewNodeID++;
                    }
                    else{
                        int max_xdim=max_element[*vec_str_it].xdim+1;
                        int max_ydim=max_element[*vec_str_it].ydim+1;
                        std::string array_name=*vec_str_it;
                        if(max_xdim!=-1 && max_ydim!=-1){
                            for(long_ele_map_it=IOPointer2ElementInfo.begin(); long_ele_map_it!=IOPointer2ElementInfo.end(); long_ele_map_it++){
                                if(array_name==long_ele_map_it->second.arrayName){
                                    long pointer_value=long_ele_map_it->first;
                                    int curr_xdim=long_ele_map_it->second.xdim;
                                    int curr_ydim=long_ele_map_it->second.ydim;
                                    OPNodeMap[pointer_value]->NewID=NewNodeID+curr_xdim*max_ydim+curr_ydim;
                                    DumpHandle << array_name <<"["<<curr_xdim<<"]["<<curr_ydim<<"] "<<OPNodeMap[pointer_value]->NewID<<"\n";
                                    elementInfo curr_element;
                                    curr_element.arrayName=array_name;
                                    curr_element.xdim=curr_xdim;
                                    curr_element.ydim=curr_ydim;
                                    io_info[OPNodeMap[pointer_value]->NewID]=curr_element;
                                    io_pointer[OPNodeMap[pointer_value]->NewID]=pointer_value;
                                }
                            }
                            NewNodeID+=max_xdim*max_ydim;
                        }
                        else if(max_xdim!=-1 && max_ydim==-1){
                            for(long_ele_map_it=IOPointer2ElementInfo.begin(); long_ele_map_it!=IOPointer2ElementInfo.end(); long_ele_map_it++){
                                if(array_name==long_ele_map_it->second.arrayName){
                                    long pointer_value=long_ele_map_it->first;
                                    int curr_xdim=long_ele_map_it->second.xdim;
                                    //int curr_ydim=long_ele_map_it->second.ydim;
                                    OPNodeMap[pointer_value]->NewID=NewNodeID+curr_xdim;
                                    DumpHandle << array_name <<"["<<curr_xdim<<"] "<< OPNodeMap[pointer_value]->NewID <<"\n";
                                    elementInfo curr_element;
                                    curr_element.arrayName=array_name;
                                    curr_element.xdim=curr_xdim;
                                    curr_element.ydim=-1;
                                    io_info[OPNodeMap[pointer_value]->NewID]=curr_element;
                                    io_pointer[OPNodeMap[pointer_value]->NewID]=pointer_value;
                                }
                            }
                            NewNodeID+=max_xdim;
                        }
                        else{
                            errs() << "Unexpected element in IOPointer2ElementInfo\n";
                        }
                    }
                }

                //Update the rest operands in DFG.
                for(OPit=DFG.begin(); OPit!=DFG.end(); OPit++){
                   if((*OPit)->IsInput || (*OPit)->IsOutput){
                       continue;
                   }
                   else{
                       (*OPit)->NewID=NewNodeID;
                       NewNodeID++;
                   }
                }


                for(OPit=DFG.begin(); OPit!=DFG.end(); OPit++){
                    std::stringstream sstr;
                    if((*OPit)->IsInput || (*OPit)->IsOutput){
                        elementInfo curr_element=io_info[(*OPit)->NewID];
                        if(curr_element.xdim==-1 && curr_element.ydim==-1){
                            sstr << curr_element.arrayName << "-" << (*OPit)->NewID;
                        }
                        else if(curr_element.xdim!=-1 && curr_element.ydim==-1){
                            sstr << curr_element.arrayName << "[" << curr_element.xdim <<"]"<< "-" << (*OPit)->NewID;
                        }
                        else if(curr_element.xdim!=-1 && curr_element.ydim!=-1){
                            sstr << curr_element.arrayName <<"[" << curr_element.xdim << "][" << curr_element.ydim <<"]"<< "-" << (*OPit)->NewID;
                        }
                        else{
                            errs() << "Unexpected occasion!\n";
                        }
                    }
                    else{
                        sstr << (*OPit)->Opcode << "-" << (*OPit)->NewID;
                    }
                    (*OPit)->NodeName=sstr.str();
                }
                //std::map<int, long>::iterator int_long_map_it;

            }
            else{
                errs() << "Unexpected function name: " << FunName <<"\n";
            }

            // ------------------------------------------------------------------------------------
            // All the input is packed into a vector. And the vector will then be moved to FPGA.
            // Here is initialization file of the vector io.h.
            //
            // Dump io initialization to io.txt 
            // op-id, op-attached-bram-addr, op-value, op-value, op-bram-id, useless
            //
            // When the op is input, op-bram-id=0, when it is output, op-bram-id=1
            //
            // ------------------------------------------------------------------------------------
            Out.open("io.txt");
            std::ofstream input_init("in.h");
            input_init << "input_init[]={";

            int input_bram_addr=0;
            int output_bram_addr=0;
            std::map<int, long>::iterator int_long_map_it;
            for(int_long_map_it=io_pointer.begin(); int_long_map_it!=io_pointer.end(); int_long_map_it++){
                Out << int_long_map_it->first << " ";
                long pointer_value=int_long_map_it->second;
                if(OPNodeMap[pointer_value]->IsInput){
                    Out << input_bram_addr << " ";
                    input_bram_addr++;
                    int init_data=rand()%10;
                    input_init << init_data << " ";
                    Out << init_data << " ";
                    Out << 0 << " ";
                    Out << 0 << " ";
                    Out << "\n";
                }
                else if(OPNodeMap[pointer_value]->IsOutput){
                    Out << output_bram_addr << " ";
                    output_bram_addr++;
                    Out << rand()%10 << " ";
                    Out << 1 << " ";
                    Out << 0 << " ";
                    Out << "\n";
                }
            }
            input_init << "}\n";

            Out.close();
            input_init.close();

            //Dump dot file of the data flow graph
            std::list<OPNode*>::iterator OPPtr;
            Out.open("dfg.dot");
            Out<<"/* Data Flow Graph */"<<"\n";
            Out<<"digraph dfg{"<<"\n";
            Out<<"size=\"6.6\";"<<"\n";
            Out<<"node[color=lightblue1, style=filled];"<<"\n";
            for(OPPtr=DFG.begin(); OPPtr!=DFG.end(); OPPtr++){
                std::list<OPNode*>::iterator PredIt;
                for(PredIt=(*OPPtr)->NodePred.begin(); PredIt!=(*OPPtr)->NodePred.end(); PredIt++){
                    //if((*PredIt)->ShowInDFG){
                        //Out<<"\""<<(*PredIt)->NodeName<<"\""<<"->"<<"\""<<(*OPPtr)->NodeName<<"\""<<"\n";
                    Out<<"\""<<(*PredIt)->NodeName<<"\""<<"->"<<"\""<<(*OPPtr)->NodeName<<"\""<<"\n";
                    //}
                }
            }
            Out<<"}"<<"\n";
            Out.close();

            // ------------------------------------------------------------------------------------
            // Dump simple instruction fomrat file for the SCGRA scheduler
            //
            // Instruction format: 
            // Op-id, opcode, src-op0, src-op1, src-op2
            //
            // Opcode:
            // 0 mul-sub
            // 1 mul-add
            // 2 add-add
            // 3 add-sub
            // 4 sub-add
            // 5 sub-sub
            // 6 Phi
            //
            // ------------------------------------------------------------------------------------
            Out.open("dfg.s"); 
            for(OPPtr=DFG.begin(); OPPtr!=DFG.end(); OPPtr++){
                if((*OPPtr)->NodePred.size()>0){
                    std::list<OPNode*>::iterator PredIt;

                    Out << (*OPPtr)->NewID << " ";
                    if((*OPPtr)->Opcode=="mul"){
                        Out << 1 << " ";
                        for(PredIt=(*OPPtr)->NodePred.begin(); PredIt!=(*OPPtr)->NodePred.end(); PredIt++){
                            Out << (*PredIt)->NewID <<" ";
                        }
                        Out << 0 << " ";
                    }
                    else if((*OPPtr)->Opcode=="add"){
                        Out << 1 << " ";
                        Out << 1 << " ";
                        for(PredIt=(*OPPtr)->NodePred.begin(); PredIt!=(*OPPtr)->NodePred.end(); PredIt++){
                            Out << (*PredIt)->NewID <<" ";
                        }
                    }
                    else if((*OPPtr)->Opcode=="phi"){
                        Out << 6 << " ";
                        for(PredIt=(*OPPtr)->NodePred.begin(); PredIt!=(*OPPtr)->NodePred.end(); PredIt++){
                            Out << (*PredIt)->NewID <<" ";
                        }
                    }
                    else{
                        errs() << "Unexpected node of DFG!\n";
                    }
                    Out << "\n";
                }
            }
            Out.close();


            DumpHandle.close();
            return false;
        }
    };
}
char DFGDump::ID = 0;
static RegisterPass<DFGDump> X("DFGDump", "Dump the DFG of main!");

