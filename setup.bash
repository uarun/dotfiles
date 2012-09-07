#!/bin/bash

export UNLINK=true

echo "This script must be run from the dotfiles directory"
echo "Press <ENTER> to continue, <Ctrl-C> to cancel ..."
read y

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

echo "Initializing links ..."
pushd ~

DOTFILES_DIR="${HOME}/dotfiles/home"
createSymlink .profile
createSymlink .bashrc
createSymlink .zshrc
createSymlink .zprofile
createSymlink .zlogout
createSymlink .vimrc
createSymlink .tmux.conf

DOTFILES_DIR="${HOME}/dotfiles"
createSymlink .vim
createSymlink .bash_scripts

DOTFILES_DIR="${HOME}/dotfiles/git"
cp -a ~/dotfiles/git/gitconfig ~/.gitconfig

popd

# ===== Copy over fonts ===== #
echo "Copying fonts ..."
if [[ $OSTYPE == linux-gnu ]]; then
    mkdir -p ~/.fonts
    cp -a fonts/* ~/.fonts/
elif [[ $OSTYPE == darwin* ]]; then
    mkdir -p ~/Library/Fonts
    cp -a fonts/* ~/Library/Fonts/
else
    true
fi

