#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"
#include <cstdlib>

void io_init(int sub_in[M*D+N*D], int sub_out[N*D+N]);
void op_array_init(std::vector<Operand*> &op_array, int sub_in[M*D+N*D], int sub_out[N*D+N]);
void kernel_to_dfg(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void dfg_compute(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array);
void verify(const std::vector<Operand*> &op_array, int sub_out[N*D+N]);
void dfg_dump(const std::string &dfg_name, const std::vector<Operand*> &op_array, const std::vector<Instruction*> &inst_array);
int data_to_id(int idx, OPTYPE op_type);
int data_to_id(int const_value);
Operand* create_op_inst(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array, OPCODE inst_opcode, int src0, int src1, int src2);
Operand* branch_in_loop(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array, int i, int cond_op_id, int src0, int src1, int src2, Operand* op_out, int sub_out_id);
void loop_io_addr_remap(const std::string &dfg_name);
void kmean_ip(int samples[M][D], int init_centroids[N][D], int centroids_sum[N][D], int centroids_num[N]);

int const_in[2]={0, 1}; //The constant array is put here to make id search easier.
const int const_num=2;

int main(){

    int sub_in[M*D+N*D];
    int sub_out[N*D+N];

    std::vector<Operand*> op_array;
    std::vector<Instruction*> inst_array;
    std::string dfg_name="kmean";

    io_init(sub_in, sub_out);
    op_array_init(op_array, sub_in, sub_out);
    kernel_to_dfg(op_array, inst_array);
    dfg_compute(op_array, inst_array);
    verify(op_array, sub_out);
    dfg_dump(dfg_name, op_array, inst_array);
    loop_io_addr_remap(dfg_name);

}

void kmean_ip(int samples[M][D], int init_centroids[N][D], int centroids_sum[N][D], int centroids_num[N]){

    for(int i=0; i<N; i++){
        centroids_num[i] = 0;
        for(int j=0; j<D; j++){
            centroids_sum[i][j] = 0;
        }
    }

    int dist[N];
    for(int i=0; i<M; i++){

        for(int j=0; j<N; j++){
            dist[j] = 0;
            for(int k=0; k<D; k++){
                dist[j] += (samples[i][k]-init_centroids[j][k]) * (samples[i][k]-init_centroids[j][k]);
            }
        }

        //Search the closest centroid
        int min_dist=dist[0];
        int min_id=0;
        for(int j=1; j<N; j++){
            if(dist[j]<min_dist){
                min_dist = dist[j];
                min_id = j;
            }
        }

        for(int j=0; j<D; j++){
            centroids_sum[min_id][j] += samples[i][j];
        }
        centroids_num[min_id]++;
    }

}

void io_init(int sub_in[M*D+N*D], int sub_out[N*D+N]){

    int samples[M][D];
    int init_centroids[N][D];
    int centroids_sum[N][D];
    int centroids_num[N];

    //Input initialization
    for(int i=0; i<M; i++){
        for(int j=0; j<D; j++){
            samples[i][j] = rand()%100;
        }
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<D; j++){
            init_centroids[i][j] = samples[i][j];
        }
    }

    kmean_ip(samples, init_centroids, centroids_sum, centroids_num);

    //Input combination
    for(int i=0; i<M; i++){
        for(int j=0; j<D; j++){
            sub_in[i*D+j] = samples[i][j];
        }
    }

    for(int i=0; i<N; i++){
        for(int j=0; j<D; j++){
            sub_in[M*D+i*D+j] = init_centroids[i][j];
        }
    }

    //Output combination
    for(int i=0; i<N; i++){
        for(int j=0; j<D; j++){
            sub_out[i*D+j] = centroids_sum[i][j];
        }
    }

    for(int i=0; i<N; i++){
        sub_out[N*D+i] = centroids_num[i];
    }

}


