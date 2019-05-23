#!/bin/bash
# 6.33. Grep-3.1
set -e
cd $LFS/sources
rm -rf grep-3.1
tar xf grep-3.1.tar.xz
cd grep-3.1

./configure --prefix=/usr --bindir=/bin

make

make install

cd $LFS/sources
rm -rf grep-3.1
