#!/bin/bash

pushd $(dirname $0) > /dev/null
ln -sfv $PWD/.bash_aliases ~/.bash_aliases 
ln -sfv $PWD/.vimrc ~/.vimrc
popd > /dev/null

