FROM ubuntu:16.04
MAINTAINER Israel Fenor <israelfenor@gmail.com>

RUN apt-get update -q

RUN apt-get install -y apt-utils
RUN apt-get install -y lua5.3

RUN apt-get clean

