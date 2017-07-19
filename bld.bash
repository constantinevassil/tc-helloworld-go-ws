#!/usr/bin/env bash
# Copyright 2017 Mobile Data Books, LLC. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

# 4,279,416 Jul 14 19:19 helloworld_ws
echo "update helloworldws"
go fmt main.go
CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w' .
#ldd  helloworldws

docker build -t helloworldws:v2 .
docker tag helloworldws:v2 tcmb/helloworldws:v2
docker push tcmb/helloworldws
docker images

