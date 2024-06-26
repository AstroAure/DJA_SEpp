#!/usr/bin/env bash

FIELD=$1
BUCKET=$2
BASE=$3
TILE=$4
FIT_CASE=${5:-'sersic_rg4'}
THREAD_COUNT=${6:-32}
DECOMPRESS=${7:-false}
PSF=${8:-false}

./setup_image_psf.sh $FIELD $BUCKET $BASE $DECOMPRESS $TILE $PSF
python3 sepp.py $FIELD $BASE tiles $BASE/config $BUCKET $FIT_CASE $THREAD_COUNT $TILE
