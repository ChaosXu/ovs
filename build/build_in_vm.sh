#!/bin/sh
set -euxo pipefail

cd ..

yum -y install epel-release \
    && yum -y install deltarpm \
    && yum -y install @'Development Tools' \
    && yum -y install rpm-build yum-utils \
    
sed -e 's/@VERSION@/0.0.1/' ../../rhel/openvswitch-fedora.spec.in > /tmp/ovs.spec
yum-builddep -y ovs.spec

./boot.sh
./configure
make rpm-fedora
make rpm-fedora-kmod
