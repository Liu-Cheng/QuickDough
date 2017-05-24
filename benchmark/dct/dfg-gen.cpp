#include "common.h"
#include "Operand.h"
#include "Instruction.h"
#include "config.h"
#include <cstdlib>
#include <list>

void IO_Init(int A_In[M], int B_In[M], int &C_Out);
void OP_Array_Init(std::vector<Operand*> &OP_Array, int A_In[M], int B_In[M], int C_Out);
void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array);
void Verify(const std::vector<Operand*> &OP_Array, int C_Out);
void DFG_Dump(const std::string &DFG_Name, const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);
int Data_To_ID(std::string Name, int idx);
void Initial_IO_Placement(const std::string &DFG_Name);
void Head_File_Dump();
void Loop_Stat(const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array);
void DCT_Fragment(int pixels[M][8], int rows[M][8]);

int Const_In[9] = {0, 16070, 15137, 13623, 11586, 9103, 6270, 3197, 14};
int Const_Num = 9;

int main(){

    int pixels[M][8];
    int rows[M][8];

    std::vector<Operand*> OP_Array;
    std::vector<Instruction*> Inst_Array;
    std::string DFG_Name = "dct-fragment";

    IO_Init(pixels, rows);
    OP_Array_Init(OP_Array, pixels, rows);
    Kernel_To_DFG(OP_Array, Inst_Array);
    DFG_Compute(OP_Array, Inst_Array);
    Verify(OP_Array, C_Out);
    DFG_Dump(DFG_Name, OP_Array, Inst_Array);
    Initial_IO_Placement(DFG_Name);
    Head_File_Dump();
    Loop_Stat(OP_Array, Inst_Array);

}

void Head_File_Dump(){

    //Input initialization
    int Block_A_In[B];
    int Block_B_In[B];
    int Block_C_Out[B/M];

   for(int i=0; i<B; i++){
        Block_A_In[i] = rand()%10;
        Block_B_In[i] = rand()%10;
    }

    for(int i=0; i<B/M; i++){
        Block_C_Out[i] = 0;
        for(int j=0; j<M; j++){
            Block_C_Out[i] += Block_A_In[i*M+j]*Block_B_In[i*M+j];
        }
    }

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
            fHandle << Const_In[i] << "}; " << std::endl;
        }
        else{
            fHandle << Const_In[i] << ", ";
        }
    }

    fHandle << "int Block_A_In[" << B << "];" << std::endl;
    fHandle << "int Block_B_In[" << B << "];" << std::endl;
    fHandle << "int Block_C_Out[" << B/M << "];" << std::endl;

    fHandle << std::endl << "#endif" << std::endl;

}

void IO_Init(int pixels[M][8], int rows[M][8]){

    for(int i=0; i<M; i++){
        for(int j=0; j<8; j++){
            pixels[i][j] = rand()%256
        }
    }
    DCT_Fragment(pixels, rows)

}

void OP_Array_Init(std::vector<Operand*> &OP_Array, int pixels[M][8], int rows[M][8]){

    int Bram0_Addr=0;
    int Bram1_Addr=0;

    /*Map constants to OP_Array*/
    for(int i=0; i<Const_Num; i++){
        Operand* OP_Ptr=new Operand();
        OP_Ptr->Set_Operand(Const_In[i], 0, Bram0_Addr, INCONST);
        Bram0_Addr++;
        OP_Array.push_back(OP_Ptr);
    }

    /* map input data to OP_Array */
    for(int i=0; i<M; i++){
        for(int j=0; j<8; j++){
            OP_Ptr=new Operand();
            OP_Ptr->Set_Operand(pixels[i][j], 0, Bram0_Addr, INVAR);
            Bram0_Addr++;
            OP_Array.push_back(OP_Ptr);
        }
    }

    /* map output data to OP_Array */
    for(int i=0; i<M; i++){
        for(int j=0; j<8; j++){
            OP_Ptr=new Operand();
            OP_Ptr->Set_Operand(rows[i][j], 1, Bram1_Addr, OUTVAR);
            Bram1_Addr++;
            OP_Array.push_back(OP_Ptr);
        }
    }

}

int Data_To_ID(std::string Name, int IDx, int IDy){

    if(Name=="Const_In"){
        return IDx;
    }
    else if(Name=="pixels"){
        return (Const_Num + IDx * 8 + IDy);
    }
    else if(Name=="rows"){
        return (Const_Num + M * 8 + IDx * 8 + IDy);
    }
    else{
        printf("Unknown IO operands! \n");
        return (EXIT_FAILURE);
    }

}

