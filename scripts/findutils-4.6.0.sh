#!/bin/bash
# 6.48. Findutils-4.6.0
set -e
cd $LFS/sources
rm -rf findutils-4.6.0
tar xf findutils-4.6.0.tar.gz
cd findutils-4.6.0

./configure --prefix=/usr --localstatedir=/var/lib/locate
make
make install
mv -v /usr/bin/find /bin
sed -i 's|find:=${BINDIR}|find:=/bin|' /usr/bin/updatedb

cd $LFS/sources
rm -rf findutils-4.6.0
