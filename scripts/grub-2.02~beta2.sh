#!/bin/bash
# 6.54. GRUB-2.02~beta2
set -e
cd $LFS/sources
rm -rf grub-2.02~beta2
tar xf grub-2.02~beta2.tar.xz
cd grub-2.02~beta2

./configure --prefix=/usr          \
            --sbindir=/sbin        \
            --sysconfdir=/etc      \
            --disable-grub-emu-usb \
            --disable-efiemu       \
            --disable-werror
make
make install

cd $LFS/sources
rm -rf grub-2.02~beta2
