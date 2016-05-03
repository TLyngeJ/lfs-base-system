#!/bin/bash
# 6.16. MPC-1.0.3
set -e
cd $LFS/sources
rm -rf mpc-1.0.3
tar xf mpc-1.0.3.tar.gz
cd mpc-1.0.3

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.0.3
make
make html
make install
make install-html

cd $LFS/sources
rm -rf mpc-1.0.3
