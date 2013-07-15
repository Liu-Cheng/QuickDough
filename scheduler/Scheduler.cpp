// =====================================================================================================================
// Algorithm Description:
// Implementation of the scheduling algorithm
//
// Version:
// 0.1      Nov 29th 2011
// 0.2      Feb 24th 2012 Change the Scheduling algorithm due to New PE structure
// 0.3      Mar 27th 2012 Pipeline the ALU operation
// 0.4      May 29th 2012 Support 400MHz PE based CGRA
// 0.5      July 17th 2012 Add IO model for accurate scheduling
// 0.6      July 18th 2012 Add operation transmission history and reuse data stored in intermediate PE
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// =====================================================================================================================

#include "Scheduler.h"

using namespace std;

Scheduler::Scheduler(DataFlowGraph * init_DFG, CoarseGrainReconArch* init_CGRA){
  LoadParameter();
  SchedulerInit(init_DFG, init_CGRA);
}

void Scheduler::LoadParameter(){
  string configure_file_name = "./config/configure.txt";
  ifstream configure_file_handle(configure_file_name.c_str());
  if(!configure_file_handle.is_open()){
    DEBUG1("Failed to open the configure.txt!");
  }
  while(!configure_file_handle.eof()){
    string configure_item_key;
    configure_file_handle >> configure_item_key;
    if(configure_item_key=="scheduling_type"){
      string configure_item_value;
      configure_file_handle >> configure_item_value;
      if(configure_item_value=="ListScheduling")
        scheduling_type=ListScheduling;
      else if(configure_item_value=="ModuloScheduling")
        scheduling_type=ModuloScheduling;
      else{
        DEBUG1("Unknown scheduling algorithm!\n");
      }
    }
    else if(configure_item_key=="out_mem_data_scheduling"){
      string configure_item_value;
      configure_file_handle >> configure_item_value;
      if(configure_item_value=="IOstoring"){
        out_mem_data_scheduling=IOstoring;
      }
      else if(configure_item_value=="RandomlySpreading"){
        out_mem_data_scheduling=RandomlySpreading;
      }
      else if(configure_item_value=="OutMemModeling"){
        out_mem_data_scheduling=OutMemModeling;
      }
      else if(configure_item_value=="MultipleCopying"){
        out_mem_data_scheduling=MultipleCopying;
      }
      else{
        DEBUG1("Unrecognized out_mem_data_scheduling!\n");
      }
    }
  }
}

void Scheduler::SchedulerInit(DataFlowGraph* init_DFG, CoarseGrainReconArch* init_CGRA){
  DFG=init_DFG;
  CGRA=init_CGRA;
  break_point_store_time=0;
  last_op_store_time=0;
}

void Scheduler::InputOperationScheduling(){
  if(out_mem_data_scheduling==IOstoring){
    vector<Vertex*>::iterator iter_tmp;
    int InID=0;
    for(iter_tmp=DFG->DFG_vertex.begin(); iter_tmp!=DFG->DFG_vertex.end(); iter_tmp++){
      if((*iter_tmp)->vertex_type==InputData){
        (*iter_tmp)->vertex_attribute.vertex_cost=0;
        if((InID/4)%4==0){
          (*iter_tmp)->vertex_attribute.execution_PE_id=0;
        }
        else if((InID/4)%4==1){
          (*iter_tmp)->vertex_attribute.execution_PE_id=1;
        }
        else if((InID/4)%4==2){
          (*iter_tmp)->vertex_attribute.execution_PE_id=2;
        }
        else {
          (*iter_tmp)->vertex_attribute.execution_PE_id=3;
        }
        InID++;
        (*iter_tmp)->vertex_attribute.operation_avail_time=0;
        (*iter_tmp)->vertex_attribute.vertex_state=DataAvail;
        AttachHistory attach_point;
        attach_point.attached_time=0;
        attach_point.attached_PE_id=(*iter_tmp)->vertex_attribute.execution_PE_id;
        (*iter_tmp)->attach_history.push_back(attach_point);
      }
    }
  }
  else if(out_mem_data_scheduling==RandomlySpreading){
    vector<Vertex*>::iterator iter_tmp;
    for(iter_tmp=DFG->DFG_vertex.begin(); iter_tmp!=DFG->DFG_vertex.end(); iter_tmp++){
      if((*iter_tmp)->vertex_type==InputData){
        int id_tmp=rand()%(GLvar::CGRA_scale);
        (*iter_tmp)->vertex_attribute.vertex_cost=0;
        (*iter_tmp)->vertex_attribute.execution_PE_id=id_tmp;
        (*iter_tmp)->vertex_attribute.operation_avail_time=0;
        (*iter_tmp)->vertex_attribute.vertex_state=DataAvail;
        AttachHistory attach_point;
        attach_point.attached_time=0;
        attach_point.attached_PE_id=id_tmp;
        (*iter_tmp)->attach_history.push_back(attach_point);
      }
    }
  }
  else if(out_mem_data_scheduling==MultipleCopying){
    vector<Vertex*>::iterator iter_tmp;
    for(iter_tmp=DFG->DFG_vertex.begin(); iter_tmp!=DFG->DFG_vertex.end(); iter_tmp++){
      if((*iter_tmp)->vertex_type==InputData){
        (*iter_tmp)->vertex_attribute.vertex_cost=0;
        (*iter_tmp)->vertex_attribute.execution_PE_id=rand()%(GLvar::CGRA_scale);
        (*iter_tmp)->vertex_attribute.operation_avail_time=0;
        (*iter_tmp)->vertex_attribute.vertex_state=DataAvail;
        AttachHistory attach_point;
        attach_point.attached_time=0;
        for(int i=0; i<GLvar::CGRA_scale; i++){
          attach_point.attached_PE_id=i;
          (*iter_tmp)->attach_history.push_back(attach_point);
        }
      }
    }
  }
  else if(out_mem_data_scheduling==OutMemModeling){
    vector<Vertex*>::iterator iter_tmp;
    for(iter_tmp=DFG->DFG_vertex.begin(); iter_tmp!=DFG->DFG_vertex.end(); iter_tmp++){
      if((*iter_tmp)->vertex_type==InputData){
        (*iter_tmp)->vertex_attribute.vertex_cost=0;
        (*iter_tmp)->vertex_attribute.execution_PE_id=INF;
        (*iter_tmp)->vertex_attribute.operation_avail_time=INF;
        (*iter_tmp)->vertex_attribute.vertex_state=DataInOutMem;
      }

      //0 is a constant in each data memory, and we don't need to load it from out memory
      /*if((*iter_tmp)->vertex_id==0){
        (*iter_tmp)->vertex_attribute.execution_PE_id=0;
        (*iter_tmp)->vertex_attribute.operation_avail_time=0;
        (*iter_tmp)->vertex_attribute.vertex_state=DataAvail;
        AttachHistory attach_point;
        attach_point.attached_time=0;
        for(int i=0; i<GLvar::CGRA_scale; i++){
        attach_point.attached_PE_id=i;
        (*iter_tmp)->attach_history.push_back(attach_point);
        }
        }*/
    }
  }
  else{
    DEBUG1("Unreognized out_mem_data_scheduling\n");
  }
}

void Scheduler::Scheduling(){
  if(GLvar::report_level>10){
    string trace_file_name = "./result/trace.txt";
    fTrace.open(trace_file_name.c_str());
    if(!fTrace.is_open()){
      DEBUG1("Failed to open the trace.txt!");
    }
  } 
  cout<<"Operation scheduling starts!"<<endl;
  if(scheduling_type==ListScheduling){
    //ListSchedulingAlgorithmOPFirst();
    ListSchedulingAlgorithmPEFirst();
    //ListSchedulingAlgorithmPEOPTogether();
  }
  else if(scheduling_type==ModuloScheduling){
    ModuloSchedulingAlgorithm();
  }
  else{
    DEBUG1("Scheduling Type is not defined!!!");
  }
  cout<<"Scheduling kernel finishes!"<<endl;

  if(GLvar::report_level>10){
    fTrace.close();
  }
}

void Scheduler::ModuloSchedulingAlgorithm(){
  DEBUG1("Modulo scheduling has not been implemented yet!");
}

void Scheduler::ListSchedulingAlgorithmPEOPTogether(){
  bool scheduling_completed=false;
  int scheduling_index=0;

  //InputOperationScheduling();
  list<int> op_ready_set;
  OPReadySetInitialization(op_ready_set);
  vector<int> executed_op_num;
  executed_op_num.resize(GLvar::CGRA_scale);
  for(int i=0; i<GLvar::CGRA_scale; i++){
    executed_op_num[i]=0;
  }

  time_t t1, t2;
  t1=clock();
  while(!scheduling_completed){
    int selected_PE_id;
    int selected_op_id;

    //Choose an idle PE
    list<int> candidates;
    int min_num=GLvar::maximum_operation_num;
    int max_num=0;
    cout<<"op num of each PE: ";
    for(int i=0; i<GLvar::CGRA_scale; i++){
      if(min_num>executed_op_num[i]){
        min_num=executed_op_num[i];
      }
      if(max_num<executed_op_num[i]){
        max_num=executed_op_num[i];
      }
      cout<<executed_op_num[i]<<" ";
    }
    cout<<endl;
    int std_num=min_num+(max_num-min_num)*GLvar::load_balance_factor;
    for(int i=0; i<GLvar::CGRA_scale; i++){
      if((max_num-min_num)>min_num && executed_op_num[i]>std_num){
        continue;
      }
      else{
        candidates.push_back(i);
      }
    }

    //selected_PE_id=LeastActivePESelection(candidates);

    //Choose an operation that can be executed
    //selected_op_id=LeastCostOPSelection(selected_PE_id, op_ready_set);
    PEOPPairSelection(selected_PE_id, selected_op_id, candidates, op_ready_set);

    executed_op_num[selected_PE_id]++;

    //Operation Execution
    list<Vertex*>::iterator it;
    vector<int> src_op_ids;
    vector<int> arrival_time;
    src_op_ids.resize(3);
    arrival_time.resize(3);
    Vertex* tmp=DFG->DFG_vertex[selected_op_id];
    int j=0;
    for(it=tmp->parents.begin(); it!=tmp->parents.end(); it++){
      src_op_ids[j]=(*it)->vertex_id;
      arrival_time[j]=FetchOP(src_op_ids[j], selected_PE_id, Implementation);
      j++;
    }
    OperationExecution(selected_op_id, src_op_ids, selected_PE_id, arrival_time, Implementation);

    //output operation that has not been executed should be moved to output PE
    if(DFG->DFG_vertex[selected_op_id]->vertex_type==OutputData){
      StoreDataInOutMem(selected_op_id);
    }

    //cout<<"ready list size="<<op_ready_set.size()<<endl;
    //Update the operation that is ready for execution
    OPReadySetUpdate(op_ready_set, selected_op_id);

    scheduling_completed=SchedulingIsCompleted();
    scheduling_index++;
  }

  t2=clock();
  cout<<"Compiling time= "<<(double)(1.0*(t2-t1)/CLOCKS_PER_SEC)<<endl;
  cout<<"List Scheduling is completed!"<<endl;
  int final_execution_time=SchedulingStat();

  DataMemoryAnalysis();
  //DataMemoryDumpMem();
  InstructionDumpCoe(final_execution_time);
  //InstructionDumpMem(final_execution_time);
  SchedulingResultDump();
}

void Scheduler::LoadBalancePEFilter(list<int> &candidates, const vector<int> &executed_op_num){
  int min_num=GLvar::maximum_operation_num;
  int max_num=0;
  list<int>::iterator it;
  for(it=candidates.begin(); it!=candidates.end(); it++){
    if(min_num>executed_op_num[*it]){
      min_num=executed_op_num[*it];
    }
    if(max_num<executed_op_num[*it]){
      max_num=executed_op_num[*it];
    }
  }
  int std_num=min_num+(max_num-min_num)*GLvar::load_balance_factor;
  for(it=candidates.begin(); it!=candidates.end(); ){
    if(executed_op_num[*it]>1.3*min_num && executed_op_num[*it]>std_num){
      it=candidates.erase(it);
    }
    else{
      it++;
    }
  }
}

void Scheduler::ActivePEFilter(list<int> &candidates){
  int min_active_time=GLvar::maximum_simulation_time;
  int max_active_time=0;
  int current_active_time;
  list<int>::iterator it;
  for(it=candidates.begin(); it!=candidates.end(); it++){
    current_active_time=CGRA->PE_array[*it]->maximum_active_time;
    if(current_active_time<min_active_time){
      min_active_time=current_active_time;
    }
    if(current_active_time>max_active_time){
      max_active_time=current_active_time;
    }
  }

  int std_time=min_active_time+GLvar::load_balance_factor*(max_active_time-min_active_time);
  for(it=candidates.begin(); it!=candidates.end();){
    current_active_time=CGRA->PE_array[*it]->maximum_active_time;
    if(current_active_time<=std_time){
      it++;
    }
    else{
      it=candidates.erase(it);
    }
  }
}

int Scheduler::LeastReadyOpAttachedPESelection(const list<int> &candidates,const list<int> &op_ready_set){
  int selected_PE_id;
  vector<int> PE_weight;
  PE_weight.resize(GLvar::CGRA_scale);
  for(int i=0; i<GLvar::CGRA_scale; i++){
    PE_weight[i]=0;
  }

  list<int>::const_iterator cit;
  list<Vertex*>::iterator it;
  list<AttachHistory>::iterator ait;
  for(cit=op_ready_set.begin(); cit!=op_ready_set.end(); cit++){
    for(it=DFG->DFG_vertex[*cit]->parents.begin();it!=DFG->DFG_vertex[*cit]->parents.end(); it++){
      for(ait=DFG->DFG_vertex[(*it)->vertex_id]->attach_history.begin();ait!=DFG->DFG_vertex[(*it)->vertex_id]->attach_history.end();ait++){
        PE_weight[ait->attached_PE_id]++;
      }
    }
  }

  int min_weight=INT_MAX;
  list<int>::const_iterator ccit;
  for(ccit=candidates.begin();ccit!=candidates.end();ccit++){
    if(PE_weight[*ccit]<min_weight){
      selected_PE_id=*ccit;
      min_weight=PE_weight[*ccit];
    }
  }

  return selected_PE_id;
}

