FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
    apt-get install -y apt-utils gcc git python3 python3-dev python3-pip libssl-dev sudo systemd

VOLUME [ "/sys/fs/cgroup" ]


