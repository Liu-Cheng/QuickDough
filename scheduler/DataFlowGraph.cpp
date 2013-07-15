// ============================================================================
// Algorithm Description:
// Implementation of the data flow graph
//
// Version:
// 0.1      Dec 1th 2011
// 0.2      Oct 29th 2012   Add new vertex type
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#include "DataFlowGraph.h"

using namespace std;

DataFlowGraph::DataFlowGraph(){
    LoadParameter();
    MMInstGen(MATRIX_M,MATRIX_N,MATRIX_P);
    DFGConstruct();
    DFGStatistic();
    /*
       if(GLvar::print_level==11){
       VertexPriorityAllocation();
       VertexPriorityAnalysis();
       OutputDegreeAnalysis();
       InputDegreeAnalysis();
       }
       */
}

void DataFlowGraph::LoadParameter(){

    string configure_file_name="config/configure.txt";
    ifstream configure_file_handle;
    configure_file_handle.open(configure_file_name.c_str());
    if(!configure_file_handle.is_open()){
        DEBUG1("Failed to open the configure.txt!");
    }

    while(!configure_file_handle.eof()){
        string configure_item_key;
        configure_file_handle >> configure_item_key;
        if(configure_item_key=="DFG_type"){
            string configure_item_value;
            configure_file_handle >> configure_item_value;
            if(configure_item_value=="FFT"){
                DFG_type=FFT;
            }
            else if(configure_item_value=="Random"){
                DFG_type=Random;
            }
            else if(configure_item_value=="CONV"){
                DFG_type=CONV;
            }
            else if(configure_item_value=="VD"){
                DFG_type=VD;
            }
            else if(configure_item_value=="AES"){
                DFG_type=AES;
            }
            else if(configure_item_value=="MM"){
                DFG_type=MM;
            }
            else{
                DEBUG1("Unknown DFG_type!");
            }
        }

        else if(configure_item_key=="maximum_operation_cost"){
            configure_file_handle >> GLvar::maximum_operation_cost;
        }

        else if(configure_item_key=="minimum_operation_cost"){
            configure_file_handle >> GLvar::minimum_operation_cost;
        }

        else if(configure_item_key=="output_operation_proportion"){
            configure_file_handle >> GLvar::output_operation_proportion;
        }

        else if(configure_item_key=="input_operation_proportion"){
            configure_file_handle >> GLvar::input_operation_proportion;
        }

        else if(configure_item_key=="output_operation_num"){
            configure_file_handle >> GLvar::output_operation_num;
        }

        else if(configure_item_key=="input_operation_num"){
            configure_file_handle >> GLvar::input_operation_num;
        }

        else if(configure_item_key=="kernel_repeat_num"){
            configure_file_handle >> GLvar::kernel_repeat_num;
        }

        else if(configure_item_key=="break_point_num"){
            configure_file_handle >> GLvar::break_point_num;
        }

        else if(configure_item_key=="dep_level1_proportion"){
            configure_file_handle >> GLvar::dep_level1_proportion;
        }

        else if(configure_item_key=="dep_level2_proportion"){
            configure_file_handle >> GLvar::dep_level2_proportion;
        }

        else if(configure_item_key=="dep_level3_proportion"){
            configure_file_handle >> GLvar::dep_level3_proportion;
        }

        else if(configure_item_key=="dep_level1_num"){
            configure_file_handle >> GLvar::dep_level1_num;
        }

        else if(configure_item_key=="dep_level2_num"){
            configure_file_handle >> GLvar::dep_level2_num;
        }

        else if(configure_item_key=="dep_level3_num"){
            configure_file_handle >> GLvar::dep_level3_num;
        }

        else if(configure_item_key=="proportion_switch"){
            configure_file_handle >> GLvar::proportion_switch;
        }

    }
    configure_file_handle.close();
}

void DataFlowGraph::InstFormat(){
    //Mainly allocate unique ID to each operation as well as input data.
    //Also rename operation when there are false dependency.
    //I simply leave it blank at the moment and I will make up it later.
    DEBUG1("To be completed soon!");
}

bool DataFlowGraph::IsVertexInDFG(const int &operation_id){
    bool test_flag;
    int tmp_id=DFG_vertex[operation_id]->vertex_id;
    if(tmp_id==operation_id){
        test_flag=true;
    }
    else if(tmp_id==NaN){
        test_flag=false;
    }
    else{
        DEBUG1("Vertex does not match its id!");
        test_flag=false;
    }
    return test_flag;
}

bool DataFlowGraph::IsEdgeInDFG(const int &src, const int &dst){
    bool test_flag;
    int identical_edge_num=0;
    vector<Edge*>::iterator edge_iter;
    for(edge_iter=DFG_edge.begin(); edge_iter!=DFG_edge.end(); edge_iter++){
        int tmp_src=(*edge_iter)->edge_src;
        int tmp_dst=(*edge_iter)->edge_dst;
        if(tmp_src==src && tmp_dst==dst){
            identical_edge_num++;
            break;
        }
    }
    if(identical_edge_num==0){
        test_flag=false;
    }
    else if(identical_edge_num==1){
        test_flag=true;
    }
    else{
        DEBUG1("%s", "There are Edges with identical source and destination!");
        test_flag=false;
    }
    return test_flag;
}