void Scheduler::ListSchedulingAlgorithmPEFirst(){
  bool scheduling_completed=false;
  int scheduling_index=0;

  //InputOperationScheduling();
  list<int> op_ready_set;
  OPReadySetInitialization(op_ready_set);
  vector<int> executed_op_num;
  executed_op_num.resize(GLvar::CGRA_scale);
  for(int i=0; i<GLvar::CGRA_scale; i++){
    executed_op_num[i]=0;
  }

  time_t t1, t2;
  t1=clock();
  //int loop_id=0;
  while(!scheduling_completed){
    //loop_id++;
    int selected_PE_id;
    int selected_op_id;

    //Choose an idle PE
    list<int> candidates;
    for(int i=0; i<GLvar::CGRA_scale; i++){
      candidates.push_back(i);
    }

    LoadBalancePEFilter(candidates,executed_op_num);
    ActivePEFilter(candidates);

    //selected_PE_id=LeastActivePESelection(candidates);
    selected_PE_id=LeastReadyOpAttachedPESelection(candidates, op_ready_set);
    executed_op_num[selected_PE_id]++;

    //Choose an operation that can be executed
    selected_op_id=LeastCostOPSelection(selected_PE_id, op_ready_set);

    //cout<<"op="<<selected_op_id<<endl;

    //Operation Execution
    list<Vertex*>::iterator it;
    vector<int> src_op_ids;
    vector<int> arrival_time;
    src_op_ids.resize(3);
    arrival_time.resize(3);
    Vertex* tmp=DFG->DFG_vertex[selected_op_id];
    int j=0;
    for(it=tmp->parents.begin(); it!=tmp->parents.end(); it++){
      src_op_ids[j]=(*it)->vertex_id;
      arrival_time[j]=FetchOP(src_op_ids[j], selected_PE_id, Implementation);
      j++;
    }
    OperationExecution(selected_op_id, src_op_ids, selected_PE_id, arrival_time, Implementation);

    //output operation that has been executed should be moved to output PE
    if(DFG->DFG_vertex[selected_op_id]->vertex_type==OutputData){
      StoreDataInOutMem(selected_op_id);
    }
    //if(DFG->DFG_vertex[selected_op_id]->vertex_type==IntermediateData && DFG->DFG_vertex[selected_op_id]->vertex_type2==AtBreakPoint){
    //StoreDataInOutMem(selected_op_id);
    //}

    //Update the operation that is ready for execution
    OPReadySetUpdate(op_ready_set, selected_op_id);

    scheduling_completed=SchedulingIsCompleted();
    scheduling_index++;
    //cout<<"loop-id="<<loop_id<<endl;
  }

  cout<<"Scheduling kernel is completed!"<<endl;

  int final_execution_time=SchedulingStat();

  DataMemoryAnalysis();
  //DataMemoryDumpMem();
  InstructionDumpCoe(last_op_store_time+1);
  //InstructionMif2Mem(final_execution_time);
  SchedulingResultDump();
  OutsideAddrMemoryDumpCoe(last_op_store_time+1);

  t2=clock();
  cout<<"Total compiling time= "<<(double)(1.0*(t2-t1)/CLOCKS_PER_SEC)<<endl;
}

void Scheduler::OPReadySetUpdate(list<int> &op_ready_set, const int &selected_op_id){
  list<int>::iterator cit;
  for(cit=op_ready_set.begin(); cit!=op_ready_set.end(); cit++){
    if((*cit)==selected_op_id){
      op_ready_set.erase(cit);
      break;
    }
  }

  //cout<<"Ready list size is "<<op_ready_set.size()<<" ";
  //cout<<"Remove "<<selected_op_id<<" ";
  //cout<<"Add ";
  list<Vertex*>::iterator vit;
  for(vit=DFG->DFG_vertex[selected_op_id]->children.begin(); vit!=DFG->DFG_vertex[selected_op_id]->children.end(); vit++){
    int current_id=(*vit)->vertex_id;

    bool all_src_ready=true;
    bool already_in_set=false;
    list<Vertex*>::iterator it;
    for(it=(*vit)->parents.begin(); it!=(*vit)->parents.end(); it++){
      list<int>::iterator opit;
      for(opit=op_ready_set.begin(); opit!=op_ready_set.end(); opit++){
        if(*opit==current_id){
          already_in_set=true;
          break;
        }
      }
      if((*it)->vertex_attribute.vertex_state==DataUnavail){
        all_src_ready=false;
        break;
      }
    }

    bool none_executed=DFG->DFG_vertex[current_id]->vertex_attribute.vertex_state==DataUnavail;
    if(all_src_ready && none_executed && !already_in_set){
      op_ready_set.push_back(current_id);
    }
  }
  //cout<<"Updated ready list size is "<<op_ready_set.size()<<endl;
}

void Scheduler::PEOPPairSelection(int &selected_PE_id, int &selected_op_id, const list<int> &candidates, const list<int> &op_ready_set){
  int min_execution_cost=GLvar::maximum_simulation_time;
  list<int>::const_iterator PE_it;
  for(PE_it=candidates.begin(); PE_it!=candidates.end(); PE_it++){
    list<int>::const_iterator op_it;
    int PE_free_time=CGRA->PE_array[*PE_it]->maximum_active_time;
    for(op_it=op_ready_set.begin(); op_it!=op_ready_set.end(); op_it++){
      float op_cost=0;
      int dst_op=*op_it;
      list<Vertex*>::iterator vit;
      for(vit=DFG->DFG_vertex[dst_op]->parents.begin(); vit!=DFG->DFG_vertex[dst_op]->parents.end(); vit++){
        int src_op=(*vit)->vertex_id;
        //int time_cost=FetchOP(src_op,selected_PE_id,Simulation);
        int attached_PE_id;
        int ready_time;
        if(DFG->DFG_vertex[src_op]->vertex_attribute.vertex_state==DataAvail){
          attached_PE_id=NearestAttachedPE(src_op, selected_PE_id, ready_time);
        }
        else{
          attached_PE_id=GLvar::load_PE_id;
          ready_time=CGRA->PE_array[attached_PE_id]->maximum_active_time;
        }
        int dist_cost=CGRA->PE_pair_distance[attached_PE_id][*PE_it];

        //Expand the distance
        if(dist_cost>1){
          dist_cost=dist_cost*2;
        }

        if(PE_free_time>ready_time+100){
          op_cost+=dist_cost;
        }
        else if(PE_free_time>ready_time+50){
          op_cost+=dist_cost*2;
        }
        else{
          op_cost+=dist_cost*4;
        }
      }
      //cout<<"PE="<<*PE_it<<" OP="<<dst_op<<" cost="<<op_cost<<endl;
      if(op_cost<min_execution_cost){
        min_execution_cost=op_cost;
        selected_op_id=dst_op;
        selected_PE_id=*PE_it;
      }
    }
  }
}


int Scheduler::LeastCostOPSelection(const int &selected_PE_id, const list<int> &op_ready_set){
  int selected_op_id=NaN;
  list<int>::const_iterator cit;
  int min_execution_cost=GLvar::maximum_simulation_time;
  int PE_free_time=CGRA->PE_array[selected_PE_id]->maximum_active_time;

  for(cit=op_ready_set.begin(); cit!=op_ready_set.end(); cit++){
    int dst_op=*cit;
    float op_cost=0;
    list<Vertex*>::iterator vit;
    for(vit=DFG->DFG_vertex[dst_op]->parents.begin(); vit!=DFG->DFG_vertex[dst_op]->parents.end(); vit++){
      int src_op=(*vit)->vertex_id;
      //int time_cost=FetchOP(src_op,selected_PE_id,Simulation);
      //if(time_cost-10<PE_free_time){
      //time_cost=0;
      //}
      //else{
      //time_cost=time_cost+10-PE_free_time;
      //}
      int attached_PE_id;
      int ready_time;
      if(DFG->DFG_vertex[src_op]->vertex_attribute.vertex_state==DataAvail){
        attached_PE_id=NearestAttachedPE(src_op, selected_PE_id, ready_time);
      }
      else{
        attached_PE_id=GLvar::load_PE_id;
        ready_time=CGRA->PE_array[attached_PE_id]->maximum_active_time;
      }
      int dist_cost=CGRA->PE_pair_distance[attached_PE_id][selected_PE_id];

      //Expand the distance
      if(dist_cost>1){
        dist_cost=dist_cost*2;
      }

      if(PE_free_time>ready_time+100){
        op_cost+=dist_cost;
      }
      else if(PE_free_time>ready_time+50){
        op_cost+=dist_cost*1.5;
      }
      else{
        op_cost+=dist_cost*2;
      }

      //op_cost+=dist_cost;
      //if(tmp>PE_free_time){
      //op_cost+=tmp-PE_free_time;
      //}
    }
    if(op_cost<min_execution_cost){
      min_execution_cost=op_cost;
      selected_op_id=dst_op;
    }
  }

  if(selected_op_id==NaN){
    DEBUG1("Unexpected operation selection!");
  }
  return selected_op_id;
}

void Scheduler::OPReadySetInitialization(list<int> &op_ready_set){
  for(int i=0; i<GLvar::maximum_operation_num; i++){
    Vertex* vp=DFG->DFG_vertex[i];
    if(vp->vertex_type!=InputData){
      list<Vertex*>::iterator it;
      bool all_src_ready=true;
      for(it=vp->parents.begin(); it!=vp->parents.end(); it++){
        if((*it)->vertex_attribute.vertex_state==DataUnavail){
          all_src_ready=false;
          break;
        }
      }

      if(all_src_ready){
        op_ready_set.push_back(i);
      }
    }
  }
}

int Scheduler::FetchOP(const int &src_op_id, const int &target_PE_id, const ExecutionMode &mode){
  int fetch_cost=0;
  int attached_PE_id;

  //op_id=0 is always considered to be 0 and available in all PE data memory.
  if(src_op_id==0){
    DFG->DFG_vertex[0]->vertex_attribute.vertex_state=DataAvail;
    attached_PE_id=target_PE_id;
  }
  else if(src_op_id!=0 && DFG->DFG_vertex[src_op_id]->vertex_attribute.vertex_state==DataAvail){
    attached_PE_id=NearestAttachedPE(src_op_id, target_PE_id, fetch_cost);
  }
  else if(DFG->DFG_vertex[src_op_id]->vertex_attribute.vertex_state==DataInOutMem){
    fetch_cost+=LoadDataFromOutMem(src_op_id, mode);
    attached_PE_id=GLvar::load_PE_id;
  }

  else{
    DEBUG1("Unexpected operation fectching!");
  }

  if(attached_PE_id!=target_PE_id){
    //Find out a routing path that leads to target PE
    list<int> shortest_path;
    int ready_time=fetch_cost;
    CGRA->PossiblePath(ready_time, attached_PE_id, target_PE_id, shortest_path);

    //Transfer data from src to dst using this path
    fetch_cost=OperationTransmission(ready_time, src_op_id, shortest_path, mode);
  }

  return fetch_cost;
}

void Scheduler::ListSchedulingAlgorithmOPFirst(){
  bool scheduling_completed=false;
  int scheduling_index=0;
  InputOperationScheduling();
  time_t t1, t2;
  t1=clock();
  //int tmp_op=NaN;
  //bool op_read=false;
  while(!scheduling_completed){
    int selected_operation_id;
    //selected_operation_id=StaticOperationSelection();
    selected_operation_id=DynamicOperationSelection();

    int selected_PE_id;
    vector<int> src_operation_ids;
    vector<int> source_ready_time; //The time that source operands arrive at target PE data memory
    vector<int> source_start_time; //The time that source operands start to transmit
    vector<list<int> > source_routing_paths; //Rotuing paths for moving source operands to target PE
    src_operation_ids.resize(INSTR_OP_NUM-1);
    source_ready_time.resize(INSTR_OP_NUM-1);
    source_start_time.resize(INSTR_OP_NUM-1);
    source_routing_paths.resize(INSTR_OP_NUM-1);

    bool input_operation_flag=DFG->DFG_vertex[selected_operation_id]->vertex_type==InputData;
    bool output_operation_flag=DFG->DFG_vertex[selected_operation_id]->vertex_type==OutputData;
    bool in_out_mem_flag=DFG->DFG_vertex[selected_operation_id]->vertex_attribute.vertex_state==DataInOutMem;

    //Input operation that is still in out memory will be loaded first
    if(input_operation_flag && in_out_mem_flag){
      LoadDataFromOutMem(selected_operation_id, Implementation);
    }
    //output operation and intermediate operation will be executed
    else if(!input_operation_flag){
      DFG->ParentSet(selected_operation_id, src_operation_ids);
      selected_PE_id=PESelection(selected_operation_id, src_operation_ids, source_routing_paths, source_start_time);

      //tmp_op=CGRA->PE_array[1]->component_trace[42]->component_activity->memory_port_op[0];
      //if(tmp_op==154){
      //cout<<"checkpoint 1: right!"<<endl;
      //}
      //else{
      //cout<<"checkpoint 1: wrong! tmp_op="<<tmp_op<<endl;
      //}

      FetchSourceOperation(selected_PE_id, src_operation_ids, source_routing_paths, source_start_time, source_ready_time);

      /*tmp_op=CGRA->PE_array[1]->component_trace[3]->component_activity->memory_port_op[0];
        op_read=CGRA->PE_array[1]->component_trace[3]->component_reserved->memory_read_reserved[0];
        cout<<"After source fetch"<<endl;
        if(op_read){
        cout<<"checkpoint 0: right! tmp_op="<<tmp_op<<endl;
        }
        else{
        cout<<"checkpoint 0: wrong! tmp_op="<<tmp_op<<endl;
        }*/

      //tmp_op=CGRA->PE_array[1]->component_trace[42]->component_activity->memory_port_op[0];
      //if(tmp_op==154){
      //cout<<"checkpoint 2: right!"<<endl;
      //}
      //else{
      //cout<<"checkpoint 2: wrong! tmp_op="<<tmp_op<<endl;
      //}

      OperationExecution(selected_operation_id, src_operation_ids, selected_PE_id, source_ready_time, Implementation);
      /*tmp_op=CGRA->PE_array[1]->component_trace[3]->component_activity->memory_port_op[0];
        op_read=CGRA->PE_array[1]->component_trace[3]->component_reserved->memory_read_reserved[0];
        cout<<"After execution"<<endl;
        if(op_read){
        cout<<"checkpoint 0: right! tmp_op="<<tmp_op<<endl;
        }
        else{
        cout<<"checkpoint 0: wrong! tmp_op="<<tmp_op<<endl;
        }*/

      //output operation that has not been executed should be moved to output PE
      if(output_operation_flag){
        StoreDataInOutMem(selected_operation_id);
      }

      /*tmp_op=CGRA->PE_array[1]->component_trace[3]->component_activity->memory_port_op[0];
        op_read=CGRA->PE_array[1]->component_trace[3]->component_reserved->memory_read_reserved[0];
        cout<<"After store!"<<endl;
        if(op_read){
        cout<<"checkpoint 0: right! tmp_op="<<tmp_op<<endl;
        }
        else{
        cout<<"checkpoint 0: wrong! tmp_op="<<tmp_op<<endl;
        }*/

    }
    scheduling_completed=SchedulingIsCompleted();
    scheduling_index++;
  }

  t2=clock();
  cout<<"Compiling time= "<<(double)(1.0*(t2-t1)/CLOCKS_PER_SEC)<<endl;
  cout<<"List Scheduling is completed!"<<endl;
  int final_execution_time=SchedulingStat();

  //DataMemoryAnalysis();
  //DataMemoryDumpMem();
  //InstructionDumpMif(final_execution_time);
  //InstructionDumpMem(final_execution_time);
  //SchedulingResultDump();
}

