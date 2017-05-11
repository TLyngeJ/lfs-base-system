#!/bin/bash
# 6.68. Tar-1.29
set -e
cd $LFS/sources
rm -rf tar-1.29
tar xf tar-1.29.tar.xz
cd tar-1.29

FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin

make

make install
make -C doc install-html docdir=/usr/share/doc/tar-1.29

cd $LFS/sources
rm -rf tar-1.29
