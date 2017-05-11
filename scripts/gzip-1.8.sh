#!/bin/bash
# 6.57. Gzip-1.8
set -e
cd $LFS/sources
rm -rf gzip-1.8
tar xf gzip-1.8.tar.xz
cd gzip-1.8

./configure --prefix=/usr

make

make install

mv -v /usr/bin/gzip /bin

cd $LFS/sources
rm -rf gzip-1.8
