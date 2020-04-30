# !/bin/sh
source ../common.sh

sed -e 's/@VERSION@/0.0.1/' ../../rhel/openvswitch-fedora.spec.in > ovs.spec

docker build -t ovs-docker-build:${VERSION} . -f Dockerfile
rm -rf ovs.spec