#!/bin/bash
# 6.65. Tar-1.28
set -e
cd $LFS/sources
rm -rf tar-1.28
tar xf tar-1.28.tar.xz
cd tar-1.28

FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin
make
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.28

cd $LFS/sources
rm -rf tar-1.28
