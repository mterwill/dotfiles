export PATH="/usr/local/heroku/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/.rvm/bin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

export TERM="screen-256color"

export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> ~/.logs/bash-history/bash-history-$(date "+%Y-%m-%d").log; fi'

eval "$(hub alias -s)"

alias ls="ls -G"
alias tm="tmux at || command tmux"
alias cdgit='cd $(git rev-parse --show-toplevel)'
