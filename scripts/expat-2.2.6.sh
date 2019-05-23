#!/bin/bash
# 6.38. Expat-2.2.6
set -e
cd $LFS/sources
rm -rf expat-2.2.6
tar xf expat-2.2.6.tar.bz2
cd expat-2.2.6

sed -i 's|usr/bin/env |bin/|' run.sh.in
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.2.6
make
make install

cd $LFS/sources
rm -rf expat-2.2.6
