#!/bin/bash

set -x

mkdir -p snapshots
mkdir -p prototxt
mkdir -p log

#device=0

for lr in 5e-3 1e-3 1e-4 
do
    cp prototxt/solver${1}.prototxt prototxt/solver${1}_lr${lr}.prototxt
    sed -i "s/GRIDVALUE/${lr}/g" prototxt/solver${1}_lr${lr}.prototxt

    ./train.sh ${1}_lr${lr} 2> log/log_siamese_${1}_lr${lr}.txt
done
wait
