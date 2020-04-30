#!/bin/sh
set -euxo pipefail

cd ..

./boot.sh
./configure
make rpm-fedora RPMBUILD_OPT="--with check"