void op_array_init(std::vector<Operand*> &op_array, int sub_in[M*D+N*D], int sub_out[N*D+N]){

    int bram0_addr=0; //Inbut buffer address
    int bram1_addr=0; //Output buffer address

    /* Put constants into the op_array */
    for(int i=0; i<const_num; i++){
        Operand* op_ptr=new Operand();
        op_array.push_back(op_ptr);
        op_ptr->Set_Operand(const_in[i], 0, bram0_addr, INCONST);
        bram0_addr++;
    }

    /* map input data to op_array */
    for(int i=0; i<M*D+N*D; i++){
        Operand* op_ptr=new Operand();
        op_array.push_back(op_ptr);
        op_ptr->Set_Operand(sub_in[i], 0, bram0_addr, INVAR);
        bram0_addr++;
    }

    /* map output data to op_array */
    for(int i=0; i<N*D+N; i++){
        Operand* op_ptr=new Operand();
        op_array.push_back(op_ptr);
        op_ptr->Set_Operand(0, 1, bram1_addr, OUTVAR);
        bram1_addr++;
    }
}

int data_to_id(int idx, OPTYPE op_type){
    int invar_num=M*D+N*D;
    if(op_type==INVAR){
        return (idx+const_num);
    }
    else if(op_type==OUTVAR){
        return (idx+const_num+invar_num);
    }
    else{
        printf("Unknown IO operands! \n");
        exit(EXIT_FAILURE);
    }
}

int data_to_id(int const_val){
    for(int i=0; i<const_num; i++){
        if(const_val==const_in[i]){
            return i;
        }
    }
    printf("Couldn't find the specified the constant: %d!\n", const_val);
    exit(EXIT_FAILURE);
}

/* Note that each operand indicates a node in dfg, so each operand must represent an computation in 
 * original c code. It is possible that we may add additional operands to help build the DFG, but it 
 * is better not to do so. For example, we may create a temporal operand and assign it to the operand in
 * the DFG, but we must add a 'Move(dst<-src+0+0)' instruction to the DFG. */
