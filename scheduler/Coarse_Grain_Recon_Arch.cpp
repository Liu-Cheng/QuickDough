// ============================================================================
// Algorithm Description:
// Implementation of the topology.
// Add support to the specified 16bit-400MHz / 32bit-200MHz PE structure
//
// Version:
// Nov 29th 2011, initial version
// May 30th 2012, Fix the pipeline bug
// Sep 9th 2014, Remove the ugly coding
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ============================================================================

#include "Coarse_Grain_Recon_Arch.h"

Coarse_Grain_Recon_Arch::Coarse_Grain_Recon_Arch(){

    Load_Parameters();

    PE_Array.resize(CGRA_Scale);
    CGRA_Routing_Dist.resize(CGRA_Scale);
    CGRA_Routing_Path.resize(CGRA_Scale);
    for(int i=0; i<CGRA_Scale; i++){
        PE_Array[i] = new PE(i);
        CGRA_Routing_Path[i].resize(CGRA_Scale);
        CGRA_Routing_Dist[i].resize(CGRA_Scale);
    }

    Static_Routing(Static_Routing_Alg);

}

//Load local configuration information from 'configure.txt' and 'link.txt'
void Coarse_Grain_Recon_Arch::Load_Parameters(){

    std::string Config_fName="config/configure.txt";
    std::ifstream Config_fHandle;
    Config_fHandle.open(Config_fName.c_str());
    if(!Config_fHandle.is_open()){
        ERROR("Failed to open configure.txt.");
    }

    while(!Config_fHandle.eof()){
        std::string Config_Item_Key;
        Config_fHandle >> Config_Item_Key;

        if(Config_Item_Key == "CGRA_Scale"){
            Config_fHandle >> CGRA_Scale;
        }
        else if(Config_Item_Key == "CGRA_Topology"){
            std::string Config_Item_Val;
            Config_fHandle >> Config_Item_Val;
            if(Config_Item_Val == "Torus"){
                CGRA_Topology = Torus;
            }
            else if(Config_Item_Val == "Mesh"){
                CGRA_Topology = Mesh;
            }
            else if(Config_Item_Val == "Customized"){
                CGRA_Topology = Customized;
            }
            else{
                ERROR("Undefined CGRA Topology!\n");
            }
        }
        else if(Config_Item_Key == "Row"){
            Config_fHandle >> Row;
        }
        else if(Config_Item_Key == "Col"){
            Config_fHandle >> Col;
        }
        else if(Config_Item_Key == "In_Buffer_Num"){
            Config_fHandle >> In_Buffer_Num;
        }
        else if(Config_Item_Key == "Out_Buffer_Num"){
            Config_fHandle >> Out_Buffer_Num;
        }
        else if(Config_Item_Key == "IM_Buffer_Num"){
            Config_fHandle >> IM_Buffer_Num;
        }
        else if(Config_Item_Key == "Load_PE_ID"){
            Load_PE_ID.resize(In_Buffer_Num);
            for(int i=0; i<In_Buffer_Num; i++){
                Config_fHandle >> Load_PE_ID[i];
            }
        }
        else if(Config_Item_Key == "Store_PE_ID"){
            Store_PE_ID.resize(Out_Buffer_Num);
            for(int i=0; i<Out_Buffer_Num; i++){
                Config_fHandle >> Store_PE_ID[i];
            }
        }
        else if(Config_Item_Key == "IM_PE_ID"){
            if(IM_Buffer_Num == 0){
                continue;
            }
            IM_PE_ID.resize(IM_Buffer_Num);
            for(int i=0; i<IM_Buffer_Num; i++){
                Config_fHandle >> IM_PE_ID[i];
            }
        }
        else if(Config_Item_Key == "In_Buffer_Depth"){
            Config_fHandle >> In_Buffer_Depth;
        }
        else if(Config_Item_Key == "IM_Buffer_Depth"){
            Config_fHandle >> IM_Buffer_Depth;
        }
        else if(Config_Item_Key == "Out_Buffer_Depth"){
            Config_fHandle >> Out_Buffer_Depth;
        }
        else if(Config_Item_Key == "IO_Buffer_Width"){
            Config_fHandle >> IO_Buffer_Width;
        }
        else if(Config_Item_Key == "Addr_Buffer_Depth"){
            Config_fHandle >> Addr_Buffer_Depth;
        }
        else if(Config_Item_Key == "Addr_Buffer_Width"){
            Config_fHandle >> Addr_Buffer_Width;
        }
        else if(Config_Item_Key == "Pipeline_Intensity"){
            std::string Config_Item_Val;
            Config_fHandle >> Config_Item_Val;
            if(Config_Item_Val == "HF"){
                Pipeline = HF;
            }
            else if(Config_Item_Val == "LHF"){
                Pipeline = LHF;
            }
            else if(Config_Item_Val == "MF"){
                Pipeline = MF;
            }
            else if(Config_Item_Val == "LF"){
                Pipeline = LF;
            }
            else if(Config_Item_Val == "OLD"){
                Pipeline = OLD;
            }
            else{
                ERROR("Undefined pipeline strategy!\n");
            }
        }
        else if(Config_Item_Key == "Dynamic_Routing_Alg"){
            std::string Config_Item_Val;
            Config_fHandle >> Config_Item_Val;
            if(Config_Item_Val == "Dynamic_Dijkstra"){
                Dynamic_Routing_Alg = Dynamic_Dijkstra;
            }
            else if(Config_Item_Val == "Dynamic_XY"){
                Dynamic_Routing_Alg = Dynamic_XY;
            }
            else{
                ERROR("Undefined routing algorithm!\n");
            }
        }
        else if(Config_Item_Key == "Static_Routing_Alg"){
            std::string Config_Item_Val;
            Config_fHandle >> Config_Item_Val;
            if(Config_Item_Val == "Static_Dijkstra"){
                Static_Routing_Alg = Static_Dijkstra;
            }
            else if(Config_Item_Val == "Static_XY"){
                Static_Routing_Alg = Static_XY;
            }
            else{
                ERROR("Undefined routing algorithm!\n");
            }
        }

    }
    Config_fHandle.close();

    // Update link information
    CGRA_Adjacency_Mat.resize(CGRA_Scale);
    for(int i=0; i<CGRA_Scale; i++){
        CGRA_Adjacency_Mat[i].resize(CGRA_Scale);
    }

    Link_Gen();

}

