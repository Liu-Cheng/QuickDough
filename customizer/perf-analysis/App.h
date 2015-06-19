#ifndef __APP__H__
#define __APP__H__

class App{
    public:
        std::string name;
        std::vector<int> GpIn;
        std::vector<int> GpOut;
        int DFGPerLoop;
        int DFGPerGp;

        App(const std::string &_name, const int &_GpIn, const int &_GpOut, const int &_DFGPerLoop);
        void GpIOUpdate(const int &ABuf, const int &DBuf);
};

#endif
