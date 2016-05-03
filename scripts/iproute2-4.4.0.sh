#!/bin/bash
# 6.57. IPRoute2-4.4.0
set -e
cd $LFS/sources
rm -rf iproute2-4.4.0
tar xf iproute2-4.4.0.tar.xz
cd iproute2-4.4.0

sed -i /ARPD/d Makefile
sed -i 's/arpd.8//' man/man8/Makefile
rm -v doc/arpd.sgml
make
make DOCDIR=/usr/share/doc/iproute2-4.4.0 install

cd $LFS/sources
rm -rf iproute2-4.4.0
