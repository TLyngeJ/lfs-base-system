#!/bin/bash
# 6.65. IPRoute2-4.18.0
set -e
cd $LFS/sources
rm -rf iproute2-4.18.0
tar xf iproute2-4.18.0.tar.xz
cd iproute2-4.18.0

sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8
sed -i 's/.m_ipt.o//' tc/Makefile
make
make DOCDIR=/usr/share/doc/iproute2-4.18.0 install

cd $LFS/sources
rm -rf iproute2-4.18.0
