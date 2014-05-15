This is also fully loop unrolling, it is just that there are intermediate output on IO.
As there are intermediate output, we can't repeat the same work-item directly on hardware. 
In fact, we need improve the operation scheduler to allow either input buffer or output buffer
to store the intermediate output. Currently, the SCGRA can only iterate once and leave the software
on arm to handle the intermediate data copying.

