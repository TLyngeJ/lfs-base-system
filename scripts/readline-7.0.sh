#!/bin/bash
# 6.32. Readline-7.0
set -e
cd $LFS/sources
rm -rf readline-7.0
tar xf readline-7.0.tar.gz
cd readline-7.0

sed -i '/MV.*old/d' Makefile.in
sed -i '/{OLDSUFF}/c:' support/shlib-install

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/readline-7.0

make SHLIB_LIBS=-lncurses

make SHLIB_LIBS=-lncurses install

mv -v /usr/lib/lib{readline,history}.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libreadline.so) /usr/lib/libreadline.so
ln -sfv ../../lib/$(readlink /usr/lib/libhistory.so ) /usr/lib/libhistory.so

install -v -m644 doc/*.{ps,pdf,html,dvi} /usr/share/doc/readline-7.0

cd $LFS/sources
rm -rf readline-7.0
