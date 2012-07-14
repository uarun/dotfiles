#!/bin/bash

export UNLINK=true

function createSymlink {
    if [[ -a $1 ]]; then
    echo "  WARNING: $1 already exists."

    # If Unlink is requested
    if [ "$UNLINK" = "true" ]; then
        unlink $1
        echo "  Unlinking $1"

        # create the link
        export DOTLESS=`echo $1 | sed s/.//`
        echo "  Symlinking $DOTFILES_DIR/$DOTLESS to $1"
        ln -s $DOTFILES_DIR/$DOTLESS $1
    else
        echo "  SKIPPING $1."
    fi
    else
      # create the link
      export DOTLESS=`echo $1 | sed s/.//`
      echo "  Symlinking $DOTFILES_DIR/$DOTLESS to $1"
      ln -s $DOTFILES_DIR/$DOTLESS $1
    fi
}

echo "This script must be run from the dotfiles directory"
echo "Initializing links ..."


pushd ~

export DOTFILES_DIR="${HOME}/dotfiles/home"
createSymlink .profile
createSymlink .bashrc
createSymlink .zshrc
createSymlink .zprofile
createSymlink .zlogout
createSymlink .vimrc
createSymlink .tmux.conf

export DOTFILES_DIR="${HOME}/dotfiles"
createSymlink .vim
createSymlink .bash_scripts

popd
