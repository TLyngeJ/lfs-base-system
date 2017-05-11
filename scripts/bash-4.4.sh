#!/bin/bash
# 6.33. Bash-4.4
set -e
cd $LFS/sources
rm -rf bash-4.4
tar xf bash-4.4.tar.gz
cd bash-4.4

patch -Np1 -i ../bash-4.4-upstream_fixes-1.patch
./configure --prefix=/usr                       \
            --docdir=/usr/share/doc/bash-4.4 \
            --without-bash-malloc               \
            --with-installed-readline
make
make install
mv -vf /usr/bin/bash /bin

cd $LFS/sources
rm -rf bash-4.4
