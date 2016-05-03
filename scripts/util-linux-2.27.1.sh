#!/bin/bash
# 6.68. Util-linux-2.27.1
set -e
cd $LFS/sources
rm -rf util-linux-2.27.1
tar xf util-linux-2.27.1.tar.xz
cd util-linux-2.27.1

mkdir -pv /var/lib/hwclock
./configure ADJTIME_PATH=/var/lib/hwclock/adjtime   \
            --docdir=/usr/share/doc/util-linux-2.27.1 \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python     \
            --without-systemd    \
            --without-systemdsystemunitdir
make
make install

cd $LFS/sources
rm -rf util-linux-2.27.1
