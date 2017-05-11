#!/bin/bash
# 6.45. Xz-5.2.3
set -e
cd $LFS/sources
rm -rf xz-5.2.3
tar xf xz-5.2.3.tar.xz
cd xz-5.2.3

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.2.3
make
make install
mv -v   /usr/bin/{lzma,unlzma,lzcat,xz,unxz,xzcat} /bin
mv -v /usr/lib/liblzma.so.* /lib
ln -svf ../../lib/$(readlink /usr/lib/liblzma.so) /usr/lib/liblzma.so

cd $LFS/sources
rm -rf xz-5.2.3
