#!/bin/bash
# 6.25. Attr-2.4.48
set -e
cd $LFS/sources
rm -rf attr-2.4.48
tar xf attr-2.4.48.tar.gz
cd attr-2.4.48

./configure --prefix=/usr     \
            --bindir=/bin     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.4.48

make

make install

mv -v /usr/lib/libattr.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libattr.so) /usr/lib/libattr.so

cd $LFS/sources
rm -rf attr-2.4.48