void kernel_to_dfg(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array){

    Operand* op_last[N*D+N];
       
    for(int i=0; i<M; i++){

        Operand* dist[N];
        for(int j=0; j<N; j++){

            Operand* sub_op0;
            Operand* sub_op1;
            Operand* muladd_op;
            //dist[j] = new Operand();
            //op_array.push_back(dist[j]);

           sub_op0 = create_op_inst(op_array, inst_array, SUBSUB, data_to_id(i*D, INVAR), data_to_id(M*D+2*j, INVAR), 0);
           sub_op1 = create_op_inst(op_array, inst_array, SUBSUB, data_to_id(i*D+1, INVAR), data_to_id(M*D+2*j+1, INVAR), 0);
           muladd_op = create_op_inst(op_array, inst_array, MULADD, sub_op0->op_id, sub_op0->op_id, 0);
           dist[j] = create_op_inst(op_array, inst_array, MULADD, sub_op1->op_id, sub_op1->op_id, muladd_op->op_id);

        }

        Operand* comp_op0;
        Operand* comp_op1;
        Operand* comp_op2;
        Operand* cond_op0;
        Operand* cond_op1;
        Operand* cond_op2;
        Operand* cond_op3;

        comp_op0 = create_op_inst(op_array, inst_array, LET, dist[0]->op_id, dist[1]->op_id, 0);
        comp_op1 = create_op_inst(op_array, inst_array, LET, dist[0]->op_id, dist[2]->op_id, 0);
        comp_op2 = create_op_inst(op_array, inst_array, LET, dist[0]->op_id, dist[3]->op_id, 0);
        cond_op0 = create_op_inst(op_array, inst_array, ANDAND, comp_op0->op_id, comp_op1->op_id, comp_op2->op_id);

        comp_op0 = create_op_inst(op_array, inst_array, GT, dist[0]->op_id, dist[1]->op_id, 0);
        comp_op1 = create_op_inst(op_array, inst_array, LET, dist[1]->op_id, dist[2]->op_id, 0);
        comp_op2 = create_op_inst(op_array, inst_array, LET, dist[1]->op_id, dist[3]->op_id, 0);
        cond_op1 = create_op_inst(op_array, inst_array, ANDAND, comp_op0->op_id, comp_op1->op_id, comp_op2->op_id);

        comp_op0 = create_op_inst(op_array, inst_array, GT, dist[0]->op_id, dist[2]->op_id, 0);
        comp_op1 = create_op_inst(op_array, inst_array, GT, dist[1]->op_id, dist[2]->op_id, 0);
        comp_op2 = create_op_inst(op_array, inst_array, LET, dist[2]->op_id, dist[3]->op_id, 0);
        cond_op2 = create_op_inst(op_array, inst_array, ANDAND, comp_op0->op_id, comp_op1->op_id, comp_op2->op_id);
       
        comp_op0 = create_op_inst(op_array, inst_array, GT, dist[0]->op_id, dist[3]->op_id, 0);
        comp_op1 = create_op_inst(op_array, inst_array, GT, dist[1]->op_id, dist[3]->op_id, 0);
        comp_op2 = create_op_inst(op_array, inst_array, GT, dist[2]->op_id, dist[3]->op_id, 0);
        cond_op3 = create_op_inst(op_array, inst_array, ANDAND, comp_op0->op_id, comp_op1->op_id, comp_op2->op_id);

        //---------------------------------------------
        op_last[8] = branch_in_loop(op_array, inst_array, i, cond_op0->op_id, data_to_id(0), data_to_id(1), 0, op_last[8], data_to_id(8, OUTVAR));
        op_last[0] = branch_in_loop(op_array, inst_array, i, cond_op0->op_id, data_to_id(0), data_to_id(i*D, INVAR), 0, op_last[0], data_to_id(0, OUTVAR));
        op_last[1] = branch_in_loop(op_array, inst_array, i, cond_op0->op_id, data_to_id(0), data_to_id(i*D+1, INVAR), 0, op_last[1], data_to_id(1, OUTVAR));

        //----------------------------------------------
        op_last[9] = branch_in_loop(op_array, inst_array, i, cond_op1->op_id, data_to_id(0), data_to_id(1), 0, op_last[9], data_to_id(9, OUTVAR));
        op_last[2] = branch_in_loop(op_array, inst_array, i, cond_op1->op_id, data_to_id(0), data_to_id(i*D, INVAR), 0, op_last[2], data_to_id(2, OUTVAR));
        op_last[3] = branch_in_loop(op_array, inst_array, i, cond_op1->op_id, data_to_id(0), data_to_id(i*D+1, INVAR), 0, op_last[3], data_to_id(3, OUTVAR));

        //---------------------------------------------
        op_last[10] = branch_in_loop(op_array, inst_array, i, cond_op2->op_id, data_to_id(0), data_to_id(1), 0, op_last[10], data_to_id(10, OUTVAR));
        op_last[4] = branch_in_loop(op_array, inst_array, i, cond_op2->op_id, data_to_id(0), data_to_id(i*D, INVAR), 0, op_last[4], data_to_id(4, OUTVAR));
        op_last[5] = branch_in_loop(op_array, inst_array, i, cond_op2->op_id, data_to_id(0), data_to_id(i*D+1, INVAR), 0, op_last[5], data_to_id(5, OUTVAR));

        //--------------------------------------------
        op_last[11] = branch_in_loop(op_array, inst_array, i, cond_op3->op_id, data_to_id(0), data_to_id(1), 0, op_last[11], data_to_id(11, OUTVAR));
        op_last[6] = branch_in_loop(op_array, inst_array, i, cond_op3->op_id, data_to_id(0), data_to_id(i*D, INVAR), 0, op_last[6], data_to_id(6, OUTVAR));
        op_last[7] = branch_in_loop(op_array, inst_array, i, cond_op3->op_id, data_to_id(0), data_to_id(i*D+1, INVAR), 0, op_last[7], data_to_id(7, OUTVAR));
    }
}

