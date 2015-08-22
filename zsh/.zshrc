# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/home/pieniek/bin
export PATH=/home/pieniek/Go/bin:/home/pieniek/.gem/ruby/2.2.0/bin:$PATH

export MPD_HOST=~/.config/mpd/socket
# bumblebee
# export DISPLAY=:8 LD_LIBRARY_PATH=/usr/lib/nvidia:$LD_LIBRARY_PATH

export TERM=xterm-256color

source ~/.pieniek_aliases.sh
source ~/.zprezto/tmuxinator.zsh

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

zstyle ':completion:*' rehash true

function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
