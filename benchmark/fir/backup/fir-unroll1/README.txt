This is the simple loop unrolling which removes the first N irregular computation.
Since the irregular part is removed, there is no branch in the loop now. However,
the irregular part should be done on ARM.
