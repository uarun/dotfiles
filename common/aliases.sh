#!/bin/sh

## ===== Git Aliases ===== ##
alias g='git'
alias gaa='git add -A'
alias gst='git status'
alias gls='git status --short -b'
alias glg='git log --graph --pretty=oneline --abbrev-commit --all --decorate'
alias galias="alias | egrep '=.*git' | grep -v '^galias' | sort"

# Auto complete for 'g' as well
# complete -o default -o nospace -F _git g

unalias gl 2> /dev/null
unalias gm 2> /dev/null
unalias gp 2> /dev/null

## ===== General ===== ##
alias cls=clear
alias vi=vim
alias tmux="tmux -2"

## ===== Mac OS Specific ===== ##
if [[ "$OSTYPE" =~ ^darwin ]]; then
    alias showFiles='defaults write com.apple.finder AppleShowAllFiles -boolean true; killall Finder'
    alias hideFiles='defaults write com.apple.finder AppleShowAllFiles -boolean false; killall Finder'
fi
