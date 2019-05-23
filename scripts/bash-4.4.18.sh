#!/bin/bash
# 6.34. Bash-4.4.18
set -e
cd $LFS/sources
rm -rf bash-4.4.18
tar xf bash-4.4.18.tar.gz
cd bash-4.4.18

./configure --prefix=/usr                       \
            --docdir=/usr/share/doc/bash-4.4.18 \
            --without-bash-malloc               \
            --with-installed-readline
make
make install
mv -vf /usr/bin/bash /bin

cd $LFS/sources
rm -rf bash-4.4
