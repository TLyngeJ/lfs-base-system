#!/bin/bash
# 6.63. Less-530
set -e
cd $LFS/sources
rm -rf less-530
tar xf less-530.tar.gz
cd less-530

./configure --prefix=/usr --sysconfdir=/etc
make
make install

cd $LFS/sources
rm -rf less-530
