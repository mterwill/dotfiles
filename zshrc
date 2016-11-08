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
alias gd="git diff"
alias gdh="git diff HEAD"

function mkcd {
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}

source ~/.profile

bindkey "^[[3~" delete-char
export PATH="/usr/local/sbin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

function journal {
    file="$HOME/Dropbox/journals/$(date +'%Y-%m-%d').md"

    # templating
    [[ -s "$file" ]] || echo "# $(date +'%A %B %e, %Y')\n\n" > $file

    vim $file
}

alias j=journal