void Coarse_Grain_Recon_Arch::Static_Dijkstra_Routing(int Src, std::vector<std::list<int> > &Src_Routing_Path, std::vector<int> &Src_Routing_Dist){

    // Initialization
    Src_Routing_Dist.resize(CGRA_Scale);
    Src_Routing_Path.resize(CGRA_Scale);
    for(int Dst=0; Dst<CGRA_Scale; Dst++){
        if(Dst==Src){
            Src_Routing_Dist[Dst] = 0;
        }
        else{
            if(CGRA_Adjacency_Mat[Src][Dst]!=0){
                Src_Routing_Dist[Dst] = CGRA_Adjacency_Mat[Src][Dst];
            }
            else{
                Src_Routing_Dist[Dst] = INT_MAX;
            }
        }
    }

    std::list<int> Routed_PE_Set;
    std::list<int> Unrouted_PE_Set;
    Routed_PE_Set.push_back(Src);
    for(int Dst=0; Dst<CGRA_Scale; Dst++){
        Src_Routing_Path[Dst].push_back(Src);
        if(Dst != Src){
            Unrouted_PE_Set.push_back(Dst);
        }
    }

    while(Unrouted_PE_Set.empty() == false){

        int Min_Dist = INT_MAX;    
        int Next_Routed_PE_ID;
        std::list<int>::iterator Lit;
        std::list<int>::iterator PE_It;

        for(Lit = Unrouted_PE_Set.begin(); Lit != Unrouted_PE_Set.end(); Lit++){
            if(Min_Dist > Src_Routing_Dist[*Lit]){
                Min_Dist = Src_Routing_Dist[*Lit];
                Next_Routed_PE_ID = *Lit;
                PE_It = Lit;
            }
        }

        //Refresh the two set
        if(Min_Dist == INT_MAX){
            ERROR("It is not a connected topology!\n");
        }
        Routed_PE_Set.push_back(Next_Routed_PE_ID);
        Unrouted_PE_Set.erase(PE_It);
        Src_Routing_Dist[Next_Routed_PE_ID] = Min_Dist;
        Src_Routing_Path[Next_Routed_PE_ID].push_back(Next_Routed_PE_ID);

        //The nodes in Unrouted set connected with the selected nodes may have shorter path.
        for(int Dst=0; Dst<CGRA_Scale; Dst++){
            if(CGRA_Adjacency_Mat[Next_Routed_PE_ID][Dst] != 0){
                int Dist_Tmp = Src_Routing_Dist[Next_Routed_PE_ID] + CGRA_Adjacency_Mat[Next_Routed_PE_ID][Dst];
                if(Src_Routing_Dist[Dst] > Dist_Tmp){
                    Src_Routing_Dist[Dst] = Dist_Tmp;
                    Src_Routing_Path[Dst].clear();
                    for(Lit = Src_Routing_Path[Next_Routed_PE_ID].begin(); Lit != Src_Routing_Path[Next_Routed_PE_ID].end(); Lit++){
                        Src_Routing_Path[Dst].push_back(*Lit);
                    }
                }
            }
        }
    }

}

