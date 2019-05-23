#!/bin/bash
# 6.57. Check-0.12.0
set -e
cd $LFS/sources
rm -rf check-0.12.0
tar xf check-0.12.0.tar.gz
cd check-0.12.0

./configure --prefix=/usr
make
make install
sed -i '1 s/tools/usr/' /usr/bin/checkmk

cd $LFS/sources
rm -rf check-0.12.0
