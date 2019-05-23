#!/bin/bash
# 6.8. Man-pages-4.16
set -e
cd $LFS/sources
rm -rf man-pages-4.16
tar xf man-pages-4.16.tar.xz
cd man-pages-4.16

make install

cd $LFS/sources
rm -rf man-pages-4.16
