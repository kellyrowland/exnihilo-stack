FROM ubuntu:16.04
MAINTAINER Kelly Rowland <kellylynnerowland@gmail.com>

RUN apt-get update &&\
    apt-get install -y build-essential &&\
    apt-get install -y curl

# install cmake
RUN curl -sSL https://cmake.org/files/v3.4/cmake-3.4.0-Linux-x86_64.tar.gz | tar -xzC /opt
RUN ln -s /opt/cmake-3.4.0-Linux-x86_64/bin/cmake /usr/bin/cmake

