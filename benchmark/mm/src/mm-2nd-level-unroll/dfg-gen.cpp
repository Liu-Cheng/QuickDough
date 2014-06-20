#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"
#include <cstdlib>
#include <list>

void IO_Init(int A_In[M][N], int B_In[N], int C_Out[M]);
void OP_Array_Init(std::vector<Operand*> &OP_Array, int A_In[M][N], int B_In[N], int C_Out[M]);
void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void Verify(const std::vector<Operand*> &OP_Array, int C_Out[M]);
void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);
int Data_To_ID(std::string Name, int IDx, int IDy);
void Initial_IO_Placement(const std::string &DFG_Name);
void Head_File_Dump();
void IO_coe_Dump(int Block_A_In[B][N], int Block_B_In[N], int Block_C_Out[B]);
void Single_Dec_Dump(std::ofstream &fHandle, unsigned int Dec_Data, int Width);

int Const_In[1] = {0};
int Const_Num = 1;

int main(){

    int A_In[M][N];
    int B_In[N];
    int C_Out[M];

    std::vector<Operand*> OP_Array;
    std::vector<Instruction*> Inst_Array;
    std::string DFG_Name="mm";

    IO_Init(A_In, B_In, C_Out);
    OP_Array_Init(OP_Array, A_In, B_In, C_Out);
    Kernel_To_DFG(OP_Array, Inst_Array);
    DFG_Compute(OP_Array, Inst_Array);
    Verify(OP_Array, C_Out);
    DFG_Dump(DFG_Name, OP_Array, Inst_Array);
    Initial_IO_Placement(DFG_Name);
    Head_File_Dump();

}

void IO_coe_Dump(int Block_A_In[B][N], int Block_B_In[N], int Block_C_Out[B]){

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
        for(int j=0; j<N; j++){
            Single_Dec_Dump(fHandle, (unsigned int) Block_A_In[i][j], Width);
        }
    }

    for(int i=0; i<N; i++){
        Single_Dec_Dump(fHandle, (unsigned int) Block_B_In[i], Width);
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
    for(int i=0; i<B; i++){
        Single_Dec_Dump(fHandle, (unsigned int)Block_C_Out[i], Width);
    }
    fHandle.close();

}

