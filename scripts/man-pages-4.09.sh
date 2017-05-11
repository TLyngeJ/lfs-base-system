#!/bin/bash
# 6.8. Man-pages-4.09
set -e
cd $LFS/sources
rm -rf man-pages-4.09
tar xf man-pages-4.09.tar.xz
cd man-pages-4.09

make install

cd $LFS/sources
rm -rf man-pages-4.09
