#!/bin/bash
# 6.76. Texinfo-6.5
set -e
cd $LFS/sources
rm -rf texinfo-6.5
tar xf texinfo-6.5.tar.xz
cd texinfo-6.5

sed -i '5481,5485 s/({/(\\{/' tp/Texinfo/Parser.pm
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
rm -rf texinfo-6.5
