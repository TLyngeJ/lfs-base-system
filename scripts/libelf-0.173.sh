#!/bin/bash
# 6.48. Libelf 0.173
set -e
cd $LFS/sources
rm -rf elfutils-0.173
tar xf elfutils-0.173.tar.bz2
cd elfutils-0.173

./configure --prefix=/usr
make
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig

cd $LFS/sources
rm -rf elfutils-0.173
