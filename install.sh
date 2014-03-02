#!/bin/bash

ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/irssi ~/.irssi
ln -s ~/dotfiles/zshenv ~/.zshenv
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle && \
vim +BundleInstall +qall &&
echo "Vim plugins configured!!" || echo "Error setting up vim directory"
