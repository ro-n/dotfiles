export GOPATH="$HOME/go"
export PATH="/usr/local/opt/llvm@8/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/flutter/bin:$PATH
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="typewritten"
TYPEWRITTEN_PROMPT_LAYOUT="singleline"
TYPEWRITTEN_SYMBOL="❯"
TYPEWRITTEN_GIT_RELATIVE_PATH=true
TYPEWRITTEN_CURSOR="underscore"
TYPEWRITTEN_RIGHT_PROMPT_PREFIX="🎏 "

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

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node/

