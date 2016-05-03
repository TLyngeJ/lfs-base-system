#!/bin/bash
# 6.56. Gzip-1.6
set -e
cd $LFS/sources
rm -rf gzip-1.6
tar xf gzip-1.6.tar.xz
cd gzip-1.6

./configure --prefix=/usr --bindir=/bin
make
make install
mv -v /bin/{gzexe,uncompress,zcmp,zdiff,zegrep} /usr/bin
mv -v /bin/{zfgrep,zforce,zgrep,zless,zmore,znew} /usr/bin

cd $LFS/sources
rm -rf gzip-1.6