Operand* create_op_inst(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array, OPCODE inst_opcode, int src0, int src1, int src2){

    Operand* dst_op = new Operand();
    op_array.push_back(dst_op);
    Instruction* inst_tmp = new Instruction();
    inst_tmp->Set_Instruction(dst_op->op_id, inst_opcode, src0, src1, src2);

    /*
    int src_val0 = op_array[src0]->op_value;
    int src_val1 = op_array[src1]->op_value;
    int src_val2 = op_array[src2]->op_value;
    int dst_val;
    switch(inst_opcode){
        case MULSUB:
            dst_val = src_val0 * src_val1 - src_val2;
            break;
        case MULADD:
            dst_val = src_val0 * src_val1 + src_val2;
            break;
        case ADDADD:
            dst_val = src_val0 + src_val1 + src_val2;
            break;
        case ADDSUB:
            dst_val = src_val0 + src_val1 - src_val2;
            break;
        case SUBADD:
            dst_val = src_val0 - src_val1 + src_val2;
            break;
        case SUBSUB:
            dst_val = src_val0 - src_val1 - src_val2;
            break;
        case PHI:
            dst_val = src_val0 ? src_val1 : src_val2;
            break;
        case RSFAND:
            dst_val = (src_val0 >> src_val1) & src_val2;
            break;
        case LSFADD:
            dst_val = (src_val0 << src_val1) + src_val2;
            break;
        case ABS:
            dst_val = abs(src_val0);
            break;
        case GT:
            dst_val = (src_val0 > src_val1) ? 1 : 0;
            break;
        case LET:
            dst_val = (src_val0 <= src_val1) ? 1 : 0;
            break;
        case ANDAND:
            dst_val = (src_val0!=0) && (src_val1!=0) && (src_val2!=0);
            break;
        default:
            printf("Unexpected instruction opcode!\n");
            exit(EXIT_FAILURE);

    }
    dst_op->op_value = dst_val;
    */

    inst_array.push_back(inst_tmp);

    /*
    inst_tmp->Display();
    op_array[inst_tmp->dst_op]->Display();
    op_array[inst_tmp->src_op0]->Display();
    op_array[inst_tmp->src_op1]->Display();
    op_array[inst_tmp->src_op2]->Display();
    */

    return dst_op;

}

