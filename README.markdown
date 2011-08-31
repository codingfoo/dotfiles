# Bowen's dotfiles

## Install

- `git clone git://github.com/holman/dotfiles ~/.dotfiles`
- `cd ~/.dotfiles`
- `rake install`

The install rake task will symlink the appropriate files in `.dotfiles` to your
home directory. Everything is configured and tweaked within `~/.dotfiles`,
though.

The main file you'll want to change right off the bat is `zsh/zshrc.symlink`,
which sets up a few paths that'll be different on your particular machine.

You can use a directory other than ~/.dotfiles, such as a dir in your dropbox
folder. Your dotfiles can automatically be synced across machines.

## Topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `rake install`.

## Notes

Recommended tools: ack and ctags

## Thanks

[@holman's dotfiles](https://github.com/holman/dotfiles).
