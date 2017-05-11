#!/bin/bash
# 6.11. Zlib-1.2.11
set -e
cd $LFS/sources
rm -rf zlib-1.2.11
tar xf zlib-1.2.11.tar.xz
cd zlib-1.2.11

./configure --prefix=/usr
make
make check
make install
mv -v /usr/lib/libz.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libz.so) /usr/lib/libz.so

cd $LFS/sources
rm -rf zlib-1.2.11
