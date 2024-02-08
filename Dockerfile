FROM ubuntu:22.04

# install dependencies for cmake and C++ 20
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    g++ \
    git \
    libboost-all-dev \
    libssl-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
