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

Operand* Create_OP_Inst(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array, OPCODE inst_opcode, int src0, int src1, int src2);

Operand* Branch_In_Loop(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array, int i, int Cond_OP_id, int src0, int src1, int src2, Operand* op_out, int sub_out_id);

void Initial_IO_Placement(const std::string &DFG_Name);

void Head_File_Dump(int Init_Centroids[N][D]);

void IO_coe_Dump(int Block_Samples[B][D], int Init_Centroids[N][D], int Block_Centroids_Sum[N*(B/M)][D], int Block_Centroids_Num[N*(B/M)]);

void Single_Dec_Dump(std::ofstream &fHandle, unsigned int Dec_Data, int Width);

int Const_In[2] = {0, 1}; 
const int Const_Num=2;

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


/* Note that each operand indicates a node in dfg, so each operand must represent an computation in 
 * original c code. It is possible that we may add additional operands to help build the DFG, but it 
 * is better not to do so. For example, we may create a temporal operand and assign it to the operand in
 * the DFG, but we must add a 'Move(dst<-src+0+0)' instruction to the DFG. */
void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    Operand* Last_Centroids_Sum[N][D];
    Operand* Last_Centroids_Num[N];
    for(int i=0; i<M; i++){

        Operand* Dist[N];
        for(int j=0; j<N; j++){
            Operand* Sub_OP0;
            Operand* Sub_OP1;
            Operand* Muladd_OP;
            Sub_OP0 = Create_OP_Inst(OP_Array, Inst_Array, SUBSUB, Data_To_ID("Samples", i, 0), Data_To_ID("Init_Centroids", j, 0), 0);
            Sub_OP1 = Create_OP_Inst(OP_Array, Inst_Array, SUBSUB, Data_To_ID("Samples", i, 1), Data_To_ID("Init_Centroids", j, 1), 0);
            Muladd_OP = Create_OP_Inst(OP_Array, Inst_Array, MULADD, Sub_OP0->op_id, Sub_OP0->op_id, 0);
            Dist[j] = Create_OP_Inst(OP_Array, Inst_Array, MULADD, Sub_OP1->op_id, Sub_OP1->op_id, Muladd_OP->op_id);
        }

        Operand* Comp_OP0;
        Operand* Comp_OP1;
        Operand* Comp_OP2;
        Operand* Cond_OP0;
        Operand* Cond_OP1;
        Operand* Cond_OP2;
        Operand* Cond_OP3;

        Comp_OP0 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[0]->op_id, Dist[1]->op_id, 0);
        Comp_OP1 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[0]->op_id, Dist[2]->op_id, 0);
        Comp_OP2 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[0]->op_id, Dist[3]->op_id, 0);
        Cond_OP0 = Create_OP_Inst(OP_Array, Inst_Array, ANDAND, Comp_OP0->op_id, Comp_OP1->op_id, Comp_OP2->op_id);

        Comp_OP0 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[0]->op_id, Dist[1]->op_id, 0);
        Comp_OP1 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[1]->op_id, Dist[2]->op_id, 0);
        Comp_OP2 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[1]->op_id, Dist[3]->op_id, 0);
        Cond_OP1 = Create_OP_Inst(OP_Array, Inst_Array, ANDAND, Comp_OP0->op_id, Comp_OP1->op_id, Comp_OP2->op_id);

        Comp_OP0 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[0]->op_id, Dist[2]->op_id, 0);
        Comp_OP1 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[1]->op_id, Dist[2]->op_id, 0);
        Comp_OP2 = Create_OP_Inst(OP_Array, Inst_Array, LET, Dist[2]->op_id, Dist[3]->op_id, 0);
        Cond_OP2 = Create_OP_Inst(OP_Array, Inst_Array, ANDAND, Comp_OP0->op_id, Comp_OP1->op_id, Comp_OP2->op_id);

        Comp_OP0 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[0]->op_id, Dist[3]->op_id, 0);
        Comp_OP1 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[1]->op_id, Dist[3]->op_id, 0);
        Comp_OP2 = Create_OP_Inst(OP_Array, Inst_Array, GT, Dist[2]->op_id, Dist[3]->op_id, 0);
        Cond_OP3 = Create_OP_Inst(OP_Array, Inst_Array, ANDAND, Comp_OP0->op_id, Comp_OP1->op_id, Comp_OP2->op_id);

        Last_Centroids_Num[0] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP0->op_id, 0, Data_To_ID("Const_In", 1, 0), 0, Last_Centroids_Num[0], Data_To_ID("Centroids_Num", 0, 0));
        Last_Centroids_Num[1] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP1->op_id, 0, Data_To_ID("Const_In", 1, 0), 0, Last_Centroids_Num[1], Data_To_ID("Centroids_Num", 1, 0));
        Last_Centroids_Num[2] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP2->op_id, 0, Data_To_ID("Const_In", 1, 0), 0, Last_Centroids_Num[2], Data_To_ID("Centroids_Num", 2, 0));
        Last_Centroids_Num[3] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP3->op_id, 0, Data_To_ID("Const_In", 1, 0), 0, Last_Centroids_Num[3], Data_To_ID("Centroids_Num", 3, 0));
        Last_Centroids_Sum[0][0] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP0->op_id, 0, Data_To_ID("Samples", i, 0), 0, Last_Centroids_Sum[0][0], Data_To_ID("Centroids_Sum", 0, 0));
        Last_Centroids_Sum[0][1] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP0->op_id, 0, Data_To_ID("Samples", i, 1), 0, Last_Centroids_Sum[0][1], Data_To_ID("Centroids_Sum", 0, 1));
        Last_Centroids_Sum[1][0] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP1->op_id, 0, Data_To_ID("Samples", i, 0), 0, Last_Centroids_Sum[1][0], Data_To_ID("Centroids_Sum", 1, 0));
        Last_Centroids_Sum[1][1] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP1->op_id, 0, Data_To_ID("Samples", i, 1), 0, Last_Centroids_Sum[1][1], Data_To_ID("Centroids_Sum", 1, 1));
        Last_Centroids_Sum[2][0] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP2->op_id, 0, Data_To_ID("Samples", i, 0), 0, Last_Centroids_Sum[2][0], Data_To_ID("Centroids_Sum", 2, 0));
        Last_Centroids_Sum[2][1] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP2->op_id, 0, Data_To_ID("Samples", i, 1), 0, Last_Centroids_Sum[2][1], Data_To_ID("Centroids_Sum", 2, 1));
        Last_Centroids_Sum[3][0] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP3->op_id, 0, Data_To_ID("Samples", i, 0), 0, Last_Centroids_Sum[3][0], Data_To_ID("Centroids_Sum", 3, 0));
        Last_Centroids_Sum[3][1] = Branch_In_Loop(OP_Array, Inst_Array, i, Cond_OP3->op_id, 0, Data_To_ID("Samples", i, 1), 0, Last_Centroids_Sum[3][1], Data_To_ID("Centroids_Sum", 3, 1));
    }

}

