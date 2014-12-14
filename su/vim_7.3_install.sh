#!/bin/bash

# uninstall default vim.
yum remove vim-minimal.x86_64

yum -y install mercurial
yum -y install ncurses-devel
yum -y install make
yum -y install gcc

cd /usr/local/src/
hg clone https://vim.googlecode.com/hg/ vim73

cd vim73/
./configure --with-features=huge --enable-multibyte --disable-selinux
make
make install

# make sinbolic link for vi.
ln -s /usr/local/bin/vim /usr/bin/vi
