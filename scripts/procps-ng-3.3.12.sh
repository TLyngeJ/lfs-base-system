#!/bin/bash
# 6.48. Procps-ng-3.3.12
set -e
cd $LFS/sources
rm -rf procps-ng-3.3.12
tar xf procps-ng-3.3.12.tar.xz
cd procps-ng-3.3.12

./configure --prefix=/usr                            \
            --exec-prefix=                           \
            --libdir=/usr/lib                        \
            --docdir=/usr/share/doc/procps-ng-3.3.12 \
            --disable-static                         \
            --disable-kill

make
make install

mv -v /usr/lib/libprocps.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libprocps.so) /usr/lib/libprocps.so

cd $LFS/sources
rm -rf procps-ng-3.3.12
