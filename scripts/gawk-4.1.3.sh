#!/bin/bash
# 6.47. Gawk-4.1.3
set -e
cd $LFS/sources
rm -rf gawk-4.1.3
tar xf gawk-4.1.3.tar.xz
cd gawk-4.1.3

./configure --prefix=/usr
make
make install
mkdir -v /usr/share/doc/gawk-4.1.3
cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-4.1.3

cd $LFS/sources
rm -rf gawk-4.1.3