void Kernel_To_DFG(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    // The first level is simple multiplication
    Instruction* IM_Insts[M];
    Operand* IM_Operands[M];
    for(int j=0; j<M; j++){
        if(M>1){
            IM_Operands[j] = new Operand();
            OP_Array.push_back(IM_Operands[j]);
        }
        IM_Insts[j] =  new Instruction();
        if(M>1){
            IM_Insts[j]->Set_Instruction(IM_Operands[j]->OP_ID, MULADD, Data_To_ID("A_In", j), Data_To_ID("B_In", j), Data_To_ID("Const_In", 0));
        }
        else{
            IM_Insts[j]->Set_Instruction(Data_To_ID("C_Out", 0), MULADD, Data_To_ID("A_In", j), Data_To_ID("B_In", j), Data_To_ID("Const_In", 0));
        }
        Inst_Array.push_back(IM_Insts[j]);
    }

    //Corner case: there is no need for addition step.
    if(M>1){
        // Addition stages
        int Res_OP_Num = M;
        while(Res_OP_Num>3){
            for(int j=0; j<Res_OP_Num; j=j+3){
                if(j+1==Res_OP_Num){
                    IM_Operands[j/3] = IM_Operands[j];
                }
                else if(j+2==Res_OP_Num){
                    Operand* OP_Tmp = new Operand();
                    OP_Array.push_back(OP_Tmp);
                    Instruction* Inst_Tmp = new Instruction();
                    Inst_Tmp->Set_Instruction(OP_Tmp->OP_ID, ADDADD, IM_Operands[j]->OP_ID, IM_Operands[j+1]->OP_ID, Data_To_ID("Const_In", 0));
                    Inst_Array.push_back(Inst_Tmp);
                    IM_Operands[j/3] = OP_Tmp;
                }
                else{
                    Operand* OP_Tmp = new Operand();
                    OP_Array.push_back(OP_Tmp);
                    Instruction* Inst_Tmp = new Instruction();
                    Inst_Tmp->Set_Instruction(OP_Tmp->OP_ID, ADDADD, IM_Operands[j]->OP_ID, IM_Operands[j+1]->OP_ID, IM_Operands[j+2]->OP_ID);
                    Inst_Array.push_back(Inst_Tmp);
                    IM_Operands[j/3] = OP_Tmp;
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
            Instruction* Inst_Tmp = new Instruction();
            Inst_Tmp->Set_Instruction(Data_To_ID("C_Out", 0), ADDADD, IM_Operands[0]->OP_ID, IM_Operands[1]->OP_ID, IM_Operands[2]->OP_ID);
            Inst_Array.push_back(Inst_Tmp);
        }
        else if(Res_OP_Num==2){
            Instruction* Inst_Tmp = new Instruction();
            Inst_Tmp->Set_Instruction(Data_To_ID("C_Out", 0), ADDADD, IM_Operands[0]->OP_ID, IM_Operands[1]->OP_ID, Data_To_ID("Const_In", 0));
            Inst_Array.push_back(Inst_Tmp);
        }
        else{
            std::cout << "Unexpected residue!\n";
        }
    }

}

void DFG_Compute(std::vector<Operand*> &OP_Array, std::vector<Instruction*> &Inst_Array){

    std::vector<Instruction*>::iterator Inst_It;
    for(Inst_It=Inst_Array.begin(); Inst_It!=Inst_Array.end(); Inst_It++){
        //int Src_Val0=id_to_op[(*Inst_It)->Src_OP0]->OP_Val;
        //int Src_Val1=id_to_op[(*Inst_It)->Src_OP1]->OP_Val;
        //int Src_Val2=id_to_op[(*Inst_It)->Src_OP2]->OP_Val;
        int Src_Val0=OP_Array[(*Inst_It)->Src_OP0]->OP_Val;
        int Src_Val1=OP_Array[(*Inst_It)->Src_OP1]->OP_Val;
        int Src_Val2=OP_Array[(*Inst_It)->Src_OP2]->OP_Val;
        int Dst_Val=(*Inst_It)->Compute(Src_Val0, Src_Val1, Src_Val2);
                
        //id_to_op[(*Inst_It)->Dst_OP]->OP_Val=Dst_Val;
        OP_Array[(*Inst_It)->Dst_OP]->OP_Val=Dst_Val;
    }

}


void Verify(const std::vector<Operand*> &OP_Array, int C_Out){

    int OP_ID = Data_To_ID("C_Out", 0);
    if(OP_Array[OP_ID]->OP_Val!=C_Out){
        printf("DFG computation is wrong!\n");
        printf("expected_result=%d, computed result=%d \n", C_Out, OP_Array[OP_ID]->OP_Val);
        exit(EXIT_FAILURE);
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

/*-----------------------------------------------------------------
 * Format of this file: 
 * io_OP_ID addr_iteration0 addr_iteration1 ...  
 * ...
 *
 * To use the data in the table, a suggested method is using a map
 * together with original array:
 * map<OP_ID, Row_Index>
 * data[io_num][it_num]
 *
 * Given OP_ID, row index can be acquired from the map, With the row 
 * index, then it is easy to find the address with exact iteration.
 * --------------------------------------------------------------*/

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
     * Input: sub_in[2*M] 
     * output: sub_out[B/M]
     * The newly remapped addr is stored in the array as if it is data.
     * --------------------------------------------------------------*/
    int Remapped_Bram0_Addr = 0;
    int Remapped_Bram1_Addr = 0;
    int Const_In_Addr[1];
    int A_In_Addr[B];
    int B_In_Addr[B];
    int C_Out_Addr[B/M];
    
    Const_In_Addr[0] = Remapped_Bram0_Addr;
    Remapped_Bram0_Addr++ ;

    for(int i=0; i<B; i++){
        A_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++ ;
    }

    for(int i=0; i<B; i++){
        B_In_Addr[i] = Remapped_Bram0_Addr;
        Remapped_Bram0_Addr++;
    }

    for(int i=0; i<B/M; i++){
        C_Out_Addr[i] = Remapped_Bram1_Addr;
        Remapped_Bram1_Addr ++;
    }
    
    const int Kernel_IO_Num = 1 + 2*M + 1; // total number of work-item's operand
    const int Kernel_Num_Per_Block = B/M; // total number of iterations of the work-item
    int Kernel_IO_Addr[Kernel_IO_Num][Kernel_Num_Per_Block+1]; // The first column represents kernel OP_ID

    // Here we assume that work_item_OP_ID can be used as index directly.
    // If not, we need map this OP_ID to sequential array index.
    int It=1;
    int Row_Index;
    for(int p=0; p<B/M; p++){

        Row_Index = 0;

        Kernel_IO_Addr[Row_Index][It] = Const_In_Addr[0];
        if(p==0){
            Kernel_IO_Addr[Row_Index][0] = Data_To_ID("Const_In", 0);
        }
        Row_Index++;

        //Normal work-item input i.e. A_In[M], B_In[M]
        for(int i=0; i<M; i++){
            Kernel_IO_Addr[Row_Index][It] = A_In_Addr[p*M+i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("A_In", i);
            }
            Row_Index++;
        }

        for(int i=0; i<M; i++){
            Kernel_IO_Addr[Row_Index][It] = B_In_Addr[p*M+i];
            if(p==0){
                Kernel_IO_Addr[Row_Index][0] = Data_To_ID("B_In", i);
            }
            Row_Index++;
        }

        //Normal output
        Kernel_IO_Addr[Row_Index][It] = C_Out_Addr[p];
        if(p==0){
            Kernel_IO_Addr[Row_Index][0] = Data_To_ID("C_Out", 0);
        }
        Row_Index++;

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

void Loop_Stat(const std::vector<Operand*> &OP_Array, const std::vector<Instruction*> &Inst_Array){
    std::ostringstream oss;
    oss << "./dump/loop-stat.txt";
    std::ofstream fHandle;
    fHandle.open(oss.str().c_str());
    if(!fHandle.is_open()){
        std::cout << "Failed to open " << oss.str() << "\n";
        exit(EXIT_FAILURE);
    }

    fHandle << "DFG_In_Num " << Const_Num + M + M << std::endl;
    fHandle << "DFG_Out_Num " << 1 << std::endl;
    fHandle << "DFG_Operation_Num " << Inst_Array.size() << std::endl;
    fHandle << "DFG_Total_Nodes " << OP_Array.size() << std::endl;
    fHandle << "Block_Repeat_Num " << B/M << std::endl;
    fHandle << "Block_Reuse_Num " << Const_Num << std::endl;
    fHandle << "Block_In_Num " << Const_Num + B + B << std::endl;
    fHandle << "Block_Out_Num " << 1 << std::endl;
    fHandle.close();

}

void DCT_Fragment(int pixels[M][8], int rows[M][8]){
	for (int i=0; i<M; i++){
		int s07 = pixels[i][0] + pixels[i][7];
		int d07 = pixels[i][0] - pixels[i][7];
		int s16 = pixels[i][1] + pixels[i][6];
		int d16 = pixels[i][1] - pixels[i][6];
		int s25 = pixels[i][2] + pixels[i][5];
		int d25 = pixels[i][2] - pixels[i][5];
		int s34 = pixels[i][3] + pixels[i][4];
		int d34 = pixels[i][3] - pixels[i][4];

		rows[i][1] = (C1*d07 + C3*d16 + C5*d25 + C7*d34) >> 14;
		rows[i][3] = (C3*d07 - C7*d16 - C1*d25 - C5*d34) >> 14;
		rows[i][5] = (C5*d07 - C1*d16 + C7*d25 + C3*d34) >> 14;
		rows[i][7] = (C7*d07 - C5*d16 + C3*d25 - C1*d34) >> 14;

		int s0734 = s07 + s34;
		int d0734 = s07 - s34;
		int s1625 = s16 + s25;
		int d1625 = s16 - s25;

		rows[i][0] = (C4*(s0734 + s1625)) >> 14;
		rows[i][4] = (C4*(s0734 - s1625)) >> 14;

		rows[i][2] = (C2*d0734 + C6*d1625) >> 14;
		rows[i][6] = (C6*d0734 - C2*d1625) >> 14;
	}
}
