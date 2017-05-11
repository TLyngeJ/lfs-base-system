#!/bin/bash
# 6.12. File-5.30
set -e
cd $LFS/sources
rm -rf file-5.30
tar xf file-5.30.tar.gz
cd file-5.30

./configure --prefix=/usr
make
make check
make install

cd $LFS/sources
rm -rf file-5.30
