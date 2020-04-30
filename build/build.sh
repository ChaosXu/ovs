#!/bin/sh
set -euxo pipefail
kversion=3.10.0-1127.el7.x86_64
cd ..

./boot.sh
./configure
make rpm-fedora
ll
#make rpm-fedora-kmod RPMBUILD_OPT='-D "kversion 3.10.0-1062.18.1.el7.x86_64"'
make rpm-fedora-kmod RPMBUILD_OPT='-D "kversion ${kversion}"'