#!/bin/bash
#
set -e
cd $LFS/sources
rm -rf linux-4.9.9
tar xf linux-4.9.9.tar.xz
cd linux-4.9.9

make mrproper
cp $LFS/scripts/linux-config .config
make
make modules_install
cp -v arch/x86/boot/bzImage /boot/vmlinuz-4.9.9-lfs-8.0
cp -v System.map /boot/System.map-4.9.9
cp -v .config /boot/config-4.9.9
install -d /usr/share/doc/linux-4.9.9
cp -r Documentation/* /usr/share/doc/linux-4.9.9

cd $LFS/sources
rm -rf linux-4.4.2
