#!/usr/bin/env bash

echo "Building ARM64 image"

docker build -t reg.edgeclusters.com/academy/multiarch-image:arm64 .
