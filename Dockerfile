FROM ubuntu:20.04

ARG UID=1000
RUN useradd -m -u ${UDI} docker

USER ${UID}
