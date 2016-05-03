#!/bin/bash
# 6.60. Libpipeline-1.4.1
set -e
cd $LFS/sources
rm -rf libpipeline-1.4.1
tar xf libpipeline-1.4.1.tar.gz
cd libpipeline-1.4.1

PKG_CONFIG_PATH=/tools/lib/pkgconfig ./configure --prefix=/usr
make
make install

cd $LFS/sources
rm -rf libpipeline-1.4.1
