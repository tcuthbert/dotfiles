#!/bin/sh

ln -fs $HOME/dotfiles/vimrc $HOME/.vimrc
ln -fs $HOME/dotfiles/vim $HOME/.vim
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle && \
cd $HOME/.vim/bundle/vimproc &&
make && \
echo "Vim plugins configured!!" || echo "Error setting up vim directory"
