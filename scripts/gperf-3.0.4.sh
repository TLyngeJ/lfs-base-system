#!/bin/bash
# 6.37. Gperf-3.0.4
set -e
cd $LFS/sources
rm -rf gperf-3.0.4
tar xf gperf-3.0.4.tar.gz
cd gperf-3.0.4

./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.0.4
make
make install

cd $LFS/sources
rm -rf gperf-3.0.4
