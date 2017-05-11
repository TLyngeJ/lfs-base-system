#!/bin/bash
# 6.55. GRUB-2.02~beta3
set -e
cd $LFS/sources
rm -rf grub-2.02~beta3
tar xf grub-2.02~beta3.tar.xz
cd grub-2.02~beta3

./configure --prefix=/usr          \
            --sbindir=/sbin        \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror
make
make install

cd $LFS/sources
rm -rf grub-2.02~beta3
