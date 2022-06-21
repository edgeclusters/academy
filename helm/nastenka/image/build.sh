#!/usr/bin/env bash

docker buildx create --name mybuilder --driver-opt network=host --use || true

IMAGE=reg.edgeclusters.com/academy/nastenka:1.0

docker buildx build \
--platform=linux/amd64,linux/arm64 \
--tag $IMAGE \
--output=type=registry \
.

docker push $IMAGE
