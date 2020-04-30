#!/bin/sh
source build/common.sh

src=$(pwd)

docker run -it \
--mount type=bind,source=${src},target=/ovs-src \
ovs-docker-build:${VERSION} \
/bin/bash
#/ovs-src/build/build.sh