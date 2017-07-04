#!/bin/bash

echo "rsync from local to Tegra-ubuntu-1:caffe/examples"
set -x
rsync -avc $@ --exclude=".*" --include="*.ipynb" --include="tutorials/" --include="study/" --include="tutorials/*.ipynb" --exclude="*" . tegra-ubuntu-1:keras/
