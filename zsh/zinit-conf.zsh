# https://github.com/zdharma/zinit
source $HOME/.zinit/bin/zinit.zsh

zinit snippet OMZ::lib/history.zsh
# completions
zinit light zsh-users/zsh-completions
zstyle ':completion:*' menu select

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

## https://github.com/zsh-users/zsh-history-substring-search
zinit ice wait lucid \
    atload"bindkey '^P' history-substring-search-up;\
           bindkey '^N' history-substring-search-down"
zinit light zsh-users/zsh-history-substring-search

## local plugins
# cf. https://github.com/zdharma/zinit/issues/4#issuecomment-308037024
zinit ice wait'!0' lucid
zinit light $HOME/.zsh/devtools

zinit ice wait'!0' lucid
zinit light $HOME/.zsh/completions
