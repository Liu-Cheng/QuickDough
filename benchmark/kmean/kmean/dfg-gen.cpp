#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"
#include <cstdlib>
#include <list>

void Kmean_Kernel(int Samples[M][D], int Init_Centroids[N][D], int Centroids_Sum[N][D], int Centroids_Num[N]);
void IO_Init(int Samples[M][D], int Init_Centroids[N][D], int Centroids_Sum[N][D], int Centroids_Num[N]);
void OP_Array_Init(std::vector<Operand*> &OP_Array, int Samples[M][D], int Init_Centroids[N][D], int Centroids_Sum[N][D], int Centroids_Num[N]);
void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void Verify(const std::vector<Operand*> &OP_Array, int Centroids_Sum[N][D], int Centroids_Num[N]);
void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);
int Data_To_ID(std::string Name, int IDx, int IDy);
Operand* Create_OP_Inst(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array, Opcode Inst_Opcode, int src0, int src1, int src2);
void Parallel_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array, Operand* IM_Operands[M], Opcode Inst_Opcode, Operand* Result_OP);
void Initial_IO_Placement(const std::string &DFG_Name);
void Head_File_Dump(int Init_Centroids[N][D]);
void Loop_Stat(const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);

int Const_In[1] = {0}; 
const int Const_Num=1;

int main(){

    int Samples[M][D];
    int Init_Centroids[N][D];
    int Centroids_Sum[N][D];
    int Centroids_Num[N];

    std::vector<Operand*> OP_Array;
    std::vector<Instruction*> Inst_Array;
    std::string DFG_Name="kmean";

    IO_Init(Samples, Init_Centroids, Centroids_Sum, Centroids_Num);
    OP_Array_Init(OP_Array, Samples, Init_Centroids, Centroids_Sum, Centroids_Num);
    Kernel_To_DFG(OP_Array, Inst_Array);
    DFG_Compute(OP_Array, Inst_Array);
    Verify(OP_Array, Centroids_Sum, Centroids_Num);
    DFG_Dump(DFG_Name, OP_Array, Inst_Array);
    Initial_IO_Placement(DFG_Name);
    Head_File_Dump(Init_Centroids);
    Loop_Stat(OP_Array, Inst_Array);

}


void Kmean_Kernel(int Samples[M][D], int Init_Centroids[N][D], int Centroids_Sum[N][D], int Centroids_Num[N]){

    for(int i=0; i<N; i++){
        Centroids_Num[i] = 0;
        for(int j=0; j<D; j++){
            Centroids_Sum[i][j] = 0;
        }
    }

    int Dist[N];
    for(int i=0; i<M; i++){
        for(int j=0; j<N; j++){
            Dist[j] = 0;
            for(int k=0; k<D; k++){
                Dist[j] += (Samples[i][k]-Init_Centroids[j][k])*(Samples[i][k]-Init_Centroids[j][k]);
            }
        }


        for(int j=0; j<N; j++){
            bool flag=true;
            for(int k=0; k<N; k++){
                if(j<k){
                    flag = flag && (Dist[j]<=Dist[k]);
                }
                else if(j>k){
                    flag = flag && (Dist[j]<Dist[k]);
                }
            }
            if(flag){
                Centroids_Num[j]++;
                for(int k=0; k<D; k++){
                    Centroids_Sum[j][k] += Samples[i][k];
                }
            }
        }
    }
}
void IO_Init(int Samples[M][D], int Init_Centroids[N][D], int Centroids_Sum[N][D], int Centroids_Num[N]){

    for(int i=0; i<M; i++){
        for(int j=0; j<D; j++){
            Samples[i][j] = rand()%10;
        }
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<D; j++){
            Init_Centroids[i][j] = rand()%10;
        }
    }

    Kmean_Kernel(Samples, Init_Centroids, Centroids_Sum, Centroids_Num);
}

