#!/usr/bin/env bash

echo "Building AMD64 image"

docker build -t reg.edgeclusters.com/academy/multiarch-image:amd64 .