// XY routing on Torus topology.
void Coarse_Grain_Recon_Arch::Static_XY_Routing(int Src, std::vector<std::list<int> > &Src_Routing_Path, std::vector<int> &Src_Routing_Dist){
    std::cout << "To be added soon." << std::endl;
}

// Given the topology information i.e. link.txt, figure out the minimum routing
// path using Dijkstra algorithm. It is applicable to arbitrary topology.
void Coarse_Grain_Recon_Arch::Static_Routing(const Routing_Alg &CGRA_Routing_Alg){

    for(int Src=0; Src<CGRA_Scale; Src++){
        std::vector<std::list<int> > Src_Routing_Path;
        std::vector<int> Src_Routing_Dist;
        if(CGRA_Routing_Alg == Static_Dijkstra){
            Static_Dijkstra_Routing(Src, Src_Routing_Path, Src_Routing_Dist);
        }
        else if(CGRA_Routing_Alg == Static_XY){
            Static_XY_Routing(Src, Src_Routing_Path, Src_Routing_Dist);
        }
        else{
            ERROR("Unsupported routing algorithm.\n");
        }

        for(int Dst=0; Dst<CGRA_Scale; Dst++){
            CGRA_Routing_Dist[Src][Dst] = Src_Routing_Dist[Dst];
            CGRA_Routing_Path[Src][Dst] = Src_Routing_Path[Dst];
        }
    }

    //Print the path information
    if(GL_Var::Print_Level>10){
        for(int i=0; i<CGRA_Scale; i++){
            for(int j=0; j<CGRA_Scale; j++){
                std::cout << i << "->" << j << " " << CGRA_Routing_Dist[i][j] << std::endl;
                std::cout << "Path:";
                std::list<int>::iterator Lit;
                for(Lit=CGRA_Routing_Path[i][j].begin(); Lit!=CGRA_Routing_Path[i][j].end(); Lit++){
                    std::cout << " " << *Lit;
                }
                std::cout << std::endl;
            }
        }
    }

}

int Coarse_Grain_Recon_Arch::Get_Dist(const int &Src_PE_ID, const int &Dst_PE_ID){

    return CGRA_Routing_Dist[Src_PE_ID][Dst_PE_ID];
}

void Coarse_Grain_Recon_Arch::Add_Link(const int &Src, const int &Dst){

    if(CGRA_Adjacency_Mat[Src][Dst] != 0){
        ERROR("The link %d--> %d exists already!!!", Src, Dst);
    }
    else{
        CGRA_Adjacency_Mat[Src][Dst] = 1;
    }

}

void Coarse_Grain_Recon_Arch::Remove_Link(const int &Src, const int &Dst){
    if(CGRA_Adjacency_Mat[Src][Dst]==0){
        ERROR("The link %d-->%d has been removed before!!!", Src, Dst);
    }
    else{
        CGRA_Adjacency_Mat[Src][Dst] = 0;
    }
}

void Coarse_Grain_Recon_Arch::Dynamic_Routing(const Routing_Alg &CGRA_Routing_Alg, const int &Src_Avail_Time, const int &Src_PE_ID, const int &Dst_PE_ID, std::list<int> &Routing_Path){

    if(CGRA_Routing_Alg == Dynamic_Dijkstra){
        Dynamic_Dijkstra_Routing(Src_Avail_Time, Src_PE_ID, Dst_PE_ID, Routing_Path);
    }
    else if(CGRA_Routing_Alg == Dynamic_XY){
        // To be fixed
    }
    else{
        ERROR("Unrecongnized routing algorithm!");
    }

}


