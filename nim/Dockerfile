FROM nimlang/nim:latest-alpine-slim

RUN apk add zip

RUN nim --version

ADD ./bootstrap.nim /opt/

RUN cd /opt/ && nim c bootstrap.nim

RUN mv /opt/bootstrap /nim/bootstrap

RUN cd /nim/ && zip -yr layer.zip bin/nim lib/ *.txt bootstrap

