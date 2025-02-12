# dotfiles

## Usage

1. Check requirements

    ```console
    just before-setup
    ```

1. rcup

    ```console
    env RCRC=$HOME/dotfiles/rcrc rcup
    ```

1. Option : Check optional tools

    ```
    just optional-tools
    ```

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

After setup `rcm`, `zinit` will install automatically. See `zsh/zinit-conf.zsh`.
