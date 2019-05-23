#!/bin/bash
# 6.63. GRUB-2.02
set -e
cd $LFS/sources
rm -rf grub-2.02
tar xf grub-2.02.tar.xz
cd grub-2.02

./configure --prefix=/usr          \
            --sbindir=/sbin        \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror
make
make install

cd $LFS/sources
rm -rf grub-2.02
