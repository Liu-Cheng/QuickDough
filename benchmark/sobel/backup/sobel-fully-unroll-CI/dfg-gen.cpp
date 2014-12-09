#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"
#include <list>

void IO_Init(int Fig_In[R*C/4], int Gx[3][3], int Gy[3][3], int Fig_Out[R*C/4]);
void OP_Array_Init(std::vector<Operand*> &OP_Array, int Fig_In[R*C/4], int Gx[3][3], int Gy[3][3], int Fig_Out[R*C/4]);
void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void Verify(const std::vector<Operand*> &OP_Array, int Fig_Out[R*C/4]);
void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);
int Data_To_ID(std::string Name, int IDx, int IDy);
void Initial_IO_Placement(const std::string &DFG_Name);
void Head_File_Dump(int Fig_In[R*C/4], int Gx[3][3], int Gy[3][3], int Fig_Out[R*C/4]);

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
    Head_File_Dump(Fig_In, Gx, Gy, Fig_Out);
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
                            inst0->Set_Instruction(pixl[k]->OP_ID, ADDADD, src_id0[k], src_id1[k], src_id2[k]);
                        }
                        else{
                            src_id0[k]=Data_To_ID("Fig_In", word_id, 0);
                            src_id1[k]=Data_To_ID("Const_In", byte_lid, 0); //This operand is a constant (0, 8, 16, 24)
                            src_id2[k]=Data_To_ID("Const_In", 4, 0); //constant 255
                            inst0->Set_Instruction(pixl[k]->OP_ID, RSFAND, src_id0[k], src_id1[k], src_id2[k]);
                        }

                        if(p==-1 && q==-1){
                            Operand* curr_op=new Operand();
                            OP_Array.push_back(curr_op);
                            Instruction* curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);

                            src_id0[k]=pixl[k]->OP_ID;
                            src_id1[k]=Data_To_ID("Gx", p+1, q+1);
                            src_id2[k]=0;
                            curr_inst->Set_Instruction(curr_op->OP_ID, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idx[k]=curr_op->OP_ID;

                            curr_op=new Operand();
                            OP_Array.push_back(curr_op);
                            curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);

                            src_id1[k]=Data_To_ID("Gy", p+1, q+1);
                            curr_inst->Set_Instruction(curr_op->OP_ID, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idy[k]=curr_op->OP_ID;
                        }
                        else if(p==1 && q==1){
                            Instruction* curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);
                            src_id0[k]=pixl[k]->OP_ID;
                            src_id1[k]=Data_To_ID("Gx", p+1, q+1);
                            src_id2[k]=last_idx[k];
                            curr_inst->Set_Instruction(opx[k]->OP_ID, MULADD, src_id0[k], src_id1[k], src_id2[k]);

                            curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);
                            src_id1[k]=Data_To_ID("Gy", p+1, q+1);
                            src_id2[k]=last_idy[k];
                            curr_inst->Set_Instruction(opy[k]->OP_ID, MULADD, src_id0[k], src_id1[k], src_id2[k]);

                        }
                        else{
                            Operand* curr_op=new Operand();
                            OP_Array.push_back(curr_op);
                            Instruction* curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);

                            src_id0[k]=pixl[k]->OP_ID;
                            src_id1[k]=Data_To_ID("Gx", p+1, q+1);
                            src_id2[k]=last_idx[k];
                            curr_inst->Set_Instruction(curr_op->OP_ID, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idx[k]=curr_op->OP_ID;

                            curr_op=new Operand();
                            OP_Array.push_back(curr_op);
                            curr_inst=new Instruction();
                            Inst_Array.push_back(curr_inst);

                            src_id0[k]=pixl[k]->OP_ID;
                            src_id1[k]=Data_To_ID("Gy", p+1, q+1);
                            src_id2[k]=last_idy[k];
                            curr_inst->Set_Instruction(curr_op->OP_ID, MULADD, src_id0[k], src_id1[k], src_id2[k]);
                            last_idy[k]=curr_op->OP_ID;

                        }
                    }
                }
            }

            for(int k=0; k<4; k++){
                Operand* abs_sumx=new Operand();
                OP_Array.push_back(abs_sumx);
                Instruction* inst_sumx=new Instruction();
                inst_sumx->Set_Instruction(abs_sumx->OP_ID, ABS, opx[k]->OP_ID, 0, 0);
                Inst_Array.push_back(inst_sumx);

                Operand* abs_sumy=new Operand();
                OP_Array.push_back(abs_sumy);
                Instruction* inst_sumy=new Instruction();
                inst_sumy->Set_Instruction(abs_sumy->OP_ID, ABS, opy[k]->OP_ID, 0, 0);
                Inst_Array.push_back(inst_sumy);

                Operand* abs_sum=new Operand();
                OP_Array.push_back(abs_sum);
                Instruction* inst_sum=new Instruction();
                inst_sum->Set_Instruction(abs_sum->OP_ID, ADDADD, abs_sumx->OP_ID, abs_sumy->OP_ID, 0);
                Inst_Array.push_back(inst_sum);

                Operand* op_flag=new Operand();
                OP_Array.push_back(op_flag);
                Instruction* inst_flag=new Instruction();
                inst_flag->Set_Instruction(op_flag->OP_ID, GT, abs_sum->OP_ID, Data_To_ID("Const_In", 4, 0), 0);
                Inst_Array.push_back(inst_flag);

                Operand* op_sub=new Operand();
                OP_Array.push_back(op_sub);
                Instruction* inst_sub=new Instruction();
                inst_sub->Set_Instruction(op_sub->OP_ID, SUBSUB, Data_To_ID("Const_In", 4, 0), abs_sum->OP_ID, 0);
                Inst_Array.push_back(inst_sub);

                Instruction* inst_phi=new Instruction();
                inst_phi->Set_Instruction(op[k]->OP_ID, PHI, op_flag->OP_ID, 0, op_sub->OP_ID);
                Inst_Array.push_back(inst_phi);

            }

            Operand* op_tmp1=new Operand();
            OP_Array.push_back(op_tmp1);
            Instruction* inst_tmp1=new Instruction();
            inst_tmp1->Set_Instruction(op_tmp1->OP_ID, LSFADD, op[1]->OP_ID, Data_To_ID("Const_In", 1, 0), op[0]->OP_ID);
            Inst_Array.push_back(inst_tmp1);

            Operand* op_tmp2=new Operand();
            OP_Array.push_back(op_tmp2);
            Instruction* inst_tmp2=new Instruction();
            inst_tmp2->Set_Instruction(op_tmp2->OP_ID, LSFADD, op[2]->OP_ID, Data_To_ID("Const_In", 2, 0), op_tmp1->OP_ID);
            Inst_Array.push_back(inst_tmp2);

            int nid=(i*C+j)/4;
            Instruction* inst_out=new Instruction();
            inst_out->Set_Instruction(Data_To_ID("Fig_Out", nid, 0), LSFADD, op[3]->OP_ID, Data_To_ID("Const_In", 3, 0), op_tmp2->OP_ID);
            Inst_Array.push_back(inst_out);
        }
    }
}

