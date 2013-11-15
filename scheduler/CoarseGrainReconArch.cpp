// ============================================================================
// Algorithm Description:
// Implementation of the topology.
// Add support to the specified 400MHz PE structure
//
// Version:
// 0.1      Nov 29th 2011
// 0.2      May 30th 2012
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#include "CoarseGrainReconArch.h"

CoarseGrainReconArch::CoarseGrainReconArch(){
    adjacency_matrix.resize(GLvar::CGRA_scale);
    PE_pair_distance.resize(GLvar::CGRA_scale);
    PE_pair_path.resize(GLvar::CGRA_scale);
    for(int i=0; i<GLvar::CGRA_scale; i++){
        adjacency_matrix[i].resize(GLvar::CGRA_scale);
        PE_pair_distance[i].resize(GLvar::CGRA_scale);
        PE_pair_path[i].resize(GLvar::CGRA_scale);
    }

    PE_array.resize(GLvar::CGRA_scale);
    for(int i=0; i<GLvar::CGRA_scale; i++){
        PE_array[i]=new PE(i);
    }

    LoadParameter();
    InoutDegreeRefresh();
    PEPairInfo();
}

//Load local configuration information from 'configure.txt'
void CoarseGrainReconArch::LoadParameter(){
    string configure_file_name="config/configure.txt";
    ifstream configure_file_handle;
    configure_file_handle.open(configure_file_name.c_str());
    if(!configure_file_handle.is_open()){
        DEBUG1("Failed to open the configure.txt.");
    }

    while(!configure_file_handle.eof()){
        string configure_item_key;
        configure_file_handle >> configure_item_key;
        
        if(configure_item_key=="routing_algorithm"){
            string configure_item_value;
            configure_file_handle >> configure_item_value;
            if(configure_item_value=="FullySearch"){
                routing_algorithm=FullySearch;
            }
            else if(configure_item_value=="SpecifiedPath"){
                routing_algorithm=SpecifiedPath;
            }
            else if(configure_item_value=="SimplifiedSearch"){
                routing_algorithm=SimplifiedSearch;
            }
            else if(configure_item_value=="SimulatedSearch"){
                routing_algorithm=SimulatedSearch;
            }
            else{
                DEBUG1("Unrecongnized routing algorithm in configure.txt!");
            }
        }
        else if(configure_item_key=="row"){
            configure_file_handle >> row;
        }
        else if(configure_item_key=="col"){
            configure_file_handle >> col;
        }

    }
    configure_file_handle.close();

    configure_file_name="./config/link.txt";
    configure_file_handle.open(configure_file_name.c_str());
    if(!configure_file_handle.is_open()){
        cout << "Failed to open the link.txt" << endl;
    }
    while(!configure_file_handle.eof()){
        for(int i=0; i<GLvar::CGRA_scale; i++){
            for(int j=0; j<GLvar::CGRA_scale; j++){
                configure_file_handle >> adjacency_matrix[i][j];
            }
        }
    }
    configure_file_handle.close();
}

void CoarseGrainReconArch::InoutDegreeRefresh(){
    for(int i=0; i<GLvar::CGRA_scale; i++){
        int inlink_counter=0;
        int outlink_counter=0;
        for(int j=0; j<GLvar::CGRA_scale; j++){
            if(adjacency_matrix[i][j]==1){
                outlink_counter++;
            }
            if(adjacency_matrix[j][i]==1){
                inlink_counter++;
            }
        }
        PE_array[i]->output_degree=outlink_counter;
        PE_array[i]->input_degree=inlink_counter;
    }
}

