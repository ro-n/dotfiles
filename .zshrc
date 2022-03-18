alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'

# alias mv='mv -i'
# alias cp='cp -i'
# alias rm='rm -i'
# alias ln='ln -i'

export ZSH="$HOME/.oh-my-zsh"

plugins=(git colored-man-pages)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
eval source <(/usr/local/bin/starship init zsh --print-full-init)

export FZF_DEFAULT_OPTS='--height 60% --layout reverse --border'

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS"
    --color=fg:white,bg:,hl:magenta
    --color=fg+:yellow,bg+:black,hl+:red
    --color=info:green,prompt:magenta,pointer:yellow
    --color=marker:green,spinner:cyan,header:#e0def4"