void DataFlowGraph::DFGConstruct(){
    string DFG_Inst_File;
    string DFG_IO_File;

    if(DFG_type==FFT){
        DFG_Inst_File="./config/FFT.s";
        DFG_IO_File="./config/FFT.txt";
    }
    else if(DFG_type==VD){
        DFG_Inst_File="./config/VD.s";
        DFG_IO_File="./config/VD.txt";
    }
    else if(DFG_type==CONV){
        DFG_Inst_File="./config/CONV.s";
        DFG_IO_File="./config/CONV.txt";
    }
    else if(DFG_type==Random){
        DFG_Inst_File="./config/Random.s";
        DFG_IO_File="./config/Random.txt";
    }
    else if(DFG_type==AES){
        DFG_Inst_File="./config/AES.s";
        DFG_IO_File="./config/AES.txt";
    }
    else if(DFG_type==MM){
        DFG_Inst_File="./config/MM.s";
        DFG_IO_File="./config/MM.txt";
    }
    else {
        DEBUG1("DFG type error!");
    }
    cout<<"Load "<<DFG_Inst_File<<endl;
    cout<<"Load "<<DFG_IO_File<<endl;

    ifstream DFG_IO_Handle;
    DFG_IO_Handle.open(DFG_IO_File.c_str());
    if(!DFG_IO_Handle.is_open()){
        DEBUG1("DFG IO file open error!");
    }

    map<int, int> op_to_value;
    map<int, int> op_to_bram_addr;
    map<int, int> op_to_bram_id;
    int max_bram_id=0;
    while(!DFG_IO_Handle.eof()){
        int op_id;
        int op_bram_addr;
        int op_value;
        int op_bram_id;
        int useless;
        DFG_IO_Handle >> op_id;
        DFG_IO_Handle >> op_bram_addr;
        DFG_IO_Handle >> op_value;
        DFG_IO_Handle >> op_bram_id;
        DFG_IO_Handle >> useless;

        if(DFG_IO_Handle.fail()){
            break;
        }

        if(max_bram_id<op_bram_id){
            max_bram_id=op_bram_id;
        }
        op_to_value[op_id] = op_value;
        op_to_bram_addr[op_id]=op_bram_addr;
        op_to_bram_id[op_id]=op_bram_id;
    }
    DFG_IO_Handle.close();
    OutsideDataMemoryDumpCoe(max_bram_id, op_to_value, op_to_bram_addr, op_to_bram_id);

    //Check maximum operation number
    ifstream DFG_Inst_Handle;
    DFG_Inst_Handle.open(DFG_Inst_File.c_str());
    if(!DFG_Inst_Handle.is_open()){
        DEBUG1("DFG instruction file open error!");
    }

    int max_vertex_id=0;
    //int kernel_size=0;
    while(!DFG_Inst_Handle.eof()){
        int op_id;
        for(int i=0; i<5; i++){
            DFG_Inst_Handle >> op_id;
            if(i==0 && max_vertex_id<op_id){
                max_vertex_id=op_id;
            }
        }

        if(DFG_Inst_Handle.fail()){
            break;
        }
        //kernel_size++;

    }
    DFG_Inst_Handle.close();
    int kernel_op_num=max_vertex_id+1;
    int DFG_op_num=kernel_op_num;

    //Expand the kernel instruction file to unrolled instruction file
    //dfg_op_num=DFGExpand(DFG_Inst_File,kernel_size,kernel_op_num);

    DFG_vertex.resize(DFG_op_num);
    for(int i=0; i<DFG_op_num; i++){
        DFG_vertex[i]=new Vertex(i);
    }

    DFG_Inst_Handle.open(DFG_Inst_File.c_str());
    if(!DFG_Inst_Handle.is_open()){
        DEBUG1("DFG file open error!");
    }

    int edge_id=0;
    int inst_id=0;
    while(!DFG_Inst_Handle.eof()){

        // Instruction format: dst--opcode--src0--src1--src2
        vector<int> instruction_fields;
        instruction_fields.resize(5);
        for(int i=0; i<5; i++){
            DFG_Inst_Handle >> instruction_fields[i];
        }
        if(DFG_Inst_Handle.fail()){
            break;
        }

        //Since each destination of an instruction must be a new vertex in DFG,
        //instance a new vertex directly for each instruction.
        int dst_op=instruction_fields[0];
        DFG_vertex[dst_op]->vertex_attribute.opcode=instruction_fields[1];
        Vertex* dst_vertex=DFG_vertex[dst_op];
        /*int kernel_level=inst_id/kernel_size;
          if(kernel_level<GLvar::break_point_num){
          dst_vertex->vertex_type2=BeforeBreakPoint;
          }
          else if(kernel_level==GLvar::break_point_num){
          dst_vertex->vertex_type2=AtBreakPoint;
          }
          else{
          dst_vertex->vertex_type2=AfterBreakPoint;
          }*/
        inst_id++;

        //If the source operand appears for the first time, then instance a vertex object.
        //Note that the operand must be input data.
        for(int i=2; i<5; i++){
            int src_op=instruction_fields[i];
            Vertex* src_vertex;
            src_vertex=DFG_vertex[src_op];
            src_vertex->children.push_back(dst_vertex);
            dst_vertex->parents.push_back(src_vertex);

            //Instance edge
            Edge* edge_tmp=new Edge(edge_id); 
            edge_id++;
            edge_tmp->edge_src=src_op;
            edge_tmp->edge_dst=dst_op;

            DFG_edge.push_back(edge_tmp);
            src_vertex->out_edge.push_back(edge_tmp);
            dst_vertex->in_edge.push_back(edge_tmp);
        }
    }
    DFG_Inst_Handle.close();

    //Initalize the verteies according to the DFG
    vector<Vertex*>::iterator vertex_iter;
    for(vertex_iter=DFG_vertex.begin(); vertex_iter!=DFG_vertex.end(); vertex_iter++){

        int vID=(*vertex_iter)->vertex_id;
        if((*vertex_iter)->parents.size()>0 && (*vertex_iter)->children.size()>0){
            (*vertex_iter)->vertex_type=IntermediateData;
            (*vertex_iter)->vertex_attribute.vertex_state=DataUnavail;
            (*vertex_iter)->vertex_bram_addr=NaN;
            (*vertex_iter)->vertex_bram_id=NaN;
        }
        else if((*vertex_iter)->parents.size()==0 && (*vertex_iter)->children.size()>0){
            (*vertex_iter)->vertex_type=InputData;
            (*vertex_iter)->vertex_attribute.vertex_state=DataInOutMem;

            if(op_to_value.count(vID)==0){
                op_to_value[vID]=0;
            }
            (*vertex_iter)->vertex_value=op_to_value[vID];

            if(op_to_bram_addr.count(vID)>0){
                (*vertex_iter)->vertex_bram_addr=op_to_bram_addr[vID];
                (*vertex_iter)->vertex_bram_id=op_to_bram_id[vID];
            }
            else{
                (*vertex_iter)->vertex_bram_addr=NaN;
                (*vertex_iter)->vertex_bram_id=NaN;
            }
        }
        else if((*vertex_iter)->parents.size()>0 && (*vertex_iter)->children.size()==0){
            (*vertex_iter)->vertex_type=OutputData;
            (*vertex_iter)->vertex_attribute.vertex_state=DataUnavail;
            if(op_to_bram_addr.count(vID)>0){
                (*vertex_iter)->vertex_bram_addr=op_to_bram_addr[vID];
                (*vertex_iter)->vertex_bram_id=op_to_bram_id[vID];
            }
            else{
                (*vertex_iter)->vertex_bram_addr=NaN;
                (*vertex_iter)->vertex_bram_id=NaN;
            }
        }
        else{
            if((*vertex_iter)->vertex_id!=0){
                DEBUG1("Vertex %d has no parents nor no children! Unrecongnized vertex in DFG!",(*vertex_iter)->vertex_id);
            }
        }
    }
}