int Scheduler::LeastActivePESelection(const list<int> &candidates){
  int min_active_time=GLvar::maximum_simulation_time;
  int selected_PE_id;
  list<int>::const_iterator it;

  for(it=candidates.begin(); it!=candidates.end(); it++){
    int i=(*it);
    int current_active_time=CGRA->PE_array[i]->maximum_active_time;
    if(current_active_time<min_active_time){
      selected_PE_id=i;
      min_active_time=current_active_time;
    }
  }
  return selected_PE_id;
}

//We should not change neither state of CGRA nor state of DFG here, because it is just a try and selection. 
int Scheduler::PESelection(const int &target_operation_id, const vector<int> &src_operation_ids, vector<list<int> > &source_routing_paths, vector<int> &source_operation_ready_time){
  //Initial PE candidates
  vector<int> candidate_PE_id;

  //Filter the input PE 
  for(int i=0; i<GLvar::CGRA_scale; i++){
    //if(i!=GLvar::store_PE_id){
    candidate_PE_id.push_back(i);
    //}
  }

  //Reduce iteration times by filtering out some candidate PEs that fails to satisfy certain metric
  //PESelectionFilter(candidate_PE_id, target_operation_id, src_operation_ids, PhysicalDistanceFiltering);
  //if(candidate_PE_id.size()==0){
  //candidate_PE_id.push_back(GLvar::store_PE_id);
  //}
  if(candidate_PE_id.size()==0){
    DEBUG1("All the candidate PEs are kicked off by physical distance filter!\n");
  }
  //PESelectionFilter(candidate_PE_id, target_operation_id, src_operation_ids, MemoryUtilizationFiltering);
  PESelectionFilter(candidate_PE_id, target_operation_id, src_operation_ids, DSPutilizationFiltering);
  //PESelectionFilter(candidate_PE_id, target_operation_id, src_operation_ids, WriteMemoryUtilizationFiltering);
  //PESelectionFilter(candidate_PE_id, target_operation_id, src_operation_ids, OutputPortUtilizationFiltering);
  if(candidate_PE_id.size()==0){
    DEBUG1("All the candidate PEs are kicked off by DSP utilization filter!\n");
  }

  //We may add filter here to decrease the probability that input/output PE is chosen.
  //==

  vector<int> execution_time_on_each_PE;
  execution_time_on_each_PE.resize(GLvar::CGRA_scale);
  int earliest_execution_time=INF;
  int selected_PE_id=NaN;
  vector<list<int> > source_routing_paths_tmp;
  source_routing_paths_tmp.resize(INSTR_OP_NUM-1);
  vector<int> source_operation_ready_time_tmp;
  source_operation_ready_time_tmp.resize(INSTR_OP_NUM-1);
  list<int> shortest_path;
  //cout<<"Fuck xx"<<endl;
  for(int i=0; i<GLvar::CGRA_scale; i++){
    vector<int>::iterator iter_tmp;
    bool is_candidate=false;
    for(iter_tmp=candidate_PE_id.begin(); iter_tmp!=candidate_PE_id.end(); iter_tmp++){
      if(i==*iter_tmp){
        is_candidate=true;
        break;
      }
    }
    if(is_candidate){
      vector<int> arrival_destination_time;
      arrival_destination_time.resize(INSTR_OP_NUM-1);
      for(int j=0; j<INSTR_OP_NUM-1; j++){
        int attached_PE_id;
        source_operation_ready_time_tmp[j]=DFG->DFG_vertex[src_operation_ids[j]]->vertex_attribute.operation_avail_time;
        attached_PE_id=NearestAttachedPE(src_operation_ids[j], i, source_operation_ready_time_tmp[j]);

        shortest_path.clear();
        CGRA->PossiblePath(source_operation_ready_time_tmp[j],attached_PE_id,i,shortest_path);
        source_routing_paths_tmp[j]=shortest_path;

        //int target_active_time=CGRA->PE_array[i]->maximum_active_time;
        //int search_gap=target_active_time-source_operation_ready_time_tmp[j];
        //if(search_gap>MAX_SEARCH_GAP){
        //source_operation_ready_time_tmp[j]=target_active_time-MAX_SEARCH_GAP;
        //}
        arrival_destination_time[j]=OperationTransmission(source_operation_ready_time_tmp[j], src_operation_ids[j], shortest_path, Simulation);
      }
      execution_time_on_each_PE[i]=OperationExecution(target_operation_id, src_operation_ids, i, arrival_destination_time, Simulation);

      //cout<<"execution time on PE "<<i<<"="<<execution_time_on_each_PE[i]<<" earliest execution time="<<earliest_execution_time<<"current start time=";
      //cout<<source_operation_ready_time_tmp[0]<<" ";
      //cout<<source_operation_ready_time_tmp[1]<<" ";
      //cout<<source_operation_ready_time_tmp[2]<<" ";

      //Get the execution time and refresh the selected routing path information that will return
      if(earliest_execution_time>execution_time_on_each_PE[i]){
        earliest_execution_time=execution_time_on_each_PE[i];
        selected_PE_id=i;

        //cout<<"="<<source_operation_ready_time_tmp[0]<<" "<<source_operation_ready_time_tmp[1]<<" "<<source_operation_ready_time[2]<<" ";
        for(int j=0; j<INSTR_OP_NUM-1; j++){
          source_routing_paths[j]=source_routing_paths_tmp[j];
          source_operation_ready_time[j]=source_operation_ready_time_tmp[j];
        }
      }
      //cout<<"earliest execution time is on PE "<<selected_PE_id<<"="<<earliest_execution_time<<"start time=";
      //cout<<source_operation_ready_time[0]<<" ";
      //cout<<source_operation_ready_time[1]<<" ";
      //cout<<source_operation_ready_time[2]<<" ";
      //cout<<endl;

      //for(int x=0; x<INSTR_OP_NUM-1; x++){
      //if(src_operation_ids[x]==0 && source_routing_paths[x].front()==1){
      //cout<<"Fuck3 PE=1"<<"start time="<<source_operation_ready_time[x]<<" selected PE="<<selected_PE_id<<endl;
      //}
      //}
    }

  }
  //cout<<"Fuck xxx"<<endl;

  //for(int x=0; x<INSTR_OP_NUM-1; x++){
  //if(src_operation_ids[x]==0 && source_routing_paths[x].front()==1){
  //cout<<"Fuck4 PE=1"<<"start time="<<source_operation_ready_time[x]<<" selected PE="<<selected_PE_id<<endl;
  //}
  //}

  return selected_PE_id;
}

int Scheduler::LoadDataFromOutMem(const int &operation_id, const ExecutionMode &mode){
  //Load the operation from out memory
  int load_cost=NaN;
  int in_PE_id=GLvar::load_PE_id;
  for(int i=0; i<GLvar::maximum_simulation_time; i++){
    bool load_path_avail=CGRA->PE_array[in_PE_id]->component_trace[i+1]->component_reserved->load_path_reserved==false;
    bool write_port1_avail=CGRA->PE_array[in_PE_id]->component_trace[i+2]->component_reserved->memory_write_reserved[1]==false;
    bool read_port3_avail=CGRA->PE_array[in_PE_id]->component_trace[i+2]->component_reserved->memory_read_reserved[3]==false;
    bool read_port4_avail=CGRA->PE_array[in_PE_id]->component_trace[i+2]->component_reserved->memory_read_reserved[4]==false;
    bool read_port5_avail=CGRA->PE_array[in_PE_id]->component_trace[i+2]->component_reserved->memory_read_reserved[5]==false;
    if(load_path_avail && write_port1_avail && read_port3_avail && read_port4_avail && read_port5_avail){
      if(mode==Implementation){
        //update corresponding PE component state
        CGRA->PE_array[in_PE_id]->component_trace[i+1]->component_reserved->load_path_reserved=true;
        CGRA->PE_array[in_PE_id]->component_trace[i+2]->component_reserved->memory_write_reserved[1]=true;

        //update corresponding PE component activity
        CGRA->PE_array[in_PE_id]->component_trace[i]->component_activity->load_op=operation_id;
        CGRA->PE_array[in_PE_id]->component_trace[i+1]->component_activity->load_mux=0;
        CGRA->PE_array[in_PE_id]->component_trace[i+2]->component_activity->memory_wr_ena[1]=1;
        CGRA->PE_array[in_PE_id]->component_trace[i+2]->component_activity->memory_port_op[3]=operation_id;
        CGRA->PE_array[in_PE_id]->component_trace[i+2]->component_activity->memory_port_op[4]=operation_id;
        CGRA->PE_array[in_PE_id]->component_trace[i+2]->component_activity->memory_port_op[5]=operation_id;

        //Update operation state
        DFG->DFG_vertex[operation_id]->vertex_attribute.vertex_state=DataAvail;
        DFG->DFG_vertex[operation_id]->vertex_attribute.execution_PE_id=in_PE_id;
        DFG->DFG_vertex[operation_id]->vertex_attribute.operation_avail_time=i+2;
        AttachHistory attach_point;
        attach_point.attached_time=i+2;
        attach_point.attached_PE_id=in_PE_id;
        DFG->DFG_vertex[operation_id]->attach_history.push_back(attach_point);
        //if(operation_id==0 && in_PE_id==1){
        //cout<<"cp1: attach_time="<<i+2<<endl;
        //}

        //Dump the trace
        if(GLvar::report_level>10){
          //Time when data gets to current PE input port.
          fTrace<<"Load "<<operation_id<<" through "<<in_PE_id<<" at time "<<i<<endl;
        }
      }
      load_cost=i+2;
      break;
    }
  }

  if(load_cost==NaN){
    DEBUG1("Unexpected load occassion!");
  }

  return load_cost;
}

void Scheduler::StoreDataInOutMem(const int &operation_id){
  //Check whether the operation is executed in store_PE
  //If so, pull it out of the data memory
  int op_avail_time=DFG->DFG_vertex[operation_id]->vertex_attribute.operation_avail_time+1;
  int src=DFG->DFG_vertex[operation_id]->vertex_attribute.execution_PE_id;
  int dst=GLvar::store_PE_id;

  if(src==dst){
    FromDSTToOutMem(operation_id, op_avail_time);
  }
  else{
    //Find a routing path from src to dst
    list<int> shortest_path;
    int ready_time=DFG->DFG_vertex[operation_id]->vertex_attribute.operation_avail_time;
    CGRA->PossiblePath(ready_time, src, dst, shortest_path);

    //Transfer data from src to dst
    int op_arrival_time=OperationTransmission(ready_time, operation_id, shortest_path, Implementation)+1;

    //Move data from dst to outside memory
    FromDSTToOutMem(operation_id, op_arrival_time);
  }
}

void Scheduler::FromDSTToOutMem(const int &operation_id, const int &start_time){
  int op_avail_time=start_time;
  while(true){
    bool write0_avail=CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_reserved->memory_write_reserved[0]==false;
    bool read0_avail=CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_reserved->memory_read_reserved[0]==false;
    bool read1_avail=CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_reserved->memory_read_reserved[1]==false;
    bool read2_avail=CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_reserved->memory_read_reserved[2]==false;
    bool store_path_avail=CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time+2]->component_reserved->store_path_reserved==false;

    if(write0_avail && read0_avail && store_path_avail){
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_reserved->memory_read_reserved[0]=true;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_activity->memory_wr_ena[0]=0;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_activity->memory_port_op[0]=operation_id;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time+2]->component_activity->store_op=operation_id;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time+2]->component_activity->store_mux=0;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time+2]->component_reserved->store_path_reserved=true;

      //Dump the trace
      if(GLvar::report_level>10){
          //Time when data is store in outside memory.
          fTrace<<"Store "<<operation_id<<" in outside memory "<<" at time "<<op_avail_time+3<<endl;
      }

      break;
    }
    else if(write0_avail && read1_avail && store_path_avail){
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_reserved->memory_read_reserved[0]=true;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_activity->memory_wr_ena[0]=0;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_activity->memory_port_op[0]=operation_id;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time+2]->component_activity->store_op=operation_id;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time+2]->component_activity->store_mux=1;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time+2]->component_reserved->store_path_reserved=true;
      break;
    }
    else if(write0_avail && read2_avail && store_path_avail){
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_reserved->memory_read_reserved[0]=true;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_activity->memory_wr_ena[0]=0;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time]->component_activity->memory_port_op[0]=operation_id;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time+2]->component_activity->store_op=operation_id;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time+2]->component_activity->store_mux=2;
      CGRA->PE_array[GLvar::store_PE_id]->component_trace[op_avail_time+2]->component_reserved->store_path_reserved=true;
      break;
    }
    else{
      op_avail_time++;
    }
  }
  if(last_op_store_time<(op_avail_time+3)){
    last_op_store_time=op_avail_time+3;
  }
}

