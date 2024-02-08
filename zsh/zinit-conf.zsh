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
           bindkey '^N' history-substring-search-down;\
           HISTORY_SUBSTRING_SEARCH_FUZZY=true;\
           HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=true;"
zinit light zsh-users/zsh-history-substring-search

# fzf
# https://github.com/junegunn/fzf
# key-bindings
zinit snippet https://github.com/junegunn/fzf/blob/master/shell/key-bindings.zsh

# https://github.com/lukechilds/zsh-nvm
export NVM_DIR="$HOME/.nvm"
export NVM_COMPLETION=true
export NVM_NO_USE=false
export NVM_LAZY_LOAD=false
zinit ice wait"3" lucid
zinit light lukechilds/zsh-nvm

# `/zsh/completion`
# https://zdharma-continuum.github.io/zinit/wiki/For-Syntax/
#
# COMP_DIR: $HOME/local/share/completions
# See, completions-gen.zsh
zinit wait lucid is-snippet as"completion" for \
    atload"compinit -i" \
    $HOME/.zsh/completion/* \
    $HOME/local/share/completions/_*

## `/zsh/lazy`
zinit wait lucid is-snippet for \
    $HOME/.zsh/lazy/pyenv.zsh \
    $HOME/.zsh/lazy/go.zsh
