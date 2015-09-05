autoload -U compinit promptinit
compinit
promptinit

prompt fade

#PATH
typeset -U path
path=(/usr/local/bin /usr/local/sbin /usr/bin /home/pieniek/bin /home/pieniek/Go/bin /home/pieniek/.gem/ruby/2.2.0/bin $path)

source ~/.pieniek_aliases.sh
# source ~/.zprezto/tmuxinator.zsh
# bumblebee
# export DISPLAY=:8 LD_LIBRARY_PATH=/usr/lib/nvidia:$LD_LIBRARY_PATH
export TERM=xterm-256color
export EDITOR=nvim
export BROWSER=firefox
export MPD_HOST=~/.config/mpd/socket

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

zstyle ':completion:*' menu selec
zstyle ':completion:*' rehash true
setopt completealiases
