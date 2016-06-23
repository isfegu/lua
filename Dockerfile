FROM ubuntu:16.04
MAINTAINER Israel Fenor <israelfenor@gmail.com>

RUN apt-get update -q

RUN apt-get install -y apt-utils
RUN apt-get install -y lua5.3

RUN apt-get clean

RUN ln -sf /usr/bin/lua5.3 /usr/bin/lua
RUN ln -sf /usr/bin/luac5.3 /usr/bin/luac

