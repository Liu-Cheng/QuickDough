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

    DFGConstruct();

    OutsideDataMemoryDumpCoe();

    DFGStatistic();

    VertexPriorityAllocation();

    VertexPriorityAnalysis();

}

void DataFlowGraph::LoadParameter(){

    string Config_fName = "config/configure.txt";
    ifstream Config_fHandle;
    Config_fHandle.open(Config_fName.c_str());
    if(!Config_fHandle.is_open()){
        DEBUG1("Failed to open the configure.txt!");
    }

    while(!Config_fHandle.eof()){

        string configure_item_key;
        Config_fHandle >> configure_item_key;
        if(configure_item_key=="DFG_name"){
            Config_fHandle >> DFG_name;
        }

        else if(configure_item_key=="output_operation_proportion"){
            Config_fHandle >> GLvar::output_operation_proportion;
        }

        else if(configure_item_key=="input_operation_proportion"){
            Config_fHandle >> GLvar::input_operation_proportion;
        }

        else if(configure_item_key=="output_operation_num"){
            Config_fHandle >> GLvar::output_operation_num;
        }

        else if(configure_item_key=="input_operation_num"){
            Config_fHandle >> GLvar::input_operation_num;
        }

        else if(configure_item_key=="kernel_repeat_num"){
            Config_fHandle >> GLvar::kernel_repeat_num;
        }

        else if(configure_item_key=="break_point_num"){
            Config_fHandle >> GLvar::break_point_num;
        }

        else if(configure_item_key=="dep_level1_proportion"){
            Config_fHandle >> GLvar::dep_level1_proportion;
        }

        else if(configure_item_key=="dep_level2_proportion"){
            Config_fHandle >> GLvar::dep_level2_proportion;
        }

        else if(configure_item_key=="dep_level3_proportion"){
            Config_fHandle >> GLvar::dep_level3_proportion;
        }

        else if(configure_item_key=="dep_level1_num"){
            Config_fHandle >> GLvar::dep_level1_num;
        }

        else if(configure_item_key=="dep_level2_num"){
            Config_fHandle >> GLvar::dep_level2_num;
        }

        else if(configure_item_key=="dep_level3_num"){
            Config_fHandle >> GLvar::dep_level3_num;
        }

        else if(configure_item_key=="proportion_switch"){
            Config_fHandle >> GLvar::proportion_switch;
        }

    }

    Config_fHandle.close();

}