/*-------------------------------------------------------------------------
 * Search the shortest routing path using dijkstra algorithm, while we use
 * estimated routing latency as edge weight of the graph. To reduce the routing
 * time, we will stop the searching once routing path from Src_PE_ID to Dst_PE_ID
 * is found.
 * -----------------------------------------------------------------------*/
void Coarse_Grain_Recon_Arch::Dynamic_Dijkstra_Routing(const int &Src_Avail_Time, const int &Src_PE_ID, const int &Dst_PE_ID, std::list<int> &Routing_Path){

    std::vector<bool> PEs_Routing_Flag;
    std::vector<int> PEs_Routing_Time;
    std::vector<std::list<int> > PEs_Routing_Path;

    //Initialization
    PEs_Routing_Flag.resize(CGRA_Scale);
    PEs_Routing_Time.resize(CGRA_Scale);
    PEs_Routing_Path.resize(CGRA_Scale);
    for(int i=0; i<CGRA_Scale; i++){
        if(i==Src_PE_ID){
            PEs_Routing_Flag[i] = true;
            PEs_Routing_Time[i] = Src_Avail_Time;
            PEs_Routing_Path[i].push_back(Src_PE_ID);
        }
        else{
            PEs_Routing_Flag[i] = false;
            PEs_Routing_Path[i].push_back(Src_PE_ID);
            if(Is_Link_Existed(Src_PE_ID, i)){
                PEs_Routing_Time[i] = OP_Migration_Time(PEs_Routing_Time[Src_PE_ID], Src_PE_ID, i);
                PEs_Routing_Path[i].push_back(i);
            }
            else{
                PEs_Routing_Time[i] = INT_MAX;
            }
        }
    }

    // We can get an optimized path for certain PE each loop
    bool Routing_Complete = false;
    if(Src_PE_ID == Dst_PE_ID){
        Routing_Complete = true;
    }

    while(!Routing_Complete){
        int Optimal_Routing_PE_ID;
        int Earliest_Avail_Time = INT_MAX;
        for(int i=0; i<CGRA_Scale; i++){
            if(Earliest_Avail_Time > PEs_Routing_Time[i] && PEs_Routing_Flag[i] == false){
                Earliest_Avail_Time = PEs_Routing_Time[i];
                Optimal_Routing_PE_ID = i;
            }
        }

        PEs_Routing_Flag[Optimal_Routing_PE_ID] = true;
        PEs_Routing_Time[Optimal_Routing_PE_ID] = Earliest_Avail_Time;
        if(Optimal_Routing_PE_ID == Dst_PE_ID){
            Routing_Complete = true;
            break;
        }

        //Refresh simulation state
        for(int i=0; i<CGRA_Scale; i++){
            if(Is_Link_Existed(Optimal_Routing_PE_ID, i)){
                int To_Optimal_PE_Routing_Time = PEs_Routing_Time[Optimal_Routing_PE_ID];
                int Updated_Routing_Time = PEs_Routing_Time[Optimal_Routing_PE_ID] + OP_Migration_Time(To_Optimal_PE_Routing_Time, Optimal_Routing_PE_ID, i);
                if(Updated_Routing_Time < PEs_Routing_Time[i]){
                    PEs_Routing_Time[i] = Updated_Routing_Time;
                    PEs_Routing_Path[i].clear();
                    PEs_Routing_Path[i] = PEs_Routing_Path[Optimal_Routing_PE_ID];
                    PEs_Routing_Path[i].push_back(i);
                }
            }
        }

        //Check whether simulation is completed.
        Routing_Complete = true;
        for(int i=0; i<CGRA_Scale; i++){
            Routing_Complete = Routing_Complete && PEs_Routing_Flag[i];
        }
    }

    Routing_Path = PEs_Routing_Path[Dst_PE_ID];

    if(GL_Var::Print_Level>10){
        std::list<int>::iterator Lit;
        std::cout << Src_PE_ID << "->" << Dst_PE_ID << " simulation path: ";
        for(Lit = Routing_Path.begin(); Lit != Routing_Path.end(); Lit++){
            std::cout << (*Lit) << " ";
        }
        std::cout << std::endl;    
    }

}

