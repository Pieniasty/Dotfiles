#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# PATH
export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/home/pieniek/bin
export PATH=/home/pieniek/Go/bin:/home/pieniek/.gem/ruby/2.2.0/bin:$PATH

source ~/.pieniek.aliases


