#!/bin/bash
# 6.55. Less-481
set -e
cd $LFS/sources
rm -rf less-481
tar xf less-481.tar.gz
cd less-481

./configure --prefix=/usr --sysconfdir=/etc
make
make install

cd $LFS/sources
rm -rf less-481
