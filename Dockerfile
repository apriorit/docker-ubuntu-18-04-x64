# This docker file contains build environment
FROM ubuntu:18.04
MAINTAINER Victor Yastrub <yastrub.victor@apriorit.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y libssl-dev libcrypto++-dev uuid-dev libsnappy-dev build-essential cmake \
libguestfs-dev libedit-dev libc6-dev-x32 libelf-dev \
snapd git autoconf \
linux-headers-4.15.0-42 linux-image-4.15.0-42-generic \
linux-headers-4.18.0-1004-gcp linux-image-4.18.0-1004-gcp

RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/*