ln -sf ~/dotfiles/emacs.d ~/.emacs.d
curl -fsSkL https://raw.github.com/cask/cask/master/go | python
cd ~/.emacs.d && \
cask install
