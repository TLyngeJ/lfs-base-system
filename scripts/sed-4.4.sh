#!/bin/bash
# 6.24. Sed-4.4
set -e
cd $LFS/sources
rm -rf sed-4.4
tar xf sed-4.4.tar.xz
cd sed-4.4

sed -i 's/usr/tools/'       build-aux/help2man
sed -i 's/panic-tests.sh//' Makefile.in

./configure --prefix=/usr --bindir=/bin

make
make html

make install
install -d -m755           /usr/share/doc/sed-4.4
install -m644 doc/sed.html /usr/share/doc/sed-4.4

cd $LFS/sources
rm -rf sed-4.4
