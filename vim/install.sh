#!/bin/bash

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle && \
cd $HOME/.vim/bundle/vimproc &&
make && \
echo "Vim plugins configured!!" || echo "Error setting up vim directory"