//Note that it is kind of estimation rather than acurate time 
int Coarse_Grain_Recon_Arch::OP_Migration_Time(const int &Start_Time, const int &Src_PE_ID, const int &Dst_PE_ID){

    int Migration_Cost;
    bool Migration_Complete = false;
    int Start_Time_Tmp = Start_Time;

    while(!Migration_Complete){
        if(Src_PE_ID == Dst_PE_ID){
            ERROR("Unexpected Src PE and Dst PE pair here!");
        }
        else{
            int PE_Output_Index = Get_Downstream_Index(Src_PE_ID, Dst_PE_ID);
            int Additional_Pipeline = 0;
            if(Is_Load_PE(Dst_PE_ID)){
                if(Pipeline == OLD || Pipeline == HF){
                    Additional_Pipeline = 1;
                }
                else if(Pipeline == LF || Pipeline == LHF || Pipeline == MF){
                    Additional_Pipeline = 0;
                }
                else{
                    ERROR("Undefined pipeline intensity!\n");
                }
            }

            bool Src_Data_Mem_RD_Avail0;
            bool Src_Data_Mem_RD_Avail1;
            bool Src_Data_Mem_RD_Avail2;
            bool Src_Data_Mem_WR_Avail0;
            bool Src_Output_Avail;
            if(Pipeline == OLD){
                Src_Data_Mem_RD_Avail0 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[0] == false;
                Src_Data_Mem_RD_Avail1 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[1] == false;
                Src_Data_Mem_RD_Avail2 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[2] == false;
                Src_Data_Mem_WR_Avail0 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_WR_Reserved[0] == false;
                Src_Output_Avail = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 3]->PE_Component_Reserved->PE_Output_Reserved[PE_Output_Index] == false;
            }
            else if(Pipeline == LF){
                Src_Data_Mem_RD_Avail0 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[0] == false;
                Src_Data_Mem_RD_Avail1 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[1] == false;
                Src_Data_Mem_RD_Avail2 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[2] == false;
                Src_Data_Mem_WR_Avail0 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_WR_Reserved[0] == false;
                Src_Output_Avail = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 2]->PE_Component_Reserved->PE_Output_Reserved[PE_Output_Index] == false;
            }
            else if(Pipeline == MF){
                Src_Data_Mem_RD_Avail0 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[0] == false;
                Src_Data_Mem_RD_Avail1 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[1] == false;
                Src_Data_Mem_RD_Avail2 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[2] == false;
                Src_Data_Mem_WR_Avail0 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_WR_Reserved[0] == false;
                Src_Output_Avail = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 2]->PE_Component_Reserved->PE_Output_Reserved[PE_Output_Index] == false;
            }
            else if(Pipeline == LHF){
                Src_Data_Mem_RD_Avail0 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[0] == false;
                Src_Data_Mem_RD_Avail1 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[1] == false;
                Src_Data_Mem_RD_Avail2 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[2] == false;
                Src_Data_Mem_WR_Avail0 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_WR_Reserved[0] == false;
                Src_Output_Avail = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 2]->PE_Component_Reserved->PE_Output_Reserved[PE_Output_Index] == false;
            }
            else if(Pipeline == HF){
                Src_Data_Mem_RD_Avail0 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[0] == false;
                Src_Data_Mem_RD_Avail1 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[1] == false;
                Src_Data_Mem_RD_Avail2 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_RD_Reserved[2] == false;
                Src_Data_Mem_WR_Avail0 = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 1]->PE_Component_Reserved->Data_Mem_WR_Reserved[0] == false;
                Src_Output_Avail = PE_Array[Src_PE_ID]->Component_Trace[Start_Time_Tmp + 5]->PE_Component_Reserved->PE_Output_Reserved[PE_Output_Index] == false;
            }
            else{
                ERROR(" Unknown pipeline intensity setup!\n");
            }
            bool Src_RD_Avail=(Src_Data_Mem_RD_Avail0 || Src_Data_Mem_RD_Avail1 || Src_Data_Mem_RD_Avail2) && Src_Data_Mem_WR_Avail0;

            bool Dst_Load_Path_Avail = true;
            if(Is_Load_PE(Dst_PE_ID)){
                if(Pipeline == OLD){
                    Dst_Load_Path_Avail = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 6]->PE_Component_Reserved->Load_Path_Reserved == false;
                }
                else if(Pipeline == LF){
                    Dst_Load_Path_Avail = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3]->PE_Component_Reserved->Load_Path_Reserved == false;
                }
                else if(Pipeline == MF){
                    Dst_Load_Path_Avail = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3]->PE_Component_Reserved->Load_Path_Reserved == false;
                }
                else if(Pipeline == LHF){
                    Dst_Load_Path_Avail = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 4]->PE_Component_Reserved->Load_Path_Reserved == false;
                }
                else if(Pipeline == HF){
                    Dst_Load_Path_Avail = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 8]->PE_Component_Reserved->Load_Path_Reserved == false;
                }
                else{
                    ERROR("Unknown pipeline intensity setup!\n");
                }
            }

            bool Dst_Input_Avail;
            bool Dst_Data_Mem_WR_Avail1;
            bool Dst_Data_Mem_RD_Avail3;
            bool Dst_Data_Mem_RD_Avail4;
            bool Dst_Data_Mem_RD_Avail5;
            if(Pipeline == OLD){
                Dst_Input_Avail = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 5]->PE_Component_Reserved->PE_Input_Reserved == false;
                Dst_Data_Mem_WR_Avail1 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 6 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_WR_Reserved[1] == false;
                Dst_Data_Mem_RD_Avail3 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 6 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[3] == false;
                Dst_Data_Mem_RD_Avail4 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 6 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[4] == false;
                Dst_Data_Mem_RD_Avail5 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 6 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[5] == false;
            }
            else if(Pipeline == LF){
                Dst_Input_Avail = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3]->PE_Component_Reserved->PE_Input_Reserved == false;
                Dst_Data_Mem_WR_Avail1 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_WR_Reserved[1] == false;
                Dst_Data_Mem_RD_Avail3 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[3] == false;
                Dst_Data_Mem_RD_Avail4 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[4] == false;
                Dst_Data_Mem_RD_Avail5 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[5] == false;
            }
            else if(Pipeline == MF){
                Dst_Input_Avail = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3]->PE_Component_Reserved->PE_Input_Reserved == false;
                Dst_Data_Mem_WR_Avail1 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_WR_Reserved[1] == false;
                Dst_Data_Mem_RD_Avail3 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[3] == false;
                Dst_Data_Mem_RD_Avail4 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[4] == false;
                Dst_Data_Mem_RD_Avail5 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 3 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[5] == false;
            }
            else if(Pipeline == LHF){
                Dst_Input_Avail = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 4]->PE_Component_Reserved->PE_Input_Reserved == false;
                Dst_Data_Mem_WR_Avail1 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 5 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_WR_Reserved[1] == false;
                Dst_Data_Mem_RD_Avail3 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 5 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[3] == false;
                Dst_Data_Mem_RD_Avail4 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 5 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[4] == false;
                Dst_Data_Mem_RD_Avail5 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 5 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[5] == false;
            }
            else if(Pipeline == HF){
                Dst_Input_Avail = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 7]->PE_Component_Reserved->PE_Input_Reserved == false;
                Dst_Data_Mem_WR_Avail1 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 8 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_WR_Reserved[1] == false;
                Dst_Data_Mem_RD_Avail3 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 8 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[3] == false;
                Dst_Data_Mem_RD_Avail4 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 8 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[4] == false;
                Dst_Data_Mem_RD_Avail5 = PE_Array[Dst_PE_ID]->Component_Trace[Start_Time_Tmp + 8 + Additional_Pipeline]->PE_Component_Reserved->Data_Mem_RD_Reserved[5] == false;
            }
            else{
                ERROR("Undefined pipeline intensity setup!\n");
            }
            bool Dst_WR_Avail = Dst_Data_Mem_WR_Avail1 && Dst_Data_Mem_RD_Avail3 && Dst_Data_Mem_RD_Avail4 && Dst_Data_Mem_RD_Avail5;

            if(Src_RD_Avail && Src_Output_Avail && Dst_Input_Avail && Dst_WR_Avail && Dst_Load_Path_Avail){
                if(Pipeline == OLD){
                    Migration_Cost = Start_Time_Tmp + 6 + Additional_Pipeline - Start_Time;
                    Migration_Complete = true;
                }
                else if(Pipeline == LF){
                    Migration_Cost = Start_Time_Tmp + 3 + Additional_Pipeline - Start_Time;
                    Migration_Complete = true;
                }
                else if(Pipeline == MF){
                    Migration_Cost = Start_Time_Tmp + 3 + Additional_Pipeline - Start_Time;
                    Migration_Complete = true;
                }
                else if(Pipeline == LHF){
                    Migration_Cost = Start_Time_Tmp + 5 + Additional_Pipeline - Start_Time;
                    Migration_Complete = true;
                }
                else if(Pipeline == HF){
                    Migration_Cost = Start_Time_Tmp + 8 + Additional_Pipeline - Start_Time;
                    Migration_Complete = true;
                }
                else{
                    ERROR("Undefined pipeline intensity!\n");
                }
            }
            else{
                Start_Time_Tmp++;
            }
        }
    }

    return Migration_Cost;

}

