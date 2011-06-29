# Environment Variables ########################

if [[ `uname` == "Darwin" ]]; then
  export EDITOR="mvim"
  export VISUAL="mvim"
  export ALTERNATE_EDITOR="vim"
else 
  export EDITOR="vim "
  export VISUAL="gvim"
  export ALTERNATE_EDITOR="vim"
fi

export TERM=xterm-color

