# https://github.com/zdharma/zinit
source $HOME/.zinit/bin/zinit.zsh

zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/completion.zsh
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

## https://github.com/zsh-users/zsh-history-substring-search
zinit ice wait lucid \
    atload"bindkey '^P' history-substring-search-up;\
           bindkey '^N' history-substring-search-down"
zinit light zsh-users/zsh-history-substring-search