int DataFlowGraph::DFGExpand(string &DFG_Inst_File, const int &kernel_size, const int &kernel_op_num){
    vector<int> instruction_break_points_raw;
    ifstream DFG_inst_handle;
    DFG_inst_handle.open(DFG_Inst_File.c_str());
    if(!DFG_inst_handle.is_open()){
        DEBUG1("DFG file open error!");
    }

    //Put kernel instructions into the array
    vector<vector<int> > kernel_inst_serial;
    kernel_inst_serial.resize(kernel_size);
    for(int i=0; i<kernel_size; i++){
        kernel_inst_serial[i].resize(5);
    }

    //Instruction format: dst--opcode--src1--src2--src3
    int index=0;
    while(!DFG_inst_handle.eof()){
        int tmp[5];
        for(int j=0; j<5; j++){
            DFG_inst_handle >> tmp[j];
        }
        if(DFG_inst_handle.fail()){
            break;
        }
        for(int j=0; j<5; j++){
            kernel_inst_serial[index][j]=tmp[j];
        }
        index++;
    }
    DFG_inst_handle.close();

    //Analyze kernel instructions
    int kernel_num=GLvar::kernel_repeat_num;

    int kernel_input_op_num=0;
    int kernel_output_op_num=0;
    vector<int> parent_num;
    vector<int> child_num;
    parent_num.resize(kernel_op_num);
    child_num.resize(kernel_op_num);
    list<int> kernel_input_op;
    list<int> kernel_output_op;
    for(int i=0; i<kernel_op_num; i++){
        parent_num[i]=0;
        child_num[i]=0;
    }

    for(int i=0; i<kernel_size; i++){
        parent_num[kernel_inst_serial[i][0]]+=3;
        child_num[kernel_inst_serial[i][2]]++;
        child_num[kernel_inst_serial[i][3]]++;
        child_num[kernel_inst_serial[i][4]]++;
    }

    //Ignore operand 0
    for(int i=1; i<kernel_op_num; i++){
        if(parent_num[i]==0){
            kernel_input_op_num++;
            kernel_input_op.push_back(i);
        }
        if(child_num[i]==0){
            kernel_output_op_num++;
            kernel_output_op.push_back(i);
        }        
    }

    int in_dep1;
    int in_dep2;
    int in_dep3;
    if(GLvar::proportion_switch==0){
        in_dep1=GLvar::dep_level1_num;
        in_dep2=GLvar::dep_level2_num;
        in_dep3=GLvar::dep_level3_num;
    }
    else{
        in_dep1=(int)(kernel_input_op_num*GLvar::dep_level1_proportion);
        in_dep2=(int)(kernel_input_op_num*GLvar::dep_level2_proportion);
        in_dep3=(int)(kernel_input_op_num*GLvar::dep_level3_proportion);
    }

    int in_dep=kernel_input_op_num-in_dep1-in_dep2-in_dep3;
    int out_dep1=in_dep1;
    int out_dep2=in_dep2;
    int out_dep3=in_dep3;
    int out_dep=kernel_output_op_num-out_dep1-out_dep2-out_dep3;
    if(in_dep==0 || out_dep==0){
        DEBUG1("Unexpected dependency allocation!");
    }

    //Dependency mapping: input_op->output_op
    map<int, int> op_dep1;
    map<int, int> op_dep2;
    map<int, int> op_dep3;
    map<int, string> io_dep;
    io_dep[0]="idle";
    for(int i=0; i<in_dep1; i++){
        op_dep1[kernel_input_op.front()]=kernel_output_op.front();
        io_dep[kernel_input_op.front()]="in dep1";
        io_dep[kernel_output_op.front()]="out dep1";
        kernel_input_op.pop_front();
        kernel_output_op.pop_front();
    }

    for(int i=0; i<in_dep2; i++){
        op_dep2[kernel_input_op.front()]=kernel_output_op.front();
        io_dep[kernel_input_op.front()]="in dep2";
        io_dep[kernel_output_op.front()]="out dep2";
        kernel_input_op.pop_front();
        kernel_output_op.pop_front();
    }

    for(int i=0; i<in_dep3; i++){
        op_dep3[kernel_input_op.front()]=kernel_output_op.front();
        io_dep[kernel_input_op.front()]="in dep3";
        io_dep[kernel_output_op.front()]="out dep3";
        kernel_input_op.pop_front();
        kernel_output_op.pop_front();
    }

    while(!kernel_input_op.empty()){
        io_dep[kernel_input_op.front()]="pure in";
        kernel_input_op.pop_front();
    }

    while(!kernel_output_op.empty()){
        io_dep[kernel_output_op.front()]="pure out";
        kernel_output_op.pop_front();
    }

    //dump io map
    //map<int, string>::iterator mit;
    //for(mit=io_dep.begin(); mit!=io_dep.end(); mit++){
    //cout << "id=" << mit->first <<"type="<<mit->second<<endl;
    //}
    //Build new instructions of the whole DFG
    vector<vector<int> > dfg_inst_serial;
    int dfg_size=kernel_size*kernel_num;
    dfg_inst_serial.resize(dfg_size);
    for(int i=0; i<dfg_size; i++){
        dfg_inst_serial[i].resize(5);
    }

    int kernel_ref=2*kernel_op_num;
    //put each kernel in a seperate operand space (id)
    for(int i=0; i<kernel_num; i++){
        for(int j=0; j<kernel_size; j++){
            for(int k=0; k<5; k++){
                if(k==1){
                    continue;
                }
                if(kernel_inst_serial[j][k]!=0){
                    dfg_inst_serial[i*kernel_size+j][k]=kernel_inst_serial[j][k]+i*kernel_ref;
                }
                else{
                    dfg_inst_serial[i*kernel_size+j][k]=0;
                }
            }
        }
    }

    //Connect the kernels according to the pre-defined input/output mapping
    for(int i=0; i<kernel_num; i++){
        if(i==0){
            continue;
        }
        else if(i==1){
            for(int j=0; j<kernel_size; j++){
                for(int k=0; k<5; k++){
                    if(k==1){
                        continue;
                    }
                    int tmp_op=kernel_inst_serial[j][k];
                    if(io_dep.count(tmp_op)>0 && tmp_op!=0){
                        if(io_dep[tmp_op]=="in dep1"){
                            dfg_inst_serial[i*kernel_size+j][k]=op_dep1[tmp_op]+(i-1)*kernel_ref;
                        }
                    }
                }
            }
        }
        else if(i==2){
            for(int j=0; j<kernel_size; j++){
                for(int k=0; k<5; k++){
                    if(k==1){
                        continue;
                    }
                    int tmp_op=kernel_inst_serial[j][k];
                    if(io_dep.count(tmp_op)>0 && tmp_op!=0){
                        if(io_dep[tmp_op]=="in dep1"){
                            dfg_inst_serial[i*kernel_size+j][k]=op_dep1[tmp_op]+(i-1)*kernel_ref;
                        }
                        if(io_dep[tmp_op]=="in dep2"){
                            dfg_inst_serial[i*kernel_size+j][k]=op_dep2[tmp_op]+(i-2)*kernel_ref;
                        }
                    }
                }
            }
        }
        else {
            for(int j=0; j<kernel_size; j++){
                for(int k=0; k<5; k++){
                    if(k==1){
                        continue;
                    }
                    int tmp_op=kernel_inst_serial[j][k];
                    if(io_dep.count(tmp_op)>0 && tmp_op!=0){
                        if(io_dep[tmp_op]=="in dep1"){
                            dfg_inst_serial[i*kernel_size+j][k]=op_dep1[tmp_op]+(i-1)*kernel_ref;
                        }
                        if(io_dep[tmp_op]=="in dep2"){
                            dfg_inst_serial[i*kernel_size+j][k]=op_dep2[tmp_op]+(i-2)*kernel_ref;
                        }
                        if(io_dep[tmp_op]=="in dep3"){
                            dfg_inst_serial[i*kernel_size+j][k]=op_dep3[tmp_op]+(i-3)*kernel_ref;
                        }
                    }
                }
            }
        }
    }

    //dump the instructions to a new file
    /*DFG_Inst_File="./config/dfgtmp.s";
      ofstream full_DFG_inst_handle_tmp;
      full_DFG_inst_handle_tmp.open(DFG_Inst_File.c_str());
      if(!full_DFG_inst_handle_tmp.is_open()){
      DEBUG1("DFG file open error!");
      }
      for(int i=0; i<dfg_size; i++){
      for(int j=0; j<5; j++){
      full_DFG_inst_handle_tmp<<dfg_inst_serial[i][j]<<" ";
      }
      full_DFG_inst_handle_tmp<<endl;
      }
      full_DFG_inst_handle_tmp.close();*/

    //Remap the operation id to keep all the id continuous
    map<int, int> op_remap;
    op_remap[0]=0;
    int op_index=1;
    for(int i=0; i<dfg_size; i++){
        for(int j=0; j<5; j++){
            if(j==1){
                continue;
            }
            int cop=dfg_inst_serial[i][j];
            if(op_remap.count(cop)<1){
                op_remap[cop]=op_index;
                dfg_inst_serial[i][j]=op_index;
                op_index++;
            }
            else{
                dfg_inst_serial[i][j]=op_remap[cop];
            }
        }
    }

    //dump the instructions to a new file
    DFG_Inst_File="./config/dfg.s";
    ofstream full_DFG_inst_handle;
    full_DFG_inst_handle.open(DFG_Inst_File.c_str());
    if(!full_DFG_inst_handle.is_open()){
        DEBUG1("DFG file open error!");
    }
    for(int i=0; i<dfg_size; i++){
        for(int j=0; j<5; j++){
            full_DFG_inst_handle<<dfg_inst_serial[i][j]<<" ";
        }
        full_DFG_inst_handle<<endl;
    }
    full_DFG_inst_handle.close();
    return op_index;
}

