# Successive Embedding and Classification Loss for Aerial Image Classification

[[Paper]](https://arxiv.org/pdf/1712.01511.pdf)

## Overview

This is the CAFFE implementation of "Successive Embedding and Classification Loss for Aerial Image Classification".

## Requirements

[[CAFFE with Center Loss]](https://github.com/ydwen/caffe-face)

## Data Preparation

1. Download [[MSTAR dataset]](https://www.sdms.afrl.af.mil/index.php?collection=mstar). Organize the subset of the dataset following Table I of the paper;

2. Randomly partition the training set into real training set (with name "train90_sqrt_mag_aug.h5") and validation set (with name "train10_sqrt_mag_aug.h5"). Name the test set "test_sqrt_mag_aug.h5".

## Run the Siamese Network

1. Run grid_siamese.sh (note that this will automatically run batches of experiments. Change hyperparameter if you only want to run one or some experiments with specific hyperparameters.)

2. Note that the prototxt of contrastive loss on feature layer can be found at "siamese_feature.prototxt".

## Run the Network with Center Loss

1. Run grid.sh and will grid learning rate for network trained with center loss on classifier layer.

## License and Citation

The use of this software is RESTRICTED to **non-commercial research and educational purposes**.