Operand* Create_OP_Inst(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array, OPCODE inst_opcode, int src0, int src1, int src2){

    Operand* dst_op = new Operand();
    OP_Array.push_back(dst_op);
    Instruction* inst_tmp = new Instruction();
    inst_tmp->Set_Instruction(dst_op->op_id, inst_opcode, src0, src1, src2);
    Inst_Array.push_back(inst_tmp);
    return dst_op;

}

Operand* Branch_In_Loop(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array, int i, int Cond_OP_id, int src0, int src1, int src2, Operand* op_out, int sub_out_id){

    Operand* out_1;
    Operand* out;
    Instruction* inst_tmp;

    /*
       int src_val0;
       int src_val1;
       int src_val2;
       int dst_val;
       */

    if(i==0){
        /* sub_out[8]=sub_out[8]+1 */
        out_1 = new Operand();
        OP_Array.push_back(out_1);
        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(out_1->op_id, ADDADD, src0, src1, src2);

        /*
        src_val0 = OP_Array[src0]->op_value;
        src_val1 = OP_Array[src1]->op_value;
        src_val2 = OP_Array[src2]->op_value;
        dst_val = src_val0 + src_val1 + src_val2;
        out_1->op_value = dst_val;
        */

        Inst_Array.push_back(inst_tmp);

        out = new Operand();
        OP_Array.push_back(out);
        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(out->op_id, PHI, Cond_OP_id, out_1->op_id, 0);

        /*
        src_val0 = OP_Array[Cond_OP_id]->op_value;
        src_val1 = out_1->op_value;
        src_val2 = 0;
        dst_val = src_val0 ? src_val1 : src_val2;
        out->op_value = dst_val;
        */

        Inst_Array.push_back(inst_tmp);
        return out;
    }
    else if(i<M-1){
        out_1 = new Operand();
        OP_Array.push_back(out_1);
        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(out_1->op_id, ADDADD, op_out->op_id, src1, src2);

        /*
        src_val0 = op_out->op_value;
        src_val1 = OP_Array[src1]->op_value;
        src_val2 = OP_Array[src2]->op_value;
        dst_val = src_val0 + src_val1 + src_val2;
        out_1->op_value = dst_val;
        */

        Inst_Array.push_back(inst_tmp);

        out = new Operand();
        OP_Array.push_back(out);
        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(out->op_id, PHI, Cond_OP_id, out_1->op_id, op_out->op_id);

        /*
        src_val0 = OP_Array[Cond_OP_id]->op_value;
        src_val1 = out_1->op_value;
        src_val2 = op_out->op_value;
        dst_val = src_val0 ? src_val1 : src_val2;
        out->op_value = dst_val;
        */

        Inst_Array.push_back(inst_tmp);
        return out;
    }
    else{
        out_1 = new Operand();
        OP_Array.push_back(out_1);
        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(out_1->op_id, ADDADD, op_out->op_id, src1, src2);

        /*
        src_val0 = op_out->op_value;
        src_val1 = OP_Array[src1]->op_value;
        src_val2 = OP_Array[src2]->op_value;
        dst_val = src_val0 + src_val1 + src_val2;
        out_1->op_value = dst_val;
        */

        Inst_Array.push_back(inst_tmp);

        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(sub_out_id, PHI, Cond_OP_id, out_1->op_id, op_out->op_id);

        /*
        src_val0 = OP_Array[Cond_OP_id]->op_value;
        src_val1 = out_1->op_value;
        src_val2 = op_out->op_value;
        dst_val = src_val0 ? src_val1 : src_val2;
        OP_Array[sub_out_id]->op_value = dst_val;
        */

        Inst_Array.push_back(inst_tmp);
        return NULL;
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

        /*
        if(id>=0){

            (*inst_it)->Display();
            OP_Array[(*inst_it)->dst_op]->Display();
            OP_Array[(*inst_it)->src_op0]->Display();
            OP_Array[(*inst_it)->src_op1]->Display();
            OP_Array[(*inst_it)->src_op2]->Display();

        }
        id++;
        */
    }
}


