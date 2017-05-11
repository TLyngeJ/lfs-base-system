#!/bin/bash
# 6.53. Findutils-4.6.0
set -e
cd $LFS/sources
rm -rf findutils-4.6.0
tar xf findutils-4.6.0.tar.gz
cd findutils-4.6.0

sed -i 's/test-lock..EXEEXT.//' tests/Makefile.in

./configure --prefix=/usr --localstatedir=/var/lib/locate

make

make install

mv -v /usr/bin/find /bin
sed -i 's|find:=${BINDIR}|find:=/bin|' /usr/bin/updatedb

cd $LFS/sources
rm -rf findutils-4.6.0
