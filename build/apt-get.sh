#!/bin/bash
set -Eeuxo pipefail

apt-get update -y

apt-get install -y apt-transport-https \
    ca-certificates \
    software-properties-common \
    httping \
    man \
    man-db \
    curl \
    gnupg \
    atop \
    htop \
    dstat \
    jq \
    dnsutils \
    tcpdump \
    traceroute \
    iputils-ping \
    net-tools \
    ncat \
    socat \
    iproute2 \
    netstat-nat \
    strace \
    lsof \
    telnet \
    openssl \
    psmisc \
    dsniff \
    mtr-tiny \
    conntrack \
    vim \
    tmux \
    screen
