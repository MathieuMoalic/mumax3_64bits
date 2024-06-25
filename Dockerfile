FROM docker.io/ubuntu:16.04 as builder

RUN apt-get update
RUN apt-get install -y wget
RUN wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb 
RUN dpkg -i cuda-repo-ubuntu1604-8-0-local_8.0.44-1_amd64-deb
RUN apt-get update
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y cuda

COPY mumax3_64bits /