void OP_Array_Init(std::vector<Operand*> &OP_Array, int Samples[M][D], int Init_Centroids[N][D], int Centroids_Sum[N][D], int Centroids_Num[N]){

    int Bram0_Addr=0; 
    int Bram1_Addr=0; 

    /* Put constants into the OP_Array */
    for(int i=0; i<Const_Num; i++){
        Operand* op_ptr=new Operand();
        OP_Array.push_back(op_ptr);
        op_ptr->Set_Operand(Const_In[i], 0, Bram0_Addr, INCONST);
        Bram0_Addr++;
    }

    /* Map input data to OP_Array */
    for(int i=0; i<M; i++){
        for(int j=0; j<D; j++){
            Operand* op_ptr=new Operand();
            OP_Array.push_back(op_ptr);
            op_ptr->Set_Operand(Samples[i][j], 0, Bram0_Addr, INVAR);
            Bram0_Addr++;
        }
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<D; j++){
            Operand* op_ptr=new Operand();
            OP_Array.push_back(op_ptr);
            op_ptr->Set_Operand(Init_Centroids[i][j], 0, Bram0_Addr, INVAR);
            Bram0_Addr++;
        }
    }

    /* map output data to OP_Array */
    for(int i=0; i<N; i++){
        for(int j=0; j<D; j++){
            Operand* op_ptr=new Operand();
            OP_Array.push_back(op_ptr);
            op_ptr->Set_Operand(0, 1, Bram1_Addr, OUTVAR);
            Bram1_Addr++;
        }
    }

    for(int i=0; i<N; i++){
        Operand* op_ptr=new Operand();
        OP_Array.push_back(op_ptr);
        op_ptr->Set_Operand(0, 1, Bram1_Addr, OUTVAR);
        Bram1_Addr++;
    }

}

int Data_To_ID(std::string Name, int IDx, int IDy){

    if(Name=="Const_In"){
        return (IDx);
    }
    else if(Name=="Samples"){
        return (IDx*D + IDy + Const_Num);
    }
    else if(Name=="Init_Centroids"){
        return (IDx*D + IDy + M*D + Const_Num);
    }
    else if(Name=="Centroids_Sum"){
        return (IDx*D + IDy + M*D + N*D + Const_Num);
    }
    else if(Name=="Centroids_Num"){
        return (IDx + M*D +N*D + N*D + Const_Num);
    }
    else{
        printf("Unknown IO operands! \n");
        exit(EXIT_FAILURE);
    }

}

