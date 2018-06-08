#!/usr/bin/env bash

command_exists() {
    type "$1" > /dev/null 2>&1
}

echo "Installing dotfiles."
git submodule update --init --recursive

# Tmux Plugin manager
# prefix + I from tmux to install the other plugins
git clone https://github.com/tmux-plugins/tpm ~/.dotfiles/tmux/plugins/tpm

sudo npm i -g eslint-cli
sudo npm i -g prettier
sudo npm i -g js-beautify
sudo npm i -g tern

if ! command_exists zsh; then
    echo "zsh not found. Please install and then re-run installation scripts"
    exit 1
elif ! [[ $SHELL =~ .*zsh.* ]]; then
    echo "Configuring zsh as default shell"
    chsh -s "$(which zsh)"
fi

source link.sh

source fonts/fonts/install.sh

echo "Done. Reload your terminal."
