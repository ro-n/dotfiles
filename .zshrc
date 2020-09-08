export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/go"
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH="/usr/local/opt/llvm@8/bin:$PATH"

ZSH_THEME="typewritten"
TYPEWRITTEN_PROMPT_LAYOUT="singleline_verbose"
TYPEWRITTEN_SYMBOL="#"
TYPEWRITTEN_GIT_RELATIVE_PATH=true
TYPEWRITTEN_CURSOR="underscore"
TYPEWRITTEN_RIGHT_PROMPT_PREFIX="# "

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias c="clear"
alias e="export http_proxy=http://127.0.0.1:1087; export https_proxy=http://127.0.0.1:1087;"
alias ec="export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7891"
alias o="open ."
alias r="source $HOME/.zshrc"
alias u="export http_proxy=''; export https_proxy='';"

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"
