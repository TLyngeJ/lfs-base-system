#!/bin/bash
# 6.15. MPFR-3.1.5
set -e
cd $LFS/sources
rm -rf mpfr-3.1.5
tar xf mpfr-3.1.5.tar.xz
cd mpfr-3.1.5

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-3.1.5
make
make html
make install
make install-html

cd $LFS/sources
rm -rf mpfr-3.1.5
