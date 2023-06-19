# https://github.com/zdharma-continuum/zinit#install
# $ ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
# $ mkdir -p "$(dirname $ZINIT_HOME)"
# $ git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
source "${ZINIT_HOME}/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

zinit snippet OMZ::lib/history.zsh
# completions
zinit light zsh-users/zsh-completions
zstyle ':completion:*' menu select

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting

## https://github.com/zsh-users/zsh-history-substring-search
zinit ice wait lucid \
    atload"bindkey '^P' history-substring-search-up;\
           bindkey '^N' history-substring-search-down"
zinit light zsh-users/zsh-history-substring-search

# https://github.com/lukechilds/zsh-nvm
export NVM_DIR="$HOME/.nvm"
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
export NVM_NO_USE=false
zinit ice wait lucid
zinit light lukechilds/zsh-nvm

# `/zsh/completion`
# https://zdharma-continuum.github.io/zinit/wiki/For-Syntax/
#
# COMP_DIR: $HOME/local/share/completions
# See, completions-gen.zsh
zinit wait lucid is-snippet as"completion" for \
    $HOME/.zsh/completion/_docker-compose \
    $HOME/.zsh/completion/_ssh \
    $HOME/local/share/completions/_*

## `/zsh/lazy`
zinit wait lucid is-snippet for \
    $HOME/.zsh/lazy/pyenv.zsh
