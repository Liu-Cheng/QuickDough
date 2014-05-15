#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"
#include <list>
#include <cstdlib>

void IO_Init(int Fig_In[R*C/4], int Gx[3][3], int Gy[3][3], int Fig_Out[R*C/4]);
void OP_Array_Init(std::vector<Operand*> &OP_Array, int Fig_In[R*C/4], int Gx[3][3], int Gy[3][3], int Fig_Out[R*C/4]);
void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void Verify(const std::vector<Operand*> &OP_Array, int Fig_Out[R*C/4]);
void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);
int Data_To_ID(std::string Name, int IDx, int IDy);
void Initial_IO_Placement(const std::string &DFG_Name);
void Head_File_Dump(int Gx[3][3], int Gy[3][3]);
void IO_coe_Dump(int Block_Fig_In[B*C/4], int Gx[3][3], int Gy[3][3], int Block_Fig_Out[B*C/4]);
void Single_Dec_Dump(std::ofstream &fHandle, unsigned int Dec_Data, int Width);

int Const_In[5]={0, 8, 16, 24, 255}; //The constant array is put here to make id search easier.
const int Const_Num=5;

int main(){

    int Fig_In[R*C/4];
    int Fig_Out[R*C/4];

    int Gx[3][3]={
        { -1, 0, 1 },
        { -2, 0, 2 },
        { -1, 0, 1 }
    };

    int Gy[3][3]={
        {  1,  2,  1 },
        {  0,  0,  0 },
        { -1, -2, -1 }
    };

    std::vector<Operand*> OP_Array;
    std::vector<Instruction*> Inst_Array;
    std::string DFG_Name="sobel";

    IO_Init(Fig_In, Gx, Gy, Fig_Out);
    OP_Array_Init(OP_Array, Fig_In, Gx, Gy, Fig_Out);
    Kernel_To_DFG(OP_Array, Inst_Array);
    DFG_Compute(OP_Array, Inst_Array);
    Verify(OP_Array, Fig_Out);
    DFG_Dump(DFG_Name, OP_Array, Inst_Array);
    Initial_IO_Placement(DFG_Name);
    Head_File_Dump(Gx, Gy);
}

void IO_Init(int Fig_In[R*C/4], int Gx[3][3], int Gy[3][3], int Fig_Out[R*C/4]){

    unsigned char Pixl_In[R][C];
    unsigned char Pixl_Out[R][C];

    for(int i=0; i<R; i++){
        for(int j=0; j<C; j++){
            Pixl_In[i][j] = rand()%256;
        }
    }

    for(int i=0; i<R; i++){
        for(int j=0; j<C; j++){
            if(i==0 || j==0 || i==R-1 || j==C-1){
                Pixl_Out[i][j] = 255;
            }
            else{
                int Sumx = 0;
                int Sumy = 0;
                for(int p=-1; p<=1; p++){
                    for(int q=-1; q<=1; q++){
                        Sumx += Pixl_In[i+p][j+q]*Gx[p+1][q+1];
                        Sumy += Pixl_In[i+p][j+q]*Gy[p+1][q+1];
                    }
                }
                int Sum = abs(Sumx) + abs(Sumy);
                if(Sum>255){
                    Pixl_Out[i][j] = 0;
                }
                else{
                    Pixl_Out[i][j] = 255-Sum;
                }
            }
        }
    }

    int ID=0;
    for(int i=0; i<R; i++){
        for(int j=0; j<C; j=j+4){
            int Pixl0, Pixl1, Pixl2, Pixl3;
            Pixl0=(unsigned int)Pixl_In[i][j];
            Pixl1=(unsigned int)Pixl_In[i][j+1]<<8;
            Pixl2=(unsigned int)Pixl_In[i][j+2]<<16;
            Pixl3=(unsigned int)Pixl_In[i][j+3]<<24;
            Fig_In[ID]=Pixl0+Pixl1+Pixl2+Pixl3;
            ID++;
        }
    }

    ID=0;
    for(int i=0; i<R; i++){
        for(int j=0; j<C; j=j+4){
            int Pixl0, Pixl1, Pixl2, Pixl3;
            Pixl0=(unsigned int)Pixl_Out[i][j];
            Pixl1=(unsigned int)Pixl_Out[i][j+1]<<8;
            Pixl2=(unsigned int)Pixl_Out[i][j+2]<<16;
            Pixl3=(unsigned int)Pixl_Out[i][j+3]<<24;
            Fig_Out[ID]=Pixl0+Pixl1+Pixl2+Pixl3;
            ID++;
        }
    }

}

