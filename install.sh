#!/bin/bash

ln -fs ~/dotfiles/vimrc ~/.vimrc
ln -fs ~/dotfiles/vim ~/.vim
ln -fs ~/dotfiles/irssi ~/.irssi
ln -fs ~/dotfiles/zshenv ~/.zshenv
ln -fs ~/dotfiles/tmux.conf ~/.tmux.conf
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle && \
vim +BundleInstall +qall && \
sudo pacman -Syu --noconfirm cmake && \
$HOME/dotfiles/vim/bundle/YouCompleteMe/install.sh --clang-completer
echo "Vim plugins configured!!" || echo "Error setting up vim directory"
