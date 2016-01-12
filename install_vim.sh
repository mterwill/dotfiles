#!/bin/sh

echo "Installing vim plugins..."

git submodule update --init --recursive

echo "Moving files..."

cp -R vim ~/.vim
cp vimrc ~/.vimrc

echo "Done."
