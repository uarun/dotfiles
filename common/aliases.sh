#!/bin/sh

## ===== Git Aliases ===== ###
alias g='git'
alias gst='git status'
alias glg='git log --graph --pretty=oneline --abbrev-commit --all --decorate'

# Auto complete for 'g' as well
# complete -o default -o nospace -F _git g

unalias gl 2> /dev/null
unalias gm 2> /dev/null
unalias gp 2> /dev/null

## ===== General ===== ###
alias cls=clear
alias vi=vim