bool Coarse_Grain_Recon_Arch::Is_Link_Existed(const int &Src_PE_ID, const int &Dst_PE_ID){

    return (CGRA_Adjacency_Mat[Src_PE_ID][Dst_PE_ID] == 1);

}

int Coarse_Grain_Recon_Arch::Get_Downstream_Index(const int &Src, const int &Dst){

    int Downstream_Index;
    int Src_Row = Src/Col;
    int Src_Col = Src%Col;
    int Dst_Row = Dst/Col;
    int Dst_Col = Dst%Col;

    if((Src_Col-Dst_Col==1 && Src_Row==Dst_Row) || (Src_Col-Dst_Col==1-Col && Src_Row==Dst_Row)){
        Downstream_Index = 0;
    }
    else if((Src_Col-Dst_Col==-1 && Src_Row==Dst_Row) || (Src_Col-Dst_Col==Col-1 && Src_Row==Dst_Row)){
        Downstream_Index = 2;
    }
    else if((Src_Row-Dst_Row==1 && Src_Col==Dst_Col) || (Src_Row-Dst_Row==1-Row && Src_Col==Dst_Col)){
        Downstream_Index = 1;
    }
    else if((Src_Row-Dst_Row==-1 && Src_Col==Dst_Col) || (Src_Row-Dst_Row==Row-1 && Src_Col==Dst_Col)){
        Downstream_Index = 3;
    }
    else{
        Downstream_Index = NaN;
    }

    return Downstream_Index;

}