void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    Operand* Centroids_Sum00[M];
    Operand* Centroids_Sum01[M];
    Operand* Centroids_Sum10[M];
    Operand* Centroids_Sum11[M];
    Operand* Centroids_Sum20[M];
    Operand* Centroids_Sum21[M];
    Operand* Centroids_Sum30[M];
    Operand* Centroids_Sum31[M];
    Operand* Centroids_Num0[M];
    Operand* Centroids_Num1[M];
    Operand* Centroids_Num2[M];
    Operand* Centroids_Num3[M];

    for(int i=0; i<M; i++){

        Operand* Dist[N];
        for(int j=0; j<N; j++){
            Operand* Sub_OP0;
            Operand* Sub_OP1;
            Operand* Muladd_OP;
            Sub_OP0 = Create_OP_Inst(OP_Array, Inst_Array, SUBSUB, Data_To_ID("Samples", i, 0), Data_To_ID("Init_Centroids", j, 0), 0);
            Sub_OP1 = Create_OP_Inst(OP_Array, Inst_Array, SUBSUB, Data_To_ID("Samples", i, 1), Data_To_ID("Init_Centroids", j, 1), 0);
            Muladd_OP = Create_OP_Inst(OP_Array, Inst_Array, MULADD, Sub_OP0->OP_ID, Sub_OP0->OP_ID, 0);
            Dist[j] = Create_OP_Inst(OP_Array, Inst_Array, MULADD, Sub_OP1->OP_ID, Sub_OP1->OP_ID, Muladd_OP->OP_ID);
        }

        Operand* Comp_OP0;
        Operand* Comp_OP1;
        Operand* Comp_OP2;
        Operand* Cond_OP0;
        Operand* Cond_OP1;
        Operand* Cond_OP2;
        Operand* Cond_OP3;

        Comp_OP0 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[0]->OP_ID, Dist[1]->OP_ID, 0);
        Comp_OP1 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[0]->OP_ID, Dist[2]->OP_ID, 0);
        Comp_OP2 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[0]->OP_ID, Dist[3]->OP_ID, 0);
        Cond_OP0 = Create_OP_Inst(OP_Array, Inst_Array, ANDAND, Comp_OP0->OP_ID, Comp_OP1->OP_ID, Comp_OP2->OP_ID);

        Comp_OP0 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[0]->OP_ID, Dist[1]->OP_ID, 0);
        Comp_OP1 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[1]->OP_ID, Dist[2]->OP_ID, 0);
        Comp_OP2 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[1]->OP_ID, Dist[3]->OP_ID, 0);
        Cond_OP1 = Create_OP_Inst(OP_Array, Inst_Array, ANDAND, Comp_OP0->OP_ID, Comp_OP1->OP_ID, Comp_OP2->OP_ID);

        Comp_OP0 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[0]->OP_ID, Dist[2]->OP_ID, 0);
        Comp_OP1 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[1]->OP_ID, Dist[2]->OP_ID, 0);
        Comp_OP2 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[2]->OP_ID, Dist[3]->OP_ID, 0);
        Cond_OP2 = Create_OP_Inst(OP_Array, Inst_Array, ANDAND, Comp_OP0->OP_ID, Comp_OP1->OP_ID, Comp_OP2->OP_ID);

        Comp_OP0 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[0]->OP_ID, Dist[3]->OP_ID, 0);
        Comp_OP1 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[1]->OP_ID, Dist[3]->OP_ID, 0);
        Comp_OP2 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[2]->OP_ID, Dist[3]->OP_ID, 0);
        Cond_OP3 = Create_OP_Inst(OP_Array, Inst_Array, ANDAND, Comp_OP0->OP_ID, Comp_OP1->OP_ID, Comp_OP2->OP_ID);

        Centroids_Sum00[i] = Create_OP_Inst(OP_Array, Inst_Array, PHI, Cond_OP0->OP_ID, Data_To_ID("Samples", i, 0), 0);
        Centroids_Sum01[i] = Create_OP_Inst(OP_Array, Inst_Array, PHI, Cond_OP0->OP_ID, Data_To_ID("Samples", i, 1), 0);

        Centroids_Sum10[i] = Create_OP_Inst(OP_Array, Inst_Array, PHI, Cond_OP1->OP_ID, Data_To_ID("Samples", i, 0), 0);
        Centroids_Sum11[i] = Create_OP_Inst(OP_Array, Inst_Array, PHI, Cond_OP1->OP_ID, Data_To_ID("Samples", i, 1), 0);

        Centroids_Sum20[i] = Create_OP_Inst(OP_Array, Inst_Array, PHI, Cond_OP2->OP_ID, Data_To_ID("Samples", i, 0), 0);
        Centroids_Sum21[i] = Create_OP_Inst(OP_Array, Inst_Array, PHI, Cond_OP2->OP_ID, Data_To_ID("Samples", i, 1), 0);

        Centroids_Sum30[i] = Create_OP_Inst(OP_Array, Inst_Array, PHI, Cond_OP3->OP_ID, Data_To_ID("Samples", i, 0), 0);
        Centroids_Sum31[i] = Create_OP_Inst(OP_Array, Inst_Array, PHI, Cond_OP3->OP_ID, Data_To_ID("Samples", i, 1), 0);

        Centroids_Num0[i] = Cond_OP0;
        Centroids_Num1[i] = Cond_OP1;
        Centroids_Num2[i] = Cond_OP2;
        Centroids_Num3[i] = Cond_OP3;
    }

    int oid;
    oid = Data_To_ID("Centroids_Sum", 0, 0);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Sum00, ADDADD, OP_Array[oid]);
    oid = Data_To_ID("Centroids_Sum", 0, 1);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Sum01, ADDADD, OP_Array[oid]);
    oid = Data_To_ID("Centroids_Sum", 1, 0);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Sum10, ADDADD, OP_Array[oid]);
    oid = Data_To_ID("Centroids_Sum", 1, 1);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Sum11, ADDADD, OP_Array[oid]);
    oid = Data_To_ID("Centroids_Sum", 2, 0);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Sum20, ADDADD, OP_Array[oid]);
    oid = Data_To_ID("Centroids_Sum", 2, 1);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Sum21, ADDADD, OP_Array[oid]);
    oid = Data_To_ID("Centroids_Sum", 3, 0);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Sum30, ADDADD, OP_Array[oid]);
    oid = Data_To_ID("Centroids_Sum", 3, 1);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Sum31, ADDADD, OP_Array[oid]);
    oid = Data_To_ID("Centroids_Num", 0, 0);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Num0, ADDADD, OP_Array[oid]);
    oid = Data_To_ID("Centroids_Num", 1, 0);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Num1, ADDADD, OP_Array[oid]);
    oid = Data_To_ID("Centroids_Num", 2, 0);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Num2, ADDADD, OP_Array[oid]);
    oid = Data_To_ID("Centroids_Num", 3, 0);
    Parallel_Compute(OP_Array, Inst_Array, Centroids_Num3, ADDADD, OP_Array[oid]);

}

