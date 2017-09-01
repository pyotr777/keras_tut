#!/bin/bash

echo "Start Jupyter notebook on port 8888 with token \"abc\"."
export KERAS_BACKEND="theano"
command='jupyter notebook --ip="0.0.0.0" --port 8888 --NotebookApp.token="abc" --allow-root'
echo $command
$command