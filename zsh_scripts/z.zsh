# ===== z-zsh setup ===== #
if [[ $MY_JUMP_UTIL == "z" ]]; then;
    source ~/dotfiles/zsh_modules/z-zsh/z.sh
    function precmd () {
        z --add "$(pwd -P)"
    }
fi
