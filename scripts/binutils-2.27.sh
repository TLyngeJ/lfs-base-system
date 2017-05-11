#!/bin/bash
# 6.13. Binutils-2.27
set -e
cd $LFS/sources
rm -rf binutils-2.27
tar xf binutils-2.27.tar.bz2
cd binutils-2.27

expect -c "spawn ls"
mkdir -v build
cd       build
../configure --prefix=/usr       \
             --enable-gold       \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --with-system-zlib
make tooldir=/usr
make tooldir=/usr install

cd $LFS/sources
rm -rf binutils-2.27
