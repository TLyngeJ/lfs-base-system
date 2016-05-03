#!/bin/bash
# 6.49. Gettext-0.19.7
set -e
cd $LFS/sources
rm -rf gettext-0.19.7
tar xf gettext-0.19.7.tar.xz
cd gettext-0.19.7

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.19.7
make
make install
chmod -v 0755 /usr/lib/preloadable_libintl.so

cd $LFS/sources
rm -rf gettext-0.19.7