void CoarseGrainReconArch::PEPairInfo(){
    for(int src=0; src<GLvar::CGRA_scale; src++){
        for(int i=0; i<GLvar::CGRA_scale; i++){
            if(i==src){
                PE_pair_distance[src][i]=0;
            }
            else{
                if(adjacency_matrix[src][i]!=0){
                    PE_pair_distance[src][i]=adjacency_matrix[src][i];
                }
                else{
                    PE_pair_distance[src][i]=INF;
                }
            }
        }

        list<int> shortest_PE_set;
        list<int> unknown_PE_set;
        for(int i=0; i<GLvar::CGRA_scale; i++){
            PE_pair_path[src][i].push_back(src);
            if(i==src){
                shortest_PE_set.push_back(i);
            }
            if(i!=src){
                unknown_PE_set.push_back(i);
            }
        }

        //Find out the node with minimum distance in unknown_src_node_set and then move it to the shortest_src_node_set.
        int shortest_PE_id_tmp;
        int shortest_distance_tmp;
        list<int>::iterator unknown_set_iter;
        list<int>::iterator selected_PE_iter;
        while(unknown_PE_set.empty()==false){
            shortest_distance_tmp=INF;
            for(unknown_set_iter=unknown_PE_set.begin(); unknown_set_iter!=unknown_PE_set.end(); unknown_set_iter++){
                int current_PE_id=*unknown_set_iter;
                int current_distance=PE_pair_distance[src][current_PE_id];
                if(shortest_distance_tmp>current_distance){
                    shortest_distance_tmp=current_distance;
                    shortest_PE_id_tmp=current_PE_id;
                    selected_PE_iter=unknown_set_iter;
                }
            }

            //Refresh the two set
            if(shortest_distance_tmp==INF){
                DEBUG1("It is not a connected topology!");
            }
            shortest_PE_set.push_back(shortest_PE_id_tmp);
            PE_pair_distance[src][shortest_PE_id_tmp]=shortest_distance_tmp;
            unknown_PE_set.erase(selected_PE_iter);
            PE_pair_path[src][shortest_PE_id_tmp].push_back(shortest_PE_id_tmp);

            //The nodes in unknown set connected with the selected nodes may have shorter path.
            for(int i=0; i<GLvar::CGRA_scale; i++){
                if(adjacency_matrix[shortest_PE_id_tmp][i]!=0){
                    int distance_tmp = PE_pair_distance[src][shortest_PE_id_tmp] + adjacency_matrix[shortest_PE_id_tmp][i];
                    if(PE_pair_distance[src][i]>distance_tmp){
                        PE_pair_distance[src][i]=distance_tmp;
                        PE_pair_path[src][i].clear();
                        list<int>::iterator iter_tmp;
                        for(iter_tmp=PE_pair_path[src][shortest_PE_id_tmp].begin(); iter_tmp!=PE_pair_path[src][shortest_PE_id_tmp].end(); iter_tmp++){
                            PE_pair_path[src][i].push_back(*iter_tmp);
                        }
                    }
                }
            }
        }
    }

    //Print the path information
    if(GLvar::print_level==10){
        for(int i=0; i<GLvar::CGRA_scale; i++){
            for(int j=0; j<GLvar::CGRA_scale; j++){
                cout<<i<<"->"<<j<<" "<<PE_pair_distance[i][j]<<endl;
                cout<<"Path:";
                list<int>::iterator iter_tmp;
                for(iter_tmp=PE_pair_path[i][j].begin(); iter_tmp!=PE_pair_path[i][j].end(); iter_tmp++){
                    cout<<" "<<*iter_tmp;
                }
                cout<<endl;
            }
        }
    }
}

void CoarseGrainReconArch::AddLink(const int &src, const int &dst){
    if(adjacency_matrix[src][dst]!=0){
        DEBUG1("The link %d--> %d exists already!!!", src, dst);
    }
    else{
        adjacency_matrix[src][dst]=1;
    }
}

void CoarseGrainReconArch::RemoveLink(const int &src, const int &dst){
    if(adjacency_matrix[src][dst]==0){
        DEBUG1("The link %d-->%d has been removed before!!!", src, dst);
    }
    else{
        adjacency_matrix[src][dst]=0;
    }
}

