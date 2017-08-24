alias l="ls -l"
alias vi="vim"
alias f="find . -name"
alias shasum="shasum -a 256"
alias cdgit="cd $(git rev-parse --show-toplevel)"
alias help="man zshbuiltins"

# begin git aliases
alias gs="git status"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gs="git status"
alias gl="git log"
alias gd="git diff"
alias git-rm-merged="git branch --merged | egrep -v \"(^\*|master)\" | xargs git branch -d"
# end git aliases

# for quick vim browsing of a file
gb () {
    URI="$(git browse -u)" # requires hub

    [[ "$URI" == *"tree"* ]] || URI="$(git browse -u)/tree/master"

    open "$URI/$@"
}

mkcd () {
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}

# begin PATH manipulation
export PATH="/usr/local/sbin:$PATH"
# end PATH manipulation

# for machine specific configuration
source ~/.profile
