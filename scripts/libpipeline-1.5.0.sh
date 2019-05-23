#!/bin/bash
# 6.67. Libpipeline-1.5.0
set -e
cd $LFS/sources
rm -rf libpipeline-1.5.0
tar xf libpipeline-1.5.0.tar.gz
cd libpipeline-1.5.0

./configure --prefix=/usr
make
make install

cd $LFS/sources
rm -rf libpipeline-1.5.0
