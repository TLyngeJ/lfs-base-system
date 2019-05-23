#!/bin/bash
# 6.58. Diffutils-3.6
set -e
cd $LFS/sources
rm -rf diffutils-3.6
tar xf diffutils-3.6.tar.xz
cd diffutils-3.6

./configure --prefix=/usr
make
make install

cd $LFS/sources
rm -rf diffutils-3.6