void OP_Array_Init(std::vector<Operand*> &OP_Array, int Fig_In[R*C/4], int Gx[3][3], int Gy[3][3], int Fig_Out[R*C/4]){

    int Bram0_Addr=0; 
    int Bram1_Addr=0; 

    /* map output data to OP_Array */
    for(int i=0; i<Const_Num; i++){
        Operand* OP_Ptr=new Operand();
        OP_Array.push_back(OP_Ptr);
        OP_Ptr->Set_Operand(Const_In[i], 0, Bram0_Addr, INCONST);
        Bram0_Addr++;
    }

    for(int i=0; i<R*C/4; i++){
        Operand* OP_Ptr=new Operand();
        OP_Array.push_back(OP_Ptr);
        OP_Ptr->Set_Operand(Fig_In[i], 0, Bram0_Addr, INVAR);
        Bram0_Addr++;
    }

    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            Operand* OP_Ptr=new Operand();
            OP_Array.push_back(OP_Ptr);
            OP_Ptr->Set_Operand(Gx[i][j], 0, Bram0_Addr, INVAR);
            Bram0_Addr++;
        }
    }

    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            Operand* OP_Ptr=new Operand();
            OP_Array.push_back(OP_Ptr);
            OP_Ptr->Set_Operand(Gy[i][j], 0, Bram0_Addr, INVAR);
            Bram0_Addr++;
        }
    }

    /* map output data to OP_Array */
    for(int i=0; i<R*C/4; i++){
        Operand* OP_Ptr=new Operand();
        OP_Array.push_back(OP_Ptr);
        OP_Ptr->Set_Operand(0, 1, Bram1_Addr, OUTVAR);
        Bram1_Addr++;
    }

}

int Data_To_ID(std::string Name, int IDx, int IDy){

    if(Name=="Const_In"){
        return (IDx);
    }
    else if(Name=="Fig_In"){
        return (IDx+Const_Num);
    }
    else if(Name=="Gx"){
        return (IDx*3 + IDy + Const_Num + R*C/4);
    }
    else if(Name=="Gy"){
        return (IDx*3 + IDy + Const_Num + R*C/4 + 3*3);
    }
    else if(Name=="Fig_Out"){
        return (IDx + Const_Num + R*C/4 + 3*3 + 3*3);
    }
    else{
        printf("Unknown IO operands! \n");
        exit(EXIT_FAILURE);
    }

}

