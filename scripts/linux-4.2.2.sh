#!/bin/bash
#
set -e
cd $LFS/sources
rm -rf linux-4.4.2
tar xf linux-4.4.2.tar.xz
cd linux-4.4.2

make mrproper
make defconfig
make
make modules_install
cp -v arch/x86/boot/bzImage /boot/vmlinuz-4.2.2-lfs-7.9
cp -v System.map /boot/System.map-4.2.2
cp -v .config /boot/config-4.2.2
install -d /usr/share/doc/linux-4.2.2
cp -r Documentation/* /usr/share/doc/linux-4.2.2

cd $LFS/sources
rm -rf linux-4.4.2
