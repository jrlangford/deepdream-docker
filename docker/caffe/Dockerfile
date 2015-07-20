FROM ubuntu:14.04
MAINTAINER Jonathan Langford <jrobinlangford@gmail.com>

RUN apt-get update && apt-get install -y \
  git \
  bc \
  libatlas-base-dev \
  libatlas-dev \
  libboost-all-dev \
  libopencv-dev \
  libprotobuf-dev \
  libgoogle-glog-dev \
  libgflags-dev \
  protobuf-compiler \
  libhdf5-dev \
  libleveldb-dev \
  liblmdb-dev \
  libsnappy-dev

RUN apt-get install python-numpy

RUN cd root && git clone https://github.com/BVLC/caffe.git && cd caffe && \
  cp Makefile.config.example Makefile.config && \
  sed -i 's/# CPU_ONLY/CPU_ONLY/g' Makefile.config && \
  make -j"$(nproc)" all && \
  make pycaffe

ENV PYTHONPATH /root/caffe/python
