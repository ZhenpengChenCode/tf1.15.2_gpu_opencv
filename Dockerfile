FROM tensorflow/tensorflow:1.15.2-gpu-py3

RUN apt-get update \
    && apt-get install -y \
        build-essential \
        cmake \
        git \
        wget \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libavformat-dev \
        libpq-dev \
        vim \
    && rm -rf /var/lib/apt/lists/*

RUN pip install numpy
RUN pip install wheel

RUN pip install --upgrade pip

RUN pip install numpy==1.15.1
RUN pip install tqdm==4.28.1
RUN pip install glog==0.3.1
RUN pip install easydict==1.9
RUN pip install tensorflow_gpu==1.15.2
RUN pip install matplotlib==3.0.2
RUN pip install opencv==4.0.0
RUN pip install scikit_learn==0.21.1
