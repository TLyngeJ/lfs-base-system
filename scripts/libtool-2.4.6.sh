#!/bin/bash
# 6.35. Libtool-2.4.6
set -e
cd $LFS/sources
rm -rf libtool-2.4.6
tar xf libtool-2.4.6.tar.xz
cd libtool-2.4.6

./configure --prefix=/usr
make
make install

cd $LFS/sources
rm -rf libtool-2.4.6
