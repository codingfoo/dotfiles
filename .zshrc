export EDITOR="vim"
export VISUAL="vim"
export ALTERNATE_EDITOR="vim"

type nvim >/dev/null 2>&1 && alias vim=nvim
type nvim >/dev/null 2>&1 && alias vi=nvim

# Path ###
# Change path precedence for homebrew ###
export PATH="/usr/local/sbin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

# Add path for dotfiles bin dir ###
export PATH="$HOME/.bin:$PATH"

# Add path to machine local bin dir ###
export PATH="$HOME/.local.d/bin:$PATH"


# Completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi


# Use C-x C-e to edit the current command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line


# Load machine local config ###
for file in ~/.local.d/shell/*.sh; do
    source "$file"
done


# History ###
# Leave duplicates in history but ignore when searching
# Allows me to review previous work during a session
setopt HIST_FIND_NO_DUPS

setopt HIST_IGNORE_SPACE

setopt EXTENDED_HISTORY

HISTORY_IGNORE="(ls|cd|pwd|exit|fg|clear)"

HISTSIZE=10000
SAVEHIST=1000000000


# Direnv ###
if [ -x "$(command -v direnv)" ]; then
  eval "$(direnv hook zsh)"
fi


# ASDF ###
[[ -f $HOME/.asdf/asdf.sh ]] && . "$HOME/.asdf/asdf.sh"


# Prompt ###
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats "(%b %m%u%c)"
precmd() {
    vcs_info
}

setopt prompt_subst
NEWLINE=$'\n'
PROMPT='%~ ${vcs_info_msg_0_}% ${NEWLINE}# '

# fzf ###
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