void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    std::vector<Instruction*>::iterator Inst_It;
    for(Inst_It=Inst_Array.begin(); Inst_It!=Inst_Array.end(); Inst_It++){
        int src_val0=OP_Array[(*Inst_It)->Src_OP0]->OP_Val;
        int src_val1=OP_Array[(*Inst_It)->Src_OP1]->OP_Val;
        int src_val2=OP_Array[(*Inst_It)->Src_OP2]->OP_Val;
        int dst_val=(*Inst_It)->Compute(src_val0, src_val1, src_val2);
        OP_Array[(*Inst_It)->Dst_OP]->OP_Val=dst_val;
    }
}


void Verify(const std::vector<Operand*> &OP_Array, int Fig_Out[R*C/4]){

    /* Since the kernel just deals with the kernel part of the computation,
     * we will not Verify the part that is not assigned to FPGA.*/
    int DFG_Result[R*C/4];
    for(int i=0; i<R; i++){
        for(int j=0; j<C; j=j+4){
            int index=(i*C+j)/4;
            int OP_ID=Data_To_ID("Fig_Out", index, 0);
            DFG_Result[index] = OP_Array[OP_ID]->OP_Val;
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
    oss << "./dump/kernel-operand.txt";
    std::ofstream operand_fhandle;
    operand_fhandle.open(oss.str().c_str());
    if(!operand_fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << "./dump/dfg.s";
    std::ofstream inst_fhandle;
    inst_fhandle.open(oss.str().c_str());
    if(!inst_fhandle.is_open()){
        std::cout << "Failed to open" <<oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << "./dump/kernel-opcode.txt";
    std::ofstream Opcode_fHandle;
    Opcode_fHandle.open(oss.str().c_str());
    if(!Opcode_fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    /* Dump operand details to .txt file */
    std::vector<Operand*>::const_iterator op_it;
    for(op_it=OP_Array.begin(); op_it!=OP_Array.end(); op_it++){
        operand_fhandle << (*op_it)->OP_ID << " " \
            << (*op_it)->IO_Buffer_Addr << " " \
            << (*op_it)->OP_Val << " " \
            << (*op_it)->IO_Buffer_ID << " " \
            << (*op_it)->OP_Type << "\n";
    }
    operand_fhandle.close();

    /* Dump DFG node details to .s file */
    std::map<Opcode, int> Opcode_Encoder;
    int Opcode_ID=0;
    std::vector<Instruction*>::const_iterator Inst_It;
    for(Inst_It=Inst_Array.begin(); Inst_It!=Inst_Array.end(); Inst_It++){
        inst_fhandle << (*Inst_It)->Dst_OP << " " \
            << (*Inst_It)->Inst_Opcode << " " \
            << (*Inst_It)->Src_OP0 << " " \
            << (*Inst_It)->Src_OP1 << " " \
            << (*Inst_It)->Src_OP2 << "\n";
        if(Opcode_Encoder.count((*Inst_It)->Inst_Opcode)<=0){
            Opcode_Encoder[(*Inst_It)->Inst_Opcode]=Opcode_ID;
            Opcode_ID++;
        }
    }
    inst_fhandle.close();

    /* Dump the opcode summary to _opcode.txt file */
    std::map<Opcode, int>::iterator Map_It;
    for(Map_It=Opcode_Encoder.begin(); Map_It!=Opcode_Encoder.end(); Map_It++){
        Opcode_fHandle << Map_It->first << std::endl;
    }
    Opcode_fHandle.close();
}


void Head_File_Dump(int Fig_In[R*C/4], int Gx[3][3], int Gy[3][3], int Fig_Out[R*C/4]){

    std::string fName = "./dump/IO.h";
    std::ofstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        std::cout << fName << "open error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    fHandle << "#ifndef _IO_H_" << std::endl;
    fHandle << "#define _IO_H_" << std::endl << std::endl;

    fHandle << "int Const_In[" << Const_Num << "] = "<<"{";
    for(int i=0; i<Const_Num; i++){
        if(i==Const_Num-1){
            fHandle << Const_In[i] << "};" << std::endl;
        }
        else{
            fHandle << Const_In[i] << ", ";
        }
    }


    fHandle << "char Fig_In[" << R <<"][" << C << "];" << std::endl;
    fHandle << "int Gx[" << 3 << "][" << 3 <<"];" << std::endl;
    fHandle << "int Gy[" << 3 << "][" << 3 <<"];" << std::endl;
    fHandle << "char Fig_Out[" << R << "][" << C << "];" << std::endl;
    
    fHandle << std::endl << "#endif" << std::endl;
    
}

void Initial_IO_Placement(const std::string &DFG_Name){

    std::ostringstream oss;
    oss << "./dump/block-io.txt";
    std::ofstream fHandle;
    fHandle.open(oss.str().c_str());
    if(!fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    /* ----------------------------------------------------------------
     * Addr allocation initialization:
     * Constant: Const_In[1]
     * Input: Fig_In[R*C/4], Gx[3][3], Gy[3][3]
     * output: Fig_Out[R*C/4]
     * The newly remapped addr is stored in the array as if it is data.
     * --------------------------------------------------------------*/
    int Remapped_Bram0_Addr = 0;
    int Remapped_Bram1_Addr = 0;
    int Const_In_Addr[5];
    int Fig_In_Addr[R*C/4];
    int Gx_Addr[3][3];
    int Gy_Addr[3][3];
    int Fig_Out_Addr[R*C/4];
 
    //Input location
    for(int i=0; i<Const_Num; i++){
        Const_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++ ;
    }

    for(int i=0; i<R*C/4; i++){
        Fig_In_Addr[i] = Remapped_Bram0_Addr;
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
    for(int i=0; i<R*C/4; i++){
        Fig_Out_Addr[i] = Remapped_Bram1_Addr;
        Remapped_Bram1_Addr++;
    }

    const int Kernel_IO_Num = Const_Num + R*C/4 + 3*3 + 3*3 + R*C/4; //total number of work-item's operand
    const int Kernel_Num_Per_Block = 1; //total number of the kernel iteration
    int Kernel_IO_Addr[Kernel_IO_Num][Kernel_Num_Per_Block+1]; //The first column represents kernel OP_ID

    // Here we assume that work_item_OP_ID can be used as index directly.
    // If not, we need map this OP_ID to sequential array index.
    int It=1;
    int Row_Index;
    for(int p=0; p<Kernel_Num_Per_Block; p++){

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
            Kernel_IO_Addr[Row_Index][It] = Fig_In_Addr[i];
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

        //Output data
        for(int i=0; i<R*C/4; i++){
            Kernel_IO_Addr[Row_Index][It] = Fig_Out_Addr[i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Fig_Out", i, 0);
            }
            Row_Index++;
        }

        //Intermediate output
        It++;
    }

    //Dump the io addr of the whole kernel
    for(int i=0; i<Kernel_IO_Num; i++){
        for(int j=0; j<Kernel_Num_Per_Block+1; j++){
            fHandle << Kernel_IO_Addr[i][j] << " ";
        }
        fHandle << std::endl;
    }
    fHandle.close();

}



