#!/bin/bash
wget https://github.com/flymin/tmux/archive/2.0.tar.gz
tar -xf 2.0.tar.gz
cd tmux-2.0/

# install tools
sudo apt-get install automake

# setup dependences
sudo apt-get install libevent-dev
sudo apt-get install libncurses5-dev

# install
./configure && make
sudo make install

# setup config file
cd ~
wget https://github.com/flymin/Linux-config/raw/master/.tmux.conf
