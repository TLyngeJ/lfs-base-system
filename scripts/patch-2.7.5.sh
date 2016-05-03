#!/bin/bash
# 6.62. Patch-2.7.5
set -e
cd $LFS/sources
rm -rf patch-2.7.5
tar xf patch-2.7.5.tar.xz
cd patch-2.7.5

./configure --prefix=/usr
make
make install

cd $LFS/sources
rm -rf patch-2.7.5
