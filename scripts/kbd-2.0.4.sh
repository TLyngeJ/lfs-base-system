#!/bin/bash
# 6.66. Kbd-2.0.4
set -e
cd $LFS/sources
rm -rf kbd-2.0.4
tar xf kbd-2.0.4.tar.xz
cd kbd-2.0.4

patch -Np1 -i ../kbd-2.0.4-backspace-1.patch

sed -i 's/\(RESIZECONS_PROGS=\)yes/\1no/g' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in

PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr --disable-vlock

make

make install

mkdir -v       /usr/share/doc/kbd-2.0.4
cp -R -v docs/doc/* /usr/share/doc/kbd-2.0.4

cd $LFS/sources
rm -rf kbd-2.0.4
