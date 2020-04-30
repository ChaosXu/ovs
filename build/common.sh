#!/bin/sh

VERSION=$1

if [ "$VERSION" == "" ]; then
    echo Invalid cmd. The correct format is: {cmd} {version}
    exit -1
fi