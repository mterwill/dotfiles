export TERM="screen-256color"

alias tm="tmux at || command tmux"
alias cdgit='cd $(git rev-parse --show-toplevel)'
alias gg="git add . && git commit"
alias l="ls -l"
alias vi="vim"
alias f="find . -name"
alias mkcd="mkcd"

function mkcd {
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(history 1 | cut -c8-)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'
