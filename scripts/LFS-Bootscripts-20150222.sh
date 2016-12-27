#!/bin/bash
#
set -e
cd $LFS/sources
rm -rf lfs-bootscripts-20150222/
tar xf lfs-bootscripts-20150222.tar.bz2
cd lfs-bootscripts-20150222/

make install

cd $LFS/sources
rm -rf lfs-bootscripts-20150222/
