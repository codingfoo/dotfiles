setopt PROMPT_SUBST

autoload -U colors
colors

autoload -Uz vcs_info

zstyle ':vcs_info:*' enable git

precmd () { vcs_info }

#TODO: customize prompt for ssh connection
#if [[ -n $SSH_CONNECTION ]]; then
  #export PS1='%m:%3~$(git_info_for_prompt)%# '
#else
  #export PS1='%3~$(git_info_for_prompt)%# '
#fi

PROMPT='${vcs_info_msg_0_} %~ %# '
