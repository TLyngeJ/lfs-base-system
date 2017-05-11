#!/bin/bash
# 6.69. Texinfo-6.3
set -e
cd $LFS/sources
rm -rf texinfo-6.3
tar xf texinfo-6.3.tar.xz
cd texinfo-6.3

./configure --prefix=/usr --disable-static

make

make install

make TEXMF=/usr/share/texmf install-tex

pushd /usr/share/info
rm -v dir
for f in *
  do install-info $f dir 2>/dev/null
done
popd

cd $LFS/sources
rm -rf texinfo-6.3
