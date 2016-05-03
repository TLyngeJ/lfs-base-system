#!/bin/bash
# 6.13. Binutils-2.26
set -e
cd $LFS/sources
rm -rf binutils-2.26
tar xf binutils-2.26.tar.bz2
cd binutils-2.26

expect -c "spawn ls"
patch -Np1 -i ../binutils-2.26-upstream_fix-2.patch
mkdir -v build
cd       build
../configure --prefix=/usr   \
             --enable-shared \
             --disable-werror
make tooldir=/usr
make tooldir=/usr install

cd $LFS/sources
rm -rf binutils-2.26
