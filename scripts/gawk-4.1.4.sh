#!/bin/bash
# 6.52. Gawk-4.1.4
set -e
cd $LFS/sources
rm -rf gawk-4.1.4
tar xf gawk-4.1.4.tar.xz
cd gawk-4.1.4

./configure --prefix=/usr

make

make install

mkdir -v /usr/share/doc/gawk-4.1.4
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-4.1.4

cd $LFS/sources
rm -rf gawk-4.1.4
