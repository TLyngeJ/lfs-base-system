#!/bin/bash
# 6.35. Bash-4.3.30
set -e
cd $LFS/sources
rm -rf bash-4.3.30
tar xf bash-4.3.30.tar.gz
cd bash-4.3.30

patch -Np1 -i ../bash-4.3.30-upstream_fixes-3.patch
./configure --prefix=/usr                       \
            --docdir=/usr/share/doc/bash-4.3.30 \
            --without-bash-malloc               \
            --with-installed-readline
make
make install
mv -vf /usr/bin/bash /bin

cd $LFS/sources
rm -rf bash-4.3.30
