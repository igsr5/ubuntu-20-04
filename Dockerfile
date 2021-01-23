FROM ubuntu:20.04

RUN apt-get update && apt-get install -y sudo

RUN apt-get install -y git

ARG UID=1000
ARG USER=hoge
ARG PASS=hoge

#RUN useradd --uid ${UID} --groups sudo ${USER} && echo ${USER}:${PASS} | chpasswd
RUN useradd -ms /bin/bash hoge

USER hoge
WORKDIR /home/hoge