void Parallel_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array, Operand* IM_Operands[M], Opcode Inst_Opcode, Operand* Result_OP){
    // Parallel accumulation
    int Res_OP_Num = M;
    while(Res_OP_Num>3){
        for(int j=0; j<Res_OP_Num; j=j+3){
            if(j+1==Res_OP_Num){
                IM_Operands[j/3] = IM_Operands[j];
            }
            else if(j+2==Res_OP_Num){
                Operand* op_tmp = new Operand();
                OP_Array.push_back(op_tmp);
                Instruction* inst_tmp = new Instruction();
                inst_tmp->Set_Instruction(op_tmp->OP_ID, Inst_Opcode, IM_Operands[j]->OP_ID, IM_Operands[j+1]->OP_ID, Data_To_ID("Const_In", 0, 0));
                Inst_Array.push_back(inst_tmp);
                IM_Operands[j/3] = op_tmp;
            }
            else{
                Operand* op_tmp = new Operand();
                OP_Array.push_back(op_tmp);
                Instruction* inst_tmp = new Instruction();
                inst_tmp->Set_Instruction(op_tmp->OP_ID, Inst_Opcode, IM_Operands[j]->OP_ID, IM_Operands[j+1]->OP_ID, IM_Operands[j+2]->OP_ID);
                Inst_Array.push_back(inst_tmp);
                IM_Operands[j/3] = op_tmp;
            }
        }
        if((Res_OP_Num%3)==0){
            Res_OP_Num = Res_OP_Num/3;
        }
        else{
            Res_OP_Num = Res_OP_Num/3 + 1;
        }
    }

    //Last output
    if(Res_OP_Num==3){
        Instruction* inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(Result_OP->OP_ID, Inst_Opcode, IM_Operands[0]->OP_ID, IM_Operands[1]->OP_ID, IM_Operands[2]->OP_ID);
        Inst_Array.push_back(inst_tmp);
    }
    else if(Res_OP_Num==2){
        Instruction* inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(Result_OP->OP_ID, ADDADD, IM_Operands[0]->OP_ID, IM_Operands[1]->OP_ID, Data_To_ID("Const_In", 0, 0));
        Inst_Array.push_back(inst_tmp);
    }
    else{
        std::cout << "Unexpected residue!\n";
    }
}

Operand* Create_OP_Inst(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array, Opcode Inst_Opcode, int src0, int src1, int src2){

    Operand* Dst_OP = new Operand();
    OP_Array.push_back(Dst_OP);
    Instruction* inst_tmp = new Instruction();
    inst_tmp->Set_Instruction(Dst_OP->OP_ID, Inst_Opcode, src0, src1, src2);
    Inst_Array.push_back(inst_tmp);
    return Dst_OP;

}

void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    std::vector<Instruction*>::iterator Inst_It;
    for(Inst_It=Inst_Array.begin(); Inst_It!=Inst_Array.end(); Inst_It++){
        int src_val0=OP_Array[(*Inst_It)->Src_OP0]->OP_Val;
        int src_val1=OP_Array[(*Inst_It)->Src_OP1]->OP_Val;
        int src_val2=OP_Array[(*Inst_It)->Src_OP2]->OP_Val;
        int dst_val=(*Inst_It)->Compute(src_val0, src_val1, src_val2);
        OP_Array[(*Inst_It)->Dst_OP]->OP_Val=dst_val;

        /*
        if(id>=0){

            (*Inst_It)->Display();
            OP_Array[(*Inst_It)->Dst_OP]->Display();
            OP_Array[(*Inst_It)->Src_OP0]->Display();
            OP_Array[(*Inst_It)->Src_OP1]->Display();
            OP_Array[(*Inst_It)->Src_OP2]->Display();

        }
        id++;
        */
    }
}


