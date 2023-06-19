# dotfiles

## rcm

<https://thoughtbot.github.io/rcm/>

### lsrc

show list
<https://thoughtbot.github.io/rcm/lsrc.1.html>

```console
lsrc
```

### mkrc

create new
<https://thoughtbot.github.io/rcm/mkrc.1.html>

```console
mkrc ${TARGET}
```

### rcup

update and install
<https://thoughtbot.github.io/rcm/rcup.1.html>
```console
env RCRC=$HOME/dotfiles/rcrc rcup
```

## zinit

1. Install zinit
   <https://github.com/zdharma-continuum/zinit>
1. Setup
   ```bash
   ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
   ```
