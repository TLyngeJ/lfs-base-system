#!/bin/bash
# 6.32. Flex-2.6.0
set -e
cd $LFS/sources
rm -rf flex-2.6.0
tar xf flex-2.6.0.tar.xz
cd flex-2.6.0

./configure --prefix=/usr --docdir=/usr/share/doc/flex-2.6.0
make
make install
ln -sv flex /usr/bin/lex

cd $LFS/sources
rm -rf flex-2.6.0