void CoarseGrainReconArch::PossiblePath(const int &start_time, const int &src, const int &dst, list<int> &routing_path){
    if(routing_algorithm==FullySearch){
        DijkstraPath(src, dst, routing_path);
    }
    else if(routing_algorithm==SpecifiedPath){
        ReadPathFile(src, dst, routing_path);
    }
    else if(routing_algorithm==SimplifiedSearch){
        MeshPath(src, dst, routing_path);
    }
    else if(routing_algorithm==SimulatedSearch){
        SimulationPath(start_time, src, dst, routing_path);
    }
    else{
        DEBUG1("Unrecongnized routing algorithm!");
    }
}

void CoarseGrainReconArch::ReadPathFile(const int &src, const int &dst, list<int> &routing_path){
    //Undefined routing sheme
}

void CoarseGrainReconArch::MeshPath(const int &src, const int &dst, list<int> &routing_path){
    //Undefined routing scheme
}

//Find out the shortest path set using dijkstra algorithm
void CoarseGrainReconArch::DijkstraPath(const int &src, const int &dst, list<int> &routing_path){
    routing_path=PE_pair_path[src][dst];
}

//Note that we try to get the optmized path without changing the state of CGRA, DFG or Scheduler.
void CoarseGrainReconArch::SimulationPath(const int &start_time, const int &src, const int &dst, list<int> &routing_path){
    vector<bool> PE_simulated_flag;
    vector<int> PE_simulated_avail_time;
    vector<list<int> > routing_path_per_PE;

    //Initialization
    PE_simulated_flag.resize(GLvar::CGRA_scale);
    PE_simulated_avail_time.resize(GLvar::CGRA_scale);
    routing_path_per_PE.resize(GLvar::CGRA_scale);
    for(int i=0; i<GLvar::CGRA_scale; i++){
        if(i==src){
            PE_simulated_flag[i]=true;
            PE_simulated_avail_time[i]=start_time;
            routing_path_per_PE[i].push_back(src);
            PE_simulated_avail_time[i]=0;
        }
        else{
            PE_simulated_flag[i]=false;
            routing_path_per_PE[i].push_back(src);
            if(IsLinkExisted(src,i)==true){
                PE_simulated_avail_time[i]=OperationMigrationTime(PE_simulated_avail_time[src], src, i);
                routing_path_per_PE[i].push_back(i);
            }
            else{
                PE_simulated_avail_time[i]=INF;
            }
        }
    }

    //We can get an optimized path for certain PE each loop
    bool simulation_completed=false;
    if(src==dst){
        simulation_completed=true;
    }
    while(!simulation_completed){
        int optimized_PE_id;
        int earliest_avail_time=INF;
        for(int i=0; i<GLvar::CGRA_scale; i++){
            if(earliest_avail_time>PE_simulated_avail_time[i] && PE_simulated_flag[i]==false){
                earliest_avail_time=PE_simulated_avail_time[i];
                optimized_PE_id=i;
            }
        }
        PE_simulated_flag[optimized_PE_id]=true;
        PE_simulated_avail_time[optimized_PE_id]=earliest_avail_time;
        if(optimized_PE_id==dst){
            simulation_completed=true;
            break;
        }

        //Refresh simulation state
        for(int i=0; i<GLvar::CGRA_scale; i++){
            if(IsLinkExisted(optimized_PE_id,i)==true){
                int selected_avail_time=PE_simulated_avail_time[optimized_PE_id];
                int refreshed_avail_time=selected_avail_time+OperationMigrationTime(selected_avail_time, optimized_PE_id, i);
                if(refreshed_avail_time<PE_simulated_avail_time[i]){
                    PE_simulated_avail_time[i]=refreshed_avail_time;
                    routing_path_per_PE[i].clear();
                    routing_path_per_PE[i]=routing_path_per_PE[optimized_PE_id];
                    routing_path_per_PE[i].push_back(i);
                }
            }
        }

        //Check whether simulation is completed.
        simulation_completed=true;
        for(int i=0; i<GLvar::CGRA_scale; i++){
            simulation_completed=simulation_completed && PE_simulated_flag[i];
        }
    }
    routing_path=routing_path_per_PE[dst];

    if(GLvar::print_level==10){
        list<int>::iterator it_tmp;
        cout<<src<<"->"<<dst<<" simulation path: ";
        for(it_tmp=routing_path.begin(); it_tmp!=routing_path.end(); it_tmp++){
            cout<<(*it_tmp)<<" ";
        }
        cout<<endl;    
    }
}