void Verify(const std::vector<Operand*> &OP_Array, int Centroids_Sum[N][D], int Centroids_Num[N]){

    for(int i=0; i<N; i++){
        for(int j=0; j<D; j++){
            int op_id =  Data_To_ID("Centroids_Sum", i, j);
            if(Centroids_Sum[i][j]!=OP_Array[op_id]->op_value){
                printf("Verification failed! \n");
                printf("Expected Centroids_Sum[%d][%d]=%d, Calculated Cenroids=%d\n", i, j, Centroids_Sum[i][j], OP_Array[op_id]->op_value);
                exit(EXIT_FAILURE);
            }
        }
    }

    for(int i=0; i<N; i++){
        int op_id = Data_To_ID("Centroids_Num", i, 0);
        if(Centroids_Num[i]!=OP_Array[op_id]->op_value){
            printf("Verification failed! \n");
            printf("Expected Centroids_Num[%d]=%d, Calculated Cenroids=%d\n", i, Centroids_Num[i], OP_Array[op_id]->op_value);
            exit(EXIT_FAILURE);
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


void IO_coe_Dump(int Block_Samples[B][D], int Init_Centroids[N][D], int Block_Centroids_Sum[N*(B/M)][D], int Block_Centroids_Num[N*(B/M)]){

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

    for(int i=0; i<B; i++){
        for(int j=0; j<D; j++){
            Single_Dec_Dump(fHandle, (unsigned int)Block_Samples[i][j], Width);
        }
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<D; j++){
            Single_Dec_Dump(fHandle, (unsigned int)Init_Centroids[i][j], Width);
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
    for(int i=0; i<N*(B/M); i++){
        for(int j=0; j<D; j++){
            Single_Dec_Dump(fHandle, (unsigned int)Block_Centroids_Sum[i][j], Width);
        }
    }
    for(int i=0; i<N*(B/M); i++){
        Single_Dec_Dump(fHandle, (unsigned int)Block_Centroids_Num[i], Width);
    }
    fHandle.close();

}

void Head_File_Dump(int Init_Centroids[N][D]){

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

    IO_coe_Dump(Block_Samples, Init_Centroids, Block_Centroids_Sum, Block_Centroids_Num);
    std::string fName = "./dump/io.h";
    std::ofstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        std::cout << fName << "open error!" << std::endl;
        exit(EXIT_FAILURE);
    }

    fHandle << "// Input and output data of the benchmark" << std::endl << std::endl;

    fHandle << "int Const_In[" << Const_Num << "] = "<<"{";
    for(int i=0; i<Const_Num; i++){
        if(i==Const_Num-1){
            fHandle << Const_In[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Const_In[i] << ", ";
        }
    }


    fHandle << "int Block_Samples[" << B << "][" << D <<"] = {" << std::endl;
    for(int i=0; i<B; i++){
        for(int j=0; j<D; j++){
            if(j==0){
                fHandle << "{" << Block_Samples[i][j] << ", ";
            }
            else if(i==B-1 && j==D-1){
                fHandle << Block_Samples[i][j] << "}" << std::endl;
            }
            else if(j==D-1){
                fHandle << Block_Samples[i][j] << "}, " << std::endl;
            }
            else{
                fHandle << Block_Samples[i][j] << ", ";
            }
        }
    }
    fHandle << "};" << std::endl << std::endl;

    fHandle << "int Init_Centroids[" << N << "][" << D <<"] = {" << std::endl;
    for(int i=0; i<N; i++){
        for(int j=0; j<D; j++){
            if(j==0){
                fHandle << "{" << Init_Centroids[i][j] << ", ";
            }
            else if(i==N-1 && j==D-1){
                fHandle << Init_Centroids[i][j] << "}" << std::endl;
            }
            else if(j==D-1){
                fHandle << Init_Centroids[i][j] << "}, " << std::endl;
            }
            else{
                fHandle << Init_Centroids[i][j] << ", ";
            }
        }
    }
    fHandle << "};" << std::endl << std::endl;

    fHandle << "int Block_Centroids_Sum[" << N*(B/M) << "][" << D <<"] = {" << std::endl;
    for(int i=0; i<N*(B/M); i++){
        for(int j=0; j<D; j++){
            if(j==0){
                fHandle << "{" << Block_Centroids_Sum[i][j] << ", ";
            }
            else if(i==N*(B/M)-1 && j==D-1){
                fHandle << Block_Centroids_Sum[i][j] << "}" << std::endl;
            }
            else if(j==D-1){
                fHandle << Block_Centroids_Sum[i][j] << "}, " << std::endl;
            }
            else{
                fHandle << Block_Centroids_Sum[i][j] << ", ";
            }
        }
    }
    fHandle << "};" << std::endl << std::endl;

    fHandle << "int Block_Centroids_Num[" << N*(B/M) << "] = " << "{";
    for(int i=0; i<N*(B/M); i++){
        if(i==N*(B/M)-1){
            fHandle << Block_Centroids_Num[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Block_Centroids_Num[i] << ", ";
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
    
    const int Work_Item_IO_Num = Const_Num + M*D + N*D + N*D + N; //total number of work-item's operand
    const int Kernel_It_Num = B/M; //total number of the kernel iteration
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

