# colorize `ls` output
alias ls='ls -G'
# reload ZSH
alias zshreload='source ~/.zshrc'
alias zshrestart='exec zsh -l'
# run `htop` with root rights
alias shtop='sudo htop'
# colorize `grep` output
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias less='less -R'
# Git
alias g='git'

# confirm removal
alias rm='rm -i'
# confirm copy
alias cp='cp -i'
# confirm move
alias mv='mv -i'

# use nvim
alias vim='nvim'
# Generate completions
alias completions-gen="zsh $HOME/.zsh/completions-gen.zsh"
# Kubernetes
alias k='kubectl'
