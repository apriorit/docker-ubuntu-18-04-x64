# This docker file contains build environment
FROM ubuntu:18.04
MAINTAINER Stovba Volodymyr <netpanik@apriorit.com>

ENV DEBIAN_FRONTEND noninteractive

#uncomment all src repositories
RUN sed -i -- 's/#deb-src/deb-src/g' /etc/apt/sources.list && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y && apt-get install -y bison++ libprocps-dev libxalan-c-dev \
libxerces-c-dev libnl-3-dev subversion libcrypto++-dev libpcre++-dev \
uuid-dev libsnappy-dev build-essential libboost-all-dev cmake maven libicu-dev \
zlib1g-dev liblog4cpp5-dev libncurses5-dev libselinux1-dev wget libsqlite3-dev google-mock \
libvirt-dev libmysqlclient-dev qtbase5-dev qtdeclarative5-dev libblkid-dev giblib-dev libimlib2-dev \
libglib2.0-dev libgtk-3-dev libcanberra-gtk3-dev jq libssl1.0-dev
