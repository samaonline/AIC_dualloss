#!/bin/bash

set -x

mkdir snapshots

for lr in 5e-3  #1se-3 1e-4 #1e-2 
#for lr in 1e-1 1e-2
#for lr in 1e-1 5e-2 5e-3 1e-3 1e-4 1e-5
do
    cp solver.prototxt solver_lr${lr}.prototxt
    sed -i "s/GRIDVALUE/${lr}/g" solver_lr${lr}.prototxt

    #sbatch -e snapshots_v/log_jy10_lr${lr}.txt -o snapshots_v/log_jy10_lr${lr}.txt --constraint='kajiki' --mem 22096 --gres gpu:1 train.sh _lr${lr}
   ./train.sh _lr${lr} 2> snapshots/log_baseline_lr${lr}.txt
done
