#!/usr/bin/env bash

docker manifest create \
reg.edgeclusters.com/academy/multiarch-image:1.0-manifest \
--amend reg.edgeclusters.com/academy/multiarch-image:amd64 \
--amend reg.edgeclusters.com/academy/multiarch-image:arm64

docker manifest push reg.edgeclusters.com/academy/multiarch-image:1.0-manifest