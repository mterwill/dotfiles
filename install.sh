#!/bin/bash

SRC=`dirname $0` # directory the script is in
DEST=$HOME       # directory we're targeting

pushd $SRC       # work in the directory the script is in

set -x

# Pull everything from .gitmodules
git submodule update --init --recursive

# All of the simple thing that need a simple link
LINK="tmux.conf vimrc bashrc bash_profile gitignore_global"
for f in $LINK; do
    ln -s $SRC/$f $DEST/.$f
done

# Just copy the vim folder, no need to link
cp -r $SRC/vim $DEST/.vim

# Set up global gitignore
git config --global core.excludesfile $SRC/.gitignore_global

set +x

popd
