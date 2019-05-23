#!/bin/bash
# 6.29. Psmisc-23.1
set -e
cd $LFS/sources
rm -rf psmisc-23.1
tar xf psmisc-23.1.tar.xz
cd psmisc-23.1

./configure --prefix=/usr

make

make install

mv -v /usr/bin/fuser   /bin
mv -v /usr/bin/killall /bin

cd $LFS/sources
rm -rf psmisc-23.1
