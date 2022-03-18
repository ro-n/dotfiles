alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'

# alias mv='mv -i'
# alias cp='cp -i'
# alias rm='rm -i'
# alias ln='ln -i'

export ZSH="$HOME/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
eval source <(/usr/local/bin/starship init zsh --print-full-init)
