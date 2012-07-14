#!/bin/sh

## ===== Git Aliases ===== ###
alias g='git'
alias gst='git status'
alias glg='git log --graph --pretty=oneline --abbrev-commit --all --decorate'

# Auto complete for 'g' as well
complete -o default -o nospace -F _git g

unalias gl > /dev/null
unalias gm > /dev/null
unalias gp > /dev/null

## ===== General ===== ###
alias cls=clear
alias vi=vim

