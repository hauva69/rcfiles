#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="/Users/489266/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='powerline-multiline'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@github.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='emacs -e erc -nw'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
source $BASH_IT/bash_it.sh

export CGO_CFLAGS="-I$HOME/instantclient_11_2/sdk/include"
export CGO_LDFLAGS="-L$HOME/instantclient_11_2 -lclntsh"
export DYLD_FALLBACK_LIBRARY_PATH=$DYLD_FALLBACK_LIBRARY_PATH:$HOME/instantclient_11_2

export GOPATH='/workspace/go'
export PATH="${GOPATH}/bin:${PATH}"
export EDITOR='/usr/local/bin/emacsclient -a ""'

export LC_CTYPE=fi_FI.UTF-8
export LC_COLLATE=fi_FI.UTF-8
