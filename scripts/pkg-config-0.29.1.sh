#!/bin/bash
# 6.19. Pkg-config-0.29.1
set -e
cd $LFS/sources
rm -rf pkg-config-0.29.1
tar xf pkg-config-0.29.1.tar.gz
cd pkg-config-0.29.1

./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-compile-warnings \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.1
make
make install

cd $LFS/sources
rm -rf pkg-config-0.29.1