int Coarse_Grain_Recon_Arch::Get_Upstream_Index(const int &Src, const int &Dst){

    int Upstream_Index;
    int Src_Row = Src/Col;
    int Src_Col = Src%Col;
    int Dst_Row = Dst/Col;
    int Dst_Col = Dst%Col;

    if((Src_Col-Dst_Col==1 && Src_Row==Dst_Row) || (Src_Col-Dst_Col==1-Col && Src_Row==Dst_Row)){
        Upstream_Index = 2;
    }
    else if((Src_Col-Dst_Col==-1 && Src_Row==Dst_Row) || (Src_Col-Dst_Col==Col-1 && Src_Row==Dst_Row)){
        Upstream_Index = 0;
    }
    else if((Src_Row-Dst_Row==1 && Src_Col==Dst_Col) || (Src_Row-Dst_Row==1-Row && Src_Col==Dst_Col)){
        Upstream_Index = 3;
    }
    else if((Src_Row-Dst_Row==-1 && Src_Col==Dst_Col) || (Src_Row-Dst_Row==Row-1 && Src_Col==Dst_Col)){
        Upstream_Index = 1;
    }
    else{
        Upstream_Index = NaN;
    }

    return Upstream_Index;

}

int Coarse_Grain_Recon_Arch::Get_Upstream_PE_ID(const int &Current_PE_ID, const int &Input_Mux){
    
    int Upstream_PE_ID = NaN;
    for(int i=0; i<CGRA_Scale; i++){
        int Upstream_Index = Get_Upstream_Index(i, Current_PE_ID);
        if(Input_Mux == Upstream_Index){
            Upstream_PE_ID = i;
        }
    }

    return Upstream_PE_ID;

}

