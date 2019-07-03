#!/bin/bash

CAFFE_ROOT= ~/caffe/

#source $CAFFE_ROOT/caffe-deps.bashrc

set -x

$CAFFE_ROOT/build/tools/caffe train --solver solver${1}.prototxt #--weights snapshots/snapshot_baseline2_nd_lr1e-3_iter_85000.caffemodel #solver${1}.prototxt #--snapshot snapshots/snapshot_baseline_bn_lr1e-3_iter_50000.solverstate
#~/git/caffe_pvirtue_gpu/.build_release/tools/caffe train --solver solver${1}.prototxt
#~/git/caffe_pvirtue_gpu/.build_debug/tools/caffe train --solver solver${1}.prototxt