void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    for(int i=0; i<R; i++){
        for(int j=0; j<C; j=j+4){

            /* Operands for the pixl computation */
            Operand* opx[4];
            Operand* opy[4];
            Operand* op[4];
            for(int k=0; k<4; k++){
                opx[k]=new Operand();
                opy[k]=new Operand();
                op[k]=new Operand();
                OP_Array.push_back(opx[k]);
                OP_Array.push_back(opy[k]);
                OP_Array.push_back(op[k]);
            }

            for(int p=-1; p<=1; p++){
                for(int q=-1; q<=1; q++){
                    int byte_id, word_id, byte_lid;
                    int src_id0[4];
                    int src_id1[4];
                    int src_id2[4];
                    int last_idx[4];
                    int last_idy[4];

                    //int rval;
                    Operand* pixl[4];

                    /* Note that pixl0, pixl1, pixl2 and pixl3 in different loop iterations may actually
                     * be the same, but we just ignore this and create new operand for all of them. Hopefully
                     * this will be fixed in future.*/

                    for(int k=0; k<4; k++){

                        /* Pixl[k] calculation */
                        byte_id=(i+p)*C+j+q+k;
                        word_id=byte_id/4;
                        byte_lid=byte_id%4;
                        pixl[k]=new Operand();
                        OP_Array.push_back(pixl[k]);
                        Instruction* inst0=new Instruction();
                        Inst_Array.push_back(inst0);
                        if((i+p)<0 || (j+q+k)<0 || (i+p)>=R || (j+q+k)>=C){
                            src_id0[k] = 0;
                            src_id1[k] = 0;
                            src_id2[k] = 0;
                            inst0->Set_Instruction(pixl[k]->op_id, ADDADD, src_id0[k], src_id1[k], src_id2[k]);
                        }
                        else{
                            src_id0[k]=Data_To_ID("Fig_In", word_id, 0);
                            src_id1[k]=Data_To_ID("Const_In", byte_lid, 0); //This operand is a constant (0, 8, 16, 24)
                            src_id2[k]=Data_To_ID("Const_In", 4, 0); //constant 255
                            inst0->Set_Instruction(pixl[k]->op_id, RSFAND, src_id0[k], src_id1[k], src_id2[k]);
                        }

                        if(p==-1 && q==-1){
                            Operand* curr_op=new Operand();
                            OP_Array.push_back(curr_op);
                            Instruction* curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);

                            src_id0[k]=pixl[k]->op_id;
                            src_id1[k]=Data_To_ID("Gx", p+1, q+1);
                            src_id2[k]=0;
                            curr_inst->Set_Instruction(curr_op->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idx[k]=curr_op->op_id;

                            curr_op=new Operand();
                            OP_Array.push_back(curr_op);
                            curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);

                            src_id1[k]=Data_To_ID("Gy", p+1, q+1);
                            curr_inst->Set_Instruction(curr_op->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idy[k]=curr_op->op_id;
                        }
                        else if(p==1 && q==1){
                            Instruction* curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);
                            src_id0[k]=pixl[k]->op_id;
                            src_id1[k]=Data_To_ID("Gx", p+1, q+1);
                            src_id2[k]=last_idx[k];
                            curr_inst->Set_Instruction(opx[k]->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);

                            curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);
                            src_id1[k]=Data_To_ID("Gy", p+1, q+1);
                            src_id2[k]=last_idy[k];
                            curr_inst->Set_Instruction(opy[k]->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);

                        }
                        else{
                            Operand* curr_op=new Operand();
                            OP_Array.push_back(curr_op);
                            Instruction* curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);

                            src_id0[k]=pixl[k]->op_id;
                            src_id1[k]=Data_To_ID("Gx", p+1, q+1);
                            src_id2[k]=last_idx[k];
                            curr_inst->Set_Instruction(curr_op->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idx[k]=curr_op->op_id;

                            curr_op=new Operand();
                            OP_Array.push_back(curr_op);
                            curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);

                            src_id0[k]=pixl[k]->op_id;
                            src_id1[k]=Data_To_ID("Gy", p+1, q+1);
                            src_id2[k]=last_idy[k];
                            curr_inst->Set_Instruction(curr_op->op_id, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idy[k]=curr_op->op_id;

                        }
                    }
                }
            }

            for(int k=0; k<4; k++){
                Operand* abs_sumx=new Operand();
                OP_Array.push_back(abs_sumx);
                Instruction* inst_sumx=new Instruction();
                inst_sumx->Set_Instruction(abs_sumx->op_id, ABS, opx[k]->op_id, 0, 0);
                Inst_Array.push_back(inst_sumx);

                Operand* abs_sumy=new Operand();
                OP_Array.push_back(abs_sumy);
                Instruction* inst_sumy=new Instruction();
                inst_sumy->Set_Instruction(abs_sumy->op_id, ABS, opy[k]->op_id, 0, 0);
                Inst_Array.push_back(inst_sumy);

                Operand* abs_sum=new Operand();
                OP_Array.push_back(abs_sum);
                Instruction* inst_sum=new Instruction();
                inst_sum->Set_Instruction(abs_sum->op_id, ADDADD, abs_sumx->op_id, abs_sumy->op_id, 0);
                Inst_Array.push_back(inst_sum);

                Operand* op_flag=new Operand();
                OP_Array.push_back(op_flag);
                Instruction* inst_flag=new Instruction();
                inst_flag->Set_Instruction(op_flag->op_id, GT, abs_sum->op_id, Data_To_ID("Const_In", 4, 0), 0);
                Inst_Array.push_back(inst_flag);

                Operand* op_sub=new Operand();
                OP_Array.push_back(op_sub);
                Instruction* inst_sub=new Instruction();
                inst_sub->Set_Instruction(op_sub->op_id, SUBSUB, Data_To_ID("Const_In", 4, 0), abs_sum->op_id, 0);
                Inst_Array.push_back(inst_sub);

                Instruction* inst_phi=new Instruction();
                inst_phi->Set_Instruction(op[k]->op_id, PHI, op_flag->op_id, 0, op_sub->op_id);
                Inst_Array.push_back(inst_phi);

            }

            Operand* op_tmp1=new Operand();
            OP_Array.push_back(op_tmp1);
            Instruction* inst_tmp1=new Instruction();
            inst_tmp1->Set_Instruction(op_tmp1->op_id, LSFADD, op[1]->op_id, Data_To_ID("Const_In", 1, 0), op[0]->op_id);
            Inst_Array.push_back(inst_tmp1);

            Operand* op_tmp2=new Operand();
            OP_Array.push_back(op_tmp2);
            Instruction* inst_tmp2=new Instruction();
            inst_tmp2->Set_Instruction(op_tmp2->op_id, LSFADD, op[2]->op_id, Data_To_ID("Const_In", 2, 0), op_tmp1->op_id);
            Inst_Array.push_back(inst_tmp2);

            int nid=(i*C+j)/4;
            Instruction* inst_out=new Instruction();
            inst_out->Set_Instruction(Data_To_ID("Fig_Out", nid, 0), LSFADD, op[3]->op_id, Data_To_ID("Const_In", 3, 0), op_tmp2->op_id);
            Inst_Array.push_back(inst_out);
        }
    }
}

