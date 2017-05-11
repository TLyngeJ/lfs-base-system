#!/bin/bash
# 6.51. Diffutils-3.5
set -e
cd $LFS/sources
rm -rf diffutils-3.5
tar xf diffutils-3.5.tar.xz
cd diffutils-3.5

sed -i 's:= @mkdir_p@:= /bin/mkdir -p:' po/Makefile.in.in
./configure --prefix=/usr
make
make install

cd $LFS/sources
rm -rf diffutils-3.5
