
#ifndef AXI_INTERFACES_H_
#define AXI_INTERFACES_H_

#include <stdint.h>

#define N 256

typedef union {
  double fp_num;
  uint64_t raw_bits;
  struct {
    uint64_t mant :52;
    uint64_t bexp :11;
    uint64_t sign :1;
  };
} double_num_t;

typedef union {
  uint8_t c[4];
  uint32_t u;
  int i;
  float f;
} union32_t;

typedef union {
  uint8_t c[8];
  uint32_t u[2];
  uint64_t lu;
  int i[2];
  float f[2];
  double d;
} union64_t;

void axi_interfaces (uint32_t d_o[N], uint32_t d_i[N], uint32_t d_b[N]);

#endif