void Scheduler::PESelectionFilter(vector<int> &candidate_PE_id, const int &target_operation_id, const vector<int> &src_operation_ids, const PESelectionFilteringType &filtering_type){
  int begin_time;
  int end_time;
  begin_time=INF;
  float physical_distance_acceptable_percentile=0.25;
  float utilization_acceptable_percentile=0.9;

  for(int i=0; i<INSTR_OP_NUM-1; i++){
    int src_ready_time=DFG->DFG_vertex[src_operation_ids[i]]->vertex_attribute.operation_avail_time;
    if(begin_time>src_ready_time){
      begin_time=src_ready_time;
    }
  }
  end_time=GLvar::maximum_simulation_time-1;
  if(filtering_type==PhysicalDistanceFiltering){
    int max_distance=0;
    int min_distance=INF;
    for(int i=0; i<GLvar::CGRA_scale; i++){
      for(int j=0; j<GLvar::CGRA_scale; j++){
        if(CGRA->PE_pair_distance[i][j]>max_distance && CGRA->PE_pair_distance[i][j]>0){
          max_distance=CGRA->PE_pair_distance[i][j];
        }
        if(CGRA->PE_pair_distance[i][j]<min_distance && CGRA->PE_pair_distance[i][j]>0){
          min_distance=CGRA->PE_pair_distance[i][j];
        }
      }
    }
    int maximum_acceptable_physical_distance;
    maximum_acceptable_physical_distance=(int)((min_distance+(max_distance-min_distance)*physical_distance_acceptable_percentile)*3);
    vector<int>::iterator iter_tmp;
    for(iter_tmp=candidate_PE_id.begin(); iter_tmp!=candidate_PE_id.end(); ){
      int total_distance=0;
      for(int i=0; i<INSTR_OP_NUM-1; i++){
        int time_tmp=0;
        int attached_PE_id=NearestAttachedPE(src_operation_ids[i], *iter_tmp, time_tmp);
        total_distance=total_distance+CGRA->PE_pair_distance[attached_PE_id][*iter_tmp];
      }
      if(total_distance>maximum_acceptable_physical_distance){
        iter_tmp=candidate_PE_id.erase(iter_tmp);
      }
      else{
        iter_tmp++;
      }
    }
  }
  else if(filtering_type==MemoryUtilizationFiltering){
    vector<float> utilization_per_PE;
    utilization_per_PE.resize(GLvar::CGRA_scale);
    for(int i=0; i<GLvar::CGRA_scale; i++){
      utilization_per_PE[i]=1;
    }
    vector<int>::iterator iter_tmp;
    for(iter_tmp=candidate_PE_id.begin(); iter_tmp!=candidate_PE_id.end(); iter_tmp++){
      float utilization_tmp=CGRA->PE_array[*iter_tmp]->MemoryUtilization(begin_time, end_time);
      utilization_per_PE[*iter_tmp]=utilization_tmp;
    }
    UtilizationFilter(candidate_PE_id, utilization_per_PE, utilization_acceptable_percentile);
  }
  else if(filtering_type==DSPutilizationFiltering){
    vector<float> utilization_per_PE;
    utilization_per_PE.resize(GLvar::CGRA_scale);
    for(int i=0; i<GLvar::CGRA_scale; i++){
      utilization_per_PE[i]=1;
    }
    vector<int>::iterator iter_tmp;
    for(iter_tmp=candidate_PE_id.begin(); iter_tmp!=candidate_PE_id.end(); iter_tmp++){
      float utilization_tmp=CGRA->PE_array[*iter_tmp]->DSPutilization(begin_time, end_time);
      utilization_per_PE[*iter_tmp]=utilization_tmp;
    }
    UtilizationFilter(candidate_PE_id, utilization_per_PE, utilization_acceptable_percentile);
  }
  else if(filtering_type==WriteMemoryUtilizationFiltering){
    vector<float> utilization_per_PE;
    utilization_per_PE.resize(GLvar::CGRA_scale);
    for(int i=0; i<GLvar::CGRA_scale; i++){
      utilization_per_PE[i]=1;
    }
    vector<int>::iterator iter_tmp;
    for(iter_tmp=candidate_PE_id.begin(); iter_tmp!=candidate_PE_id.end(); iter_tmp++){
      float utilization_tmp=CGRA->PE_array[*iter_tmp]->WriteMemoryUtilization(begin_time, end_time);
      utilization_per_PE[*iter_tmp]=utilization_tmp;
    }
    UtilizationFilter(candidate_PE_id, utilization_per_PE, utilization_acceptable_percentile);
  }
  else if(filtering_type==OutputPortUtilizationFiltering){
    vector<float> utilization_per_PE;
    utilization_per_PE.resize(GLvar::CGRA_scale);
    for(int i=0; i<GLvar::CGRA_scale; i++){
      utilization_per_PE[i]=1;
    }
    vector<int>::iterator iter_tmp;
    for(iter_tmp=candidate_PE_id.begin(); iter_tmp!=candidate_PE_id.end(); iter_tmp++){
      float utilization_tmp=CGRA->PE_array[*iter_tmp]->OutputPortUtilization(begin_time, end_time);
      utilization_per_PE[*iter_tmp]=utilization_tmp;
    }
    UtilizationFilter(candidate_PE_id, utilization_per_PE, utilization_acceptable_percentile);
  }
  else{
    DEBUG1("Unrecognized PE selection filtering type!\n");
  }
}

void Scheduler::UtilizationFilter(vector<int> &candidate_PE_id, const vector<float> &utilization_per_PE, const float &acceptable_percentile){
  float maximum_utilization=0;
  float minimum_utilization=1;
  vector<int>::iterator id_iter;
  for(id_iter=candidate_PE_id.begin(); id_iter!=candidate_PE_id.end(); id_iter++){
    float current_utilization=utilization_per_PE[*id_iter];
    if(current_utilization>maximum_utilization){
      maximum_utilization=current_utilization;
    }
    if(current_utilization<minimum_utilization){
      minimum_utilization=current_utilization;
    }
  }
  if(maximum_utilization>minimum_utilization){
    float metric_utilization=minimum_utilization+acceptable_percentile*(maximum_utilization-minimum_utilization);
    for(id_iter=candidate_PE_id.begin(); id_iter!=candidate_PE_id.end(); ){
      float current_utilization=utilization_per_PE[*id_iter];
      if(current_utilization>metric_utilization){
        id_iter=candidate_PE_id.erase(id_iter);
      }
      else{
        id_iter++;
      }
    }
  }
}

