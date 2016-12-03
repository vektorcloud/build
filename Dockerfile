FROM quay.io/vektorcloud/base:latest

RUN echo "@edge http://dl-cdn.alpinelinux.org/alpine/edge/community" \
  |tee >>/etc/apk/repositories && \
  echo "@edge.testing http://dl-cdn.alpinelinux.org/alpine/edge/testing" \
  |tee >> /etc/apk/repositories

RUN apk update && \
  apk add --no-cache \
    apr \
    apr-dev \
    autoconf \
    automake \
    boost \
    boost-dev \
    curl \
    curl-dev \
    cyrus-sasl-crammd5 \
    cyrus-sasl-dev \
    file \
    fts \
    fts-dev \
    g++ \
    git \
    glog@edge.testing \
    glog-dev@edge.testing \
    go \
    gpgme \
    libtool \
    linux-headers \
    make \
    maven@edge \
    openjdk8 \
    openssl \
    patch \
    protobuf \
    protobuf-dev \
    python \
    python-dev \
    subversion \
    subversion-dev \
    zlib \
    zlib-dev 


ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk

ENV GOPATH=/go
ENV PATH="$PATH:$GOPATH/bin"

# Go Protobuf
RUN go get github.com/golang/protobuf/proto && \
  go get github.com/golang/protobuf/protoc-gen-go
