# personal aliases
if [[ `uname` == "Darwin" ]]; then
  alias ls='ls -G'
else 
  alias ls='ls --color=auto'
fi

alias l="ls -l"
alias ll="ls -al"
alias c='clear'
alias e="$VISUAL"

## Package
if [[ `uname` == "Darwin" ]]; then
  alias p='brew'
else 
  alias p='sudo pacman'
fi
