#!/bin/bash
# 6.69. Man-DB-2.7.5
set -e
cd $LFS/sources
rm -rf man-db-2.7.5
tar xf man-db-2.7.5.tar.xz
cd man-db-2.7.5

./configure --prefix=/usr                        \
            --docdir=/usr/share/doc/man-db-2.7.5 \
            --sysconfdir=/etc                    \
            --disable-setuid                     \
            --with-browser=/usr/bin/lynx         \
            --with-vgrind=/usr/bin/vgrind        \
            --with-grap=/usr/bin/grap
make
make install


cd $LFS/sources
rm -rf man-db-2.7.5
