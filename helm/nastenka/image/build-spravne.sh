#!/usr/bin/env bash

IMAGE=reg.edgeclusters.com/academy/nastenka:1.1

docker buildx build \
--platform linux/amd64,linux/arm64 \
-t $IMAGE . \
--push
