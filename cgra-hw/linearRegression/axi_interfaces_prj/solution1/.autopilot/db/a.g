#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/mhho/wrk/SparkAccel/hls/hls_linearRegression/axi_interfaces_prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}