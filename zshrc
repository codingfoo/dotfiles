# autoload -U the -U means load function but undefine any aliases for the func

# Environment Variables ########################
export EDITOR="emacs -nw "
export VISUAL="emacs"
export ALTERNATE_EDITOR="emacs"
export TERM=xterm-256color


# Path - append home bin directory #############
if [ -e "$HOME/.bin" ]; then
  PATH=$PATH:$HOME/.bin
fi


# Aliases ######################################
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# Fix HOME key etc #############################
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line


# History ######################################
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# append to hist, dont add duplicate entires, ignore any command with a space in front
setopt appendhistory hist_ignore_all_dups hist_ignore_space


# Completion ###################################
zstyle :compinstall filename '/home/bowen/.zshrc'

autoload -U compinit 
compinit

zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BNo matches for: %d%b'


# Options #####################################
# can use "/etc/" instead of "cd /etc/"
setopt autocd 

# extended globing - for filtering multiple files
setopt extendedglob

# if pattern does not match files generate error
setopt nomatch

# correct typed commands
setopt correct


# Window Title #################################


# Prompt #######################################
#newline
#vcs ${vcs_info_msg_0_}
#rvm
# Current working directory: %~
# Return code: %?
# Username and hostname: %n %m
  #just leave normal for now, i should rarely login as root
  #if [ "$(whoami)" = "root" ]; then NCOLOR="red"; else NCOLOR="blue"; fi
# History: %h
# Prompt char: %#

setopt PROMPT_SUBST


autoload -U colors
colors


autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git
#zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
#zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '


precmd () { vcs_info }

PROMPT='${vcs_info_msg_0_} %~ %# '

if [ -e "$HOME/.rvm/scripts/rvm" ]; then
   [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
   PS1="\$(~/.rvm/bin/rvm-prompt)$PS1"
fi
