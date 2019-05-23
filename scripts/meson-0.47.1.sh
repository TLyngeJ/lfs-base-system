#!/bin/bash
# 6.53. Meson-0.47.1
set -e
cd $LFS/sources
rm -rf meson-0.47.1
tar xf meson-0.47.1.tar.gz
cd meson-0.47.1

python3 setup.py build
python3 setup.py install --root=dest
cp -rv dest/* /

cd $LFS/sources
rm -rf meson-0.47.1