Operand* branch_in_loop(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array, int i, int cond_op_id, int src0, int src1, int src2, Operand* op_out, int sub_out_id){

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
        op_array.push_back(out_1);
        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(out_1->op_id, ADDADD, src0, src1, src2);

        /*
        src_val0 = op_array[src0]->op_value;
        src_val1 = op_array[src1]->op_value;
        src_val2 = op_array[src2]->op_value;
        dst_val = src_val0 + src_val1 + src_val2;
        out_1->op_value = dst_val;
        */

        inst_array.push_back(inst_tmp);

        /*
        inst_tmp->Display();
        op_array[inst_tmp->dst_op]->Display();
        op_array[inst_tmp->src_op0]->Display();
        op_array[inst_tmp->src_op1]->Display();
        op_array[inst_tmp->src_op2]->Display();
        */

        out = new Operand();
        op_array.push_back(out);
        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(out->op_id, PHI, cond_op_id, out_1->op_id, 0);

        /*
        src_val0 = op_array[cond_op_id]->op_value;
        src_val1 = out_1->op_value;
        src_val2 = 0;
        dst_val = src_val0 ? src_val1 : src_val2;
        out->op_value = dst_val;
        */

        inst_array.push_back(inst_tmp);

        /*
        inst_tmp->Display();
        op_array[inst_tmp->dst_op]->Display();
        op_array[inst_tmp->src_op0]->Display();
        op_array[inst_tmp->src_op1]->Display();
        op_array[inst_tmp->src_op2]->Display();
        */

        return out;
    }
    else if(i<M-1){
        out_1 = new Operand();
        op_array.push_back(out_1);
        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(out_1->op_id, ADDADD, op_out->op_id, src1, src2);

        /*
        src_val0 = op_out->op_value;
        src_val1 = op_array[src1]->op_value;
        src_val2 = op_array[src2]->op_value;
        dst_val = src_val0 + src_val1 + src_val2;
        out_1->op_value = dst_val;
        */

        inst_array.push_back(inst_tmp);

        /*
        inst_tmp->Display();
        op_array[inst_tmp->dst_op]->Display();
        op_array[inst_tmp->src_op0]->Display();
        op_array[inst_tmp->src_op1]->Display();
        op_array[inst_tmp->src_op2]->Display();
        */

        out = new Operand();
        op_array.push_back(out);
        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(out->op_id, PHI, cond_op_id, out_1->op_id, op_out->op_id);

        /*
        src_val0 = op_array[cond_op_id]->op_value;
        src_val1 = out_1->op_value;
        src_val2 = op_out->op_value;
        dst_val = src_val0 ? src_val1 : src_val2;
        out->op_value = dst_val;
        */

        inst_array.push_back(inst_tmp);

        /*
        inst_tmp->Display();
        op_array[inst_tmp->dst_op]->Display();
        op_array[inst_tmp->src_op0]->Display();
        op_array[inst_tmp->src_op1]->Display();
        op_array[inst_tmp->src_op2]->Display();
        */

        return out;
    }
    else{
        out_1 = new Operand();
        op_array.push_back(out_1);
        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(out_1->op_id, ADDADD, op_out->op_id, src1, src2);

        /*
        src_val0 = op_out->op_value;
        src_val1 = op_array[src1]->op_value;
        src_val2 = op_array[src2]->op_value;
        dst_val = src_val0 + src_val1 + src_val2;
        out_1->op_value = dst_val;
        */

        inst_array.push_back(inst_tmp);

        /*
        inst_tmp->Display();
        op_array[inst_tmp->dst_op]->Display();
        op_array[inst_tmp->src_op0]->Display();
        op_array[inst_tmp->src_op1]->Display();
        op_array[inst_tmp->src_op2]->Display();
        */

        inst_tmp = new Instruction();
        inst_tmp->Set_Instruction(sub_out_id, PHI, cond_op_id, out_1->op_id, op_out->op_id);

        /*
        src_val0 = op_array[cond_op_id]->op_value;
        src_val1 = out_1->op_value;
        src_val2 = op_out->op_value;
        dst_val = src_val0 ? src_val1 : src_val2;
        op_array[sub_out_id]->op_value = dst_val;
        */

        inst_array.push_back(inst_tmp);

        /*
        inst_tmp->Display();
        op_array[inst_tmp->dst_op]->Display();
        op_array[inst_tmp->src_op0]->Display();
        op_array[inst_tmp->src_op1]->Display();
        op_array[inst_tmp->src_op2]->Display();
        */

        return NULL;
    }

}

void dfg_compute(std::vector<Operand*> &op_array, std::vector<Instruction*> &inst_array){

    std::vector<Instruction*>::iterator inst_it;
    /*
    int id=0;
    std::cout << "-------------------------\n";
    */
    for(inst_it=inst_array.begin(); inst_it!=inst_array.end(); inst_it++){
        int src_val0=op_array[(*inst_it)->src_op0]->op_value;
        int src_val1=op_array[(*inst_it)->src_op1]->op_value;
        int src_val2=op_array[(*inst_it)->src_op2]->op_value;
        int dst_val=(*inst_it)->Compute(src_val0, src_val1, src_val2);
        op_array[(*inst_it)->dst_op]->op_value=dst_val;

        /*        
        if(id>=0){

            (*inst_it)->Display();
            op_array[(*inst_it)->dst_op]->Display();
            op_array[(*inst_it)->src_op0]->Display();
            op_array[(*inst_it)->src_op1]->Display();
            op_array[(*inst_it)->src_op2]->Display();

        }
        id++;
        */
    }
}


void verify(const std::vector<Operand*> &op_array, int sub_out[N*D+N]){

    for(int i=0; i<N*D+N; i++){
        int computed_result=op_array[data_to_id(i, OUTVAR)]->op_value;
        if(sub_out[i] != computed_result){
            printf("expected_result[%d]=%d, computed-result=%d \n", i, sub_out[i], computed_result);
            exit(EXIT_FAILURE);
        }
    }

    printf("Verification passed!\n");

}


