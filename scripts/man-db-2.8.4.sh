#!/bin/bash
# 6.74. Man-DB-2.8.4
set -e
cd $LFS/sources
rm -rf man-db-2.8.4
tar xf man-db-2.8.4.tar.xz
cd man-db-2.8.4

./configure --prefix=/usr                        \
            --docdir=/usr/share/doc/man-db-2.8.4 \
            --sysconfdir=/etc                    \
            --disable-setuid                     \
            --enable-cache-owner=bin             \
            --with-browser=/usr/bin/lynx         \
            --with-vgrind=/usr/bin/vgrind        \
            --with-grap=/usr/bin/grap            \
            --with-systemdtmpfilesdir=
make
make install

cd $LFS/sources
rm -rf man-db-2.8.4
