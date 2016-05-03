#!/bin/bash
# 6.26. Psmisc-22.21
set -e
cd $LFS/sources
rm -rf psmisc-22.21
tar xf psmisc-22.21.tar.gz
cd psmisc-22.21

./configure --prefix=/usr
make
make install
mv -v /usr/bin/fuser   /bin
mv -v /usr/bin/killall /bin

cd $LFS/sources
rm -rf psmisc-22.21
