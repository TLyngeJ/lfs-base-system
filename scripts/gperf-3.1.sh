#!/bin/bash
# 6.37. Gperf-3.1
set -e
cd $LFS/sources
rm -rf gperf-3.1
tar xf gperf-3.1.tar.gz
cd gperf-3.1

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1
make
make install

cd $LFS/sources
rm -rf gperf-3.1
