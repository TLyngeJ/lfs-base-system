#!/bin/bash
# 6.60. Findutils-4.6.0
set -e
cd $LFS/sources
rm -rf findutils-4.6.0
tar xf findutils-4.6.0.tar.gz
cd findutils-4.6.0

sed -i 's/test-lock..EXEEXT.//' tests/Makefile.in
sed -i 's/IO_ftrylockfile/IO_EOF_SEEN/' gl/lib/*.c
sed -i '/unistd/a #include <sys/sysmacros.h>' gl/lib/mountlist.c
echo "#define _IO_IN_BACKUP 0x100" >> gl/lib/stdio-impl.h
./configure --prefix=/usr --localstatedir=/var/lib/locate
make
make install
mv -v /usr/bin/find /bin
sed -i 's|find:=${BINDIR}|find:=/bin|' /usr/bin/updatedb

cd $LFS/sources
rm -rf findutils-4.6.0
