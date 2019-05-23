#!/bin/bash
# 6.59. Gawk-4.2.1
set -e
cd $LFS/sources
rm -rf gawk-4.2.1
tar xf gawk-4.2.1.tar.xz
cd gawk-4.2.1

sed -i 's/extras//' Makefile.in
./configure --prefix=/usr
make
make install

cd $LFS/sources
rm -rf gawk-4.2.1
