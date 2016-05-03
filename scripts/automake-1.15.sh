#!/bin/bash
# 6.44. Automake-1.15
set -e
cd $LFS/sources
rm -rf automake-1.15
tar xf automake-1.15.tar.xz
cd automake-1.15

sed -i 's:/\\\${:/\\\$\\{:' bin/automake.in
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.15
make
make install

cd $LFS/sources
rm -rf automake-1.15
