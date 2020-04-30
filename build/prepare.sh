#!/bin/sh
set -euxo pipefail

cd ..

yum -y install epel-release \m
    && yum -y install deltarpm \
    && yum -y install @'Development Tools' \
    && yum -y install rpm-build yum-utils \
    && yum install kernel-devel.x86_64

sed -e 's/@VERSION@/0.0.1/' rhel/openvswitch-fedora.spec.in > /tmp/ovs.spec
yum-builddep -y /tmp/ovs.spec