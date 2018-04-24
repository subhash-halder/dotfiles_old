# dotfiles
Development configuration of my machine


## Contents

+ [Installation](#installation)
+ [prerequisite](#prerequisite)

## Prerequisite
Need to install oh-my-zsh, tmux and neovim
1. [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
2. [tmux](https://github.com/tmux/tmux)
3. [neovim](https://neovim.io/)

I am using neovim as it support asyncronous plugin management it give me a greate advantage for linting with eslint

Pythone > 2.7 is required to run the youcompleteme plugin

For mac if after installation youcompleteme throw python error you may need to do this
```bash
pip2 install --upgrade neovim
pip3 install --upgrade neovim
```

For fuzzy finder to work please install the following
1. [fzy](https://github.com/jhawthorn/fzy)
2. [rg](https://github.com/BurntSushi/ripgrep) or [ag](http://geoff.greer.fm/ag/)

## Installation

Type the below command to install the configuration
```bash
git clone https://github.com/Subhash1991/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh
```
