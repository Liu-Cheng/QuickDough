#include <fstream>
#include <iostream>
#include <vector>
#include <map>
#include <stdio.h>
#include <stdlib.h>
#include "simplist.h"

using namespace std;

int matrix_rank;
int num_input_data;
int num_operation;
int num_dod;
int num_ood;

VNode** pdpmtx; //dependencies matrix

double fft_size;
int fft_level;

int conv_size;
int conv_halfsize;

int aes_num;

int vd_size;

int rand_exp;
int rand_alpha;
int rand_n1;
int rand_seed;
float rand_degree;

int graph;
#define graph_mmm (1)
#define graph_fft (2)
#define graph_rand (3)
#define graph_conv (4)
#define graph_aes (5)
#define graph_vd (6)

int arch;
#define arch_ring (1)
#define arch_dring (2)
#define arch_torus (3)
#define arch_torus2 (4)
#define arch_dtorus (5)
#define arch_dfull (6)

void read_equation ();
void DFG_generation_mmm ();
void DFG_generation_fft ();
void DFG_generation_conv ();
void DFG_generation_aes ();
void DFG_generation_vd ();
void DFG_generation_rand2 ();
void DFG_generation_rand1_5 ();
void DFG_generation_rand2_5 ();
void dfg_interface ();

int main ()
{
    matrix_rank = 0;
    fft_size = 0;
    fft_level = 0;
    conv_size = 0;
    conv_halfsize = 0;
    aes_num = 0;
    vd_size = 0;
    rand_exp = 0;
    rand_alpha = 0;
    rand_n1 = 0;
    rand_seed = 0;
    rand_degree = 0;

    graph = 0;
    arch = 0;

    read_equation ();
    if ( graph == graph_mmm ) DFG_generation_mmm ();
    else if ( graph == graph_fft ) DFG_generation_fft ();
    else if ( graph == graph_conv ) DFG_generation_conv ();
    else if ( graph == graph_aes ) DFG_generation_aes ();
    else if ( graph == graph_vd ) DFG_generation_vd ();
    else if ( graph == graph_rand ) {
        if ( rand_degree == 2 ) DFG_generation_rand2 ();
        if ( rand_degree == 1.5 ) DFG_generation_rand1_5 ();
        if ( rand_degree == 2.5 ) DFG_generation_rand2_5 ();
    }

    dfg_interface();

    return 0;
}
