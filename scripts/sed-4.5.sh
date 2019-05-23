#!/bin/bash
# 6.28. Sed-4.5
set -e
cd $LFS/sources
rm -rf sed-4.5
tar xf sed-4.5.tar.xz
cd sed-4.5

sed -i 's/usr/tools/'                 build-aux/help2man
sed -i 's/testsuite.panic-tests.sh//' Makefile.in

./configure --prefix=/usr --bindir=/bin

make
make html

make install
install -d -m755           /usr/share/doc/sed-4.5
install -m644 doc/sed.html /usr/share/doc/sed-4.5

cd $LFS/sources
rm -rf sed-4.5
