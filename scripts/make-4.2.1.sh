#!/bin/bash
# 6.68. Make-4.2.1
set -e
cd $LFS/sources
rm -rf make-4.2.1
tar xf make-4.2.1.tar.bz2
cd make-4.2.1

sed -i '211,217 d; 219,229 d; 232 d' glob/glob.c
./configure --prefix=/usr
make
make install

cd $LFS/sources
rm -rf make-4.2.1