void DataFlowGraph::DFGConstruct(){

    // Create all the vertex involved in kernel_operand.txt
    string DFG_OP_File;
    ostringstream oss;
    oss << "./config/" << DFG_name << "_operand.txt";
    DFG_OP_File = oss.str();

    ifstream DFG_OP_Handle;
    DFG_OP_Handle.open(DFG_OP_File.c_str());
    if(!DFG_OP_Handle.is_open()){
        DEBUG1("DFG IO file open error!");
    }

    while(!DFG_OP_Handle.eof()){
        int op_id;
        int op_bram_addr;
        int op_value;
        int op_bram_id;
        std::string op_type_str;

        DFG_OP_Handle >> op_id;
        DFG_OP_Handle >> op_bram_addr;
        DFG_OP_Handle >> op_value;
        DFG_OP_Handle >> op_bram_id;
        DFG_OP_Handle >> op_type_str;

        if(DFG_OP_Handle.fail()){
            break;
        }

        Vertex* vp = new Vertex();
        DFG_vertex.push_back(vp);
        vp->vertex_id = op_id;
        vp->vertex_value = op_value;
        vp->vertex_bram_addr = op_bram_addr;
        vp->vertex_bram_id = op_bram_id;
        if(op_type_str=="INCONST" || op_type_str=="INVAR"){
            vp->vertex_type = InputData; 
            if(vp->vertex_id==0){
                vp->vertex_attribute.vertex_state = DataAvail;
            }
            else{
                vp->vertex_attribute.vertex_state = DataInOutMem;
            }
        }
        else if(op_type_str=="IM"){
            vp->vertex_type = IntermediateData;
            vp->vertex_attribute.vertex_state = DataUnavail;
        }
        else if(op_type_str=="OUTVAR"){
            vp->vertex_type = OutputData;
            vp->vertex_attribute.vertex_state = DataUnavail;
        }
        else{
            DEBUG1("Unresolved op type in operand.txt file");
        }
    }
    DFG_OP_Handle.close();

    // Build the connection between different vertex using kernel.s file
    string DFG_Inst_File;
    ifstream DFG_Inst_Handle;
    oss.str(std::string());
    oss.clear();
    oss << "./config/" << DFG_name << ".s";
    DFG_Inst_File = oss.str();
    DFG_Inst_Handle.open(DFG_Inst_File.c_str());
    if(!DFG_Inst_Handle.is_open()){
        DEBUG1("DFG instruction file open error!");
    }

    while(!DFG_Inst_Handle.eof()){

        // Instruction format: dst--opcode--src0--src1--src2
        int dst_op_id;
        std::string inst_opcode_str;
        int src_op0_id;
        int src_op1_id;
        int src_op2_id;

        DFG_Inst_Handle >> dst_op_id;
        DFG_Inst_Handle >> inst_opcode_str;
        DFG_Inst_Handle >> src_op0_id;
        DFG_Inst_Handle >> src_op1_id;
        DFG_Inst_Handle >> src_op2_id;

        if(DFG_Inst_Handle.fail()){
            break;
        }

        Vertex* dst_vertex = DFG_vertex[dst_op_id];
        Vertex* src_vertex0 = DFG_vertex[src_op0_id];
        Vertex* src_vertex1 = DFG_vertex[src_op1_id];
        Vertex* src_vertex2 = DFG_vertex[src_op2_id];
        dst_vertex->vertex_attribute.opcode = str2opcode(inst_opcode_str);
        dst_vertex->parents.push_back(src_vertex0);
        dst_vertex->parents.push_back(src_vertex1);
        dst_vertex->parents.push_back(src_vertex2);
        src_vertex0->children.push_back(dst_vertex);
        src_vertex1->children.push_back(dst_vertex);
        src_vertex2->children.push_back(dst_vertex);
        
    }
    DFG_Inst_Handle.close();

}

void DataFlowGraph::DFGStatistic(){

    vertex_num=0;
    input_vertex_num=0;
    output_vertex_num=0;
    im_vertex_num=0;

    int total_degree = 0;
    vector<Vertex*>::iterator vit;
    for(vit=DFG_vertex.begin(); vit!=DFG_vertex.end(); vit++){

        if((*vit)->vertex_id==NaN){
            DEBUG1("Uninitialized Vertex is found in DFG!");
        }
        else{
            vertex_num++;
            if((*vit)->children.size()==0 && (*vit)->parents.size()==0){
                if((*vit)->vertex_id!=0){
                    DEBUG2("Unused vertex %d appears!", (*vit)->vertex_id);
                }
            }
            else if((*vit)->vertex_type == InputData){
                input_vertex_num++;
            }
            else if((*vit)->vertex_type == OutputData){
                output_vertex_num++;
                total_degree += (*vit)->parents.size();
            }
            else{
                im_vertex_num++;
                total_degree += (*vit)->parents.size();
            }
        }
    }

    average_degree = total_degree*1.0/vertex_num;
    GLvar::maximum_operation_num = vertex_num;
    cout << "DFG Parameters " << endl;
    cout << "vertex_num: " << vertex_num << endl;
    cout << "input_vertex_num: " << input_vertex_num << endl;
    cout << "output_vertex_num: " << output_vertex_num << endl;
    cout << "average_degree: " << average_degree << endl;

}

/* -------------------------------------------------------------------- 
 * When all the children of an operation are assigned priorities, the 
 * maximum children priority added with current operation cost is set 
 * to be current operation priority. Output operation has no children 
 * operations, and operation cost is considered to be its priority. 
 * Finally, the node with highest priority indicates the earliest 
 * execution time. Note that operation cost here represents execution 
 * time of the operation.
 * ------------------------------------------------------------------*/
