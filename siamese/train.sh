#!/bin/bash

CAFFE_ROOT=~/x1/caffetest/caffe 

set -x

$CAFFE_ROOT/build/tools/caffe train --solver prototxt/solver${1}.prototxt 