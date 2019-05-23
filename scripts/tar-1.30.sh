#!/bin/bash
# 6.75. Tar-1.30
set -e
cd $LFS/sources
rm -rf tar-1.30
tar xf tar-1.30.tar.xz
cd tar-1.30

FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin
make
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.30

cd $LFS/sources
rm -rf tar-1.30
