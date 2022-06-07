# https://github.com/zdharma/zinit
source $HOME/.zinit/bin/zinit.zsh

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
zinit wait lucid as"completion" for \
    $HOME/.zsh/completion/_docker-compose \
    $HOME/.zsh/completion/_ssh

# `/zsh/lazy`
zinit wait lucid for \
    $HOME/.zsh/lazy/pyenv.zsh \
    $HOME/.zsh/lazy/completion.zsh
