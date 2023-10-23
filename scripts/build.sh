#!/bin/bash
# called at repo top level position
set -xe


apt-get update && \
apt-get install -y build-essential \
    cmake \
    pkg-config \
    libgflags-dev \
    libgoogle-glog-dev \
    libdouble-conversion-dev \
    liblz4-dev \
    libssl-dev \
    libboost-all-dev \
    libiberty-dev \
    liblzma-dev \
    libsnappy-dev \
    libjemalloc-dev \
    zlib1g-dev \
    bison \
    flex \
    libkrb5-dev 




(
    cd libevent
    mkdir -p _build
    cd _build
    cmake ..
    make -j32
    make install
)

(
    cd mstch
    mkdir -p _build
    cd _build
    cmake ..
    make -j32
    make install
)

(
    cd zstd
    make -j32
    make install
)

(
    cd folly
    mkdir -p _build
    cd _build
    cmake ..
    make -j32
    make install
)


(
    cd wangle/wangle
    mkdir -p _build
    cd _build
    cmake ..
    make -j32
    make install
)



(
    cd fbthrift
    mkdir -p _build
    cd _build
    cmake ..
    make -j32
    make install
)

(
    cd fbthrift_example3
    make build
    # not daemon
    make run_echo
)
