#!/bin/bash

mntdir="/root/keras"
echo "Start Docker container for Keras mounting current dir to $mntdir"
docker run -d -v $(pwd):$mntdir -p 8888:8888 --name 4keras pyotr777/keras-jupyter

