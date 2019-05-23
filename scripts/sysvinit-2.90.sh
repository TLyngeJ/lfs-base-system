#!/bin/bash
# 6.71. Sysvinit-2.90
set -e
cd $LFS/sources
rm -rf sysvinit-2.90
tar xf sysvinit-2.90.tar.xz
cd sysvinit-2.90

patch -Np1 -i ../sysvinit-2.90-consolidated-1.patch
make -C src
make -C src install

cd $LFS/sources
rm -rf sysvinit-2.90
