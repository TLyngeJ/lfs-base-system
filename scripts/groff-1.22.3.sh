#!/bin/bash
# 6.61. Groff-1.22.3
set -e
cd $LFS/sources
rm -rf groff-1.22.3
tar xf groff-1.22.3.tar.gz
cd groff-1.22.3

PAGE=A4 ./configure --prefix=/usr
make -j1
make install

cd $LFS/sources
rm -rf groff-1.22.3
