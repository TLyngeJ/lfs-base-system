#!/bin/bash
# 6.43. Autoconf-2.69
set -e
cd $LFS/sources
rm -rf autoconf-2.69
tar xf autoconf-2.69.tar.xz
cd autoconf-2.69

./configure --prefix=/usr
make
make install

cd $LFS/sources
rm -rf autoconf-2.69