void Head_File_Dump(){

    //Input initialization
    int Block_A_In[B][N];
    int Block_B_In[N];
    int Block_C_Out[B];

    for(int i=0; i<B; i++){
        for(int j=0; j<N; j++){
            Block_A_In[i][j] = rand()%10;
        }
    }

    for(int i=0; i<N; i++){
        Block_B_In[i] = rand()%10;
    }

    for(int i=0; i<B; i++){
        Block_C_Out[i] = 0;
        for(int j=0; j<N; j++){
            Block_C_Out[i] += Block_A_In[i][j]*Block_B_In[j];
        }
    }

    IO_coe_Dump(Block_A_In, Block_B_In, Block_C_Out);

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


    fHandle << "int Block_A_In[" << B << "][" << N <<"] = {" << std::endl;
    for(int i=0; i<B; i++){
        for(int j=0; j<N; j++){
            if(j==0){
                fHandle << "{" << Block_A_In[i][j] << ", ";
            }
            else if(i==B-1 && j==N-1){
                fHandle << Block_A_In[i][j] << "}" << std::endl;
            }
            else if(j==N-1){
                fHandle << Block_A_In[i][j] << "}, " << std::endl;
            }
            else{
                fHandle << Block_A_In[i][j] << ", ";
            }
        }
    }
    fHandle << "};" << std::endl << std::endl;

    fHandle << "int Block_B_In[" << N << "] = "<<"{";
    for(int i=0; i<N; i++){
        if(i==N-1){
            fHandle << Block_B_In[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Block_B_In[i] << ", ";
        }
    }


    fHandle << "int Block_C_Out[" << B << "] = " << "{";
    for(int i=0; i<B; i++){
        if(i==B-1){
            fHandle << Block_C_Out[i] << "};" << std::endl << std::endl;
        }
        else{
            fHandle << Block_C_Out[i] << ", ";
        }
    }
    
}

void IO_Init(int A_In[M][N], int B_In[N], int C_Out[M]){

    for(int i=0; i<M; i++){
        for(int j=0; j<N; j++){
            A_In[i][j] = rand()%10;
        }
    }

    for(int i=0; i<N; i++){
        B_In[i] = rand()%10;
    }

    for(int i=0; i<M; i++){
        C_Out[i]=0;
        for(int j=0; j<N; j++){
            C_Out[i] += A_In[i][j]*B_In[j];
        }
    }

}

void OP_Array_Init(std::vector<Operand*> &OP_Array, int A_In[M][N], int B_In[N], int C_Out[M]){

    int Bram0_Addr=0;
    int Bram1_Addr=0;

    /* 0 is the only contant */
    for(int i=0; i<Const_Num; i++){
        Operand* op_ptr=new Operand();
        op_ptr->Set_Operand(Const_In[i], 0, Bram0_Addr, INCONST);
        Bram0_Addr++;
        OP_Array.push_back(op_ptr);
    }

    /* map input data to OP_Array */
    for(int i=0; i<M; i++){
        for(int j=0; j<N; j++){
            Operand* op_ptr=new Operand();
            op_ptr->Set_Operand(A_In[i][j], 0, Bram0_Addr, INVAR);
            Bram0_Addr++;
            OP_Array.push_back(op_ptr);
        }
    }

    for(int i=0; i<N; i++){
        Operand* op_ptr=new Operand();
        op_ptr->Set_Operand(B_In[i], 0, Bram0_Addr, INVAR);
        Bram0_Addr++;
        OP_Array.push_back(op_ptr);
    }

    /* map output data to OP_Array */
    for(int i=0; i<M; i++){
        Operand* op_ptr=new Operand();
        op_ptr->Set_Operand(0, 1, Bram1_Addr, OUTVAR);
        Bram1_Addr++;
        OP_Array.push_back(op_ptr);
    }

}

int Data_To_ID(std::string Name, int IDx, int IDy){

    if(Name=="Const_In"){
        return (IDx);
    }
    else if(Name=="A_In"){
        return (Const_Num + IDx*N +IDy);
    }
    else if(Name=="B_In"){
        return (Const_Num + M*N + IDx);
    }
    else if(Name=="C_Out"){
        return (Const_Num + M*N + N + IDx);
    }
    else{
        printf("Unknown IO operands! \n");
        return (EXIT_FAILURE);
    }

}

void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    for(int i=0; i<M; i++){

        Operand* IM_OP_Ptr[N];
        for(int j=0; j<N; j++){
            Instruction* Inst_Ptr = new Instruction();
            IM_OP_Ptr[j] = new Operand();
            OP_Array.push_back(IM_OP_Ptr[j]);
            Inst_Ptr->Set_Instruction(IM_OP_Ptr[j]->op_id, MULADD, Data_To_ID("A_In", i, j), Data_To_ID("B_In", j, 0), 0);
            Inst_Array.push_back(Inst_Ptr);
        }

        // Addition stages
        int Res_OP_Num = N;
        while(Res_OP_Num>3){
            for(int j=0; j<Res_OP_Num; j=j+3){
                if(j+1==Res_OP_Num){
                    IM_OP_Ptr[j/3] = IM_OP_Ptr[j];
                }
                else if(j+2==Res_OP_Num){
                    Operand* op_tmp = new Operand();
                    OP_Array.push_back(op_tmp);
                    Instruction* inst_tmp = new Instruction();
                    inst_tmp->Set_Instruction(op_tmp->op_id, ADDADD, IM_OP_Ptr[j]->op_id, IM_OP_Ptr[j+1]->op_id, 0);
                    Inst_Array.push_back(inst_tmp);
                    IM_OP_Ptr[j/3] = op_tmp;
                }
                else{
                    Operand* op_tmp = new Operand();
                    OP_Array.push_back(op_tmp);
                    Instruction* inst_tmp = new Instruction();
                    inst_tmp->Set_Instruction(op_tmp->op_id, ADDADD, IM_OP_Ptr[j]->op_id, IM_OP_Ptr[j+1]->op_id, IM_OP_Ptr[j+2]->op_id);
                    Inst_Array.push_back(inst_tmp);
                    IM_OP_Ptr[j/3] = op_tmp;
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
            inst_tmp->Set_Instruction(Data_To_ID("C_Out", i, 0), ADDADD, IM_OP_Ptr[0]->op_id, IM_OP_Ptr[1]->op_id, IM_OP_Ptr[2]->op_id);
            Inst_Array.push_back(inst_tmp);
        }
        else if(Res_OP_Num==2){
            Instruction* inst_tmp = new Instruction();
            inst_tmp->Set_Instruction(Data_To_ID("C_Out", i, 0), ADDADD, IM_OP_Ptr[0]->op_id, IM_OP_Ptr[1]->op_id, 0);
            Inst_Array.push_back(inst_tmp);
        }
        else{
            std::cout << "Unexpected residue!\n";
        }
        
        /*
        // This is a straightforward data DFG generation
        int Last_OP_ID;
        for(int j=0; j<N; j++){
            Instruction* Inst_Ptr=new Instruction();
            if(j==0){
                Operand* Dst_Ptr=new Operand();
                OP_Array.push_back(Dst_Ptr);
                Inst_Ptr->Set_Instruction(Dst_Ptr->op_id, MULADD, Data_To_ID("B_In", j, 0), Data_To_ID("A_In", i, j), Data_To_ID("Const_In", 0, 0));
                Inst_Array.push_back(Inst_Ptr);
                Last_OP_ID=Dst_Ptr->op_id;
            }
            else if(j<N-1){
                Operand* Dst_Ptr=new Operand();
                OP_Array.push_back(Dst_Ptr);
                Inst_Ptr->Set_Instruction(Dst_Ptr->op_id, MULADD, Data_To_ID("B_In", j, 0), Data_To_ID("A_In", i, j), Last_OP_ID);
                Inst_Array.push_back(Inst_Ptr);
                Last_OP_ID=Dst_Ptr->op_id;
            }
            else{
                Inst_Ptr->Set_Instruction(Data_To_ID("C_Out", i, 0), MULADD, Data_To_ID("B_In", j, 0), Data_To_ID("A_In", i, j), Last_OP_ID);
                Inst_Array.push_back(Inst_Ptr);
            }
        }
        */
    }
}



void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){
    std::vector<Instruction*>::iterator Inst_It;
    for(Inst_It=Inst_Array.begin(); Inst_It!=Inst_Array.end(); Inst_It++){
        //int src_val0=id_to_op[(*Inst_It)->src_op0]->op_value;
        //int src_val1=id_to_op[(*Inst_It)->src_op1]->op_value;
        //int src_val2=id_to_op[(*Inst_It)->src_op2]->op_value;
        int src_val0=OP_Array[(*Inst_It)->src_op0]->op_value;
        int src_val1=OP_Array[(*Inst_It)->src_op1]->op_value;
        int src_val2=OP_Array[(*Inst_It)->src_op2]->op_value;
        int dst_val=(*Inst_It)->Compute(src_val0, src_val1, src_val2);
                
        //id_to_op[(*Inst_It)->dst_op]->op_value=dst_val;
        OP_Array[(*Inst_It)->dst_op]->op_value=dst_val;
    }
}


void Verify(const std::vector<Operand*> &OP_Array, int C_Out[M]){
    for(int i=0; i<M; i++){
        int op_id=Data_To_ID("C_Out", i, 0);
        if(OP_Array[op_id]->op_value!=C_Out[i]){
            printf("DFG computation is wrong!\n");
            printf("expected[%d]=%d, computed result=%d \n", i, C_Out[i], OP_Array[op_id]->op_value);
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
        operand_fhandle << (*op_it)->op_id << " " 
            << (*op_it)->op_bram_addr << " " 
            << (*op_it)->op_value << " " 
            << (*op_it)->op_bram_id << " " 
            << (*op_it)->op_type << "\n";
    }
    operand_fhandle.close();

    /* Dump DFG node details to .s file */
    std::map<OPCODE, int> opcode_encoder;
    int opcode_id=0;
    std::vector<Instruction*>::const_iterator Inst_It;
    for(Inst_It=Inst_Array.begin(); Inst_It!=Inst_Array.end(); Inst_It++){
        inst_fhandle << (*Inst_It)->dst_op << " " 
            << (*Inst_It)->inst_opcode << " " 
            << (*Inst_It)->src_op0 << " " 
            << (*Inst_It)->src_op1 << " " 
            << (*Inst_It)->src_op2 << "\n";
        if(opcode_encoder.count((*Inst_It)->inst_opcode)<=0){
            opcode_encoder[(*Inst_It)->inst_opcode]=opcode_id;
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

/*-----------------------------------------------------------------
 * Format of this file: 
 * io_op_id addr_iteration0 addr_iteration1 ...  
 * ...
 *
 * To use the data in the table, a suggested method is using a map
 * together with original array:
 * map<op_id, Row_Index>
 * data[io_num][it_num]
 *
 * Given op_id, row index can be acquired from the map, With the row 
 * index, then it is easy to find the address with exact iteration.
 * --------------------------------------------------------------*/

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
     * Input: A_In[B][N], B_In[N]
     * output: C_Out[B]
     * The newly remapped addr is stored in the array as if it is data.
     * --------------------------------------------------------------*/
    int Remapped_Bram0_Addr = 0;
    int Remapped_Bram1_Addr = 0;
    int Const_In_Addr[1];
    int A_In_Addr[B][N];
    int B_In_Addr[N];
    int C_Out_Addr[B];
 
    //Input location
    for(int i=0; i<Const_Num; i++){
        Const_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++ ;
    }

    for(int i=0; i<B; i++){
        for(int j=0; j<N; j++){
            A_In_Addr[i][j] = Remapped_Bram0_Addr;
            Remapped_Bram0_Addr++ ;
        }
    }

    for(int i=0; i<N; i++){
        B_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++;
    }

    // Output location
    for(int i=0; i<B; i++){
        C_Out_Addr[i] = Remapped_Bram1_Addr;
        Remapped_Bram1_Addr++;
    }
    
    const int Work_Item_IO_Num = 1 + M*N + N + M; //total number of work-item's operand
    const int Kernel_It_Num = B/M; //total number of the kernel iteration
    int Kernel_IO_Addr[Work_Item_IO_Num][Kernel_It_Num+1]; //The first column represents kernel op_id

    // Here we assume that work_item_op_id can be used as index directly.
    // If not, we need map this op_id to sequential array index.
    int It=1;
    int Row_Index;
    for(int p=0; p<B/M; p++){

        Row_Index = 0;

        //Constant work-item input
        for(int i=0; i<Const_Num; i++){
            Kernel_IO_Addr[Row_Index][It] = Const_In_Addr[i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Const_In", i, 0);
            }
            Row_Index++;
        }

        //Normal work-item input i.e. A_In[M][N]
        for(int i=0; i<M; i++){
            for(int j=0; j<N; j++){
                Kernel_IO_Addr[Row_Index][It] = A_In_Addr[p*M+i][j];
                if(p==0){
                    Kernel_IO_Addr[Row_Index][0] = Data_To_ID("A_In", i, j);
                }
                Row_Index++;
            }
        }

        //The last row of the input, and it is needed in each iteration.
        for(int i=0; i<N; i++){
            Kernel_IO_Addr[Row_Index][It] = B_In_Addr[i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("B_In", i, 0);
            }
            Row_Index++;
        }

        //Normal output
        for(int i=0; i<M; i++){
            Kernel_IO_Addr[Row_Index][It] = C_Out_Addr[p*M+i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("C_Out", i, 0);
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



