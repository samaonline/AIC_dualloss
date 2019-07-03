#!/bin/bash

set -x
mkdir -p snapshots
mkdir -p prototxt
mkdir -p log

device=0

for contr_weight in 0.15 0.3 0.8 1.0 
do
    for m2 in 0.8 1.0
    do
      ext=_cw${contr_weight}_mB${m2}
      cp siamese.prototxt prototxt/siamese${ext}.prototxt
      #sed -i "s/MARGIN1/${m1}/g" prototxt/siamese${ext}.prototxt
      sed -i "s/MARGIN2/${m2}/g" prototxt/siamese${ext}.prototxt
      sed -i "s/CONTR_LOSS_WEIGHT/${contr_weight}/g" prototxt/siamese${ext}.prototxt

      cp solver.prototxt prototxt/solver${ext}.prototxt
      sed -i "s/MARGIN1/${m1}/g" prototxt/solver${ext}.prototxt
      sed -i "s/MARGIN2/${m2}/g" prototxt/solver${ext}.prototxt
      sed -i "s/CONTR_LOSS_WEIGHT/${contr_weight}/g" prototxt/solver${ext}.prototxt

      sh ./grid_lr.sh ${ext}
    done
  #done
done
