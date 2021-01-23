FROM ubuntu:20.04

ARG UID=1000
ARG USER=hoge
ARG PASS=hoge

RUN useradd --uid ${UID} --groups sudo ${USER} &&n echo ${USER}:${PASS} | chpasswd

USER ${USER}
