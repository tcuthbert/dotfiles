# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
bindkey '^u' backward-kill-line

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tom/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -U promptinit
promptinit
prompt walters
export PATH=~/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:/usr/local/heroku/bin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting