#!/bin/bash

IMAGE="pyotr777/arm64v8_keras"
DOCKERFILE="Dockerfile-keras"
echo "Building $IMAGE Docker image from $DOCKERFILE"
command="docker build --rm -t $IMAGE -f $DOCKERFILE ."
echo $command
$command