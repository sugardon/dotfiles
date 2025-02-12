#!/usr/bin/env just --justfile

set shell := ["zsh", "-uc"]

# Check required-tolls installed.
required-tools:
    #!/usr/bin/env zsh

    [[ $(lsrc -v) ]] && echo "✅ Success : rcm installed"
    [[ $(starship -V) ]] && echo "✅ Success : starship insntalled"
    [[ $(nvim -v) ]] && echo "✅ Success : nvim installed"
    [[ $(fzf --version) ]] && echo "✅ Success : fzf installed"

# Check optional-tools installed.
optional-tools:
    #!/usr/bin/env zsh

    [[ $(markdownlint-cli2 -v) ]] && echo "✅ Success : markdownlint-cli2 installed"
    [[ $(go version) ]] && echo "✅ Success : go installed"

# Check github connection
github-connection:
    #!/usr/bin/env zsh

    ssh -T git@github.com
    if [ $? -eq 1 ]; then
      echo "✅ Success : SSH connection to github.com"
    elif [ $? -eq 255 ]; then
      echo "❌ failed : User is not authenticated to github.com"
      exit 1
    else
      echo "❌ failed : Unknown exit code to ssh into github.com"
      exit 1
    fi

# Before setup
before-setup: required-tools github-connection
    @echo "Before setup process completed successfully."
