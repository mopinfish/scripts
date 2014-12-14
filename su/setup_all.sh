#!/bin/bash

# install zsh
echo "Do you want to install zsh?[y/n]"
read ans
if [ ${ans} = "y" ]; then
  sh zsh_install.sh
fi

# install latest vim
echo "Do you want to install latest vim?[y/n]"
read ans
if [ ${ans} = "y" ]; then
  sh vim_7.3_install.sh
fi

# install tig
echo "Do you want to install tig?[y/n]"
read ans
if [ ${ans} = "y" ]; then
  sh tig_install.sh
fi
