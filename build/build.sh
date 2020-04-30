#!/bin/sh
set -euxo pipefail

cd ..

./boot.sh
./configure
make rpm-fedora
make rpm-fedora-kmod