int Scheduler::OperationTransmission(const int &start_time, const int &src_operation_id, const list<int> &routing_path, const ExecutionMode &mode){
  int total_time=start_time;
  int transmission_progress_time=start_time;
  int PE_num_on_path=routing_path.size();

  /*if(mode==Implementation){
    list<int>::const_iterator it_tmp;
    cout<<"op="<<src_operation_id<<" start time="<<start_time<<" path: ";
    for(it_tmp=routing_path.begin(); it_tmp!=routing_path.end(); it_tmp++){
    cout<<(*it_tmp)<<" ";
    }
    cout<<endl;
    }*/

  //IO load brings additional mux and pipeline.
  int current_additional_pipeline=0;
  int next_additional_pipeline=0;

  if(PE_num_on_path==0){
    DEBUG1("Empty routing path!\n");
  }

  vector<int> routing_path_copy;
  routing_path_copy.resize(PE_num_on_path);
  list<int>::const_iterator list_iter;
  int id_tmp=0;
  for(list_iter=routing_path.begin(); list_iter!=routing_path.end(); list_iter++){
    routing_path_copy[id_tmp]=*list_iter;
    id_tmp++;
  }

  int child_id=NaN;
  int parent_id=NaN;
  int last_parent_id=NaN;
  int last_PE_id=NaN;
  for(int i=0; i<PE_num_on_path;){

    //Introduce the current/next_additional_pipeline variables to handle Load/Store PE
    //Which result in additional pipeline.
    int current_PE_id=routing_path_copy[i];
    if(current_PE_id==GLvar::load_PE_id || current_PE_id==GLvar::store_PE_id){
      current_additional_pipeline=1;
    }
    else{
      current_additional_pipeline=0;
    }
    int next_PE_id=NaN;
    if(i<PE_num_on_path){
      if(i==PE_num_on_path-1){
        next_PE_id=NaN;
        child_id=NaN;
        last_parent_id=parent_id;
        parent_id=NaN;
      }
      else{
        next_PE_id=routing_path_copy[i+1];
        child_id=CGRA->GetChildID(current_PE_id, next_PE_id);
        last_parent_id=parent_id;
        parent_id=CGRA->GetParentID(current_PE_id, next_PE_id);
      }

      if(next_PE_id==GLvar::load_PE_id || next_PE_id==GLvar::store_PE_id){
        next_additional_pipeline=1;
      }
      else{
        next_additional_pipeline=0;
      }

    }

    //Destination PE is exactly the same with source PE. And, therefore there is no need for data transmission.
    if(PE_num_on_path==1){
      i++;
    }
    else{
      //First transmission on the path
      if(i==0){
        bool current_PE_memory_read_avail0=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_reserved->memory_read_reserved[0]==false;
        bool current_PE_memory_read_avail1=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_reserved->memory_read_reserved[1]==false;
        bool current_PE_memory_read_avail2=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_reserved->memory_read_reserved[2]==false;
        bool current_PE_memory_write_avail0=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_reserved->memory_write_reserved[0]==false;
        bool current_PE_output_avail=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3]->component_reserved->PE_output_reserved[child_id]==false;
        bool next_PE_input_avail=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+5]->component_reserved->PE_input_reserved==false;

        bool next_load_path_avail=true;
        if(next_PE_id==GLvar::load_PE_id || next_PE_id==GLvar::store_PE_id){
          next_load_path_avail=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+6]->component_reserved->load_path_reserved==false;
        }

        bool next_PE_memory_write_avail1=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+6+next_additional_pipeline]->component_reserved->memory_write_reserved[1]==false;
        bool next_PE_memory_read_avail3=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+6+next_additional_pipeline]->component_reserved->memory_read_reserved[3]==false;
        bool next_PE_memory_read_avail4=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+6+next_additional_pipeline]->component_reserved->memory_read_reserved[4]==false;
        bool next_PE_memory_read_avail5=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+6+next_additional_pipeline]->component_reserved->memory_read_reserved[5]==false;

        bool current_PE_memory_read_avail=(current_PE_memory_read_avail0 || current_PE_memory_read_avail1 || current_PE_memory_read_avail2) && current_PE_memory_write_avail0;
        bool next_PE_memory_write_avail=next_PE_memory_write_avail1 && next_PE_memory_read_avail3 && next_PE_memory_read_avail4 && next_PE_memory_read_avail5;

        if(current_PE_memory_read_avail && current_PE_output_avail && next_PE_input_avail && next_PE_memory_write_avail && next_load_path_avail){
          if(mode==Implementation){

            if(current_PE_memory_read_avail0){
              CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_reserved->memory_read_reserved[0]=true;
              CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_activity->memory_port_op[0]=src_operation_id;
              CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3]->component_activity->PE_output_mux[child_id]=0;
            }
            else if(current_PE_memory_read_avail1){
              CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_reserved->memory_read_reserved[1]=true;
              CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_activity->memory_port_op[1]=src_operation_id;
              CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3]->component_activity->PE_output_mux[child_id]=1;
            }
            else{
              CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_reserved->memory_read_reserved[2]=true;
              CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_activity->memory_port_op[2]=src_operation_id;
              CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3]->component_activity->PE_output_mux[child_id]=2;
            }
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3]->component_reserved->PE_output_reserved[child_id]=true;
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_activity->memory_wr_ena[0]=0;

            if(GLvar::report_level>10){
              fTrace << "Move operation " << src_operation_id << " First: from " << " PE " <<current_PE_id<<" to "<< " PE " << next_PE_id << " at time " << transmission_progress_time+1 <<endl;
            }

          }
          transmission_progress_time=transmission_progress_time+4;
          i++;
        }
        else{
          transmission_progress_time++;
        }

        /*int tmp_op=CGRA->PE_array[1]->component_trace[3]->component_activity->memory_port_op[0];
          int op_read=CGRA->PE_array[1]->component_trace[3]->component_reserved->memory_read_reserved[0];
          cout<<"After first transmission"<<endl;
          if(op_read){
          cout<<"checkpoint 0: right! tmp_op="<<tmp_op<<endl;
          }
          else{
          cout<<"checkpoint 0: wrong! tmp_op="<<tmp_op<<endl;
          }*/

        //int tmp_op=CGRA->PE_array[1]->component_trace[670]->component_activity->memory_port_op[0];
        //if(tmp_op==1221){
        //cout<<"checkpoint 2: right!"<<endl;
        //}
        //else{
        //cout<<"checkpoint 2: wrong! tmp_op="<<tmp_op<<endl;
        //}

      }

      else if(i>0 && i<PE_num_on_path-1){

        //Important states for bypass data path 
        bool current_PE_bypass_avail=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_reserved->PE_bypass_reserved==false;
        bool current_PE_output_avail=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2]->component_reserved->PE_output_reserved[child_id]==false;
        bool next_PE_input_avail=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+4]->component_reserved->PE_input_reserved==false;

        bool next_load_path_avail=true;
        if(next_PE_id==GLvar::load_PE_id || next_PE_id==GLvar::store_PE_id){
          next_load_path_avail=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+5]->component_reserved->load_path_reserved==false;
        }

        bool next_PE_memory_write_avail1=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+5+next_additional_pipeline]->component_reserved->memory_write_reserved[1]==false;
        bool next_PE_memory_read_avail3=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+5+next_additional_pipeline]->component_reserved->memory_read_reserved[3]==false;
        bool next_PE_memory_read_avail4=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+5+next_additional_pipeline]->component_reserved->memory_read_reserved[4]==false;
        bool next_PE_memory_read_avail5=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+5+next_additional_pipeline]->component_reserved->memory_read_reserved[5]==false;
        bool next_PE_memory_write_avail=next_PE_memory_write_avail1 && next_PE_memory_read_avail3 && next_PE_memory_read_avail4 && next_PE_memory_read_avail5;

        if(current_PE_bypass_avail && current_PE_output_avail && next_PE_input_avail && next_PE_memory_write_avail && next_load_path_avail){
          if(mode==Implementation){
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_reserved->PE_bypass_reserved=true;
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2]->component_reserved->PE_output_reserved[child_id]=true;
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_activity->PE_bypass_mux=last_parent_id;
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2]->component_activity->PE_output_mux[child_id]=3;

            if(GLvar::report_level>10){
              fTrace << "Move operation " << src_operation_id<< " bypass: from" << " PE " << current_PE_id << " to " << " PE " << next_PE_id << " at time " << transmission_progress_time+2 <<endl;
            }

          }
          transmission_progress_time=transmission_progress_time+3;
          i++;
        }

        //Store and forward occasion
        else{
          //If the data needs to be stored, there must be no resource confliction and we simply reserve the corresponding resources.
          if(mode==Implementation){
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_reserved->PE_input_reserved=true;
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_activity->PE_input_mux=last_parent_id;
            if(current_PE_id==GLvar::load_PE_id || current_PE_id==GLvar::store_PE_id){
              CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2]->component_reserved->load_path_reserved=true;
              CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2]->component_activity->load_mux=1;
            }
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2+current_additional_pipeline]->component_reserved->memory_write_reserved[1]=true;
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2+current_additional_pipeline]->component_activity->memory_wr_ena[1]=1;
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2+current_additional_pipeline]->component_activity->memory_port_op[3]=src_operation_id;
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2+current_additional_pipeline]->component_activity->memory_port_op[4]=src_operation_id;
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2+current_additional_pipeline]->component_activity->memory_port_op[5]=src_operation_id;

            //Keep the attach point which can be reused later
            AttachHistory attach_point;
            attach_point.attached_time=transmission_progress_time+2+current_additional_pipeline;
            attach_point.attached_PE_id=current_PE_id;
            DFG->DFG_vertex[src_operation_id]->attach_history.push_back(attach_point);

            if(GLvar::report_level>10){
              fTrace<<"Store operation "<<src_operation_id<<" from PE "<<last_parent_id<<" in "<<" PE "<<current_PE_id<<" at time "<<transmission_progress_time<<endl;
            }
          }

          //Move the data from data memory to next PE
          while(true){
            
            bool current_PE_memory_read_avail0=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3+current_additional_pipeline]->component_reserved->memory_read_reserved[0]==false;
            bool current_PE_memory_read_avail1=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3+current_additional_pipeline]->component_reserved->memory_read_reserved[1]==false;
            bool current_PE_memory_read_avail2=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3+current_additional_pipeline]->component_reserved->memory_read_reserved[2]==false;
            bool current_PE_memory_write_avail0=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3+current_additional_pipeline]->component_reserved->memory_write_reserved[0]==false;
            bool current_PE_memory_read_avail=(current_PE_memory_read_avail0 || current_PE_memory_read_avail1 || current_PE_memory_read_avail2) && current_PE_memory_write_avail0;
            bool current_PE_output_avail=CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+5+current_additional_pipeline]->component_reserved->PE_output_reserved[child_id]==false;
            bool next_PE_input_avail=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+7+current_additional_pipeline]->component_reserved->PE_input_reserved==false;

            bool next_load_path_avail=true;
            if(next_PE_id==GLvar::load_PE_id || next_PE_id==GLvar::store_PE_id){
              next_load_path_avail=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+8+current_additional_pipeline]->component_reserved->load_path_reserved==false;
            }

            bool next_PE_memory_write_avail1=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+8+current_additional_pipeline+next_additional_pipeline]->component_reserved->memory_write_reserved[1]==false;
            bool next_PE_memory_read_avail3=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+8+current_additional_pipeline+next_additional_pipeline]->component_reserved->memory_read_reserved[3]==false;
            bool next_PE_memory_read_avail4=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+8+current_additional_pipeline+next_additional_pipeline]->component_reserved->memory_read_reserved[4]==false;
            bool next_PE_memory_read_avail5=CGRA->PE_array[next_PE_id]->component_trace[transmission_progress_time+8+current_additional_pipeline+next_additional_pipeline]->component_reserved->memory_read_reserved[5]==false;
            bool next_PE_memory_write_avail=next_PE_memory_write_avail1 && next_PE_memory_read_avail3 && next_PE_memory_read_avail4 && next_PE_memory_read_avail5;

            if(current_PE_memory_read_avail && current_PE_output_avail && next_PE_input_avail && next_PE_memory_write_avail && next_load_path_avail){
              if(mode==Implementation){
                if(current_PE_memory_read_avail0){
                  CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3+current_additional_pipeline]->component_reserved->memory_read_reserved[0]=true;
                  CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3+current_additional_pipeline]->component_activity->memory_port_op[0]=src_operation_id;
                  CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+5+current_additional_pipeline]->component_activity->PE_output_mux[child_id]=0;
                }
                else if(current_PE_memory_read_avail1){
                  CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3+current_additional_pipeline]->component_reserved->memory_read_reserved[1]=true;
                  CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3+current_additional_pipeline]->component_activity->memory_port_op[1]=src_operation_id;
                  CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+5+current_additional_pipeline]->component_activity->PE_output_mux[child_id]=1;
                }
                else{ 
                  CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3+current_additional_pipeline]->component_reserved->memory_read_reserved[2]=true;
                  CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3+current_additional_pipeline]->component_activity->memory_port_op[2]=src_operation_id;
                  CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+5+current_additional_pipeline]->component_activity->PE_output_mux[child_id]=2;
                }

                CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+5+current_additional_pipeline]->component_reserved->PE_output_reserved[child_id]=true;
                CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+3+current_additional_pipeline]->component_activity->memory_wr_ena[0]=0;

                if(GLvar::report_level>10){
                  fTrace<< " Move operation " << src_operation_id << " forward: from " << " PE " << current_PE_id << " to " << " PE " << next_PE_id << " at time " << transmission_progress_time+4+current_additional_pipeline << endl;
                }

              }
              transmission_progress_time=transmission_progress_time+6+current_additional_pipeline;
              i++;
              break;
            }
            else{
              transmission_progress_time++;
            }

          }
        }
      }

      //Arrive in last PE data memory
      else{
        if(mode==Implementation){
          CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_reserved->PE_input_reserved=true;
          CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+1]->component_activity->PE_input_mux=last_parent_id;
          if(current_PE_id==GLvar::load_PE_id || current_PE_id==GLvar::store_PE_id){
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2]->component_reserved->load_path_reserved=true;
            CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2]->component_activity->load_mux=1;
          }
          CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2+current_additional_pipeline]->component_reserved->memory_write_reserved[1]=true;
          CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2+current_additional_pipeline]->component_activity->memory_wr_ena[1]=1;
          CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2+current_additional_pipeline]->component_activity->memory_port_op[3]=src_operation_id;
          CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2+current_additional_pipeline]->component_activity->memory_port_op[4]=src_operation_id;
          CGRA->PE_array[current_PE_id]->component_trace[transmission_progress_time+2+current_additional_pipeline]->component_activity->memory_port_op[5]=src_operation_id;

          if(GLvar::report_level>10){
            fTrace<< "Move operation " << src_operation_id << " last: from " << " PE " << last_PE_id << " to PE " << current_PE_id << " at time " << transmission_progress_time << endl;
          }

          //Keep the attach point which can be reused later
          AttachHistory attach_point;
          attach_point.attached_time=transmission_progress_time+2+current_additional_pipeline;
          attach_point.attached_PE_id=current_PE_id;
          DFG->DFG_vertex[src_operation_id]->attach_history.push_back(attach_point);

          //int tmp_op=CGRA->PE_array[1]->component_trace[670]->component_activity->memory_port_op[0];
          //if(tmp_op==1221){
          //cout<<"checkpoint 6: right!"<<endl;
          //}
          //else{
          //cout<<"checkpoint 6: wrong! tmp_op="<<tmp_op<<endl;
          //}

        }
        i++;
        total_time=transmission_progress_time+2+current_additional_pipeline;
      }
    }
    last_PE_id=current_PE_id;
  }
  return total_time;
}

int Scheduler::OperationExecution(const int &target_operation_id, const vector<int> &src_operation_ids, const int &target_PE_id, const vector<int> &arrival_time, const ExecutionMode &mode){
  int execution_time;

  int latest_arrival_time=0;
  for(int i=0; i<INSTR_OP_NUM-1; i++){
    if(latest_arrival_time<arrival_time[i]){
      latest_arrival_time=arrival_time[i];
    }
  }

  int start_time=latest_arrival_time;
  while(true){
    bool src_read_avail=true;
    src_read_avail = src_read_avail && (CGRA->PE_array[target_PE_id]->component_trace[start_time+1]->component_reserved->memory_read_reserved[3]==false);
    src_read_avail = src_read_avail && (CGRA->PE_array[target_PE_id]->component_trace[start_time+1]->component_reserved->memory_read_reserved[4]==false);
    src_read_avail = src_read_avail && (CGRA->PE_array[target_PE_id]->component_trace[start_time+1]->component_reserved->memory_read_reserved[5]==false);
    src_read_avail = src_read_avail && (CGRA->PE_array[target_PE_id]->component_trace[start_time+1]->component_reserved->memory_write_reserved[1]==false);

    bool dsp_pipeline_avail=CGRA->PE_array[target_PE_id]->component_trace[start_time+3]->component_reserved->dsp_pipeline_reserved==false;
    bool memory_write_avail=CGRA->PE_array[target_PE_id]->component_trace[start_time+7]->component_reserved->memory_write_reserved[0]==false;
    memory_write_avail=memory_write_avail && (CGRA->PE_array[target_PE_id]->component_trace[start_time+7]->component_reserved->memory_read_reserved[0]==false);
    memory_write_avail=memory_write_avail && (CGRA->PE_array[target_PE_id]->component_trace[start_time+7]->component_reserved->memory_read_reserved[1]==false);
    memory_write_avail=memory_write_avail && (CGRA->PE_array[target_PE_id]->component_trace[start_time+7]->component_reserved->memory_read_reserved[2]==false);

    if(src_read_avail && dsp_pipeline_avail && memory_write_avail){
      break;
    }
    else{
      start_time++;
    }
  }
  execution_time=start_time+7;

  if(mode==Implementation){
    if(GLvar::report_level>10){
      fTrace << "Operation " << target_operation_id << " starts execution on " << " PE " << target_PE_id << " at time " << start_time+3 <<endl;
    }

    TargetPERefresh(src_operation_ids, target_operation_id, start_time, target_PE_id);
    TargetOperationRefresh(src_operation_ids, target_operation_id, target_PE_id, execution_time);

  }

  return execution_time;
}

int Scheduler::NearestAttachedPE(const int &src_operation_id, const int &dst_PE_id, int &src_start_time){
  //We may search the source operation trace history to find the PE that could provide source data earliest.
  //However, it makes the program much more complex. Here we simply assume that all the operation keeps the
  //result in local memory and we have to fetch it whenever we need it.
  int attached_PE_id=NaN;
  /*if(out_mem_data_scheduling==MultipleCopying){
    if(DFG->DFG_vertex[src_operation_id]->vertex_type==InputData){
    attached_PE_id=dst_PE_id;
    } 
    else{
    attached_PE_id=DFG->DFG_vertex[src_operation_id]->vertex_attribute.execution_PE_id;
    }

    return attached_PE_id;
    }*/
  if(out_mem_data_scheduling==OutMemModeling){
    //Assume that neighboring PE can always promise a fast data transmission
    list<AttachHistory>::iterator it;
    list<AttachHistory>::iterator it_head;
    list<AttachHistory>::iterator it_tail;
    it_head=DFG->DFG_vertex[src_operation_id]->attach_history.begin();
    it_tail=DFG->DFG_vertex[src_operation_id]->attach_history.end();
    int min_distance=INF;
    for(it=it_head; it!=it_tail; it++){
      int PE_id_tmp=(*it).attached_PE_id;
      int distance_tmp=CGRA->PE_pair_distance[PE_id_tmp][dst_PE_id];
      if(distance_tmp<min_distance){
        min_distance=distance_tmp;
        attached_PE_id=PE_id_tmp;
        src_start_time=(*it).attached_time;
      }
    }
    if(DFG->DFG_vertex[src_operation_id]->vertex_id==0){
      attached_PE_id=dst_PE_id;
    }

    if(attached_PE_id==NaN){
      DEBUG1("Unexpected nearest PE!");
    }

    //if(attached_PE_id==1 && src_operation_id==0){
    //cout<<"PE selection attached_time="<<src_start_time<<endl;
    //}

    return attached_PE_id;
  }
  else{
    DEBUG1("Unexpected out memory scheduling scheme!");
  }
  /* else if(out_mem_data_scheduling==IOstoring){
     return DFG->DFG_vertex[src_operation_id]->vertex_attribute.execution_PE_id;
     }
     else{
     if(DFG->DFG_vertex[src_operation_id]->vertex_id==0){
     attached_PE_id=dst_PE_id;
     }
     else{
     attached_PE_id=DFG->DFG_vertex[src_operation_id]->vertex_attribute.execution_PE_id;
     }
     return attached_PE_id;
     }*/
}

