#!/bin/bash
# 6.23. Libcap-2.25
set -e
cd $LFS/sources
rm -rf libcap-2.25
tar xf libcap-2.25.tar.xz
cd libcap-2.25

sed -i '/install.*STALIBNAME/d' libcap/Makefile

make

make RAISE_SETFCAP=no lib=lib prefix=/usr install
chmod -v 755 /usr/lib/libcap.so

mv -v /usr/lib/libcap.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libcap.so) /usr/lib/libcap.so

cd $LFS/sources
rm -rf libcap-2.25
