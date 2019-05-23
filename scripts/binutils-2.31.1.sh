#!/bin/bash
# 6.16. Binutils-2.31.1
set -e
cd $LFS/sources
rm -rf binutils-2.31.1
tar xf binutils-2.31.1.tar.xz
cd binutils-2.31.1

expect -c "spawn ls"
mkdir -v build
cd       build
../configure --prefix=/usr       \
             --enable-gold       \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --with-system-zlib
make tooldir=/usr
make tooldir=/usr install

cd $LFS/sources
rm -rf binutils-2.31.1
