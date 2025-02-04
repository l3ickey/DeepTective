#!/bin/bash

TAG='funabiki/deeptactive:1.5.1-cuda10.1-cudnn7-devel'
PROJECT_DIR="$(cd "$(dirname "${0}")/.." || exit; pwd)"

# build
cd "$(dirname "${0}")/.." || exit
DOCKER_BUILDKIT=1 docker build --progress=plain -t ${TAG} pytorch1.5.1

# run
docker run -it --rm \
  --shm-size=8g \
  --gpus all \
  -v "${PROJECT_DIR}:/workspace" \
  -w "/workspace" \
  "${TAG}"