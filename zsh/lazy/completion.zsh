# completion
source <(kubectl completion zsh)
source <(helm completion zsh)
source <(skaffold completion zsh)
source <(kind completion zsh)
source <(stern --completion=zsh)
# completion generate
#stern --completion=zsh > "$HOME/.zsh/completions/_stern"
