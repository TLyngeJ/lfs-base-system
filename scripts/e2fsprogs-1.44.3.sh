#!/bin/bash
# 6.55. E2fsprogs-1.44.3
set -e
cd $LFS/sources
rm -rf e2fsprogs-1.44.3
tar xf e2fsprogs-1.44.3.tar.gz
cd e2fsprogs-1.44.3

mkdir -v build
cd build
../configure --prefix=/usr           \
             --bindir=/bin           \
             --with-root-prefix=""   \
             --enable-elf-shlibs     \
             --disable-libblkid      \
             --disable-libuuid       \
             --disable-uuidd         \
             --disable-fsck
make
make install
make install-libs
chmod -v u+w /usr/lib/{libcom_err,libe2p,libext2fs,libss}.a
gunzip -v /usr/share/info/libext2fs.info.gz
install-info --dir-file=/usr/share/info/dir /usr/share/info/libext2fs.info

cd $LFS/sources
rm -rf e2fsprogs-1.44.3
