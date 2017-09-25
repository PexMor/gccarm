FROM ubuntu:latest
MAINTAINER Petr Moravek v1.0

# Set correct environment variables.
ENV container docker
ENV COLUMNS 80
ENV DEBIAN_FRONTEND noninteractive
ENV LINES 24
ENV TERM xterm-256color
ENV PXL_VER GccArm

ADD include/ /root/

RUN sh -C /root/01-baseUpdateInstall.sh 1>&2
RUN sh -C /root/02-addUser.sh 1>&2
RUN sh -C /root/03-addSw.sh 1>&2

ENV HOME /host
WORKDIR /host
USER user
