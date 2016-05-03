#!/bin/bash
# 6.31. Bison-3.0.4
set -e
cd $LFS/sources
rm -rf bison-3.0.4
tar xf bison-3.0.4.tar.xz
cd bison-3.0.4

./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.0.4
make
make install

cd $LFS/sources
rm -rf bison-3.0.4
