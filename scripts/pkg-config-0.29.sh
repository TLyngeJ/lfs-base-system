#!/bin/bash
# 6.19. Pkg-config-0.29
set -e
cd $LFS/sources
rm -rf pkg-config-0.29
tar xf pkg-config-0.29.tar.gz
cd pkg-config-0.29

./configure --prefix=/usr        \
            --with-internal-glib \
            --disable-host-tool  \
            --docdir=/usr/share/doc/pkg-config-0.29
make
make install

cd $LFS/sources
rm -rf pkg-config-0.29
