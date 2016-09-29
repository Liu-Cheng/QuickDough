#ifndef __FIR_H__
#define __FIR_H__

#include <vector>
#include "benchmark.h"

struct FIR{
    private:
        std::vector<float> data_in;
        std::vector<float> data_out;
        std::vector<float> coeff;
        std::vector<float> data_out_gold;
        int sig_len;
        int tap_num;
        int tiled_sig_len;
        int tiled_tap_num;

    public:
        void init();
        void kernel_compute();
        void load_data();
        void kernel_to_dfg();
        void dfg_compute();
        void store_data();
        void fir_normal(); 
        void fir_hybrid();
};

void FIR::init(int sig_len, int tap){

    // The first N-1 is filled with 0, the next L is random input.
    for(int i=0; i < sig_len; ++i){
        
    }
}

void fir_normal(){
    for(int i = 0; i < sig_len; ++i){
        data_out_gold[i] = 0;
        for(int j = 0; j < tap_num; ++j){
            data_out_gold[i] += coeff[j] * data_in[i - j + tap_num - 1];
        }
    }
}

void fir_hybrid(){
    std::vector<float> tiled_data_in;
    std::vector<float> tiled_data_out;
    for(int i = 0; i < sig_len; i = i + tiled_sig_in){
        for(int j = 0; j < tap_num; j = j + tiled_tap_num){
            load_data(tiled_data_in, i, j);
            kernel_to_dfg(tiled_data_in, tiled_data_out);
            store_data(tiled_data, i, j);
        }
    }
}

#endif
