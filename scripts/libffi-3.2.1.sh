#!/bin/bash
# 6.49. Libffi-3.2.1
set -e
cd $LFS/sources
rm -rf libffi-3.2.1
tar xf libffi-3.2.1.tar.gz
cd libffi-3.2.1

sed -e '/^includesdir/ s/$(libdir).*$/$(includedir)/' \
    -i include/Makefile.in
sed -e '/^includedir/ s/=.*$/=@includedir@/' \
    -e 's/^Cflags: -I${includedir}/Cflags:/' \
    -i libffi.pc.in
./configure --prefix=/usr --disable-static --with-gcc-arch=native
make
make install

cd $LFS/sources
rm -rf libffi-3.2.1