void DataFlowGraph::DFGStatistic(){
    vertex_num=0;
    input_vertex_num=0;
    output_vertex_num=0;
    inter_vertex_num=0;
    vector<Vertex*>::iterator vertex_iter_tmp;
    for(vertex_iter_tmp=DFG_vertex.begin(); vertex_iter_tmp!=DFG_vertex.end(); vertex_iter_tmp++){
        if((*vertex_iter_tmp)->vertex_id==NaN){
            DEBUG1("There are vertex in DFG going without initalized!");
        }
        else{
            vertex_num++;
            if((*vertex_iter_tmp)->children.size()==0 && (*vertex_iter_tmp)->parents.size()==0){
                if((*vertex_iter_tmp)->vertex_id!=0){
                    DEBUG1("%s","Invalid vertex appears!");
                }
            }
            else if((*vertex_iter_tmp)->parents.size()==0){
                input_vertex_num++;
            }
            else if((*vertex_iter_tmp)->children.size()==0){
                output_vertex_num++;
            }
            else{
                inter_vertex_num++;
            }
        }
    }

    vector<Edge*>::iterator edge_iter_tmp;
    edge_num=0;
    for(edge_iter_tmp=DFG_edge.begin(); edge_iter_tmp!=DFG_edge.end(); edge_iter_tmp++){

        if((*edge_iter_tmp)->edge_id==NaN){
            DEBUG1("There are edges in DFG going without initalized!");
        }

        //when edge_src==0, ignore this edge.
        else if((*edge_iter_tmp)->edge_src>0){
            edge_num++;
        }
    }

    GLvar::maximum_operation_num=vertex_num;
    cout<<"DFG Parameters"<<endl;
    cout<<"vertex_num: "<<vertex_num<<endl;
    cout<<"input_vertex_num: "<<input_vertex_num<<endl;
    cout<<"output_vertex_num: "<<output_vertex_num<<endl;
    cout<<"edge_num: "<<edge_num<<endl;
}