void dfg_dump(const std::string &dfg_name, const std::vector<Operand*> &op_array, const std::vector<Instruction*> &inst_array){
    std::ostringstream oss;
    oss << dfg_name << "_operand.txt";
    std::ofstream operand_fhandle;
    operand_fhandle.open(oss.str().c_str());
    if(!operand_fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << dfg_name << ".s";
    std::ofstream inst_fhandle;
    inst_fhandle.open(oss.str().c_str());
    if(!inst_fhandle.is_open()){
        std::cout << "Failed to open" <<oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    oss.clear();
    oss.str("");
    oss << dfg_name << "_opcode.txt";
    std::ofstream opcode_fhandle;
    opcode_fhandle.open(oss.str().c_str());
    if(!opcode_fhandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    /* Dump operand details to .txt file */
    std::vector<Operand*>::const_iterator op_it;
    for(op_it=op_array.begin(); op_it!=op_array.end(); op_it++){
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
    for(inst_it=inst_array.begin(); inst_it!=inst_array.end(); inst_it++){
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

void loop_io_addr_remap(const std::string &dfg_name){

    std::ostringstream oss;
    oss << dfg_name << "_kernel_io.txt";
    std::ofstream fHandle;
    fHandle.open(oss.str().c_str());
    if(!fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    int remapped_bram0_addr = 0;
    int remapped_bram1_addr = 0;
    int const_in_addr[2];
    int sub_in_addr[B*D+N*D];
    int sub_out_addr[(B/M)*(N*D+N)];
    
    // Constant input
    for(int i=0; i<const_num; i++){
        const_in_addr[i] = remapped_bram0_addr;
        remapped_bram0_addr++;
    }

    // Input nodes
    for(int i=0; i<B*D; i++){
        sub_in_addr[i] = remapped_bram0_addr;
        remapped_bram0_addr++ ;
    }

    // Initial centroids
    for(int i=0; i<N*D; i++){
        sub_in_addr[i] = remapped_bram0_addr;
        remapped_bram0_addr++;
    }

    // Output sum of centroids and amount of nodes allocated to each centroid
    for(int i=0; i<(B/M)*(N*D+N); i++){
        sub_out_addr[i] = remapped_bram1_addr;
        remapped_bram1_addr++;
    }
    
    const int work_item_io_num = const_num + M*D + N*D + N*D + N; // Total amount of a work-item IO  
    const int kernel_it_num = B/M; // Total number of the kernel iteration
    int kernel_io_addr[work_item_io_num][kernel_it_num+1]; // The first column represents kernel op_id

    // Here we assume that work_item_op_id can be used as index directly.
    // If not, we need map this op_id to sequential array index.
    int it=1;
    int row_index;
    for(int p=0; p<B/M; p++){

        row_index = 0;

        //Constant work-item input
        for(int i=0; i<const_num; i++){
            kernel_io_addr[row_index][it] = const_in_addr[i];
            if(p==0){
                kernel_io_addr[row_index][0] = data_to_id(const_in[i]);
            }
            row_index++;
        }

        //Normal work-item input i.e. sub_in[M*D]
        for(int i=0; i<M*D; i++){
            kernel_io_addr[row_index][it] = sub_in_addr[p*M*D+i];
            if(p==0){
                kernel_io_addr[row_index][0] = data_to_id(i, INVAR);
            }
            row_index++;
        }

        // The initial centroids of the input, and it is needed in each iteration.
        for(int i=0; i<N*D; i++){
            kernel_io_addr[row_index][it] = sub_in_addr[B*D+i];
            if(p==0){
                kernel_io_addr[row_index][0] = data_to_id(M*D+i, INVAR);
            }
            row_index++;
        }

        //Normal output
        for(int i=0; i<N*D+N; i++){
            kernel_io_addr[row_index][it] = sub_out_addr[p*(N*D+N)+i];
            if(p==0){
                kernel_io_addr[row_index][0] = data_to_id(i, OUTVAR);
            }
            row_index++;
        }

        //Intermediate output

        it++;
    }


    //Dump the io addr of the whole kernel
    for(int i=0; i<work_item_io_num; i++){
        for(int j=0; j<kernel_it_num+1; j++){
            fHandle << kernel_io_addr[i][j] << " ";
        }
        fHandle << std::endl;
    }
    fHandle.close();

   
}