int Coarse_Grain_Recon_Arch::Get_Downstream_PE_ID(const int &Current_PE_ID, const int &Output_Mux){

    int Downstream_PE_ID = NaN;
    for(int i=0; i<CGRA_Scale; i++){
        int Downstream_Index = Get_Downstream_Index(Current_PE_ID, i);
        if(Output_Mux == Downstream_Index){
            Downstream_PE_ID = i;
        }
    }
    return Downstream_PE_ID;

}

void Coarse_Grain_Recon_Arch::Link_Gen(){

    if(CGRA_Topology == Torus){
        for(int i=0; i<CGRA_Scale; i++){
            for(int j=0; j<CGRA_Scale; j++){
                int Src_Row = i/Col;
                int Src_Col = i%Col;
                int Dst_Row = j/Col;
                int Dst_Col = j%Col;

                // i,j are neighbors on the horizontal level.
                if(Src_Row == Dst_Row && ((Dst_Col-Src_Col==1)||(Src_Col-Dst_Col==1)||(Dst_Col-Src_Col==Col-1)||(Src_Col-Dst_Col==Col-1))){
                    CGRA_Adjacency_Mat[i][j] = 1;
                }
                //i, j are neighbors on the vertical level
                else if(Src_Col==Dst_Col && ((Src_Row-Dst_Row==1)||(Dst_Row-Src_Row==1)||(Src_Row-Dst_Row==Row-1)||(Dst_Row-Src_Row==Row-1))){
                    CGRA_Adjacency_Mat[i][j] = 1;
                }
                else{
                    CGRA_Adjacency_Mat[i][j] = 0;
                }
            }
        }
    }
    else if(CGRA_Topology == Mesh){
        for(int i=0; i<CGRA_Scale; i++){
            for(int j=0; j<CGRA_Scale; j++){
                int Src_Row=i/Col;
                int Src_Col=i%Col;
                int Dst_Row=j/Col;
                int Dst_Col=j%Col;

                // i,j are neighbors on the horizontal level.
                if(Src_Row==Dst_Row && ((Dst_Col-Src_Col==1)||(Src_Col-Dst_Col==1))){
                    CGRA_Adjacency_Mat[i][j] = 1;
                }
                //i, j are neighbors on the vertical level
                else if(Src_Col==Dst_Col && ((Src_Row-Dst_Row==1)||(Dst_Row-Src_Row==1))){
                    CGRA_Adjacency_Mat[i][j] = 1;
                }
                else{
                    CGRA_Adjacency_Mat[i][j] = 0;
                }
            }
        }

    }
    else if(CGRA_Topology == Full_Connect){    
        for(int i=0; i<CGRA_Scale; i++){
            for(int j=0; j<CGRA_Scale; j++){
                if(i!=j){
                    CGRA_Adjacency_Mat[i][j] = 1;
                }
                else{
                    CGRA_Adjacency_Mat[i][j]=0;
                }
            }
        }
    }
    else if(CGRA_Topology == Customized){
        ERROR("Customized topology hasn't been implemented!\n");
    }
    else{
        ERROR("Undefined Topology!\n");
    }

    std::ostringstream oss;
    std::ofstream fHandle;
    std::string fName="./config/link.txt";
    
    fHandle.open(fName.c_str());
    if(!fHandle.is_open()){
        ERROR("Failed to create link.txt\n");
    }

    for(int i=0; i<CGRA_Scale; i++){
        for(int j=0; j<CGRA_Scale; j++){
            fHandle << " " << CGRA_Adjacency_Mat[i][j];
        }
        fHandle << std::endl;
    }
    fHandle.close();

}

bool Coarse_Grain_Recon_Arch::Is_Load_PE(const int &PE_ID){
    std::vector<int>::iterator Vit;
    for(Vit = Load_PE_ID.begin(); Vit != Load_PE_ID.end(); Vit++){
        if((*Vit) == PE_ID){
            return true;
        }
    }
    return false;
}

bool Coarse_Grain_Recon_Arch::Is_Store_PE(const int &PE_ID){
    std::vector<int>::iterator Vit;
    for(Vit = Store_PE_ID.begin(); Vit != Store_PE_ID.end(); Vit++){
        if((*Vit) == PE_ID){
            return true;
        }
    }
    return false;
}

Coarse_Grain_Recon_Arch::~Coarse_Grain_Recon_Arch(){

    PE_Array.clear();

}

