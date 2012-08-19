# ===== fasd configuration ===== #
FASD_HOME=~/dotfiles/utils/fasd
FASD=$FASD_HOME/fasd

if [[ -f $FASD ]]; then;
    export PATH=$FASD_HOME:$PATH

    # ===== initialize fasd ===== #
    eval "$($FASD --init posix-alias zsh-hook)"

    # ===== fasd aliases ===== #
    alias a='fasd -a'    # any
    alias s='fasd -s'    # show / search / select
    alias d='fasd -d'    # directory
    alias f='fasd -f'    # file
    alias z='fasd_cd -d' # cd, same functionality as j in autojump
    alias v='f -e vim'   # quick opening files with vim
fi
