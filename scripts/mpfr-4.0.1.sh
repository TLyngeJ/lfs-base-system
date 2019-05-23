#!/bin/bash
# 6.18. MPFR-4.0.1
set -e
cd $LFS/sources
rm -rf mpfr-4.0.1
tar xf mpfr-4.0.1.tar.xz
cd mpfr-4.0.1

./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.0.1

make
make html

make install
make install-html

cd $LFS/sources
rm -rf mpfr-4.0.1
