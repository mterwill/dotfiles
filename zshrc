# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle :compinstall filename '/Users/mterwilliger/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd
bindkey -e
# End of lines configured by zsh-newuser-install
autoload -Uz promptinit
promptinit
prompt redhat

source ~/.bashrc.this

export EDITOR=vim

export TERM="screen-256color"

alias tm="tmux at || command tmux"
alias cdgit='cd $(git rev-parse --show-toplevel)'
alias gg="git add . && git commit"
alias l="ls -l"
alias vi="vim"
alias f="find . -name"
alias mkcd="mkcd"
alias gs="git status"

function mkcd {
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}