void Verify(const std::vector<Operand*> &OP_Array, int Centroids_Sum[N][D], int Centroids_Num[N]){

    for(int i=0; i<N; i++){
        for(int j=0; j<D; j++){
            int OP_ID =  Data_To_ID("Centroids_Sum", i, j);
            if(Centroids_Sum[i][j]!=OP_Array[OP_ID]->OP_Val){
                printf("Verification failed! \n");
                printf("Expected Centroids_Sum[%d][%d]=%d, Calculated Cenroids=%d\n", i, j, Centroids_Sum[i][j], OP_Array[OP_ID]->OP_Val);
                exit(EXIT_FAILURE);
            }
        }
    }

    for(int i=0; i<N; i++){
        int OP_ID = Data_To_ID("Centroids_Num", i, 0);
        if(Centroids_Num[i]!=OP_Array[OP_ID]->OP_Val){
            printf("Verification failed! \n");
            printf("Expected Centroids_Num[%d]=%d, Calculated Cenroids=%d\n", i, Centroids_Num[i], OP_Array[OP_ID]->OP_Val);
            exit(EXIT_FAILURE);
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
    std::ofstream Inst_fHandle;
    Inst_fHandle.open(oss.str().c_str());
    if(!Inst_fHandle.is_open()){
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
    std::vector<Operand*>::const_iterator OP_It;
    for(OP_It=OP_Array.begin(); OP_It!=OP_Array.end(); OP_It++){
        operand_fhandle << (*OP_It)->OP_ID << " " \
            << (*OP_It)->IO_Buffer_Addr << " " \
            << (*OP_It)->OP_Val << " " \
            << (*OP_It)->IO_Buffer_ID << " " \
            << (*OP_It)->OP_Type << "\n";
    }
    operand_fhandle.close();

    /* Dump DFG node details to .s file */
    std::map<Opcode, int> Opcode_Encoder;
    int Opcode_ID=0;
    std::vector<Instruction*>::const_iterator Inst_It;
    for(Inst_It=Inst_Array.begin(); Inst_It!=Inst_Array.end(); Inst_It++){
        Inst_fHandle << (*Inst_It)->Dst_OP << " " \
            << (*Inst_It)->Inst_Opcode << " " \
            << (*Inst_It)->Src_OP0 << " " \
            << (*Inst_It)->Src_OP1 << " " \
            << (*Inst_It)->Src_OP2 << "\n";
        if(Opcode_Encoder.count((*Inst_It)->Inst_Opcode)<=0){
            Opcode_Encoder[(*Inst_It)->Inst_Opcode]=Opcode_ID;
            Opcode_ID++;
        }
    }
    Inst_fHandle.close();

    /* Dump the opcode summary to _opcode.txt file */
    std::map<Opcode, int>::iterator Map_It;
    for(Map_It=Opcode_Encoder.begin(); Map_It!=Opcode_Encoder.end(); Map_It++){
        Opcode_fHandle << Map_It->first << std::endl;
    }
    Opcode_fHandle.close();

}


void Head_File_Dump(int Init_Centroids[N][D]){

    /*
    int Block_Samples[B][D];
    int Block_Centroids_Sum[N*(B/M)][D];
    int Block_Centroids_Num[N*(B/M)];

    for(int i=0; i<B; i++){
        for(int j=0; j<D; j++){
            Block_Samples[i][j] = rand()%10;
        }
    }

    //Each block is computed separately.
    for(int bk=0; bk<B/M; bk++){

        int Samples_Tmp[M][D];
        int Centroids_Sum_Tmp[N][D];
        int Centroids_Num_Tmp[N];

        for(int i=0; i<M; i++){
            for(int j=0; j<D; j++){
                Samples_Tmp[i][j] = Block_Samples[bk*M+i][j];
            }
        }

        Kmean_Kernel(Samples_Tmp, Init_Centroids, Centroids_Sum_Tmp, Centroids_Num_Tmp);

        for(int i=0; i<N; i++){
            for(int j=0; j<D; j++){
                Block_Centroids_Sum[i+bk*N][j] = Centroids_Sum_Tmp[i][j];
            }
            Block_Centroids_Num[i+bk*N] = Centroids_Num_Tmp[i];
        }

    }
    */

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


    fHandle << "int Block_Samples[" << B << "][" << D <<"];" << std::endl;
    fHandle << "int Init_Centroids[" << N << "][" << D <<"];" << std::endl;
    fHandle << "int Block_Centroids_Sum[" << N*(B/M) << "][" << D <<"];" << std::endl;
    fHandle << "int Block_Centroids_Num[" << N*(B/M) << "];" << std::endl;

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
     * The newly remapped addr is stored in the array as if it is data.
     * --------------------------------------------------------------*/
    int Remapped_Bram0_Addr = 0;
    int Remapped_Bram1_Addr = 0;
    int Const_In_Addr[2];
    int Block_Samples_Addr[B][D];
    int Init_Centroids_Addr[N][D];
    int Block_Centroids_Sum_Addr[N*(B/M)][D];
    int Block_Centroids_Num_Addr[N*(B/M)];
 
    //Input location
    for(int i=0; i<Const_Num; i++){
        Const_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++ ;
    }

    for(int i=0; i<B; i++){
        for(int j=0; j<D; j++){
            Block_Samples_Addr[i][j] = Remapped_Bram0_Addr;
            Remapped_Bram0_Addr++ ;
        }
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<D; j++){
            Init_Centroids_Addr[i][j] = Remapped_Bram0_Addr;
            Remapped_Bram0_Addr++;
        }
    }

    // Output location
    for(int i=0; i<N*(B/M); i++){
        for(int j=0; j<D; j++){
            Block_Centroids_Sum_Addr[i][j] = Remapped_Bram1_Addr;
            Remapped_Bram1_Addr++;
        }
    }

    for(int i=0; i<N*(B/M); i++){
        Block_Centroids_Num_Addr[i] = Remapped_Bram1_Addr;
        Remapped_Bram1_Addr++;
    }
    
    const int Kernel_IO_Num = Const_Num + M*D + N*D + N*D + N; //total number of work-item's operand
    const int Kernel_Num_Per_Block = B/M; //total number of the kernel iteration
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

        //Normal work-item input i.e. Samples[S][D]
        for(int i=0; i<M; i++){
            for(int j=0; j<D; j++){
                Kernel_IO_Addr[Row_Index][It] = Block_Samples_Addr[i+p*M][j];
                if(p==0){
                    Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Samples", i, j);
                }
                Row_Index++;
            }
        }

        for(int i=0; i<N; i++){
            for(int j=0; j<D; j++){
                Kernel_IO_Addr[Row_Index][It] = Init_Centroids_Addr[i][j];
                if(p==0){
                    Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Init_Centroids", i, j);
                }
                Row_Index++;
            }
        }

        //Output data
        for(int i=0; i<N; i++){
            for(int j=0; j<D; j++){
                Kernel_IO_Addr[Row_Index][It] = Block_Centroids_Sum_Addr[i+p*N][j];
                if(p==0){
                    Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Centroids_Sum", i, j);
                }
                Row_Index++;
            }
        }

        for(int i=0; i<N; i++){
            Kernel_IO_Addr[Row_Index][It] = Block_Centroids_Num_Addr[i+p*N];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Centroids_Num", i, 0);
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

void Loop_Stat(const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array){
    std::ostringstream oss;
    oss << "./dump/loop-stat.txt";
    std::ofstream fHandle;
    fHandle.open(oss.str().c_str());
    if(!fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    fHandle << "DFG_In_Num " << Const_Num + M*D + N*D << std::endl;
    fHandle << "DFG_Out_Num " << N*D + N << std::endl;
    fHandle << "DFG_Operation_Num " << Inst_Array.size() << std::endl;
    fHandle << "DFG_Total_Nodes " << OP_Array.size() << std::endl;
    fHandle << "Block_Repeat_Num " << B/M << std::endl;
    fHandle << "Block_Reuse_Num " << Const_Num + N*D << std::endl;
    fHandle << "Block_In_Num " << Const_Num + B*D + N*D << std::endl;
    fHandle << "Block_Out_Num " << (B/M)*(N*D+N) << std::endl;
    fHandle.close();

}