void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    std::vector<Instruction*>::iterator inst_it;
    for(inst_it=Inst_Array.begin(); inst_it!=Inst_Array.end(); inst_it++){
        int src_val0=OP_Array[(*inst_it)->src_op0]->op_value;
        int src_val1=OP_Array[(*inst_it)->src_op1]->op_value;
        int src_val2=OP_Array[(*inst_it)->src_op2]->op_value;
        int dst_val=(*inst_it)->Compute(src_val0, src_val1, src_val2);
        OP_Array[(*inst_it)->dst_op]->op_value=dst_val;
    }
}


void Verify(const std::vector<Operand*> &OP_Array, int Fig_Out[R*C/4]){

    /* Since the kernel just deals with the kernel part of the computation,
     * we will not Verify the part that is not assigned to FPGA.*/
    int DFG_Result[R*C/4];
    for(int i=0; i<R; i++){
        for(int j=0; j<C; j=j+4){
            int index=(i*C+j)/4;
            int op_id=Data_To_ID("Fig_Out", index, 0);
            DFG_Result[index] = OP_Array[op_id]->op_value;
        }
    }

    //Integer to char
    unsigned char* Ptr1;
    unsigned char* Ptr2;
    Ptr1 = (unsigned char*) Fig_Out;
    Ptr2 = (unsigned char*) DFG_Result;

    for(int i=1; i<R-1; i++){
        for(int j=1; j<C-1; j++){
            if(Ptr1[i*C+j]!=Ptr2[i*C+j]){
                printf("Verification failed! Expected Result[%d][%d]=%d, Computed Result=%d. \n", i, j, Ptr1[i*C+j], Ptr2[i*C+j]);
                exit(EXIT_FAILURE);
            }
        }
    }

    printf("Verification passed!\n");

}