//Input vertex and output vertex are not considered here.
void DataFlowGraph::AverageDegree(){
    float total_input_degree_tmp=0;
    float total_output_degree_tmp=0;
    for(int i=1; i<vertex_num; i++){
        total_input_degree_tmp+=DFG_vertex[i]->parents.size();
        total_output_degree_tmp+=DFG_vertex[i]->children.size();
    }
    average_input_degree=total_input_degree_tmp*1.0/(vertex_num-input_vertex_num);
    average_output_degree=total_output_degree_tmp*1.0/vertex_num;
    if(GLvar::print_level==4){
        DEBUG2("Average input degree of DFG is: %f", average_input_degree);
        DEBUG2("Average output degree of DFG is: %f", average_output_degree);
    }
}

//When all the children of an operation are assigned priorities, the maximum children
//priority added with current operation cost is set to be current operation priority.
//Output operation has no children operations, and operation cost is considered to be 
//its priority. Finally, the node with highest priority indicates the fastest execution time.
//Note that operation cost here represents execution time of operation.
void DataFlowGraph::VertexPriorityAllocation(){
    vector<bool> vertex_priority_assigned;
    vertex_priority_assigned.resize(vertex_num);
    for(int i=0; i<vertex_num; i++){
        vertex_priority_assigned[i]=false;
        if(GLvar::print_level==8){
            DEBUG2("id=%d vertex_cost=%d", i, DFG_vertex[i]->vertex_attribute.vertex_cost);
        }
        if(GLvar::print_level==8){
            int children_size=DFG_vertex[i]->children.size();
            int parents_size=DFG_vertex[i]->parents.size();
            DEBUG2("id=%d children_num=%d parents_num=%d ", i, children_size, parents_size);
        }
    }

    for(int i=0; i<vertex_num; i++){
        if(DFG_vertex[i]->vertex_type==OutputData){
            DFG_vertex[i]->vertex_attribute.scheduling_priority=DFG_vertex[i]->vertex_attribute.vertex_cost;
            vertex_priority_assigned[i]=true;
            if(GLvar::print_level==8){
                DEBUG2("id=%d priority=%d", i, DFG_vertex[i]->vertex_attribute.scheduling_priority);
            }
        }
    }
    bool allocation_flag=true;
    while(allocation_flag){
        for(int i=0; i<vertex_num; i++){
            if(vertex_priority_assigned[i]==false){
                if(DFG_vertex[i]->children.size()==0){
                    DEBUG1("DFG input construction error!");
                }
                int max_children_priority=0;
                bool priority_fixed_flag=true;
                list<Vertex*>::iterator vertex_iter_tmp;

                for(vertex_iter_tmp=DFG_vertex[i]->children.begin() ; vertex_iter_tmp!=DFG_vertex[i]->children.end(); vertex_iter_tmp++){
                    priority_fixed_flag=priority_fixed_flag && vertex_priority_assigned[(*vertex_iter_tmp)->vertex_id];
                    if((*vertex_iter_tmp)->vertex_attribute.scheduling_priority>max_children_priority){
                        max_children_priority=(*vertex_iter_tmp)->vertex_attribute.scheduling_priority;
                    }
                }
                if(priority_fixed_flag==true){
                    if(GLvar::print_level==8){
                        DEBUG2("id=%d priority=%d", i, max_children_priority);
                    }
                    int current_op_cost=DFG_vertex[i]->vertex_attribute.vertex_cost;
                    DFG_vertex[i]->vertex_attribute.scheduling_priority=max_children_priority+current_op_cost;
                    vertex_priority_assigned[i]=true;
                }
            }
            bool allocation_completed_flag=true;
            for(int j=0; j<vertex_num; j++){
                allocation_completed_flag=allocation_completed_flag && (vertex_priority_assigned[j]==true);
            }
            if(allocation_completed_flag==true){
                allocation_flag=false;
            }
        }
    }
}

