#!/bin/bash

pushd $(dirname $0)/src > /dev/null
for f in $(ls -A); do
    ln -sfv $PWD/$f $HOME/$f
done
popd > /dev/null

