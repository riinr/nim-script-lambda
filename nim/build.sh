#!/bin/sh

. ./config.sh

docker build -t nim-script-image .
docker run --rm -v "$PWD":/app nim-script-image cp /tmp/layer.zip /app/