void DataFlowGraph::VertexPriorityAnalysis(){    
    //Find out the operation with maximum priority
    min_vertex_priority=0;
    max_vertex_priority=0;
    int sum_pri=0;
    for(int i=0; i<vertex_num; i++){
        sum_pri+=DFG_vertex[i]->vertex_attribute.scheduling_priority;
        if(DFG_vertex[i]->vertex_type==InputData){
            if(max_vertex_priority<DFG_vertex[i]->vertex_attribute.scheduling_priority){
                max_vertex_priority=DFG_vertex[i]->vertex_attribute.scheduling_priority;
            }
        }
    }

    //Average vertex priority
    average_vertex_priority=1.0*sum_pri/vertex_num;

    //Vertex priority distribution
    int vertex_priority_level=max_vertex_priority-min_vertex_priority+1;
    vector<int> vertex_priority_dist;
    vertex_priority_dist.resize(vertex_priority_level);
    for(int i=0; i<vertex_priority_level; i++){
        vertex_priority_dist[i]=0;
    }

    for(int i=0; i<vertex_num; i++){
        int tmp=DFG_vertex[i]->vertex_attribute.scheduling_priority;
        vertex_priority_dist[tmp]++;
    }

    //Dump vertex priority information
    cout<<"max vertex priority: "<<max_vertex_priority<<endl;
    cout<<"min vertex priority: "<<min_vertex_priority<<endl;
    cout<<"average vertex priority: "<<average_vertex_priority<<endl;
    cout<<"vertex priority distribution: ";
    for(int i=0; i<vertex_priority_level; i++){
        cout<<vertex_priority_dist[i]<<" ";
    }
    cout<<endl;
}

void DataFlowGraph::InputDegreeAnalysis(){
    vector<Vertex*>::iterator it;
    min_input_degree=GLvar::maximum_operation_num;
    max_input_degree=0;
    int sum_input=0;
    for(it=DFG_vertex.begin(); it!=DFG_vertex.end(); it++){
        int tmp=(*it)->parents.size();
        sum_input+=tmp;
        if(tmp>max_input_degree){
            max_input_degree=tmp;
        }
        if(tmp<min_input_degree){
            min_input_degree=tmp;
        }
    }
    average_input_degree=1.0*sum_input/vertex_num;

    int input_degree_level=max_input_degree-min_input_degree+1;
    vector<int> input_degree_dist;
    input_degree_dist.resize(input_degree_level);
    for(int i=0; i<input_degree_level; i++){
        input_degree_dist[i]=0;
    }
    for(it=DFG_vertex.begin(); it!=DFG_vertex.end(); it++){
        int tmp=(*it)->parents.size();
        input_degree_dist[tmp]++;
    }

    //Dump input degree information
    cout<<"max input degree: "<<max_input_degree<<endl;
    cout<<"min intput degree: "<<min_input_degree<<endl;
    cout<<"average input degree: "<<average_input_degree<<endl;
    cout<<"operation input degree distribution: ";
    for(int i=0; i<input_degree_level; i++){
        cout<<input_degree_dist[i]<<" ";
    }
    cout<<endl;
}

void DataFlowGraph::OutputDegreeAnalysis(){
    vector<Vertex*>::iterator it;
    max_output_degree=0;
    min_output_degree=GLvar::maximum_operation_num;
    int sum_output=0;
    for(it=DFG_vertex.begin(); it!=DFG_vertex.end(); it++){
        if((*it)->vertex_id==0){
            continue;
        }
        int tmp=(*it)->children.size();
        sum_output+=tmp;
        if(tmp>max_output_degree){
            max_output_degree=tmp;
        }
        if(tmp<min_output_degree){
            min_output_degree=tmp;
        }
    }

    average_output_degree=1.0*sum_output/vertex_num;
    int output_degree_level=max_output_degree-min_output_degree+1;
    vector<int> output_degree_dist;
    output_degree_dist.resize(output_degree_level);
    for(int i=0; i<output_degree_level; i++){
        output_degree_dist[i]=0;
    }
    for(it=DFG_vertex.begin(); it!=DFG_vertex.end(); it++){
        if((*it)->vertex_id==0){
            continue;
        }
        int tmp=(*it)->children.size();
        output_degree_dist[tmp]++;
    }

    //Dump output degree information
    cout<<"max output degree: "<<max_output_degree<<endl;
    cout<<"min output degree: "<<min_output_degree<<endl;
    cout<<"average output degree: "<<average_output_degree<<endl;
    cout<<"operation output degree distribution: ";
    for(int i=0; i<output_degree_level; i++){
        cout<<output_degree_dist[i]<<" ";
    }
    cout<<endl;
}


void DataFlowGraph::ParentSet(const int &target_operation_id, vector<int> &source_operation_ids){
    list<Vertex*>::iterator list_iter;
    Vertex* vertex_tmp=DFG_vertex[target_operation_id];
    source_operation_ids.clear();
    for(list_iter=vertex_tmp->parents.begin(); list_iter!=vertex_tmp->parents.end(); list_iter++){
        source_operation_ids.push_back((*list_iter)->vertex_id);
    }
}

