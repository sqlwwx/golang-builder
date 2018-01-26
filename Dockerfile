FROM golang

MAINTAINER sqlwwx <wwx_2012@hotmail.com>

COPY upx /usr/bin/upx

RUN mkdir -p /go/src/golang.org/x \
    && cd /go/src/golang.org/x \
    && git clone https://github.com/golang/sys.git \
    && git clone https://github.com/golang/crypto.git

RUN mkdir -p /go/src/app
