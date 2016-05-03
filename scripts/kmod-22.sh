#!/bin/bash
# 6.59. Kmod-22
set -e
cd $LFS/sources
rm -rf kmod-22
tar xf kmod-22.tar.xz
cd kmod-22

./configure --prefix=/usr          \
            --bindir=/bin          \
            --sysconfdir=/etc      \
            --with-rootlibdir=/lib \
            --with-xz              \
            --with-zlib
make
make install

for target in depmod insmod lsmod modinfo modprobe rmmod; do
  ln -sv ../bin/kmod /sbin/$target
done

ln -sv kmod /bin/lsmod

cd $LFS/sources
rm -rf kmod-22
