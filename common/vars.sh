# =====  Disable automatic renaming of the tmux sessions ===== #
export DISABLE_AUTO_TITLE="true"

# ===== Use vim as Pager ===== #
if [[ -f ~/dotfiles/utils/vimpager/vimpager ]]; then
    export PAGER=~/dotfiles/utils/vimpager/vimpager
    alias less=$PAGER
    alias zless=$PAGER
fi
