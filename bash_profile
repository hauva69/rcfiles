#!/usr/bin/env bash

# cd to home just in case of WSL
cd

# Path to the bash it configuration
# export BASH_IT="/home/hauva/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
# export BASH_IT_THEME='powerline-multiline'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@github.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='emacs -e erc -nw'

# Set this to the command you use for todo.txt-cli
# export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# Load Bash It
# source $BASH_IT/bash_it.sh

# export GOPATH='/workspace/go'
export PATH="${HOME}/go/bin:${PATH}"
export EDITOR='/usr/bin/emacsclient -a ""'
export FCEDIT='/usr/bin/vim'

# export LC_CTYPE=fi_FI.UTF-8
# export LC_COLLATE=fi_FI.UTF-8

if [[ -e '.bashrc' ]] ; then
    . '.bashrc'
fi