int Scheduler::DistCal(const int &src_op, const int &dst_op){
  if(src_op==0 || dst_op==0){
    return 0;
  }
  else{
    int src_PE_id=DFG->DFG_vertex[src_op]->vertex_attribute.execution_PE_id;
    int dst_PE_id=DFG->DFG_vertex[dst_op]->vertex_attribute.execution_PE_id;
    return CGRA->PE_pair_distance[src_PE_id][dst_PE_id];
  }
}

int Scheduler::DynamicOperationSelection(){
  //A single input operand is needed to make the target operation ready
  list<int> ready_input_set1; 

  //Two input operands are needed to make the target operation ready
  list<int> ready_input_set2;

  //Three input operands are needed to make the target operation ready
  list<int> ready_input_set3;

  //Operations that have all the source operands ready
  list<int> ready_operation_set;
  list<int> possible_distance;

  for(int i=0; i<DFG->vertex_num; i++){
    Vertex* vp=DFG->DFG_vertex[i];
    if(vp->vertex_type!=InputData && vp->vertex_attribute.vertex_state==DataUnavail){
      list<Vertex*>::iterator it;

      //Test whether all the source operands are ready
      bool all_src_ready=true;
      for(it=vp->parents.begin(); it!=vp->parents.end(); it++){
        if((*it)->vertex_attribute.vertex_state==DataUnavail){
          all_src_ready=false;
          break;
        }
      }

      if(all_src_ready){
        //If source operands are in out side memory, the operands should be ready to load.
        //If the source operands are all available, the target operation is considered to be ready.
        int out_op_num=0;
        for(it=vp->parents.begin(); it!=vp->parents.end(); it++){
          if((*it)->vertex_attribute.vertex_state==DataInOutMem){
            out_op_num++;
          }
        }
        if(out_op_num==0){
          ready_operation_set.push_back(i);
          vector<int> src_op_ids;
          for(it=vp->parents.begin(); it!=vp->parents.end(); it++){
            src_op_ids.push_back((*it)->vertex_id);
          }
          int sum_dist=DistCal(src_op_ids[0], src_op_ids[1]);
          sum_dist+=DistCal(src_op_ids[0], src_op_ids[2]);
          sum_dist+=DistCal(src_op_ids[1], src_op_ids[2]);
          possible_distance.push_back(sum_dist);
        }
        else if(out_op_num==1){
          for(it=vp->parents.begin();it!=vp->parents.end(); it++){
            if((*it)->vertex_attribute.vertex_state==DataInOutMem){
              ready_input_set1.push_back((*it)->vertex_id);
            }
          }
        }
        else if(out_op_num==2){
          for(it=vp->parents.begin();it!=vp->parents.end(); it++){
            if((*it)->vertex_attribute.vertex_state==DataInOutMem){
              ready_input_set2.push_back((*it)->vertex_id);
            }
          }
        }
        else if(out_op_num==3){
          for(it=vp->parents.begin();it!=vp->parents.end(); it++){
            if((*it)->vertex_attribute.vertex_state==DataInOutMem){
              ready_input_set3.push_back((*it)->vertex_id);
            }
          }
        }
        else{
          DEBUG2("Unexpected vertex state! %d=", out_op_num);
        }
      }
    }
  }

  if(!ready_operation_set.empty()){
    list<int>::iterator it1;
    list<int>::iterator it2;
    int min_dist=INF;
    int selected_op=NaN;
    it2=possible_distance.begin();
    for(it1=ready_operation_set.begin(); it1!=ready_operation_set.end(); it1++){
      if((*it2)<min_dist){
        min_dist=(*it2);
        selected_op=(*it1);
      }
      it2++;
    }
    return selected_op;
  }
  else if(!ready_input_set1.empty()){
    return ready_input_set1.front();
  }
  else if(!ready_input_set2.empty()){
    return ready_input_set2.front();
  }
  else if(!ready_input_set3.empty()){
    return ready_input_set3.front();
  }
  else{
    DEBUG1("No operation left for scheduling!");
  }
}

int Scheduler::StaticOperationSelection(){
  list<int> candidate_operation_set;
  int highest_priority=0;

  //Find out the highest priority of operations that have not been executed or fethced.
  for(int i=0; i<DFG->vertex_num; i++){
    Vertex* vertex_tmp=DFG->DFG_vertex[i];
    if(vertex_tmp->vertex_attribute.vertex_state==DataInOutMem || vertex_tmp->vertex_attribute.vertex_state==DataUnavail){
      int priority_tmp=vertex_tmp->vertex_attribute.scheduling_priority;
      if(priority_tmp>highest_priority){
        highest_priority=priority_tmp;
      }
    }
  }

  //Put these operations with highest available priority in a list
  for(int i=0; i<DFG->vertex_num; i++){
    Vertex* vertex_tmp=DFG->DFG_vertex[i];
    if(vertex_tmp->vertex_attribute.vertex_state==DataInOutMem || vertex_tmp->vertex_attribute.vertex_state==DataUnavail){
      int priority_tmp=vertex_tmp->vertex_attribute.scheduling_priority;
      if(priority_tmp==highest_priority){
        candidate_operation_set.push_back(i);
      }
    }
  }
  if(candidate_operation_set.empty()==true){
    DEBUG1("No candidates available before scheduling is completed!");
  }

  //Selected the operation with most children first. Note that it may require larger data memory because data will not be
  //consumed as soon as possible. If data memory is the bottleneck, chooing the operation with least children may help.
  int min_children_num=INF;
  int selected_operation_id;
  list<int>::iterator iter_tmp;
  for(iter_tmp=candidate_operation_set.begin(); iter_tmp!=candidate_operation_set.end(); iter_tmp++){
    int children_num=DFG->DFG_vertex[*iter_tmp]->children.size();
    if(min_children_num>children_num){
      min_children_num=children_num;
      selected_operation_id=*iter_tmp;
    }
  }
  return selected_operation_id;
}

void Scheduler::TargetPERefresh(const vector<int> &src_operation_ids, const int &target_operation_id, const int &start_time, const int &target_PE_id){
  CGRA->PE_array[target_PE_id]->component_trace[start_time+1]->component_reserved->memory_read_reserved[3]=true;
  CGRA->PE_array[target_PE_id]->component_trace[start_time+1]->component_reserved->memory_read_reserved[4]=true;
  CGRA->PE_array[target_PE_id]->component_trace[start_time+1]->component_reserved->memory_read_reserved[5]=true;

  CGRA->PE_array[target_PE_id]->component_trace[start_time+3]->component_reserved->dsp_pipeline_reserved=true;
  CGRA->PE_array[target_PE_id]->component_trace[start_time+7]->component_reserved->memory_write_reserved[0]=true;

  CGRA->PE_array[target_PE_id]->component_trace[start_time+1]->component_activity->memory_wr_ena[1]=0;

  int opcode_tmp=DFG->DFG_vertex[target_operation_id]->vertex_attribute.opcode;
  CGRA->PE_array[target_PE_id]->component_trace[start_time+3]->component_activity->dsp_opcode=opcode_tmp;
  CGRA->PE_array[target_PE_id]->component_trace[start_time+7]->component_activity->memory_wr_ena[0]=1;

  CGRA->PE_array[target_PE_id]->component_trace[start_time+1]->component_activity->memory_port_op[3]=src_operation_ids[0];
  CGRA->PE_array[target_PE_id]->component_trace[start_time+1]->component_activity->memory_port_op[4]=src_operation_ids[1];
  CGRA->PE_array[target_PE_id]->component_trace[start_time+1]->component_activity->memory_port_op[5]=src_operation_ids[2];
  CGRA->PE_array[target_PE_id]->component_trace[start_time+7]->component_activity->memory_port_op[0]=target_operation_id;
  CGRA->PE_array[target_PE_id]->component_trace[start_time+7]->component_activity->memory_port_op[1]=target_operation_id;
  CGRA->PE_array[target_PE_id]->component_trace[start_time+7]->component_activity->memory_port_op[2]=target_operation_id;

  int current_execution_time=start_time+7;
  if(CGRA->PE_array[target_PE_id]->maximum_active_time<current_execution_time){
    CGRA->PE_array[target_PE_id]->maximum_active_time=current_execution_time;
  }

}

void Scheduler::FetchSourceOperation(const int &target_PE_id, const vector<int> &src_operation_ids, const vector<list<int> > &source_routing_paths, const vector<int> &start_time, vector<int> &source_ready_time){
  for(int i=0; i<INSTR_OP_NUM-1; i++){
    source_ready_time[i]=OperationTransmission(start_time[i], src_operation_ids[i], source_routing_paths[i], Implementation);
  }
}

void Scheduler::TargetOperationRefresh(const vector<int> &src_operation_ids, const int &target_operation_id, const int &target_PE_id, const int &execution_time){
  DFG->DFG_vertex[target_operation_id]->vertex_attribute.vertex_state=DataAvail;
  DFG->DFG_vertex[target_operation_id]->vertex_attribute.operation_avail_time=execution_time;
  DFG->DFG_vertex[target_operation_id]->vertex_attribute.execution_PE_id=target_PE_id;
  int srcA=DFG->DFG_vertex[src_operation_ids[0]]->vertex_value;
  int srcB=DFG->DFG_vertex[src_operation_ids[1]]->vertex_value;
  int srcC=DFG->DFG_vertex[src_operation_ids[2]]->vertex_value;
  DFG->DFG_vertex[target_operation_id]->vertex_value=srcA*srcB+srcC;

  AttachHistory attach_point;
  attach_point.attached_time=execution_time;
  attach_point.attached_PE_id=target_PE_id;
  DFG->DFG_vertex[target_operation_id]->attach_history.push_back(attach_point);
}

bool Scheduler::SchedulingIsCompleted(){
  bool scheduling_flag=true;
  bool break_point_scheduling_flag=true;

  //Check final execution
  for(int i=0; i<DFG->vertex_num; i++){
    if(DFG->DFG_vertex[i]->vertex_type==InputData && DFG->DFG_vertex[i]->vertex_attribute.vertex_state!=DataAvail){
      scheduling_flag=false;
      break;
    }
    else if(DFG->DFG_vertex[i]->vertex_type==IntermediateData && DFG->DFG_vertex[i]->vertex_attribute.vertex_state!=DataAvail){
      scheduling_flag=false;
      break;
    }
    else if(DFG->DFG_vertex[i]->vertex_type==OutputData && DFG->DFG_vertex[i]->vertex_attribute.vertex_state!=DataAvail){
      scheduling_flag=false;
      break;
    }
    else{
      scheduling_flag=true;
    }
  }

  //Check the breakpoints
  for(int i=0; i<DFG->vertex_num; i++){
    if(DFG->DFG_vertex[i]->vertex_type==IntermediateData && DFG->DFG_vertex[i]->vertex_type2==AtBreakPoint && DFG->DFG_vertex[i]->vertex_attribute.vertex_state!=DataAvail){
      break_point_scheduling_flag=false;
      break;
    }
    else if(DFG->DFG_vertex[i]->vertex_type==OutputData && (DFG->DFG_vertex[i]->vertex_type2==AtBreakPoint || DFG->DFG_vertex[i]->vertex_type2==BeforeBreakPoint) && DFG->DFG_vertex[i]->vertex_attribute.vertex_state!=DataAvail){
      break_point_scheduling_flag=false;
      break;
    }
    else{
      break_point_scheduling_flag=true;
    }
  }

  //When the scheduling is completed, and there is no break points.
  if(scheduling_flag){
    break_point_scheduling_flag=true;
  }

  //The first time that all break points are executed, lat_op_store_time is considered to be break point execution time. 
  //When there are no breakpoints, break_point_store_time is supposed to be last_op_store_time.
  if(break_point_scheduling_flag && break_point_store_time==0){
    break_point_store_time=last_op_store_time;
  }

  return scheduling_flag;
}

int Scheduler::SchedulingStat(){
  //Analyze scheduling performance
  int final_execution_time=0;
  vector<float> read_memory_utilization;
  vector<float> write_memory_utilization;
  vector<float> output_port_utilization;
  vector<float> dsp_pipeline_utilization;
  output_port_utilization.resize(GLvar::CGRA_scale);
  read_memory_utilization.resize(GLvar::CGRA_scale);
  write_memory_utilization.resize(GLvar::CGRA_scale);
  dsp_pipeline_utilization.resize(GLvar::CGRA_scale);
  for(int i=0; i<DFG->vertex_num; i++){
    int execution_time_tmp=DFG->DFG_vertex[i]->vertex_attribute.operation_avail_time;
    if(execution_time_tmp>final_execution_time){
      final_execution_time=execution_time_tmp;
    }
  }
  //cout<<"Maximum DFG parallelism= "<<DFG->maximum_parallelism<<endl;
  cout<<"Scheduling performance= "<<final_execution_time*(200/GLvar::kernel_repeat_num)<<endl;
  cout<<"Minimum instruction memory requirements= "<<final_execution_time<<endl;
  cout<<"Real minimum instruction memory requirements= "<<last_op_store_time<<endl;
  cout<<"Minimum instruction memory requirements at break points= "<<break_point_store_time<<endl;

  for(int i=0; i<GLvar::CGRA_scale; i++){
    int PE_output_counter=0;
    int dsp_pipeline_counter=0;
    int read_memory_counter=0;
    int write_memory_counter=0;
    int output_degree=CGRA->PE_array[i]->output_degree;
    for(int j=0; j<=final_execution_time; j++){
      for(int p=0; p<6; p++){
        if(CGRA->PE_array[i]->component_trace[j]->component_reserved->memory_read_reserved[p]){
          read_memory_counter++;
        }
      }
      for(int p=0; p<4; p++){
        if(CGRA->PE_array[i]->component_trace[j]->component_reserved->PE_output_reserved[p]){
          PE_output_counter++;
        }
      }
      if(CGRA->PE_array[i]->component_trace[j]->component_reserved->dsp_pipeline_reserved){
        dsp_pipeline_counter++;
      }
      for(int p=0; p<2; p++){
        if(CGRA->PE_array[i]->component_trace[j]->component_reserved->memory_write_reserved[p]){
          write_memory_counter++;
        }
      }
    }
    read_memory_utilization[i]=1.0*read_memory_counter/final_execution_time;
    write_memory_utilization[i]=1.0*write_memory_counter/final_execution_time;
    output_port_utilization[i]=1.0*PE_output_counter/(final_execution_time*output_degree);
    dsp_pipeline_utilization[i]=1.0*dsp_pipeline_counter/final_execution_time;
  }

  //Print resource utilization information
  cout<<setiosflags(ios::left);
  cout<<setfill(' ')<<setw(6)<<"PE";
  cout<<setfill(' ')<<setw(15)<<"output port";
  cout<<setfill(' ')<<setw(15)<<"memory read";
  cout<<setfill(' ')<<setw(16)<<"memory write";
  cout<<setfill(' ')<<setw(18)<<"dsp pipeline";
  cout<<"\n";
  for(int i=0; i<GLvar::CGRA_scale; i++){
    cout<<setfill(' ')<<setw(6)<<i;
    cout<<setfill(' ')<<setw(15)<<setprecision(4)<<output_port_utilization[i];
    cout<<setfill(' ')<<setw(15)<<setprecision(4)<<read_memory_utilization[i];
    cout<<setfill(' ')<<setw(16)<<setprecision(4)<<write_memory_utilization[i];
    cout<<setfill(' ')<<setw(18)<<setprecision(4)<<dsp_pipeline_utilization[i]<<"\n";
  }

  //Print link utilization information
  CGRA->LinkUtilizationAnalysis(0, final_execution_time);

  //Dump read0 port operations
  /*for(int i=0; i<GLvar::CGRA_scale; i++){
    if(i!=5){
    continue;
    }
    for(int j=0; j<final_execution_time; j++){
    int current_output_id=CGRA->PE_array[i]->component_trace[j]->component_activity->memory_read_addr[0];
    bool read_enable=CGRA->PE_array[i]->component_trace[j]->component_activity->memory_read_enable[0];
    if(read_enable){
    cout<<setfill(' ')<<setw(10)<<j;
    cout<<setfill(' ')<<setw(6)<<current_output_id<<endl;
    }
    }
    }*/
  return final_execution_time;
}

