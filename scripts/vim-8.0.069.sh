#!/bin/bash
# 6.70. Vim-8.0.069
set -e
cd $LFS/sources
rm -rf vim80
tar xf vim-8.0.069.tar.bz2
cd vim80

echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h

./configure --prefix=/usr

make

make install

ln -sv vim /usr/bin/vi
for L in  /usr/share/man/{,*/}man1/vim.1; do
    ln -sv vim.1 $(dirname $L)/vi.1
done

ln -sv ../vim/vim80/doc /usr/share/doc/vim-8.0.069

cat > /etc/vimrc << "EOF"
" Begin /etc/vimrc

set nocompatible
set backspace=2
set mouse=r
syntax on
if (&term == "xterm") || (&term == "putty")
  set background=dark
endif


" End /etc/vimrc
EOF

cd $LFS/sources
rm -rf vim80