void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array){
    std::ostringstream oss;
    oss << "./dump/" << DFG_Name << "_operand.txt";
    std::ofstream operand_fhandle;
    operand_fhandle.open(oss.str().c_str());
    if(!operand_fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << "./dump/" << DFG_Name << ".s";
    std::ofstream inst_fhandle;
    inst_fhandle.open(oss.str().c_str());
    if(!inst_fhandle.is_open()){
        std::cout << "Failed to open" <<oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << "./dump/" << DFG_Name << "_opcode.txt";
    std::ofstream opcode_fhandle;
    opcode_fhandle.open(oss.str().c_str());
    if(!opcode_fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    /* Dump operand details to .txt file */
    std::vector<Operand*>::const_iterator op_it;
    for(op_it=OP_Array.begin(); op_it!=OP_Array.end(); op_it++){
        operand_fhandle << (*op_it)->op_id << " " \
            << (*op_it)->op_bram_addr << " " \
            << (*op_it)->op_value << " " \
            << (*op_it)->op_bram_id << " " \
            << (*op_it)->op_type << "\n";
    }
    operand_fhandle.close();

    /* Dump DFG node details to .s file */
    std::map<OPCODE, int> opcode_encoder;
    int opcode_id=0;
    std::vector<Instruction*>::const_iterator inst_it;
    for(inst_it=Inst_Array.begin(); inst_it!=Inst_Array.end(); inst_it++){
        inst_fhandle << (*inst_it)->dst_op << " " \
            << (*inst_it)->inst_opcode << " " \
            << (*inst_it)->src_op0 << " " \
            << (*inst_it)->src_op1 << " " \
            << (*inst_it)->src_op2 << "\n";
        if(opcode_encoder.count((*inst_it)->inst_opcode)<=0){
            opcode_encoder[(*inst_it)->inst_opcode]=opcode_id;
            opcode_id++;
        }
    }
    inst_fhandle.close();

    /* Dump the opcode summary to _opcode.txt file */
    std::map<OPCODE, int>::iterator map_it;
    for(map_it=opcode_encoder.begin(); map_it!=opcode_encoder.end(); map_it++){
        opcode_fhandle << map_it->first << " " << map_it->second << std::endl;
    }
    opcode_fhandle.close();
}

void IO_coe_Dump(int Block_Fig_In[B*C/4], int Gx[3][3], int Gy[3][3], int Block_Fig_Out[B*C/4]){

    int Width = 32;
    std::string fName = "./dump/outside-data-memory-0.coe";
    std::ofstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        std::cout << fName << "open error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    fHandle << "memory_initialization_radix=2;" << std::endl;
    fHandle << "memory_initialization_vector=" << std::endl;
    for(int i=0; i<Const_Num; i++){
        Single_Dec_Dump(fHandle, (unsigned int)Const_In[i], Width);
    }

    for(int i=0; i<B*C/4; i++){
        Single_Dec_Dump(fHandle, (unsigned int)Block_Fig_In[i], Width);
    }

    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            Single_Dec_Dump(fHandle, (unsigned int)Gx[i][j], Width);
        }
    }

    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            Single_Dec_Dump(fHandle, (unsigned int)Gy[i][j], Width);
        }
    }
    fHandle.close();


    fName = "./dump/outside-data-memory-1.coe";
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        std::cout << fName << "open error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    fHandle << "memory_initialization_radix=2;" << std::endl;
    fHandle << "memory_initialization_vector=" << std::endl;
    for(int i=0; i<B*C/4; i++){
        Single_Dec_Dump(fHandle, (unsigned int)Block_Fig_Out[i], Width);
    }
    fHandle.close();

}

