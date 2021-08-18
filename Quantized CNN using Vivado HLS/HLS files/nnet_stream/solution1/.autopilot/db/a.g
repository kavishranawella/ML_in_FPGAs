#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/kavish/Projects/CNN-using-HLS-master/quant_cnn/nnet_stream/solution1/.autopilot/db/a.g.bc ${1+"$@"}