void Scheduler::DataMemoryAnalysis(){
  //Analyze the data memory capacity
  vector<int> data_mem_capacity;
  data_mem_capacity.resize(GLvar::CGRA_scale);
  for(int i=0; i<GLvar::CGRA_scale; i++){
    data_mem_capacity[i]=0;
  }
  vector<int> birth_time;
  vector<int> die_time;
  birth_time.resize(GLvar::maximum_operation_num);
  die_time.resize(GLvar::maximum_operation_num);

  for(int i=0; i<GLvar::CGRA_scale; i++){

    for(int j=0; j<GLvar::maximum_operation_num; j++){
      birth_time[j]=NaN;
      die_time[j]=NaN;
    }
    birth_time[0]=0;

    //Refresh the die time in memory write port
    for(int j=0; j<GLvar::maximum_simulation_time; j++){
      for(int p=0; p<2; p++){
        int wr_op;
        if(p==0){
          wr_op=CGRA->PE_array[i]->component_trace[j]->component_activity->memory_port_op[0];
        }
        else{
          wr_op=CGRA->PE_array[i]->component_trace[j]->component_activity->memory_port_op[3];
        }

        bool wr_reserve=CGRA->PE_array[i]->component_trace[j]->component_reserved->memory_write_reserved[p];
        if(wr_reserve){

          if(birth_time[wr_op]==NaN || birth_time[wr_op]>j){
            birth_time[wr_op]=j;
          }

        }
      }

      //Refresh the birth time & die time in memory reading port
      for(int p=0; p<6; p++){

        bool rd_reserve=CGRA->PE_array[i]->component_trace[j]->component_reserved->memory_read_reserved[p];
        int rd_op=CGRA->PE_array[i]->component_trace[j]->component_activity->memory_port_op[p];
        if(rd_reserve){

          if(die_time[rd_op]==NaN || die_time[rd_op]<j){
            die_time[rd_op]=j;
          }

        }
      }
    }

    //Check the birth time and die time to see if there are conflictions.
    for(int j=0; j<GLvar::maximum_operation_num; j++){
      if(birth_time[j]==NaN && die_time[j]>0){

        cout<<"op is "<<j<<" , it has "<<DFG->DFG_vertex[j]->children.size()<<"children and "<<DFG->DFG_vertex[j]->parents.size()<<"parents!";
        cout<<"execution PE id is "<<DFG->DFG_vertex[j]->vertex_attribute.execution_PE_id<<endl;
        cout<<"executed time is "<<DFG->DFG_vertex[j]->vertex_attribute.operation_avail_time<<endl;
        if(DFG->DFG_vertex[j]->vertex_type==InputData){
          cout<<"Input Operation"<<endl;
        }
        else if(DFG->DFG_vertex[j]->vertex_type==OutputData){
          cout<<"Output operation"<<endl;
        }
        else{
          cout<<"Intermediate operation"<<endl;
        }
        DEBUG1("Error!\n");

      }
    }

    vector<int> data_mem_trace;
    data_mem_trace.resize(GLvar::maximum_simulation_time);
    for(int j=0; j<GLvar::maximum_simulation_time; j++){
      data_mem_trace[j]=0;
    }

    int mem_counter=0;
    for(int j=0; j<GLvar::maximum_simulation_time; j++){
      for(int p=0; p<GLvar::maximum_operation_num; p++){
        if(birth_time[p]==j){
          mem_counter++;
        }
        if(die_time[p]==j){
          mem_counter--;
        }
      }
      data_mem_trace[j]=mem_counter;
      if(data_mem_capacity[i]<mem_counter){
        data_mem_capacity[i]=mem_counter;
      }
    }

    AddrGen(birth_time, die_time, data_mem_capacity[i], i);
  }

  //print data memory capacity of each PE
  for(int i=0; i<GLvar::CGRA_scale; i++){
    cout<<data_mem_capacity[i]<<" ";
  }
  cout<<endl;
}

/**********************************************************************
  Address allocation/release
  1) When an operand is written to the data memory for the first time.
  2) When operands are constants and they are initialized into the 
  data memory. Here only op_id==0 is considered as constant and it is 
  stored in data memory[0] in all PEs. 
  3) When the data operands are referenced for the last time, the address 
  will be released.
 *********************************************************************/
void Scheduler::AddrGen(const vector<int> &birth_time, const vector<int> &die_time, const int &memCapacity, const int &PE_id){
  
  map<int, int> OpToAddr;
  OpToAddr[0]=0;

  list<int> AddrAvail;
  for(int i=1; i<memCapacity+10; i++){
    AddrAvail.push_back(i);
  }

  //Allocate address to data initialized in data memory
  for(int i=1; i<GLvar::maximum_operation_num; i++){
    if(birth_time[i]==0){
      OpToAddr[i]=AddrAvail.front();
      AddrAvail.pop_front();
    }
  }

  //Dump the initial data image of the data memory
  DataMemoryInit(OpToAddr, PE_id, memCapacity+1);

  for(int i=0; i<GLvar::maximum_simulation_time; i++){
    for(int p=0; p<2; p++){
      int wr_op;
      if(p==0){
        wr_op=CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_port_op[0];
      }
      else{
        wr_op=CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_port_op[3];
      }

      //Allocate address when the data is first writen into data memory
      bool wr_reserve=CGRA->PE_array[PE_id]->component_trace[i]->component_reserved->memory_write_reserved[p];
      if(wr_reserve){
        if(OpToAddr.count(wr_op)==0){
          if(p==0){
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[0]=AddrAvail.front();
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[1]=AddrAvail.front();
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[2]=AddrAvail.front();
          }
          else{
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[3]=AddrAvail.front();
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[4]=AddrAvail.front();
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[5]=AddrAvail.front();
          }
          OpToAddr[wr_op]=AddrAvail.front();
          AddrAvail.pop_front();
        }
        else if(OpToAddr.count(wr_op)>0){
          if(p==0){
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[0]=OpToAddr[wr_op];
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[1]=OpToAddr[wr_op];
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[2]=OpToAddr[wr_op];
          }
          else{
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[3]=OpToAddr[wr_op];
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[4]=OpToAddr[wr_op];
            CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[5]=OpToAddr[wr_op];
          }
        }
        else{
          DEBUG1("Unexpected write operation!");
        }
      }
    }
 
    /*
    bool rd_reserve3=CGRA->PE_array[PE_id]->component_trace[i]->component_reserved->memory_read_reserved[3];
    int rd_op3=CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_port_op[3];
    bool rd_reserve4=CGRA->PE_array[PE_id]->component_trace[i]->component_reserved->memory_read_reserved[4];
    int rd_op4=CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_port_op[4];
    bool rd_reserve5=CGRA->PE_array[PE_id]->component_trace[i]->component_reserved->memory_read_reserved[5];
    int rd_op5=CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_port_op[5];
    bool wr_reserve1=CGRA->PE_array[PE_id]->component_trace[i]->component_reserved->memory_write_reserved[1];
    if(PE_id==0 && wr_reserve1==0 && rd_reserve3 && rd_reserve4 && rd_reserve5) {
        cout << "time="<< i << "," << " port 3,4,5 op="<<rd_op3<<" "<<rd_op4<<" "<<rd_op5<<" ";
        cout << "addr=" << OpToAddr[rd_op3] << " " << OpToAddr[rd_op4] << " " << OpToAddr[rd_op5] <<endl;
    }*/

    list<int> op_to_release;
    list<int>::iterator it;
    for(int p=0; p<6; p++){
      bool rd_reserve=CGRA->PE_array[PE_id]->component_trace[i]->component_reserved->memory_read_reserved[p];
      int rd_op=CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_port_op[p];

      //The data have not been allocated an address when it is read,
      //there must be something wrong in the address allocatio part.
      if(rd_reserve){
        if(OpToAddr.count(rd_op)==0){
          //if(rd_op==28 && PE_id==0){
          cout<<"op="<<rd_op<<endl;
          cout<<"executed at PE "<<DFG->DFG_vertex[rd_op]->vertex_attribute.execution_PE_id<<endl;
          cout<<"current PE is "<<PE_id<<endl;
          cout<<"execution time="<<DFG->DFG_vertex[rd_op]->vertex_attribute.operation_avail_time<<endl;
          cout<<"current time="<<i<<endl;
          cout<<"port number="<<p<<endl;
          cout<<"Bram addr="<<OpToAddr[rd_op]<<endl;
          DEBUG1("The operation has never been stored at all!");
        }

        if(OpToAddr.count(rd_op)>0){
          if(die_time[rd_op]==NaN){
            DEBUG1("Unexpected cases!");
          }

          CGRA->PE_array[PE_id]->component_trace[i]->component_activity->memory_addr[p]=OpToAddr[rd_op];
          if(die_time[rd_op]==i){
            bool no_replica=true;
            for(it=op_to_release.begin(); it!=op_to_release.end(); it++){
              if(rd_op==*it){
                no_replica=false;
                break;
              }
            }
            if(no_replica){
              op_to_release.push_back(rd_op);
            }
          }
        }
        else{
          DEBUG1("Unexpected cases!");
        }
      }
    }

    //Put the released address back for reuse
    while(!op_to_release.empty()){
      int released_op=op_to_release.front();
      int released_addr=OpToAddr[released_op];
      AddrAvail.push_front(released_addr);
      op_to_release.pop_front();
      OpToAddr.erase(released_op);
    }
  }
}

void Scheduler::SchedulingResultCollection(vector<int> &operation_result){
  operation_result.resize(GLvar::maximum_operation_num);
  for(int i=0; i<GLvar::maximum_operation_num; i++){
    operation_result[i]=DFG->DFG_vertex[i]->vertex_value;
  }
}

bool Scheduler::OperationResultCheck(){
  bool all_right=true;
  vector<int> theory_result;
  vector<int> practice_result;
  DFG->DFGCalculation(theory_result);
  SchedulingResultCollection(practice_result);

  for(int i=0; i<GLvar::maximum_operation_num; i++){
    if(theory_result[i]!=practice_result[i]){
      DEBUG1("Calculation of Operation[%d] is wrong! Theory result is:%d, Practice result is:%d\n",i,theory_result[i],practice_result[i]);
      all_right=false;
    }
  }

  if(all_right){
    cout<<"Scheduling algorithm obtains the results as expected!"<<endl;
  }
  else{
    DEBUG2("Operation results are NOT correct!");
  }

  return all_right;
}

