#!/bin/bash
# 6.14. GMP-6.1.0
set -e
cd $LFS/sources
rm -rf gmp-6.1.0
tar xf gmp-6.1.0.tar.xz
cd gmp-6.1.0

./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.1.0
make
make html
make install
make install-html

cd $LFS/sources
rm -rf gmp-6.1.0
