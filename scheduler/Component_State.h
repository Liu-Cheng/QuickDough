// ====================================================================================================================
// Fucnction Description:
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
#ifndef _COMPONENT_STATE_H_
#define _COMPONENT_STATE_H_

#include "Component_Activity.h"
#include "Component_Reserved.h"

class Component_State{
    public:
        Component_Activity* PE_Component_Activity;
        Component_Reserved* PE_Component_Reserved;

        Component_State();
        ~Component_State();
};

#endif