void DataFlowGraph::RandomInstGen(){
    string random_inst_file="./config/Random.s";
    string random_init_file="./config/Random.init";
    ofstream random_inst_handle;
    ofstream random_init_handle;

    random_inst_handle.open(random_inst_file.c_str());
    if(!random_inst_handle.is_open()){
        DEBUG1("Random inst file open error!");
    }
    random_init_handle.open(random_init_file.c_str());
    if(!random_init_handle.is_open()){
        DEBUG1("Random init file open error!");
    }

    vertex_num=GLvar::maximum_operation_num;
    input_vertex_num=(int)(GLvar::maximum_operation_num*GLvar::input_operation_proportion);
    output_vertex_num=(int)(GLvar::maximum_operation_num*GLvar::output_operation_proportion);
    if(GLvar::proportion_switch==0){
        input_vertex_num=GLvar::input_operation_num;
        output_vertex_num=GLvar::output_operation_num;
    }
    edge_num=(vertex_num-input_vertex_num)*3;
    inter_vertex_num=vertex_num-input_vertex_num-output_vertex_num;
    if(GLvar::print_level==5){
        DEBUG2("vertex_num=%d", vertex_num);
        DEBUG2("input_vertex_num=%d", input_vertex_num);
        DEBUG2("output_vertex_num=%d", output_vertex_num);
        DEBUG2("edeg_num=%d", edge_num);
    }
    //To avoid instruction 1 0 0 0 0
    if(input_vertex_num==1){
        input_vertex_num=2;
    }

    //When the following error appears, double check the related parameters first.
    if(output_vertex_num==0){
        DEBUG1("No operations are output!");
    }
    if(input_vertex_num==0){
        DEBUG1("No operations are input!");
    }
    if(inter_vertex_num==0){
        DEBUG1("No operations are intermediate!");
    }
    if(edge_num==0){
        DEBUG1("No edges in the DFG!");
    }

    //Initalize children number information vector
    vector<int> children_num_per_operation;
    children_num_per_operation.resize(vertex_num);
    int total_children_num=edge_num;

    //Any input or intermediate operation must have a child at least, while all output operations mustn't own any children.
    //Refresh related DFG parameter at the same time
    for(int i=0; i<vertex_num; i++){
        if(i<(vertex_num-output_vertex_num)){
            children_num_per_operation[i]=1;
        }
        else{
            children_num_per_operation[i]=0;
        }
    }

    int zero_num=(output_vertex_num+inter_vertex_num)/GLvar::dfg_degree_adapter;
    total_children_num=total_children_num-input_vertex_num-inter_vertex_num-zero_num;
    while(total_children_num!=0){
        int random_id=rand()%(vertex_num-output_vertex_num);
        children_num_per_operation[random_id]++;
        total_children_num--;
    }
    children_num_per_operation[0]+=zero_num;
    //cout<<"zero num="<<children_num_per_operation[0]<<endl;

    //Input data 
    for(int i=0; i<input_vertex_num; i++){
        if(i==0){
            random_init_handle << 0 <<" "<< 0 << endl;
        }
        else{
            random_init_handle << i <<" "<< rand()%5 << endl;
        }
    }
    random_init_handle.close();

    //Available source operation list for current operation
    list<int> avail_operation_set;
    for(int i=0; i<input_vertex_num; i++){
        avail_operation_set.push_back(i);
    }

    //Generate instructions
    for(int i=input_vertex_num; i<vertex_num; i++){
        random_inst_handle << i <<" "<< rand()%3 <<" ";
        for(int j=0; j<3; j++){
            int total_avail_num=avail_operation_set.size();
            if(total_avail_num==0){
                DEBUG1("Unexpected parameter error! while i=%d, j=%d", i, j);
            }
            int random_index=random()%total_avail_num;
            if(i%10<12 && j==0 && children_num_per_operation[0]>0){
                random_index=0;
            }
            int k=0;
            list<int>::iterator iter_tmp;
            for(iter_tmp=avail_operation_set.begin(); iter_tmp!=avail_operation_set.end(); iter_tmp++){
                int p=*iter_tmp;

                if(k==random_index){
                    random_inst_handle << p <<" ";

                    //Refresh information of avail_operation_set
                    children_num_per_operation[p]--;
                    if(children_num_per_operation[p]==0){
                        avail_operation_set.erase(iter_tmp);
                    }
                    break;
                }
                else{
                    k++;
                }
            }

        }
        random_inst_handle<<endl;
        if(children_num_per_operation[i]>0){
            avail_operation_set.push_back(i);
        }
    }
}

void DataFlowGraph::DFGCalculation(vector<int> &operation_result){
    operation_result.resize(GLvar::maximum_operation_num);
    vector<bool> operation_avail;
    operation_avail.resize(GLvar::maximum_operation_num);
    for(int i=0; i<GLvar::maximum_operation_num; i++){
        if(DFG_vertex[i]->vertex_type==InputData){
            operation_avail[i]=true;
            operation_result[i]=DFG_vertex[i]->vertex_value;
        }
        else{
            operation_avail[i]=false;
            operation_result[i]=NaN;
        }
    }
    bool calculation_completed=false;
    while(!calculation_completed){
        for(int i=0; i<GLvar::maximum_operation_num; i++){
            if(operation_avail[i]==false){
                list<Vertex*>::iterator iter_tmp;
                bool src_ops_avail=true;
                vector<int> src_ops_value;
                src_ops_value.resize(INSTR_OP_NUM-1);
                int j=0;
                for(iter_tmp=DFG_vertex[i]->parents.begin(); iter_tmp!=DFG_vertex[i]->parents.end(); iter_tmp++){
                    int id_tmp=(*iter_tmp)->vertex_id;
                    if(operation_avail[id_tmp]==false){
                        src_ops_avail=false;
                        break;
                    }
                    src_ops_value[j]=operation_result[id_tmp];
                    j++;
                }
                if(src_ops_avail==true){
                    operation_avail[i]=true;
                    operation_result[i]=src_ops_value[0]*src_ops_value[1]+src_ops_value[2];
                }
            }
        }

        for(int i=0; i<GLvar::maximum_operation_num; i++){
            if(operation_avail[i]==false){
                calculation_completed=false;
                break;
            }
            else{
                calculation_completed=true;
            }
        }
    }

    //Add for debugging
    if(0){
        int watch_op=180;
        list<Vertex*>::iterator iter_tmp;
        vector<int> src_values;
        vector<int> src_ids;
        for(iter_tmp=DFG_vertex[watch_op]->parents.begin(); iter_tmp!=DFG_vertex[watch_op]->parents.end(); iter_tmp++){
            int src_value=(*iter_tmp)->vertex_value;
            int src_id=(*iter_tmp)->vertex_id;
            src_values.push_back(src_value);
            src_ids.push_back(src_id);
        }
        int parent_num;
        parent_num=src_values.size();
        if(parent_num!=3){
            DEBUG2("Wrong parent number of op %d\n", watch_op);
        }
        DEBUG2("src-op0-value=%d, src-op1-value=%d, src-op2-value=%d\n", src_values[0], src_values[1], src_values[2]);
        DEBUG2("src-op0-id=%d, src-op1-id=%d, src-op2-id=%d\n", src_ids[0], src_ids[1], src_ids[2]);
        for(int j=0; j<3; j++){
            if(DFG_vertex[src_ids[j]]->vertex_type==InputData){
                cout<<"src-op"<<j<<"-type=<InputData>, ";
            }
            else if(DFG_vertex[src_ids[j]]->vertex_type==IntermediateData){
                cout<<"src-op"<<j<<"-type=<IntermediateData>, ";
            }
            else if(DFG_vertex[src_ids[j]]->vertex_type==OutputData){
                cout<<"src-op"<<j<<"-type=<OutputData>";
            }
            else{
                DEBUG2("Unrecognized vertex type!\n");
            }
            cout<<endl;
        }
    }
}

