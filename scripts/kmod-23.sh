#!/bin/bash
# 6.46. Kmod-23
set -e
cd $LFS/sources
rm -rf kmod-23
tar xf kmod-23.tar.xz
cd kmod-23

./configure --prefix=/usr          \
            --bindir=/bin          \
            --sysconfdir=/etc      \
            --with-rootlibdir=/lib \
            --with-xz              \
            --with-zlib
make
make install

for target in depmod insmod lsmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /sbin/$target
done

ln -sfv kmod /bin/lsmod

cd $LFS/sources
rm -rf kmod-23
