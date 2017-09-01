#!/bin/bash

echo "sync Dockerfiles from local to Tegra-ubuntu-2:docker"
set -x
rsync -avc $@ --include="Dockerfile*" --include="*docker*" --exclude="*" . tegra-ubuntu-2:docker/
