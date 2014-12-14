#!/bin/bash

yum -y install wget
yum remove tmux


cd /tmp/

# install latest livevent.
wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
tar xvzf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure
make
make install


ln -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5

cd /tmp/

# install latest tmux.
wget http://downloads.sourceforge.net/tmux/tmux-1.9a.tar.gz
tar xvzf tmux-1.9a.tar.gz
cd tmux-1.9a
./configure
make
make install



alias tmux="LD_LIBRARY_PATH=/usr/local/lib /usr/local/bin/tmux"

