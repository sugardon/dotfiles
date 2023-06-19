COMP_DIR="$HOME/local/share/completions"
mkdir -p $COMP_DIR

kubectl completion zsh > $COMP_DIR/_kubectl
helm completion zsh > $COMP_DIR/_helm
#source <(skaffold completion zsh)
#source <(kind completion zsh)
#source <(stern --completion=zsh)

echo "Generate Completions! at COMP_DIR: $COMP_DIR"