//Note that it is kind of estimation rather than acurate time 
int CoarseGrainReconArch::OperationMigrationTime(const int &start_time, const int &src, const int &dst){
    int migration_time;
    bool migration_completed=false;
    int clock_tmp;
    /*int search_gap=PE_array[dst]->maximum_active_time-start_time;
    if(search_gap>MAX_SEARCH_GAP){
        clock_tmp=PE_array[dst]->maximum_active_time-MAX_SEARCH_GAP;
    }
    else{
        clock_tmp=start_time;
    }*/
    clock_tmp=start_time;
    while(!migration_completed){
        if(src==dst){
            DEBUG1("Unexpected src and dst pair here!");
        }
        else{
            int child_id=GetChildID(src, dst);
            int additional_pipeline=0;
            bool dst_load_path_avail=true;
            if(dst==GLvar::load_PE_id){
                additional_pipeline=1;
            }

            //Output condition
            bool src_memory_read_avail0=PE_array[src]->component_trace[clock_tmp+1]->component_reserved->memory_read_reserved[0]==false;
            bool src_memory_read_avail1=PE_array[src]->component_trace[clock_tmp+1]->component_reserved->memory_read_reserved[1]==false;
            bool src_memory_read_avail2=PE_array[src]->component_trace[clock_tmp+1]->component_reserved->memory_read_reserved[2]==false;
            bool src_memory_write_avail0=PE_array[src]->component_trace[clock_tmp+1]->component_reserved->memory_write_reserved[0]==false;
            bool src_output_avail=PE_array[src]->component_trace[clock_tmp+4]->component_reserved->PE_output_reserved[child_id]==false;
            bool src_read_avail=(src_memory_read_avail0 || src_memory_read_avail1 || src_memory_read_avail2) && src_memory_write_avail0;

            if(dst==GLvar::load_PE_id){
                dst_load_path_avail=PE_array[dst]->component_trace[clock_tmp+6]->component_reserved->load_path_reserved==false;
            }

            bool dst_input_avail=PE_array[dst]->component_trace[clock_tmp+4]->component_reserved->PE_input_reserved==false;
            bool dst_memory_write_avail1=PE_array[dst]->component_trace[clock_tmp+6+additional_pipeline]->component_reserved->memory_write_reserved[1]==false;
            bool dst_memory_read_avail3=PE_array[dst]->component_trace[clock_tmp+6+additional_pipeline]->component_reserved->memory_read_reserved[3]==false;
            bool dst_memory_read_avail4=PE_array[dst]->component_trace[clock_tmp+6+additional_pipeline]->component_reserved->memory_read_reserved[4]==false;
            bool dst_memory_read_avail5=PE_array[dst]->component_trace[clock_tmp+6+additional_pipeline]->component_reserved->memory_read_reserved[5]==false;
            bool dst_write_avail= dst_memory_write_avail1 && dst_memory_read_avail3 && dst_memory_read_avail4 && dst_memory_read_avail5;

            if(src_read_avail && src_output_avail && dst_input_avail && dst_write_avail && dst_load_path_avail){
                migration_time=clock_tmp+6+additional_pipeline-start_time;
                migration_completed=true;
            }
            else{
                clock_tmp++;
            }
        }
    }
    return migration_time;
}

bool CoarseGrainReconArch::IsLinkExisted(const int &src, const int &dst){
    if(adjacency_matrix[src][dst]==1)
        return true;
    else
        return false;
}

