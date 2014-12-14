#!/bin/zsh

# install nodebrew
wget wget git.io/nodebrew --no-check-certificate
perl nodebrew setup
echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

nodebrew install-binary stable
nodebrew use stable
