#ifndef __ACCEL__H__
#define __ACCEL__H__

#include "App.h"

class Accel{
    public:
        int row;
        int col;
        int ABuf;
        int DBuf;
        int instBuf;

        Accel(int _row, int _col, int _ABuf, int _DBuf, int _instBuf);

};
#endif
