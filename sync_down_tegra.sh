#!/bin/bash

echo "rsync from remote Tegra-ubuntu-1:keras"
set -x
rsync -avc $@ --exclude=".*" --include="plot*" --include="*.ipynb" --include="tutorials/" --include="study/" --include="tutorials/*.ipynb" --exclude="*" tegra-ubuntu-1:keras/ .
