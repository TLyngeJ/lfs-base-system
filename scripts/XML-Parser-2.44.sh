#!/bin/bash
# 6.41. XML::Parser-2.44
set -e
cd $LFS/sources
rm -rf XML-Parser-2.44
tar xf XML-Parser-2.44.tar.gz
cd XML-Parser-2.44

perl Makefile.PL
make
make install

cd $LFS/sources
rm -rf XML-Parser-2.44
