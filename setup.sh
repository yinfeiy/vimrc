#!/usr/bin/bash

if test `which apt-get` ; then
    sudo apt-get -y update
    sudo apt-get -y install ctags
if test `which yum` ; then
    sudo yum -y install ctags
