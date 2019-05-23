#!/bin/bash
# 6.50. OpenSSL-1.1.0i
set -e
cd $LFS/sources
rm -rf openssl-1.1.0i
tar xf openssl-1.1.0i.tar.gz
cd openssl-1.1.0i

./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic
make
sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install

cd $LFS/sources
rm -rf openssl-1.1.0i
