#!/bin/bash
# 6.38. GDBM-1.11
set -e
cd $LFS/sources
rm -rf gdbm-1.11
tar xf gdbm-1.11.tar.gz
cd gdbm-1.11

./configure --prefix=/usr \
            --disable-static \
            --enable-libgdbm-compat
make
make install

cd $LFS/sources
rm -rf gdbm-1.11
