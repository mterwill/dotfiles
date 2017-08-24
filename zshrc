# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle :compinstall filename '/Users/mterwilliger/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install

bindkey -e
# End of lines configured by zsh-newuser-install
autoload -Uz promptinit
promptinit
prompt redhat

export EDITOR=vim
export TERM="screen-256color"

bindkey "^[[3~" delete-char

setopt AUTO_PUSHD
