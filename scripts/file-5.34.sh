#!/bin/bash
# 6.12. File-5.34
set -e
cd $LFS/sources
rm -rf file-5.34
tar xf file-5.34.tar.gz
cd file-5.34

./configure --prefix=/usr
make
make check
make install

cd $LFS/sources
rm -rf file-5.34
