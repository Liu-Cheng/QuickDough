As 4 pixls are handled at a time, C must be divided by 4.
The row size of the block is B, while the work item row size
is R. B-2 should be able to fully divided by R-2 so that the
block of computation can be decomposed into multiple identical
computation work-item.
