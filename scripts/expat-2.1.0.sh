#!/bin/bash
# 6.39. Expat-2.1.0
set -e
cd $LFS/sources
rm -rf expat-2.1.0
tar xf expat-2.1.0.tar.gz
cd expat-2.1.0

./configure --prefix=/usr --disable-static
make
make install
install -v -dm755 /usr/share/doc/expat-2.1.0
install -v -m644 doc/*.{html,png,css} /usr/share/doc/expat-2.1.0

cd $LFS/sources
rm -rf expat-2.1.0
