#!/usr/bin/bash

if test `which apt-get` ; then
    sudo apt-get -y update
    sudo apt-get -y install ctags
    sudo apt-get -y install python
elif test `which brew` ; then
    brew install ctags
    brew install python
elif test `which yum` ; then
    sudo yum -y install ctags
    sudo yum -y install python
fi
