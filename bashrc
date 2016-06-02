export TERM="screen-256color"

alias tm="tmux at || command tmux"
alias cdgit='cd $(git rev-parse --show-toplevel)'
alias gg="git add . && git commit"
alias l="ls -l"
alias vi="vim"

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'
