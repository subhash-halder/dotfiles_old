# Copied from https://github.com/nicknisi/dotfiles
#!/usr/bin/env bash

DOTFILES=~/.dotfiles

echo -e "\\nCreating symlinks"
echo "=============================="
linkables=$( find -H "$DOTFILES" -maxdepth 3 -name '*.symlink' )
for file in $linkables ; do
    target="$HOME/.$( basename "$file" '.symlink' )"
    if [ -e "$target" ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $file"
        ln -s "$file" "$target"
    fi
done

echo -e "\\n\\ninstalling to ~/.config"
echo "=============================="
if [ ! -d "$HOME/.config" ]; then
    echo "Creating ~/.config"
    mkdir -p "$HOME/.config"
fi


config_files=$( find -H ~/.dotfiles/config -maxdepth 1 2>/dev/null )
for config in $config_files; do
	target="$HOME/.config/$(basename "$config" )"
    if [ -e "$target" ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $config"
        ln -s "$config" "$target"
    fi
done

echo -e "\\n\\ninstalling zsh themes"
echo "=============================="

zshThemeFiles=$( find -H ~/.dotfiles/zsh/themes -maxdepth 1 2>/dev/null )
echo "$zshThemeFiles"
for themes in $zshThemeFiles; do
    echo "&themes"
    target="$HOME/.oh-my-zsh/custom/themes/$( basename "$themes" )"
    if [ -e "$target" ]; then
        echo "~${target#$HOME} already exists... Skipping."
    else
        echo "Creating symlink for $themes"
        ln -s "$themes" "$target"
    fi
done



echo -e "\\n\\nCreating vim symlinks"
echo "=============================="
VIMFILES=( "$HOME/.vim:$DOTFILES/config/nvim"
        "$HOME/.vimrc:$DOTFILES/config/nvim/init.vim"
        "$HOME/.tmux:$DOTFILES/tmux" )

for file in "${VIMFILES[@]}"; do
    KEY=${file%%:*}
    VALUE=${file#*:}
    if [ -e "${KEY}" ]; then
        echo "${KEY} already exists... skipping."
    else
        echo "Creating symlink for $KEY"
        ln -s "${VALUE}" "${KEY}"
    fi
done
