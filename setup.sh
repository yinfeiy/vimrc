#!/usr/bin/bash
BASEDIR=$(dirname $0)

if test `which apt-get` ; then
    sudo apt-get -y update
    sudo apt-get -y install ctags
    sudo apt-get -y install tmux
elif test `which brew` ; then
    brew install ctags
    brew install tmux
elif test `which yum` ; then
    sudo yum -y install ctags
    sudo yum -y install tmux
fi

cp $BASEDIR/.vimrc ~/
cp $BASEDIR/.tmux.conf ~/
