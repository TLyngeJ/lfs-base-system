#!/bin/bash
# 6.44. Automake-1.16.1
set -e
cd $LFS/sources
rm -rf automake-1.16.1
tar xf automake-1.16.1.tar.xz
cd automake-1.16.1

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.1
make
make install

cd $LFS/sources
rm -rf automake-1.16.1
