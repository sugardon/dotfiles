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
# Benchmark
alias zshbench="for i in \$(seq 1 10); do time zsh -i -c exit > /dev/null ; done"
# Kubernetes
alias k='kubectl'