void Scheduler::InstructionDumpCoe(int final_execution_time){

  for(int i=0; i<GLvar::CGRA_scale; i++){

    ostringstream os;
    os<<"./result/PE-"<<"inst-"<<i<<".coe";
    string fName=os.str();
    ofstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
      DEBUG1("Fail to create the PE-inst-.coe");
    }

    fHandle << "memory_initialization_radix=2;" << endl;
    fHandle << "memory_initialization_vector=" << endl;
    list<int> bitList;
    list<int>::reverse_iterator it;
    int dec_data;
    int width;
    for(int j=0; j<final_execution_time; j++){

      //The highest 4 bits are reserved for future extension and they keep 0 at the moment.
      fHandle << "0000";

      //load-mux, 1->input from neighboring PEs. 0->input from outside memory.
      if(i==GLvar::load_PE_id || i==GLvar::store_PE_id){
        fHandle << CGRA->PE_array[i]->component_trace[j]->component_activity->load_mux;
      }
      else{
        fHandle << "0";
      }

      //PE input mux
      dec_data=CGRA->PE_array[i]->component_trace[j]->component_activity->PE_input_mux;
      switch (dec_data){
        case 0:
          fHandle << "00";
          break;
        case 1:
          fHandle << "01";
          break;
        case 2:
          fHandle << "10";
          break;
        case 3:
          fHandle << "11";
          break;
        default:
          DEBUG1("Unexpected PE_input_mux value!");
          break;
      }

      //PE bypass mux
      dec_data=CGRA->PE_array[i]->component_trace[j]->component_activity->PE_bypass_mux;
      switch (dec_data){
        case 0:
          fHandle << "00";
          break;
        case 1:
          fHandle << "01";
          break;
        case 2:
          fHandle << "10";
          break;
        case 3:
          fHandle << "11";
          break;
        default:
          DEBUG1("unexpected PE_bypass_mux value!");
          break;
      }
     
      //Memory ena
      fHandle << CGRA->PE_array[i]->component_trace[j]->component_activity->memory_wr_ena[1];
      fHandle << CGRA->PE_array[i]->component_trace[j]->component_activity->memory_wr_ena[0];

      //Memory addr
      int port[6]={3,4,5,0,1,2}; 
      for(int l=0; l<6; l++){
        dec_data=CGRA->PE_array[i]->component_trace[j]->component_activity->memory_addr[port[l]];
        width=8;
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
      }

      //dsp_opcode
      dec_data=CGRA->PE_array[i]->component_trace[j]->component_activity->dsp_opcode;
      if(dec_data==0){
        fHandle << "000";
      }
      else if(dec_data==1){
        fHandle << "001";
      }
      else if(dec_data==2){
        fHandle << "010";
      }
      else if(dec_data==3){
        fHandle << "011";
      }
      else if(dec_data==4){
        fHandle << "100";
      }
      else if(dec_data==5){
        fHandle << "101";
      }
      else if(dec_data==6){
        fHandle << "110";
      }
      else{
        DEBUG1("Undefined opcode!");
      }

      //Store mux
      if(i==GLvar::load_PE_id || i==GLvar::store_PE_id){
        dec_data=CGRA->PE_array[i]->component_trace[j]->component_activity->store_mux;
        switch (dec_data){
          case 0:
            fHandle << "00";
            break;
          case 1:
            fHandle << "01";
            break;
          case 2:
            fHandle << "10";
            break;
          case 3:
            fHandle << "11";
            break;
          default:
            DEBUG1("unexpected store_mux value!");
            break;
        }
      }
      else{
        fHandle << "00";
      }

      //PE output mux
      for(int l=0; l<4; l++){
        dec_data=CGRA->PE_array[i]->component_trace[j]->component_activity->PE_output_mux[l];
        switch (dec_data){
          case 0:
            fHandle << "00";
            break;
          case 1:
            fHandle << "01";
            break;
          case 2:
            fHandle << "10";
            break;
          case 3:
            fHandle << "11";
            break;
          default:
            DEBUG1("Unexpected PE_output_mux value!");
            break;
        }
      }
      
      fHandle<<endl;
    }
    fHandle.close();
  }
}

void Scheduler::InstructionMif2Mem(int final_execution_time){
  const int instMemDepth=4096;
  const int instMemWidth=72;
  const int validWidth=66;
  string fMemName="./result/inst.mem";
  ofstream fMemHandle;
  fMemHandle.open(fMemName.c_str());
  if(!fMemHandle.is_open()){
    DEBUG1("Fail to create inst.mem\n");
  }

  char vec[instMemWidth];
  for(int i=0; i<GLvar::CGRA_scale; i++){
    int intAddr=i*instMemDepth*instMemWidth/8;

    char hexAddr[20];
    if(i==0){
      sprintf(hexAddr, "@00000000");
    }
    else{
      sprintf(hexAddr, "@0000%X", intAddr);
    }
    fMemHandle << hexAddr <<endl;

    ostringstream os;
    os<<"./result/PE-"<<"inst-"<<i<<".mem";
    string fName=os.str();
    ifstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
      DEBUG1("Failed to open the PE.mem");
    }

    while(fHandle.getline(vec,instMemWidth)){

      //Reserved bits are assigned with '0'
      char nVec[instMemWidth];
      int j=0;
      for(int k=0; k<instMemWidth-validWidth; k++){
        nVec[j]='0';
        j++;
      }
      for(int k=0; k<validWidth; k++){
        nVec[j]=vec[k];
        j++;
      }

      char mVec[instMemWidth];
      j=0;
      for(int k=instMemWidth/2; k<instMemWidth; k++){
        mVec[j]=nVec[k];
        j++;
      }
      for(int k=0; k<instMemWidth/2; k++){
        mVec[j]=nVec[k];
        j++;
      }

      // Transform the bin to be hex
      for(int k=0; k<instMemWidth/4; k++){
        if(k==instMemWidth/2/4){
          fMemHandle<<endl;
        }
        int id=k*4;
        if(mVec[id]=='0' && mVec[id+1]=='0' && mVec[id+2]=='0' && mVec[id+3]=='0'){
          fMemHandle << '0';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='0' && mVec[id+2]=='0' && mVec[id+3]=='1'){
          fMemHandle << '1';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='0' && mVec[id+2]=='1' && mVec[id+3]=='0'){
          fMemHandle << '2';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='0' && mVec[id+2]=='1' && mVec[id+3]=='1'){
          fMemHandle << '3';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='1' && mVec[id+2]=='0' && mVec[id+3]=='0'){
          fMemHandle << '4';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='1' && mVec[id+2]=='0' && mVec[id+3]=='1'){
          fMemHandle << '5';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='1' && mVec[id+2]=='1' && mVec[id+3]=='0'){
          fMemHandle << '6';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='1' && mVec[id+2]=='1' && mVec[id+3]=='1'){
          fMemHandle << '7';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='0' && mVec[id+2]=='0' && mVec[id+3]=='0'){
          fMemHandle << '8';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='0' && mVec[id+2]=='0' && mVec[id+3]=='1'){
          fMemHandle << '9';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='0' && mVec[id+2]=='1' && mVec[id+3]=='0'){
          fMemHandle << 'A';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='0' && mVec[id+2]=='1' && mVec[id+3]=='1'){
          fMemHandle << 'B';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='1' && mVec[id+2]=='0' && mVec[id+3]=='0'){
          fMemHandle << 'C';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='1' && mVec[id+2]=='0' && mVec[id+3]=='1'){
          fMemHandle << 'D';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='1' && mVec[id+2]=='1' && mVec[id+3]=='0'){
          fMemHandle << 'E';
        }
        else{
          fMemHandle << 'F';
        }
      }
      fMemHandle<<endl;
    }
    fHandle.close();
  }
  fMemHandle.close();
}

void Scheduler::DataMemoryInit(map<int, int> &OpToAddr, const int &PE_id, const int &memory_capacity){
  //Data memory initialization
  vector<int> memory_data;
  memory_data.resize(memory_capacity);
  for(int i=0; i<memory_capacity; i++){
    memory_data[i]=0;
  }

  //Get the initial value of data memory
  for(int i=0; i<GLvar::maximum_operation_num; i++){
    if(OpToAddr.count(i)>0){
      int addr=OpToAddr[i];
      memory_data[addr]=DFG->DFG_vertex[i]->vertex_value;
    }
  }

  //Open a file to store initialized data of the data memory
  ostringstream os;
  os<<"./result/PE-"<<"mem-"<<PE_id<<".coe";
  string fName=os.str();
  ofstream fHandle;
  fHandle.open(fName.c_str());
  if(!fHandle.is_open()){
    DEBUG1("Fail to create the PE-mem.coe");
  }

  //Transform the decimal data to be binary data and store them in the file.
  vector<int>bitList;
  for(int i=0; i<memory_capacity; i++){
    int dec_data=memory_data[i];
    int width=16;
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

    vector<int>::reverse_iterator it;
    for(it=bitList.rbegin(); it!=bitList.rend(); it++){
      fHandle<<(*it);
    }
    fHandle<<endl;
    bitList.clear();
  }
}

void Scheduler::DataMemoryDumpMem(){
  const int DataMemDepth=1024;
  const int DataMemWidth=16;
  const int readWidth=20;

  string fMemName="./result/data.mem";
  ofstream fMemHandle;
  fMemHandle.open(fMemName.c_str());
  if(!fMemHandle.is_open()){
    DEBUG1("Fail to create data.mem\n");
  }

  char vec[readWidth];
  for(int i=0; i<GLvar::CGRA_scale; i++){
    int intAddr=i*DataMemDepth*DataMemWidth/8;

    char hexAddr[20];
    if(i==0){
      sprintf(hexAddr, "@00000000");
    }
    else{
      sprintf(hexAddr, "@0000%X", intAddr);
    }
    fMemHandle << hexAddr <<endl;

    ostringstream os;
    os<<"./result/PE-"<<"mem-"<<i<<".coe";
    string fName=os.str();
    ifstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
      DEBUG1("Fail to open the PE-mem.coe");
    }

    while(fHandle.getline(vec,readWidth)){

      char mVec[DataMemWidth];
      for(int k=0; k<DataMemWidth; k++){
        mVec[k]=vec[k];
      }

      // Dump the bin to be hex
      for(int k=0; k<DataMemWidth/4; k++){
        int id=k*4;
        if(mVec[id]=='0' && mVec[id+1]=='0' && mVec[id+2]=='0' && mVec[id+3]=='0'){
          fMemHandle << '0';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='0' && mVec[id+2]=='0' && mVec[id+3]=='1'){
          fMemHandle << '1';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='0' && mVec[id+2]=='1' && mVec[id+3]=='0'){
          fMemHandle << '2';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='0' && mVec[id+2]=='1' && mVec[id+3]=='1'){
          fMemHandle << '3';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='1' && mVec[id+2]=='0' && mVec[id+3]=='0'){
          fMemHandle << '4';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='1' && mVec[id+2]=='0' && mVec[id+3]=='1'){
          fMemHandle << '5';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='1' && mVec[id+2]=='1' && mVec[id+3]=='0'){
          fMemHandle << '6';
        }
        else if(mVec[id]=='0' && mVec[id+1]=='1' && mVec[id+2]=='1' && mVec[id+3]=='1'){
          fMemHandle << '7';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='0' && mVec[id+2]=='0' && mVec[id+3]=='0'){
          fMemHandle << '8';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='0' && mVec[id+2]=='0' && mVec[id+3]=='1'){
          fMemHandle << '9';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='0' && mVec[id+2]=='1' && mVec[id+3]=='0'){
          fMemHandle << 'A';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='0' && mVec[id+2]=='1' && mVec[id+3]=='1'){
          fMemHandle << 'B';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='1' && mVec[id+2]=='0' && mVec[id+3]=='0'){
          fMemHandle << 'C';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='1' && mVec[id+2]=='0' && mVec[id+3]=='1'){
          fMemHandle << 'D';
        }
        else if(mVec[id]=='1' && mVec[id+1]=='1' && mVec[id+2]=='1' && mVec[id+3]=='0'){
          fMemHandle << 'E';
        }
        else{
          fMemHandle << 'F';
        }
      }
      fMemHandle<<endl;
    }
    fHandle.close();
  }
  fMemHandle.close();
}

void Scheduler::SchedulingResultDump(){
  ostringstream os;
  os<<"./result/dst-"<<"op"<<".txt";
  string fName=os.str();
  ofstream fHandle;
  fHandle.open(fName.c_str());
  if(!fHandle.is_open()){
    DEBUG1("Fail to create the dst-op.txt");
  }

  for(int i=0; i<GLvar::maximum_operation_num; i++){
    //if(DFG->DFG_vertex[i]->vertex_type==OutputData){
      fHandle<<DFG->DFG_vertex[i]->vertex_id<<" ";
      fHandle<<DFG->DFG_vertex[i]->vertex_value<<" ";
      fHandle<<DFG->DFG_vertex[i]->vertex_attribute.execution_PE_id<<" ";
      fHandle<<endl;
    //}
  }

  fHandle.close();
}

void Scheduler::OutsideAddrMemoryDumpCoe(int final_execution_time){
  int outside_bram_num=2;
  int IO_PE[2]={0,1};
  for(int i=0; i<outside_bram_num; i++){

    ostringstream os;
    os<<"./result/outside-"<<"bram-addr-"<<i<<".coe";
    string fName=os.str();
    ofstream fHandle;
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
      DEBUG1("Fail to create the outside-bram-addr-.coe");
    }

    fHandle << "memory_initialization_radix=2;" <<endl;
    fHandle << "memory_initialization_vector=" <<endl;
    int IO_PE_id=IO_PE[i];
    vector<unsigned int> bram_addr;
    bram_addr.resize(final_execution_time+2);
    vector<int> load_store_idle; //0->load, 1->store, 2->idle
    load_store_idle.resize(final_execution_time+1);
    for(int j=0; j<final_execution_time+1; j++){
      bram_addr[j]=0;
      load_store_idle[j]=2;
    }

    for(int j=1; j<final_execution_time; j++){

      bool load_active=CGRA->PE_array[IO_PE_id]->component_trace[j]->component_reserved->load_path_reserved==true;
      int load_mux=CGRA->PE_array[IO_PE_id]->component_trace[j]->component_activity->load_mux;
      bool store_active=CGRA->PE_array[IO_PE_id]->component_trace[j]->component_reserved->store_path_reserved==true;
      if(load_active && load_mux==0){
        if(load_store_idle[j-1]==1){
          DEBUG1("Unexpected load state!\n");
        }
        load_store_idle[j-1]=0;
        int loaded_op = CGRA->PE_array[IO_PE_id]->component_trace[j-1]->component_activity->load_op;
        bram_addr[j-1] = DFG->DFG_vertex[loaded_op]->vertex_bram_addr;
      }

      if(store_active){
        if(load_store_idle[j]==0){
          DEBUG1("Unexpected store state!\n");
        }
        load_store_idle[j+2]=1;
        int stored_op = CGRA->PE_array[IO_PE_id]->component_trace[j]->component_activity->store_op;
        bram_addr[j+2] = DFG->DFG_vertex[stored_op]->vertex_bram_addr;
      }

    }

    list<int> bitList;
    list<int>::reverse_iterator it;
    int dec_data;
    int width; 
    for(int j=0; j<final_execution_time+1; j++){

      //The highest bit indicates the enable signal of the bram and the 
      //following 4bits represent the byte wena signals.
      if(load_store_idle[j]==0){
        fHandle << "10000";
      }
      else if(load_store_idle[j]==1){
        fHandle << "11111";
      }
      else{
        fHandle << "00000";
      }

      //Transform decimal addr to 27-bit binary 
      dec_data=bram_addr[j];
      width=27;
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

      fHandle<<endl;
    }

    fHandle.close();

  }

}