void Head_File_Dump(int Gx[3][3], int Gy[3][3]){

    unsigned char Block_Pixl_In[B][C];
    unsigned char Block_Pixl_Out[B][C];
    int Block_Fig_In[B*C/4];
    int Block_Fig_Out[B*C/4];

    for(int i=0; i<B; i++){
        for(int j=0; j<C; j++){
            Block_Pixl_In[i][j] = rand()%256;
        }
    }

    for(int i=0; i<B; i++){
        for(int j=0; j<C; j++){
            if(i==0 || j==0 || i==B-1 || j==C-1){
                Block_Pixl_Out[i][j] = 255;
            }
            else{
                int Sumx = 0;
                int Sumy = 0;
                for(int p=-1; p<=1; p++){
                    for(int q=-1; q<=1; q++){
                        Sumx += Block_Pixl_In[i+p][j+q]*Gx[p+1][q+1];
                        Sumy += Block_Pixl_In[i+p][j+q]*Gy[p+1][q+1];
                    }
                }
                int Sum = abs(Sumx) + abs(Sumy);
                if(Sum>255){
                    Block_Pixl_Out[i][j] = 0;
                }
                else{
                    Block_Pixl_Out[i][j] = 255-Sum;
                }
            }
        }
    }

    int ID=0;
    for(int i=0; i<B; i++){
        for(int j=0; j<C; j=j+4){
            int Pixl0, Pixl1, Pixl2, Pixl3;
            Pixl0=(unsigned int)Block_Pixl_In[i][j];
            Pixl1=(unsigned int)Block_Pixl_In[i][j+1]<<8;
            Pixl2=(unsigned int)Block_Pixl_In[i][j+2]<<16;
            Pixl3=(unsigned int)Block_Pixl_In[i][j+3]<<24;
            Block_Fig_In[ID]=Pixl0+Pixl1+Pixl2+Pixl3;
            ID++;
        }
    }

    ID=0;
    for(int i=0; i<B; i++){
        for(int j=0; j<C; j=j+4){
            int Pixl0, Pixl1, Pixl2, Pixl3;
            Pixl0=(unsigned int)Block_Pixl_Out[i][j];
            Pixl1=(unsigned int)Block_Pixl_Out[i][j+1]<<8;
            Pixl2=(unsigned int)Block_Pixl_Out[i][j+2]<<16;
            Pixl3=(unsigned int)Block_Pixl_Out[i][j+3]<<24;
            Block_Fig_Out[ID]=Pixl0+Pixl1+Pixl2+Pixl3;
            ID++;
        }
    }

    IO_coe_Dump(Block_Fig_In, Gx, Gy, Block_Fig_Out);

    std::string fName = "./dump/io.h";
    std::ofstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        std::cout << fName << "open error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    fHandle << "//Input and output data of the benchmark" << std::endl << std::endl;
    fHandle << "int Const_In[" << Const_Num << "] = " << "{";
    for(int i=0; i<Const_Num; i++){
        if(i==Const_Num-1){
            fHandle << Const_In[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Const_In[i] << ", ";
        }
    }

    fHandle << "int Block_Fig_In[" << B*C/4 <<"] = {";
    for(int i=0; i<B*C/4; i++){
        if(i==B*C/4-1){
            fHandle << Block_Fig_In[i] << "}; " << std::endl << std::endl;
        }
        else{
            fHandle << Block_Fig_In[i] << ", ";
        }
    }

    fHandle << "int Gx[" << 3 << "][" << 3 <<"] = {" << std::endl;
    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            if(j==0){
                fHandle << "{" << Gx[i][j] << ", ";
            }
            else if(i==2 && j==2){
                fHandle << Gx[i][j] << "}" << std::endl;
                fHandle << "};" << std::endl << std::endl;
            }
            else if(j==2){
                fHandle << Gx[i][j] << "}, " << std::endl;
            }
            else{
                fHandle << Gx[i][j] << ", ";
            }
        }
    }

    fHandle << "int Gy[" << 3 << "][" << 3 <<"] = {" << std::endl;
    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            if(j==0){
                fHandle << "{" << Gy[i][j] << ", ";
            }
            else if(i==2 && j==2){
                fHandle << Gy[i][j] << "}" << std::endl;
                fHandle << "};" << std::endl << std::endl;
            }
            else if(j==2){
                fHandle << Gy[i][j] << "}, " << std::endl;
            }
            else{
                fHandle << Gy[i][j] << ", ";
            }
        }
    }

    fHandle << "int Block_Fig_Out[" << B*C/4 << "] = " << "{";
    for(int i=0; i<B*C/4; i++){
        if(i==B*C/4-1){
            fHandle << Block_Fig_Out[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Block_Fig_Out[i] << ", ";
        }
    }
    
}

