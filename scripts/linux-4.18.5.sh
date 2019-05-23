#!/bin/bash
# 8.3. Linux-4.18.5
set -e
cd $LFS/sources
rm -rf linux-4.18.5
tar xf linux-4.18.5.tar.xz
cd linux-4.18.5

make mrproper
cp $LFS/scripts/linux-config .config
make
make modules_install
cp -v arch/x86/boot/bzImage /boot/vmlinuz-4.18.5-lfs-8.3
cp -v System.map /boot/System.map-4.18.5
cp -v .config /boot/config-4.18.5
install -d /usr/share/doc/linux-4.18.5
cp -r Documentation/* /usr/share/doc/linux-4.18.5

cd $LFS/sources
rm -rf linux-4.18.5
