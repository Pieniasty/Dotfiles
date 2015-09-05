# Shorcuts
alias e=$EDITOR
alias t=trash
alias m=ncmpcpp
alias C=clear

alias D='cd /mnt/d'

# Aliases
alias pacs='sudo pacman -S'
alias pacsyu='sudo pacman -Syu'
alias upgr='yaourt -Syua'
alias fuck='sudo $(fc -ln -1)'
alias relog='sudo pkill -u pieniek'
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'
alias seriale='cd /media/Pniowy\ Dysk/Seriale'
alias pobrane='cd /mnt/d/Pobrane'

# Random functions,
twitch()        { livestreamer -p mpv twitch.tv/$1 ${2:-best} ;}
restart()       { sudo pkill $1; $1 &; }

saliases()      { source ~/.pieniek_aliases.sh ;}

# Programs configuration files
cvim()          { e         ~/.vimrc ;}
cnvim()         { e         ~/.nvimrc ;}
czsh()          { e         ~/.zshrc ;}
ctmux()         { e         ~/.tmux.conf ;}
caliases()      { e         ~/.pieniek_aliases.sh ;}
cxorg()         { sudoedit  /etc/X11/xorg.conf ;}
cxinitrc()      { sudoedit  ~/.xinitrc ;}
casound()       { sudoedit  /etc/asound.conf ;}
ctermite()      { e         ~/.config/termite/config ;}
cawesome()      { e         ~/.config/awesome/rc.lua ;}
cmpd()          { e         ~/.config/mpd/mpd.conf ;}
cncmpcpp()      { e         ~/.ncmpcpp/config ;}
cbeets()        { e         ~/.config/beets/config.yaml ;}
credshift()     { e         ~/.config/redshift.conf ;}
ccompton()      { e         ~/.config/compton.conf ;}
cpentadactyl()  { sudoedit  ~/.pentadactylrc ;}
ckeynav()       { e         ~/.keynavrc ;}
cmutt()         { e         ~/.muttrc ;}
idlemaster()    { python2   ~/IdleMaster/start.py ;}