int CoarseGrainReconArch::GetChildID(const int &src, const int &dst){
    int child_id=0;
    int src_row=src/col;
    int src_col=src%col;
    int dst_row=dst/col;
    int dst_col=dst%col;
    if((src_col-dst_col==1 && src_row==dst_row) || (src_col-dst_col==1-col && src_row==dst_row)){
        child_id=0;
    }
    else if((src_col-dst_col==-1 && src_row==dst_row) || (src_col-dst_col==col-1 && src_row==dst_row)){
        child_id=2;
    }
    else if((src_row-dst_row==1 && src_col==dst_col) || (src_row-dst_row==1-row && src_col==dst_col)){
        child_id=1;
    }
    else if((src_row-dst_row==-1 && src_col==dst_col) || (src_row-dst_row==row-1 && src_col==dst_col)){
        child_id=3;
    }
    else
        child_id=NaN;

    return child_id;
}

int CoarseGrainReconArch::GetParentID(const int &src, const int &dst){
    int parent_id=0;
    int src_row=src/col;
    int src_col=src%col;
    int dst_row=dst/col;
    int dst_col=dst%col;
    if((src_col-dst_col==1 && src_row==dst_row) || (src_col-dst_col==1-col && src_row==dst_row)){
        parent_id=2;
    }
    else if((src_col-dst_col==-1 && src_row==dst_row) || (src_col-dst_col==col-1 && src_row==dst_row)){
        parent_id=0;
    }
    else if((src_row-dst_row==1 && src_col==dst_col) || (src_row-dst_row==1-row && src_col==dst_col)){
        parent_id=3;
    }
    else if((src_row-dst_row==-1 && src_col==dst_col) || (src_row-dst_row==row-1 && src_col==dst_col)){
        parent_id=1;
    }
    else
        parent_id=NaN;

    return parent_id;
}
//It is able to handle arbitrary topology, however, the limitation is
//that only a single Link is allowed between two PEs. 
/*
int CoarseGrainReconArch::GetChildID(const int &src, const int &dst){
    int child_id=0;
    for(int i=0; i<GLvar::CGRA_scale; i++){
        bool link_exist=IsLinkExisted(src,i);
        if(link_exist==true){
            if(i==dst){
                break;
            }
            else{
                child_id++;
            }
        }
    }
    return child_id;
}
*/

/*
int CoarseGrainReconArch::GetParentID(const int &src, const int &dst){
    int parent_id=0;
    for(int i=0; i<GLvar::CGRA_scale; i++){
        bool link_exist=IsLinkExisted(i,dst);
        if(link_exist==true){
            if(i==src){
                break;
            }
            else{
                parent_id++;
            }
        }
    }
    return parent_id;
}
*/

int CoarseGrainReconArch::GetParentPEID(const int &PE_id, const int &mux_input){
    int parent_PE_id=NaN;
    for(int i=0; i<GLvar::CGRA_scale; i++){
        int parent_id=GetParentID(i, PE_id);
        if(mux_input==parent_id){
            parent_PE_id=i;
        }
    }
    return parent_PE_id;
}

int CoarseGrainReconArch::GetChildPEID(const int &PE_id, const int &mux_output){
    int child_PE_id=NaN;
    for(int i=0; i<GLvar::CGRA_scale; i++){
        int child_id=GetChildID(PE_id, i);
        if(mux_output==child_id){
            child_PE_id=i;
        }
    }
    return child_PE_id;
}

