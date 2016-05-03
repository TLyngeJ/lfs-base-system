#!/bin/bash
# 6.15. MPFR-3.1.3
set -e
cd $LFS/sources
rm -rf mpfr-3.1.3
tar xf mpfr-3.1.3.tar.xz
cd mpfr-3.1.3

patch -Np1 -i ../mpfr-3.1.3-upstream_fixes-2.patch
./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-3.1.3
make
make html
make install
make install-html

cd $LFS/sources
rm -rf mpfr-3.1.3
