This program is used to generate DFG of a fir with fully loop unrolling.
Meanwhile, we add N 0 in front of the input vector, which could remove the
branch in the loop. More importantly, taking the additional 0 as input allows
us to repeat the kernel for longer input vector.