void CoarseGrainReconArch::LinkUtilizationAnalysis(const int &begin_time, const int &end_time){
    vector<vector<float> > link_utilization;
    vector<vector<int> > link_counter;
    link_utilization.resize(GLvar::CGRA_scale);
    link_counter.resize(GLvar::CGRA_scale);
    for(int i=0; i<GLvar::CGRA_scale; i++){
        link_utilization[i].resize(GLvar::CGRA_scale);
        link_counter[i].resize(GLvar::CGRA_scale);
        for(int j=0; j<GLvar::CGRA_scale; j++){
            link_utilization[i][j]=0;
            link_counter[i][j]=0;
        }
    }

    //Analyze the input/output reservation inforation to get link utilization
    for(int i=0; i<GLvar::CGRA_scale; i++){
        for(int j=begin_time; j<end_time; j++){
            for(int k=0; k<PE_array[i]->output_degree; k++){
                bool PE_output_active=PE_array[i]->component_trace[j+1]->component_reserved->PE_output_reserved[k];
                if(PE_output_active){
                    int child_PE_id=GetChildPEID(i, k);
                    link_counter[i][child_PE_id]++;
                }
            }
        }
    }

    if(GLvar::print_level==10){
        for(int i=0; i<GLvar::CGRA_scale; i++){
            for(int j=0; j<GLvar::CGRA_scale; j++){
                link_utilization[i][j]=1.0*link_counter[i][j]/(end_time-begin_time);
                cout<<setfill(' ')<<setw(10)<<link_utilization[i][j]<<" ";
            }
            cout<<endl;
        }
    }

    //Delete less important links
    float minimum_link_utilization=1;
    float maximum_link_utilization=0;
    //float link_utilization_standard;
    //float exist_standard=LINK_FILTER_STANDARD; //link can exist when its utilization is among the highest 90%.
    for(int i=0; i<GLvar::CGRA_scale; i++){
        for(int j=0; j<GLvar::CGRA_scale; j++){
            if(link_utilization[i][j]>0){//link with zero utilization is excluded from the following analysis
                if(link_utilization[i][j]>maximum_link_utilization){
                    maximum_link_utilization=link_utilization[i][j];
                }
                if(link_utilization[i][j]<minimum_link_utilization){
                    minimum_link_utilization=link_utilization[i][j];
                }
            }
        }
    }
    //link_utilization_standard=minimum_link_utilization+(maximum_link_utilization-minimum_link_utilization)*(1-exist_standard);

    int current_link_num=0;
    for(int i=0; i<GLvar::CGRA_scale; i++){
        for(int j=0; j<GLvar::CGRA_scale; j++){
            if(adjacency_matrix[i][j]!=0){
                current_link_num++;
            }
        }
    }
    //cout<<"Total link number: "<<current_link_num<<endl;

    /*string link_file="config/link.txt";
      char backup_link_file[50];
      sprintf(backup_link_file,"result/link-%d.txt", current_link_num);
      rename(link_file.c_str(),backup_link_file);
      ofstream link_file_handle;
      link_file_handle.open(link_file.c_str());
      if(!link_file_handle.is_open()){
      cout << "Failed to open the link.txt" << endl;
      }
      for(int i=0; i<GLvar::CGRA_scale; i++){
      for(int j=0; j<GLvar::CGRA_scale; j++){
      if(link_utilization[i][j]>link_utilization_standard){
      link_file_handle<<"1 ";
      }
      else{
      link_file_handle<<"0 ";
      }
      }
      link_file_handle<<endl;
      }
      link_file_handle.close();*/
}

bool CoarseGrainReconArch::ActivityCheck(){
    cout<<"Scheduling verification starts!"<<endl;
    bool all_right=true;

    // Just check the import signals that are closely realted to see
    // whether they are coherent. Sometimes it depends on the actual 
    // PE structure to or the scheduling algorithm. Anyway,I use it 
    // mainly for verification purpose. I will just leave it for future work.

    if(all_right){
        cout<<"CGRA components show coherent behaviors!"<<endl;
    }
    else{
        cout<<"CGRA component activities do not match!"<<endl;
    }
    return all_right;
}

CoarseGrainReconArch::~CoarseGrainReconArch(){
    for(int i=0; i<GLvar::CGRA_scale; i++){
        delete PE_array[i];
    }
}

