#!/bin/bash
# 6.8. Man-pages-4.04
set -e
cd $LFS/sources
rm -rf man-pages-4.04
tar xf man-pages-4.04.tar.xz
cd man-pages-4.04

make install

cd $LFS/sources
rm -rf man-pages-4.04
