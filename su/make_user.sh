#!/bin/bash

######################
# make user command.
######################
if [ $1 = '-h' ]; then
  echo '-h: print help option'
fi

if [ $# -ge 1 ]; then
  echo "make user $1"
  echo "is Okay? [y/n]"
  read answer
  if [ $answer = "y" ]; then
    useradd $1
    passwd $1
  else
    echo "don't make user"
    exit 1
  fi

fi
