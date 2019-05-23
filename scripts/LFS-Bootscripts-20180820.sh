#!/bin/bash
# 7.2. LFS-Bootscripts-20180820
set -e
cd $LFS/sources
rm -rf lfs-bootscripts-20180820/
tar xf lfs-bootscripts-20180820.tar.bz2
cd lfs-bootscripts-20180820/

make install

cd $LFS/sources
rm -rf lfs-bootscripts-20180820/
