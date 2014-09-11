// ====================================================================================================================
// Algorithm Description:
// 
//
// Version:
// 0.1      Jan 1st 2012
//
// Author:
// Cheng Liu
// st.liucheng@gmail.com
// E.E.E department, The University of Hong Kong
//
// ====================================================================================================================

#include "ComponentState.h"

using namespace std;

ComponentState::ComponentState(){
    component_activity=new ComponentActivity;
    component_reserved=new ComponentReserved;
}

ComponentState::~ComponentState(){
    delete component_activity;
    delete component_reserved;
}
