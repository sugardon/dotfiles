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
source $HOME/.zsh/plugins/ohmyzsh/lib/history.zsh
source $HOME/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# === Completion ==
## completion with sourcd
source $HOME/.zsh/completions/completion.zsh
## completion with file
fpath=(~/.zsh/completions/ $fpath)
## Just use completion setting
source $HOME/.zsh/plugins/ohmyzsh/lib/completion.zsh

# === other settings ===
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"

# === Load ===
## local config
source $HOME/.zshrc-local.zsh
## Basic config
source $HOME/.zsh/key-bindings.zsh
source $HOME/.zsh/options.zsh
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/auto-title.zsh
## programming environment
source $HOME/.zsh/nvm.zsh

# === starship prompt ===
export STARSHIP_CONFIG="$HOME/.zsh/starship.toml"
eval "$(starship init zsh)"
