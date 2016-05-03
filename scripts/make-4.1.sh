#!/bin/bash
# 6.61. Make-4.1
set -e
cd $LFS/sources
rm -rf make-4.1
tar xf make-4.1.tar.bz2
cd make-4.1

./configure --prefix=/usr
make
make install

cd $LFS/sources
rm -rf make-4.1
