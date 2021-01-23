FROM ubuntu:20.04

RUN apt-get update && apt-get install -y sudo

RUN apt-get install -y git

RUN apt install postgresql redis-serve wget curl

RUN service postgresql start

ARG UID=1000
ARG USER=hoge
ARG PASS=hoge

RUN useradd -ms /bin/bash hoge

#USER hoge
WORKDIR /home/hoge
