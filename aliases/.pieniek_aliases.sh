# Shorcuts
alias e=vim
alias t=trash
alias m=ncmpcpp
alias C=clear

# Aliases
alias pacs='sudo pacman -S'
alias fuck='sudo $(fc -ln -1)'
alias relog='sudo pkill -u pieniek'
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'
alias seriale='cd /media/Pniowy\ Dysk/Seriale'

# Random functions,
twitch()        { livestreamer -p mpv twitch.tv/$1 ${2:-best} ;}
restart()       { sudo pkill $1; $1 &; }

# Programs configuration files
cvim()          { vim ~/.vimrc ;}
cnvim()         { vim ~/.nvimrc ;}
czsh()          { vim ~/.zshrc ;}
ctmux()         { vim ~/.tmux.conf ;}
caliases()      { vim ~/.pieniek_aliases.sh ;}
cxorg()         { sudoedit /etc/X11/xorg.conf ;}
cxinitrc()      { sudoedit ~/.xinitrc ;}
ctermite()      { vim ~/.config/termite/config ;}
cawesome()      { vim ~/.config/awesome/rc.lua ;}
cmpd()          { vim ~/.config/mpd/mpd.conf ;}
cncmpcpp()      { vim ~/.ncmpcpp/config ;}
cbeets()        { vim ~/.config/beets/config.yaml ;}
credshift()     { vim ~/.config/redshift.conf ;}
ccompton()      { vim ~/.config/compton.conf ;}
cpentadactyl()  { sudoedit ~/.pentadactylrc ;}
