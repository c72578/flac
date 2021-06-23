#!/bin/sh -exv

git clone https://gitlab.xiph.org/xiph/flac.git
cd flac
./autogen.sh
./configure
make -j10
make -j10 distcheck
