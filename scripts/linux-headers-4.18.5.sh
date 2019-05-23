#!/bin/bash
# 6.7. Linux-4.18.5 API Headers
set -e
cd $LFS/sources
rm -rf linux-4.18.5
tar xf linux-4.18.5.tar.xz
cd linux-4.18.5

make mrproper
make INSTALL_HDR_PATH=dest headers_install
find dest/include \( -name .install -o -name ..install.cmd \) -delete
cp -rv dest/include/* /usr/include

cd $LFS/sources
rm -rf linux-4.18.5
