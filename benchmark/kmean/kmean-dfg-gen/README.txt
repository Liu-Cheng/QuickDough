The sum of the centroids and number of centroids allocated to each initial centrids
can be simply added together in the end, so we assume they are independent output for
each work-item. Meanwhile, the input sum of centroids and number of centroids of 
last work-item are set to be 0. In other words, they can be removed from input for each
work-item. The side-effect is that we must accumulate the data in ARM later. We need to add
intermeidate result support for a real loop accelration with data dependency between loop
iterations.

