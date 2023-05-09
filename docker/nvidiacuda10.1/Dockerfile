FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

# install base packages
RUN apt update \
    && apt install -y \
    libgl1-mesa-dev \
    libssl-dev \
    libbz2-dev \
    liblzma-dev \
    libreadline-dev \
    libsqlite3-dev \
    zlib1g-dev \
    libjpeg-dev \
    libsm6 \
    libxext6 \
    libxrender-dev \
    libavcodec-dev libavformat-dev libswscale-dev \
    libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev \
    wget\
    && apt clean \
    && rm -rf /var/lib/apt/lists/*

# cuda path
ENV LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
ENV CUDA_HOME=/usr/local/cuda

# install python 3.8.1
# RUN apt install -y \
#     python3.8.1 \
#     python3-pip \
#     && apt clean \
#     && rm -rf /var/lib/apt/lists/* \
#     && rm /usr/bin/python3 \
#     && ln -s /usr/bin/python3.8.1 /usr/bin/python3

# install package
# RUN python3 -m pip install -U --no-cache-dir pip==20.3.4 \
#   && pip install -U --no-cache-dir \
#     keras==1.1.2 \
#     tensorflow-gpu==0.12.1 \
#     pandas==1.1.5 \
#     matplotlib==3.3.4 \
#     scikit-learn==0.24.2 \
#     h5py==3.1.0 \
#     tables==3.7.0