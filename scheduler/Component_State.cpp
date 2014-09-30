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

#include "Component_State.h"

Component_State::Component_State(){
    PE_Component_Activity = new Component_Activity();
    PE_Component_Reserved = new Component_Reserved();
}


Component_State::~Component_State(){
    delete PE_Component_Activity;
    delete PE_Component_Reserved;
}
