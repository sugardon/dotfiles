export LANG=en_US.UTF-8

### Initialize the completion system
autoload -Uz compinit
# In `zsh/zinit-conf.zsh`, lazy load
# compinit -i

### Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

# additional path
## local
export PATH="$HOME/local/bin:$PATH"

# === Plugins ===
source $HOME/.zsh/zinit-conf.zsh

# === other settings ===
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"

# === Load ===
## Basic config
source $HOME/.zsh/key-bindings.zsh
source $HOME/.zsh/aliases.zsh
## local config
source $HOME/.zshrc-local.zsh

# === starship prompt ===
export STARSHIP_CONFIG="$HOME/.zsh/starship.toml"
eval "$(starship init zsh)"