void DataFlowGraph::VertexPriorityAllocation(){

    vector<bool> vertex_priority_assigned;
    vertex_priority_assigned.resize(vertex_num);
    for(int i=0; i<vertex_num; i++){
        vertex_priority_assigned[i]=false;
        if(DFG_vertex[i]->vertex_type==OutputData){
            DFG_vertex[i]->vertex_attribute.scheduling_priority = DFG_vertex[i]->vertex_attribute.vertex_cost;
            vertex_priority_assigned[i]=true;
        }
    }

    bool allocation_completed_flag=false;
    while(!allocation_completed_flag){

        for(int i=0; i<vertex_num; i++){
            if(vertex_priority_assigned[i]==false){
                if(DFG_vertex[i]->children.size()==0){
                    DFG_vertex[i]->vertex_attribute.scheduling_priority = 0;
                    vertex_priority_assigned[i] = true;
                }
                else{
                    int max_children_priority=0;
                    bool priority_fixed_flag=true;
                    vector<Vertex*>::iterator vit;
                    for(vit=DFG_vertex[i]->children.begin() ; vit!=DFG_vertex[i]->children.end(); vit++){
                        priority_fixed_flag=priority_fixed_flag && vertex_priority_assigned[(*vit)->vertex_id];
                        if((*vit)->vertex_attribute.scheduling_priority>max_children_priority){
                            max_children_priority=(*vit)->vertex_attribute.scheduling_priority;
                        }
                    }
                    if(priority_fixed_flag==true){
                        int current_op_cost=DFG_vertex[i]->vertex_attribute.vertex_cost;
                        DFG_vertex[i]->vertex_attribute.scheduling_priority=max_children_priority+current_op_cost;
                        vertex_priority_assigned[i]=true;
                    }
                }
            }

        }

        allocation_completed_flag = true;
        for(int i=0; i<vertex_num; i++){
            if(!vertex_priority_assigned[i]){
                allocation_completed_flag = false;
                break;
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
    cout << "average vertex priority: " << average_vertex_priority << endl;
    cout << "vertex priority distribution: " << endl;
    for(int i=0; i<vertex_priority_level; i++){
        if(vertex_priority_dist[i]!=0){
            cout << i << ": " << vertex_priority_dist[i] << endl;
        }
    }

}

/*
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
*/

void DataFlowGraph::RandomInstGen(){

    int edge_num;
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
    im_vertex_num=vertex_num-input_vertex_num-output_vertex_num;
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
    if(im_vertex_num==0){
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

    int zero_num=(output_vertex_num+im_vertex_num)/GLvar::dfg_degree_adapter;
    total_children_num=total_children_num-input_vertex_num-im_vertex_num-zero_num;
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
    int result;
    vector<Vertex*>::iterator it;
    for(it=DFG_vertex.begin(); it!=DFG_vertex.end(); it++){
        if((*it)->vertex_type!=InputData && (*it)->parents.size()>0){
           int src_val0 =  (*it)->parents[0]->vertex_value;
           int src_val1 = (*it)->parents[1]->vertex_value;
           int src_val2 = (*it)->parents[2]->vertex_value;
           OPCODE inst_opcode = (*it)->vertex_attribute.opcode;
           result = op_compute(inst_opcode, src_val0, src_val1, src_val2);
           (*it)->vertex_value = result;
        }
        else{
            result = (*it)->vertex_value;
        }

        operation_result.push_back(result);
    }
}


/*---------------------------------------------------------------------
 * As the input operands are all stored sequestially, so they can 
 * simply be dumped in order.
 * ------------------------------------------------------------------*/
void DataFlowGraph::OutsideDataMemoryDumpCoe(){

    int max_bram_id=1;
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

        vector<Vertex*>::iterator vit;
        for(vit=DFG_vertex.begin(); vit!=DFG_vertex.end(); vit++){

            int dec_data = (*vit)->vertex_value;
            list<int> bitList;
            list<int>::reverse_iterator it;
            int width=32; 
            if((*vit)->vertex_bram_id==i){

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
                    bitList.push_back(0);
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

