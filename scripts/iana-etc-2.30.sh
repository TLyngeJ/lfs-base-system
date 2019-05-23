#!/bin/bash
# 6.30. Iana-Etc-2.30
set -e
cd $LFS/sources
rm -rf iana-etc-2.30
tar xf iana-etc-2.30.tar.bz2
cd iana-etc-2.30

make

make install

cd $LFS/sources
rm -rf iana-etc-2.30
