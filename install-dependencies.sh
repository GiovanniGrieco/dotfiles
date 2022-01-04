#!/bin/bash

. /etc/os-release

case $ID in
    debian | ubuntu)
        apt install --no-install-recommends -y \
	    neovim \
	    tmux   \
	    zsh
    	;;
esac

