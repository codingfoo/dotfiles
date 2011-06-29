# autoload -U the -U means load function but undefine any aliases for the func


export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true


fpath=($ZSH/zsh/functions $fpath)

autoload -U $ZSH/zsh/functions/*(:t)


# can use "/etc/" instead of "cd /etc/"
setopt autocd 

# extended globing - for filtering multiple files
setopt extendedglob

# if pattern does not match files generate error
setopt nomatch

# correct typed commands
setopt correct

# History config
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
# append to hist, dont add duplicate entires, ignore any command with a space in front
setopt appendhistory hist_ignore_all_dups hist_ignore_space
