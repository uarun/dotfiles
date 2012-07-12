## Bash Configuration ##

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Set command line editing mode to vi
set -o vi

## History Settings
# Ignore duplicates (&), ls, bg, fg, exit and any command starting with whitespaces
export HISTIGNORE="[ \t]*:&:ls:[bf]g:exit"

shopt -s cmdhist      # Keep multiline commands as one command in history
shopt -s histappend   # Keep multi-session history w/o losing one or the other

## Git Stuff ##
source ~/.bash_scripts/git-completion.bash
source ~/.bash_scripts/git-alias.bash
source ~/.bash_scripts/git-prompt.sh
source ~/.bash_scripts/git-prompt.bash


