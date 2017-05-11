#!/bin/bash
# 6.30. Flex-2.6.3
set -e
cd $LFS/sources
rm -rf flex-2.6.3
tar xf flex-2.6.3.tar.gz
cd flex-2.6.3

HELP2MAN=/tools/bin/true \
./configure --prefix=/usr --docdir=/usr/share/doc/flex-2.6.3

make

make install

ln -sv flex /usr/bin/lex

cd $LFS/sources
rm -rf flex-2.6.3
