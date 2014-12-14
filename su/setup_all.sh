#!/bin/bash

# install zsh
echo "Do you want to install zsh?[y/n]"
read ans
if [ ${ans} = "y" ]; then
  sh zsh_install.sh
fi

# install tig
echo "Do you want to install tig?[y/n]"
read ans
if [ ${ans} = "y" ]; then
  sh tig_install.sh
fi
