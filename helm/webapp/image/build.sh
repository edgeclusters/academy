#!/usr/bin/env bash

docker buildx create --name mybuilder --driver-opt network=host --use || true

docker buildx build \
--platform=linux/amd64,linux/arm64 \
--tag reg.edgeclusters.com/academy/multiarch-image:1.0-buildx \
--output=type=registry \
.
