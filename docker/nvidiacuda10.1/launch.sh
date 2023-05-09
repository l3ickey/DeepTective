#!/bin/bash

TAG='funabiki/deeptactive:cuda10.1-cudnn7-devel-ubuntu18.04'
PROJECT_DIR="$(cd "$(dirname "${0}")/.." || exit; pwd)"

# build
cd "$(dirname "${0}")/.." || exit
DOCKER_BUILDKIT=1 docker build --progress=plain -t ${TAG} nvidiacuda10.1

# run
docker run -it --rm \
  --shm-size=8g \
  --gpus all \
  -v "${PROJECT_DIR}:/workspace" \
  -w "/workspace" \
  "${TAG}"