#!/bin/bash

pushd $(dirname $0) > /dev/null
ln -sf $PWD/.bash_aliases ~/.bash_aliases 
popd > /dev/null

