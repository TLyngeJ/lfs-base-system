#!/bin/bash
# 6.36. GDBM-1.12
set -e
cd $LFS/sources
rm -rf gdbm-1.12
tar xf gdbm-1.12.tar.gz
cd gdbm-1.12

./configure --prefix=/usr \
            --disable-static \
            --enable-libgdbm-compat

make

make install

cd $LFS/sources
rm -rf gdbm-1.12
