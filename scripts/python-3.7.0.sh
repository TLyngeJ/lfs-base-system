#!/bin/bash
# 6.51. Python-3.7.0
set -e
cd $LFS/sources
rm -rf Python-3.7.0
tar xf Python-3.7.0.tar.xz
cd Python-3.7.0

./configure --prefix=/usr       \
            --enable-shared     \
            --with-system-expat \
            --with-system-ffi   \
            --with-ensurepip=yes
make
make install
chmod -v 755 /usr/lib/libpython3.7m.so
chmod -v 755 /usr/lib/libpython3.so


cd $LFS/sources
rm -rf Python-3.7.0