void Initial_IO_Placement(const std::string &DFG_Name){

    std::ostringstream oss;
    oss << "./dump/" << DFG_Name << "_kernel_io.txt";
    std::ofstream fHandle;
    fHandle.open(oss.str().c_str());
    if(!fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    /* ----------------------------------------------------------------
     * Addr allocation initialization:
     * Constant: Const_In[1]
     * Input: Block_Fig_In[B*C/4], Gx[3][3], Gy[3][3]
     * output: Block_Fig_Out[B*C/4]
     * The newly remapped addr is stored in the array as if it is data.
     * --------------------------------------------------------------*/
    int Remapped_Bram0_Addr = 0;
    int Remapped_Bram1_Addr = 0;
    int Const_In_Addr[5];
    int Block_Fig_In_Addr[B*C/4];
    int Gx_Addr[3][3];
    int Gy_Addr[3][3];
    int Block_Fig_Out_Addr[B*C/4];
 
    //Input location
    for(int i=0; i<Const_Num; i++){
        Const_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++ ;
    }

    for(int i=0; i<B*C/4; i++){
        Block_Fig_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++ ;
    }

    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            Gx_Addr[i][j] = Remapped_Bram0_Addr;
            Remapped_Bram0_Addr++;
        }
    }

    for(int i=0; i<3; i++){
        for(int j=0; j<3; j++){
            Gy_Addr[i][j] = Remapped_Bram0_Addr;
            Remapped_Bram0_Addr++;
        }
    }

    // Output location
    for(int i=0; i<B*C/4; i++){
        Block_Fig_Out_Addr[i] = Remapped_Bram1_Addr;
        Remapped_Bram1_Addr++;
    }

    const int Work_Item_IO_Num = Const_Num + R*C/4 + 3*3 + 3*3 + R*C/4; //total number of work-item's operand
    const int Kernel_It_Num = (B-2)/(R-2); //total number of the kernel iteration
    int Kernel_IO_Addr[Work_Item_IO_Num][Kernel_It_Num+1]; //The first column represents kernel op_id

    // Here we assume that work_item_op_id can be used as index directly.
    // If not, we need map this op_id to sequential array index.
    int It=1;
    int Row_Index;
    for(int p=0; p<Kernel_It_Num; p++){

        Row_Index = 0;

        //Constant work-item input
        for(int i=0; i<Const_Num; i++){
            Kernel_IO_Addr[Row_Index][It] = Const_In_Addr[i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Const_In", i, 0);
            }
            Row_Index++;
        }

        //Normal work-item input i.e. Fig_In[R*C/4]
        for(int i=0; i<R*C/4; i++){
            Kernel_IO_Addr[Row_Index][It] = Block_Fig_In_Addr[p*(R-2)*C/4+i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Fig_In", i, 0);
            }
            Row_Index++;
        }

        for(int i=0; i<3; i++){
            for(int j=0; j<3; j++){
                Kernel_IO_Addr[Row_Index][It] = Gx_Addr[i][j];
                if(p==0){
                    Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Gx", i, j);
                }
                Row_Index++;
            }
        }

        for(int i=0; i<3; i++){
            for(int j=0; j<3; j++){
                Kernel_IO_Addr[Row_Index][It] = Gy_Addr[i][j];
                if(p==0){
                    Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Gy", i, j);
                }
                Row_Index++;
            }
        }

        /*-------------------------------------------------------------
         * Output data is totally different from input data.
         * It is a bit tricky here because the first row and the last row
         * of data are invalid. They are here for the convenience of DFG
         * generation. The last row of output of the first work-item is
         * supposed be replaced by the second row of output of the 
         * following work-item. Meanwhile, we don't want to the second
         * work-item to cover the second last row of data. To solve this
         * trouble, we will assign output addr of the first row and last 
         * row to be output-buffer[0].
         * ----------------------------------------------------------*/
        for(int i=0; i<R*C/4; i++){
            if(i<C/4 || i>=(R-1)*C/4){
                Kernel_IO_Addr[Row_Index][It] = 0;
            }
            else{
                Kernel_IO_Addr[Row_Index][It] = Block_Fig_Out_Addr[p*(R-2)*C/4+i];
            }
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Fig_Out", i, 0);
            }
            Row_Index++;
        }

        //Intermediate output
        It++;
    }

    //Dump the io addr of the whole kernel
    for(int i=0; i<Work_Item_IO_Num; i++){
        for(int j=0; j<Kernel_It_Num+1; j++){
            fHandle << Kernel_IO_Addr[i][j] << " ";
        }
        fHandle << std::endl;
    }
    fHandle.close();

}


void Single_Dec_Dump(std::ofstream &fHandle, unsigned int Dec_Data, int Width){

    std::list<int> Bit_List;
    std::list<int>::reverse_iterator rit;
    while(Dec_Data!=1 && Dec_Data!=0){
        Bit_List.push_back(Dec_Data%2);
        Dec_Data = Dec_Data/2;
        Width--;
    }
    Bit_List.push_back(Dec_Data);
    Width--;

    while(Width!=0){
        Bit_List.push_back(0);
        Width--;
    }

    for(rit=Bit_List.rbegin(); rit!=Bit_List.rend(); rit++){
        fHandle << (*rit);
    }
    Bit_List.clear();
    fHandle << std::endl;

}



