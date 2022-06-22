#!/usr/bin/env bash

IMAGE=reg.edgeclusters.com/academy/nastenka:1.0

docker build -t $IMAGE .
docker push $IMAGE