void DataFlowGraph::MMInstGen(int m, int n, int p){

    //Fully unrolled MM, SSA instructions.
    //<Dst operation id> <Opcode> <Src operation0 id> <Src operation1 id> <Src operation2 id>
    string MM_Inst_File="./config/MM.s"; 
    ofstream MM_Inst_Handle;

    MM_Inst_Handle.open(MM_Inst_File.c_str());
    if(!MM_Inst_Handle.is_open()){
        DEBUG1("Failed to create the MM.s!");
    }

    int OpId=1;
    vector<vector<int> > SrcMatrix1;
    vector<vector<int> > SrcMatrix2;
    vector<vector<int> > DstMatrix;

    SrcMatrix1.resize(m);
    SrcMatrix2.resize(n);
    DstMatrix.resize(m);
    for(int i=0; i<m; i++){
        SrcMatrix1[i].resize(n);
        DstMatrix[i].resize(p);
    }

    for(int i=0; i<n; i++){
        SrcMatrix2[i].resize(p);
    }

    //initialize the OPID of source matrix and target matrix.
    //Especially, note that there are operations with only two source operands.
    for(int i=0; i<m; i++){
        for(int j=0; j<n; j++){
            SrcMatrix1[i][j]=OpId;
            OpId++;
        }
    }

    for(int i=0; i<n; i++){
        for(int j=0; j<p; j++){
            SrcMatrix2[i][j]=OpId;
            OpId++;
        }
    }

    for(int i=0; i<m; i++){
        for(int j=0; j<p; j++){
            DstMatrix[i][j]=OpId;
            OpId++;
        }
    }

    //Generate the operations for each element of DstMatrix
    for(int i=0; i<m; i++){
        for(int j=0; j<p; j++){
            for(int k=0; k<n; k++){
                if(k==0){
                    MM_Inst_Handle<<OpId<<" ";
                    MM_Inst_Handle<<GetOpcodeValue("MulAdd")<<" ";
                    MM_Inst_Handle<<SrcMatrix1[i][k]<<" ";
                    MM_Inst_Handle<<SrcMatrix2[k][j]<<" ";
                    MM_Inst_Handle<<"0"<<endl;
                    OpId++;
                }
                else if(k==n-1){
                    MM_Inst_Handle<<DstMatrix[i][j]<<" ";
                    MM_Inst_Handle<<GetOpcodeValue("MulAdd")<<" ";
                    MM_Inst_Handle<<SrcMatrix1[i][k]<<" ";
                    MM_Inst_Handle<<SrcMatrix2[k][j]<<" ";
                    MM_Inst_Handle<<(OpId-1)<<endl;
                }
                else{
                    MM_Inst_Handle<<OpId<<" ";
                    MM_Inst_Handle<<GetOpcodeValue("MulAdd")<<" ";
                    MM_Inst_Handle<<SrcMatrix1[i][k]<<" ";
                    MM_Inst_Handle<<SrcMatrix2[k][j]<<" ";
                    MM_Inst_Handle<<(OpId-1)<<endl;
                    OpId++;
                }
            }
        }
    }
    MM_Inst_Handle.close();
}

void DataFlowGraph::OutsideDataMemoryDumpCoe(int max_bram_id, map<int, int> &op_to_value, map<int, int> &op_to_bram_addr, map<int, int> &op_to_bram_id){

    for(int i=0; i<=max_bram_id; i++){

        std::ostringstream os;
        os<<"./result/outside-data-memory-"<<i<<".coe";
        string fName=os.str();
        ofstream fHandle;
        fHandle.open(fName.c_str());
        if(!fHandle.is_open()){
            DEBUG1("Failed to create the outside-data-memory-.coe");
        }
        fHandle << "memory_initialization_radix=2;" << endl;
        fHandle << "memory_initialization_vector=" << endl;

        for(map<int, int>::iterator map_it=op_to_value.begin(); map_it!=op_to_value.end(); ++map_it){
            int current_op_id=map_it->first;
            int dec_data=map_it->second;

            list<int> bitList;
            list<int>::reverse_iterator it;
            int width=32; 
            if(op_to_bram_id[current_op_id]==i){

                //Transform the decimal data to binary
                if(dec_data==NaN){
                    dec_data=0;
                }
                while(dec_data!=1 && dec_data!=0){
                    bitList.push_back(dec_data%2);
                    dec_data=dec_data/2;
                    width--;
                }
                bitList.push_back(dec_data);
                width--;
                while(width!=0){
                    int tmp=0;
                    bitList.push_back(tmp);
                    width--;
                }
                for(it=bitList.rbegin(); it!=bitList.rend(); it++){
                    fHandle << (*it);
                }
                bitList.clear();

                fHandle << endl;
            }
        }
        fHandle.close();

    }
}

