#!/bin/bash
# 6.19. MPC-1.1.0
set -e
cd $LFS/sources
rm -rf mpc-1.1.0
tar xf mpc-1.1.0.tar.gz
cd mpc-1.1.0

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.1.0

make
make html

make install
make install-html

cd $LFS/sources
rm -rf mpc-1.1.0
