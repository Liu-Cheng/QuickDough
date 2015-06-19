#include "App.h"

App::App(const std::string &_name, const int &_GpIn, const int &_GpOut, const int &_DFGPerfLoop){
    GpIn = _GpIn;
    GpOut = _GpOut;
    DFGPerLoop = _DFGPerLoop;
}

void App::GpIOUpdate(const int &ABuf, const int &DBuf){
    if(name == "MM"){
        if (ABuf==2 && DBuf==1){
            DFGPerGp = 2;
            GpPerLoop = DFGPerLoop/DFGPerGp;
            for(int i=0; i<20; i++){
                GpIn.push_back(500);
            }
            for(int i=0; i<GpPerLoop; i++){
                GpIn.push_back(200);
                GpOut.push_back(10);
            }
        }
        else if(ABuf==4 && DBuf==2){
            for(int i=0; i<20; i++){
                GPIn.push_back(500);
            }
            for(int i=0; i<GpPerLoop; i++){
                GpIn.push_back(500);
                GpOut.push_back(25);
            }
        }
        else if(ABuf==8 && DBuf==4){
            for(int i=0; i<20; i++){
                GpIn.push_back(500);
            }
            for(int i=0; i<GpPerLoop; i++){
                GpIn.push_back(1000);
                GpOut.push_back(50);
            }
        }
        else if(ABuf==16 && DBuf==8){
            for(int i=0; i<20; i++){
                GpIn.push_back(500);
            }
            for(int i=0; i<GpPerLoop; i++){
                GpIn.push_back(2500);
                GpOut.push_back(125);
            }
        }
        else if(ABuf==32 && DBuf==16){
            for(int i=0; i<20; i++){
                GpIn.push_back(500);
            }
            for(int i=0; i<GpPerLoop; i++){
                GpIn.push_back(5000);
                GpOut.push_back(250);
            }
        }
        else{
            std::cout << "Unexpected ABuf and DBuf setup!" << std::endl;
            exit(EXIT_FAILURE);
        }
    }
    else if(name == "FIR"){
        if(ABuf==2 && DBuf==1){
        }
    }
}
