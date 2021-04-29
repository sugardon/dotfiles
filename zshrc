export LANG=ja_JP.UTF-8

### Initialize the completion system
autoload -Uz compinit
### Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi
### Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

# additional path
## local
export PATH="$HOME/local/bin:$PATH"

# === Plugins ===
source $HOME/.zsh/zinit-conf.zsh

# === Completion ==
## completion with file
fpath=(~/.zsh/completions/ $fpath)

# === other settings ===
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"

# === Load ===
## Basic config
source $HOME/.zsh/key-bindings.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/auto-title.zsh
## local config
source $HOME/.zshrc-local.zsh

# === starship prompt ===
export STARSHIP_CONFIG="$HOME/.zsh/starship.toml"
eval "$(starship init zsh)"
