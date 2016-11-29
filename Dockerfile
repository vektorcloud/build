FROM quay.io/vektorcloud/base:latest

RUN echo "@edge http://dl-cdn.alpinelinux.org/alpine/edge/community" \
  |tee >>/etc/apk/repositories

RUN apk update && \
  apk add --no-cache make \
    g++ \
    autoconf \
    automake \
    libtool \
    python \
    python-dev \
    openjdk8 \
    zlib \
    zlib-dev \
    fts \
    fts-dev \
    apr \
    apr-dev \
    curl \
    curl-dev \
    cyrus-sasl-crammd5 \
    cyrus-sasl-dev \
    subversion \
    subversion-dev \
    patch \
    linux-headers \
    gpgme \
    openssl \
    file \
    maven@edge

ENV JAVA_HOME=/usr/lib/jvm/default-jvm
